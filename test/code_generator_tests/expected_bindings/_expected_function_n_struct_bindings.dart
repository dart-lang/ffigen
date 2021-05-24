// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

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

  ffi.Pointer<SomeStruc> someFunc(
    ffi.Pointer<ffi.Pointer<SomeStruc>> some,
  ) {
    return _someFunc(
      some,
    );
  }

  late final _someFunc_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<SomeStruc> Function(
              ffi.Pointer<ffi.Pointer<SomeStruc>>)>>('someFunc');
  late final _someFunc = _someFunc_ptr.asFunction<
      ffi.Pointer<SomeStruc> Function(ffi.Pointer<ffi.Pointer<SomeStruc>>)>();
}

class SomeStruc extends ffi.Struct {
  @ffi.Int32()
  external int a;

  @ffi.Double()
  external double b;

  @ffi.Uint8()
  external int c;
}
