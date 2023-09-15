// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Native Func Typedef Test.
class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void func(
    ffi.Pointer<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>
                        unnamed2)>>
        unnamed1,
  ) {
    return _func(
      unnamed1,
    );
  }

  late final _funcPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<
                  ffi.NativeFunction<
                      ffi.Void Function(
                          ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>
                              unnamed2)>>)>>('func');
  late final _func = _funcPtr.asFunction<
      void Function(
          ffi.Pointer<
              ffi.NativeFunction<
                  ffi.Void Function(
                      ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>
                          unnamed2)>>)>();

  void funcWithNativeFunc(
    WithTypedefReturnType named,
  ) {
    return _funcWithNativeFunc(
      named,
    );
  }

  late final _funcWithNativeFuncPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WithTypedefReturnType)>>(
          'funcWithNativeFunc');
  late final _funcWithNativeFunc =
      _funcWithNativeFuncPtr.asFunction<void Function(WithTypedefReturnType)>();
}

final class Struct extends ffi.Struct {
  external ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>
                  unnamed2)>> unnamed1;
}

typedef WithTypedefReturnType
    = ffi.Pointer<ffi.NativeFunction<InsideReturnType Function()>>;
typedef WithTypedefReturnType_function = InsideReturnType Function();
typedef InsideReturnType = ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>;
typedef InsideReturnType_function = ffi.Void Function();

final class Struct2 extends ffi.Struct {
  external VoidFuncPointer constFuncPointer;
}

typedef VoidFuncPointer = ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>;
typedef VoidFuncPointer_function = ffi.Void Function();
