// ignore_for_file: unused_element, unused_field

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

class Bindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Bindings(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Bindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  NamedFunctionProto func1(
    NamedFunctionProto named,
    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(pkg_ffi.Int)>> unnamed,
  ) {
    return _func1(
      named,
      unnamed,
    );
  }

  late final _func1Ptr = _lookup<
          ffi.NativeFunction<
              NamedFunctionProto Function(
                  NamedFunctionProto,
                  ffi.Pointer<
                      ffi.NativeFunction<ffi.Void Function(pkg_ffi.Int)>>)>>(
      'func1');
  late final _func1 = _func1Ptr.asFunction<
      NamedFunctionProto Function(NamedFunctionProto,
          ffi.Pointer<ffi.NativeFunction<ffi.Void Function(pkg_ffi.Int)>>)>();

  void func2(
    ffi.Pointer<NTyperef1> arg0,
  ) {
    return _func2(
      arg0,
    );
  }

  late final _func2Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<NTyperef1>)>>(
          'func2');
  late final _func2 =
      _func2Ptr.asFunction<void Function(ffi.Pointer<NTyperef1>)>();

  void func3(
    int arg0,
    int b,
  ) {
    return _func3(
      arg0,
      b,
    );
  }

  late final _func3Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.IntPtr, NestingASpecifiedType)>>('func3');
  late final _func3 = _func3Ptr.asFunction<void Function(int, int)>();

  bool func4(
    ffi.Pointer<ffi.Uint8> a,
  ) {
    return _func4(
          a,
        ) !=
        0;
  }

  late final _func4Ptr =
      _lookup<ffi.NativeFunction<ffi.Uint8 Function(ffi.Pointer<ffi.Uint8>)>>(
          'func4');
  late final _func4 =
      _func4Ptr.asFunction<int Function(ffi.Pointer<ffi.Uint8>)>();
}

class Struct1 extends ffi.Struct {
  external NamedFunctionProto named;

  external ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>> unnamed;
}

typedef NamedFunctionProto
    = ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>;

class AnonymousStructInTypedef extends ffi.Opaque {}

class _NamedStructInTypedef extends ffi.Opaque {}

class _ExcludedStruct extends ffi.Opaque {}

typedef NTyperef1 = ExcludedStruct;
typedef ExcludedStruct = _ExcludedStruct;

abstract class AnonymousEnumInTypedef {
  static const int a = 0;
}

abstract class _NamedEnumInTypedef {
  static const int b = 0;
}

typedef NestingASpecifiedType = ffi.IntPtr;

class Struct2 extends ffi.Opaque {}

class WithBoolAlias extends ffi.Struct {
  @ffi.Uint8()
  external int b;
}
