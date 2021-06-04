// ignore_for_file: unused_element, camel_case_types, non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class Bindings1 {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Bindings1(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Bindings1.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void _library() {
    return __library();
  }

  late final __libraryPtr =
      _lookup<ffi.NativeFunction<Native__library>>('_library');
  late final __library = __libraryPtr.asFunction<Dart__library>();

  void _SymbolAddresses_1() {
    return __SymbolAddresses_1();
  }

  late final __SymbolAddresses_1Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('_SymbolAddresses_1');
  late final __SymbolAddresses_1 =
      __SymbolAddresses_1Ptr.asFunction<void Function()>();

  late final addresses = _SymbolAddresses1(this);
}

class _SymbolAddresses1 {
  final Bindings1 _library1;
  _SymbolAddresses1(this._library1);
  ffi.Pointer<ffi.NativeFunction<Native__library>> get _library =>
      _library1.__libraryPtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>> get _SymbolAddresses_1 =>
      _library1.__SymbolAddresses_1Ptr;
}

class addresses extends ffi.Opaque {}

class _SymbolAddresses extends ffi.Opaque {}

abstract class Bindings {}

typedef Native__library = ffi.Void Function();
typedef Dart__library = void Function();
