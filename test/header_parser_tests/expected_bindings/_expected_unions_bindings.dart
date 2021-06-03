// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Unions Test
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

  void func1(
    ffi.Pointer<Union2> s,
  ) {
    return _func1(
      s,
    );
  }

  late final _func1Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<Union2>)>>(
          'func1');
  late final _func1 =
      _func1Ptr.asFunction<void Function(ffi.Pointer<Union2>)>();

  void func2(
    ffi.Pointer<Union3> s,
  ) {
    return _func2(
      s,
    );
  }

  late final _func2Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<Union3>)>>(
          'func2');
  late final _func2 =
      _func2Ptr.asFunction<void Function(ffi.Pointer<Union3>)>();
}

class Union1 extends ffi.Union {
  @ffi.Int32()
  external int a;
}

class Union2 extends ffi.Union {
  external Union1 a;
}

class Union3 extends ffi.Opaque {}

class Union4 extends ffi.Opaque {}

class Union5 extends ffi.Opaque {}
