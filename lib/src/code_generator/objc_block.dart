// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:ffigen/src/code_generator.dart';

import 'binding_string.dart';
import 'writer.dart';

class ObjCBlock extends BindingType {
  final Type returnType;
  final List<Type> argTypes;
  final ObjCBuiltInFunctions builtInFunctions;

  ObjCBlock({
    required String usr,
    required Type returnType,
    required List<Type> argTypes,
    required ObjCBuiltInFunctions builtInFunctions,
  }) : this._(
          usr: usr,
          name: _getBlockName(returnType, argTypes),
          returnType: returnType,
          argTypes: argTypes,
          builtInFunctions: builtInFunctions,
        );

  ObjCBlock._({
    required String super.usr,
    required super.name,
    required this.returnType,
    required this.argTypes,
    required this.builtInFunctions,
  }) : super(originalName: name);

  // Generates a human readable name for the block based on the args and return
  // type. These names will be pretty verbose and unweildy, but they're at least
  // sensible and stable. Users can always add their own typedef with a simpler
  // name if necessary.
  static String _getBlockName(Type returnType, List<Type> argTypes) =>
      'ObjCBlock_${[returnType, ...argTypes].map(_typeName).join('_')}';
  static String _typeName(Type type) =>
      type.toString().replaceAll(_illegalNameChar, '');
  static final _illegalNameChar = RegExp(r'[^0-9a-zA-Z]');

  @override
  BindingString toBindingString(Writer w) {
    final s = StringBuffer();

    builtInFunctions.ensureBlockUtilsExist(w, s);

    final params = <Parameter>[];
    for (int i = 0; i < argTypes.length; ++i) {
      params.add(Parameter(name: 'arg$i', type: argTypes[i]));
    }

    final isVoid = returnType == voidType;
    final voidPtr = PointerType(voidType).getCType(w);
    final blockPtr = PointerType(builtInFunctions.blockStruct);
    final funcType = FunctionType(returnType: returnType, parameters: params);
    final natFnType = NativeFunc(funcType);
    final natFnPtr = PointerType(natFnType).getCType(w);
    final funcPtrTrampoline =
        w.topLevelUniqueNamer.makeUnique('_${name}_fnPtrTrampoline');
    final closureTrampoline =
        w.topLevelUniqueNamer.makeUnique('_${name}_closureTrampoline');
    final registerClosure =
        w.topLevelUniqueNamer.makeUnique('_${name}_registerClosure');
    final closureRegistry =
        w.topLevelUniqueNamer.makeUnique('_${name}_closureRegistry');
    final closureRegistryIndex =
        w.topLevelUniqueNamer.makeUnique('_${name}_closureRegistryIndex');
    final trampFuncType = FunctionType(
        returnType: returnType,
        parameters: [Parameter(type: blockPtr, name: 'block'), ...params]);
    final trampFuncCType = trampFuncType.getCType(w, writeArgumentNames: false);
    final trampFuncFfiDartType = trampFuncType.getFfiDartType(w, writeArgumentNames: false);
    final natTrampFnType = NativeFunc(trampFuncType).getCType(w);
    final nativeCallableType =
        '${w.ffiLibraryPrefix}.NativeCallable<$trampFuncCType>';
    final funcDartType = funcType.getDartType(w, writeArgumentNames: false);
    final funcFfiDartType = funcType.getFfiDartType(w, writeArgumentNames: false);

    final paramsNameOnly = params.map((p) => p.name).join(', ');
    final paramsFfiDartType = params.map((p) => '${p.type.getFfiDartType(w)} ${p.name}').join(', ');
    final paramsDartType = params.map((p) => '${p.type.getDartType(w)} ${p.name}').join(', ');

    // Write the function pointer based trampoline function.
    s.write(returnType.getFfiDartType(w));
    s.write(' $funcPtrTrampoline(${blockPtr.getCType(w)} block');
    s.write(', $paramsFfiDartType) =>\n');
    s.write('block.ref.target.cast<'
        '${natFnType.getFfiDartType(w)}>().asFunction<'
        '$funcFfiDartType>()($paramsNameOnly);\n\n');

    // Write the closure registry function.
    s.write('''
final $closureRegistry = <int, $funcFfiDartType>{};
int $closureRegistryIndex = 0;
$voidPtr $registerClosure($funcFfiDartType fn) {
  final id = ++$closureRegistryIndex;
  $closureRegistry[id] = fn;
  return $voidPtr.fromAddress(id);
}
''');

    // Write the closure based trampoline function.
    s.write(returnType.getFfiDartType(w));
    s.write(' $closureTrampoline(${blockPtr.getCType(w)} block,');
    s.write('$paramsFfiDartType) =>\n');
    s.write('$closureRegistry[block.ref.target.address]!($paramsNameOnly);\n');

    // Snippet that converts a Dart typed closure to FfiDart type. This snippet
    // is used below. Note that the closure being converted is called `fn`.
    final convertedFnArgs = params.map((p) => p.type.convertFfiDartTypeToDartType(w, p.name, 'lib')).join(', ');
    final convFnInvocation = returnType.convertDartTypeToFfiDartType(w, 'fn($convertedFnArgs)');
    final convFn = '($paramsFfiDartType) => $convFnInvocation';

    // Write the wrapper class.
    final defaultValue = returnType.getDefaultValue(w, '_lib');
    final exceptionalReturn = defaultValue == null ? '' : ', $defaultValue';
    s.write('''
class $name extends _ObjCBlockBase {
  $name._(${blockPtr.getCType(w)} id, ${w.className} lib) :
      super._(id, lib, retain: false, release: true);

  /// Creates a block from a C function pointer.
  ///
  /// This block must be invoked by native code running on the same thread as
  /// the isolate that registered it. Invoking the block on the wrong thread
  /// will result in a crash.
  $name.fromFunctionPointer(${w.className} lib, $natFnPtr ptr) :
      this._(lib.${builtInFunctions.newBlock.name}(
          _cFuncTrampoline ??= ${w.ffiLibraryPrefix}.Pointer.fromFunction<
              $trampFuncCType>($funcPtrTrampoline
                  $exceptionalReturn).cast(), ptr.cast()), lib);
  static $voidPtr? _cFuncTrampoline;

  /// Creates a block from a Dart function.
  ///
  /// This block must be invoked by native code running on the same thread as
  /// the isolate that registered it. Invoking the block on the wrong thread
  /// will result in a crash.
  $name.fromFunction(${w.className} lib, $funcDartType fn) :
      this._(lib.${builtInFunctions.newBlock.name}(
          _dartFuncTrampoline ??= ${w.ffiLibraryPrefix}.Pointer.fromFunction<
              $trampFuncCType>($closureTrampoline
                  $exceptionalReturn).cast(), $registerClosure($convFn)), lib);
  static $voidPtr? _dartFuncTrampoline;

''');

    // Listener block constructor is only available for void blocks.
    if (isVoid) {
      s.write('''
  /// Creates a listener block from a Dart function.
  ///
  /// This is based on FFI's NativeCallable.listener, and has the same
  /// capabilities and limitations. This block can be invoked from any thread,
  /// but only supports void functions, and is not run synchronously. See
  /// NativeCallable.listener for more details.
  ///
  /// Note that unlike the default behavior of NativeCallable.listener, listener
  /// blocks do not keep the isolate alive.
  $name.listener(${w.className} lib, $funcDartType fn) :
      this._(lib.${builtInFunctions.newBlock.name}(
          (_dartFuncListenerTrampoline ??= $nativeCallableType.listener($closureTrampoline
                  $exceptionalReturn)..keepIsolateAlive = false).nativeFunction.cast(),
          $registerClosure($convFn)), lib);
  static $nativeCallableType? _dartFuncListenerTrampoline;

''');
    }

    // Call method.
    s.write('  ${returnType.getDartType(w)} call($paramsDartType) =>');
    final callMethodArgs = params.map((p) => p.type.convertDartTypeToFfiDartType(w, p.name)).join(', ');
    final callMethodInvocation = '''
    _id.ref.invoke.cast<$natTrampFnType>()
        .asFunction<$trampFuncFfiDartType>()(_id, $callMethodArgs)''';
    s.write(returnType.convertFfiDartTypeToDartType(w, callMethodInvocation, '_lib'));
    s.write(';\n');

    s.write('}\n');
    return BindingString(
        type: BindingStringType.objcBlock, string: s.toString());
  }

  @override
  void addDependencies(Set<Binding> dependencies) {
    if (dependencies.contains(this)) return;
    dependencies.add(this);

    returnType.addDependencies(dependencies);
    for (final t in argTypes) {
      t.addDependencies(dependencies);
    }
    builtInFunctions.addBlockDependencies(dependencies);
  }

  @override
  String getCType(Writer w) =>
      PointerType(builtInFunctions.blockStruct).getCType(w);

  @override
  String getDartType(Writer w) => name;

  @override
  bool get sameFfiDartAndCType => true;

  @override
  bool get sameDartAndCType => false;

  @override
  String convertDartTypeToFfiDartType(Writer w, String value) => '$value._id';

  @override
  String convertFfiDartTypeToDartType(
    Writer w,
    String value,
    String library, {
    bool isObjCOwnedReturn = false,
    String? objCEnclosingClass,
  }) =>
      '$name._($value, $library)';

  @override
  String toString() => '($returnType (^)(${argTypes.join(', ')}))';
}
