// ignore_for_file: deprecated_member_use

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Adds 2 integers.
@ffi.Native<ffi.Int Function(ffi.Int, ffi.Int)>(
    symbol: 'sum', assetId: 'assetname')
external int sum(
  int a,
  int b,
);

/// Subtracts 2 integers.
@ffi.Native<ffi.Int Function(ffi.Int, ffi.Int)>(
    symbol: 'subtract', assetId: 'assetname')
external int subtract(
  int a,
  int b,
);

/// Multiplies 2 integers, returns pointer to an integer,.
@ffi.Native<ffi.Pointer<ffi.Int> Function(ffi.Int, ffi.Int)>(
    symbol: 'multiply', assetId: 'assetname')
external ffi.Pointer<ffi.Int> multiply(
  int a,
  int b,
);

/// Divides 2 integers, returns pointer to a float.
@ffi.Native<ffi.Pointer<ffi.Float> Function(ffi.Int, ffi.Int)>(
    symbol: 'divide', assetId: 'assetname')
external ffi.Pointer<ffi.Float> divide(
  int a,
  int b,
);

/// Divides 2 floats, returns a pointer to double.
@ffi.Native<ffi.Pointer<ffi.Double> Function(ffi.Float, ffi.Float)>(
    symbol: 'dividePrecision', assetId: 'assetname')
external ffi.Pointer<ffi.Double> dividePrecision(
  double a,
  double b,
);
