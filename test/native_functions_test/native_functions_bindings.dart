/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as ffi2;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib) {
  _dylib = dylib;
}

double Function1Double(
  double x,
) {
  return _Function1Double(
    x,
  );
}

final _dart_Function1Double _Function1Double =
    _dylib.lookupFunction<_c_Function1Double, _dart_Function1Double>(
        'Function1Double');

typedef _c_Function1Double = ffi.Double Function(
  ffi.Double x,
);

typedef _dart_Function1Double = double Function(
  double x,
);

double Function1Float(
  double x,
) {
  return _Function1Float(
    x,
  );
}

final _dart_Function1Float _Function1Float = _dylib
    .lookupFunction<_c_Function1Float, _dart_Function1Float>('Function1Float');

typedef _c_Function1Float = ffi.Float Function(
  ffi.Float x,
);

typedef _dart_Function1Float = double Function(
  double x,
);

int Function1Int16(
  int x,
) {
  return _Function1Int16(
    x,
  );
}

final _dart_Function1Int16 _Function1Int16 = _dylib
    .lookupFunction<_c_Function1Int16, _dart_Function1Int16>('Function1Int16');

typedef _c_Function1Int16 = ffi.Int16 Function(
  ffi.Int16 x,
);

typedef _dart_Function1Int16 = int Function(
  int x,
);

int Function1Int32(
  int x,
) {
  return _Function1Int32(
    x,
  );
}

final _dart_Function1Int32 _Function1Int32 = _dylib
    .lookupFunction<_c_Function1Int32, _dart_Function1Int32>('Function1Int32');

typedef _c_Function1Int32 = ffi.Int32 Function(
  ffi.Int32 x,
);

typedef _dart_Function1Int32 = int Function(
  int x,
);

int Function1Int64(
  int x,
) {
  return _Function1Int64(
    x,
  );
}

final _dart_Function1Int64 _Function1Int64 = _dylib
    .lookupFunction<_c_Function1Int64, _dart_Function1Int64>('Function1Int64');

typedef _c_Function1Int64 = ffi.Int64 Function(
  ffi.Int64 x,
);

typedef _dart_Function1Int64 = int Function(
  int x,
);

int Function1Int8(
  int x,
) {
  return _Function1Int8(
    x,
  );
}

final _dart_Function1Int8 _Function1Int8 = _dylib
    .lookupFunction<_c_Function1Int8, _dart_Function1Int8>('Function1Int8');

typedef _c_Function1Int8 = ffi.Int8 Function(
  ffi.Int8 x,
);

typedef _dart_Function1Int8 = int Function(
  int x,
);

int Function1Uint16(
  int x,
) {
  return _Function1Uint16(
    x,
  );
}

final _dart_Function1Uint16 _Function1Uint16 =
    _dylib.lookupFunction<_c_Function1Uint16, _dart_Function1Uint16>(
        'Function1Uint16');

typedef _c_Function1Uint16 = ffi.Uint16 Function(
  ffi.Uint16 x,
);

typedef _dart_Function1Uint16 = int Function(
  int x,
);

int Function1Uint32(
  int x,
) {
  return _Function1Uint32(
    x,
  );
}

final _dart_Function1Uint32 _Function1Uint32 =
    _dylib.lookupFunction<_c_Function1Uint32, _dart_Function1Uint32>(
        'Function1Uint32');

typedef _c_Function1Uint32 = ffi.Uint32 Function(
  ffi.Uint32 x,
);

typedef _dart_Function1Uint32 = int Function(
  int x,
);

int Function1Uint64(
  int x,
) {
  return _Function1Uint64(
    x,
  );
}

final _dart_Function1Uint64 _Function1Uint64 =
    _dylib.lookupFunction<_c_Function1Uint64, _dart_Function1Uint64>(
        'Function1Uint64');

typedef _c_Function1Uint64 = ffi.Uint64 Function(
  ffi.Uint64 x,
);

typedef _dart_Function1Uint64 = int Function(
  int x,
);

int Function1Uint8(
  int x,
) {
  return _Function1Uint8(
    x,
  );
}

final _dart_Function1Uint8 _Function1Uint8 = _dylib
    .lookupFunction<_c_Function1Uint8, _dart_Function1Uint8>('Function1Uint8');

typedef _c_Function1Uint8 = ffi.Uint8 Function(
  ffi.Uint8 x,
);

typedef _dart_Function1Uint8 = int Function(
  int x,
);

class __fsid_t extends ffi.Struct {}
