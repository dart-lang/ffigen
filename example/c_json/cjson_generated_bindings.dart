/// AUTO GENERATED FILE, DO NOT EDIT.
import 'dart:ffi' as ffi;

/// Holds the Dynamic library.
ffi.DynamicLibrary _dylib;

/// Initialises the Dynamic library.
void init(ffi.DynamicLibrary dylib) {
  _dylib = dylib;
}

class cJSON extends ffi.Struct {
  ffi.Pointer<cJSON> next;

  ffi.Pointer<cJSON> prev;

  ffi.Pointer<cJSON> child;

  @ffi.Int32()
  int type;

  ffi.Pointer<ffi.Int8> valuestring;

  @ffi.Int32()
  int valueint;

  @ffi.Double()
  double valuedouble;

  ffi.Pointer<ffi.Int8> string;
}

typedef _typedefC_noname_1 = ffi.Pointer<ffi.Void> Function(
  ffi.Uint64,
);

typedef _typedefC_noname_2 = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);

class cJSON_Hooks extends ffi.Struct {
  ffi.Pointer<ffi.NativeFunction<_typedefC_noname_1>> malloc_fn;

  ffi.Pointer<ffi.NativeFunction<_typedefC_noname_2>> free_fn;
}

ffi.Pointer<ffi.Int8> cJSON_Version() {
  return _cJSON_Version();
}

final _dart_cJSON_Version _cJSON_Version = _dylib
    .lookupFunction<_c_cJSON_Version, _dart_cJSON_Version>('cJSON_Version');

typedef _c_cJSON_Version = ffi.Pointer<ffi.Int8> Function();

typedef _dart_cJSON_Version = ffi.Pointer<ffi.Int8> Function();

void cJSON_InitHooks(
  ffi.Pointer<cJSON_Hooks> hooks,
) {
  return _cJSON_InitHooks(
    hooks,
  );
}

final _dart_cJSON_InitHooks _cJSON_InitHooks =
    _dylib.lookupFunction<_c_cJSON_InitHooks, _dart_cJSON_InitHooks>(
        'cJSON_InitHooks');

typedef _c_cJSON_InitHooks = ffi.Void Function(
  ffi.Pointer<cJSON_Hooks> hooks,
);

typedef _dart_cJSON_InitHooks = void Function(
  ffi.Pointer<cJSON_Hooks> hooks,
);

ffi.Pointer<cJSON> cJSON_Parse(
  ffi.Pointer<ffi.Int8> value,
) {
  return _cJSON_Parse(
    value,
  );
}

final _dart_cJSON_Parse _cJSON_Parse =
    _dylib.lookupFunction<_c_cJSON_Parse, _dart_cJSON_Parse>('cJSON_Parse');

typedef _c_cJSON_Parse = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> value,
);

typedef _dart_cJSON_Parse = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> value,
);

ffi.Pointer<cJSON> cJSON_ParseWithOpts(
  ffi.Pointer<ffi.Int8> value,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> return_parse_end,
  int require_null_terminated,
) {
  return _cJSON_ParseWithOpts(
    value,
    return_parse_end,
    require_null_terminated,
  );
}

final _dart_cJSON_ParseWithOpts _cJSON_ParseWithOpts =
    _dylib.lookupFunction<_c_cJSON_ParseWithOpts, _dart_cJSON_ParseWithOpts>(
        'cJSON_ParseWithOpts');

typedef _c_cJSON_ParseWithOpts = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> value,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> return_parse_end,
  ffi.Int32 require_null_terminated,
);

typedef _dart_cJSON_ParseWithOpts = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> value,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> return_parse_end,
  int require_null_terminated,
);

ffi.Pointer<ffi.Int8> cJSON_Print(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_Print(
    item,
  );
}

final _dart_cJSON_Print _cJSON_Print =
    _dylib.lookupFunction<_c_cJSON_Print, _dart_cJSON_Print>('cJSON_Print');

typedef _c_cJSON_Print = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_Print = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
);

ffi.Pointer<ffi.Int8> cJSON_PrintUnformatted(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_PrintUnformatted(
    item,
  );
}

final _dart_cJSON_PrintUnformatted _cJSON_PrintUnformatted = _dylib
    .lookupFunction<_c_cJSON_PrintUnformatted, _dart_cJSON_PrintUnformatted>(
        'cJSON_PrintUnformatted');

typedef _c_cJSON_PrintUnformatted = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_PrintUnformatted = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
);

ffi.Pointer<ffi.Int8> cJSON_PrintBuffered(
  ffi.Pointer<cJSON> item,
  int prebuffer,
  int fmt,
) {
  return _cJSON_PrintBuffered(
    item,
    prebuffer,
    fmt,
  );
}

final _dart_cJSON_PrintBuffered _cJSON_PrintBuffered =
    _dylib.lookupFunction<_c_cJSON_PrintBuffered, _dart_cJSON_PrintBuffered>(
        'cJSON_PrintBuffered');

typedef _c_cJSON_PrintBuffered = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
  ffi.Int32 prebuffer,
  ffi.Int32 fmt,
);

typedef _dart_cJSON_PrintBuffered = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
  int prebuffer,
  int fmt,
);

int cJSON_PrintPreallocated(
  ffi.Pointer<cJSON> item,
  ffi.Pointer<ffi.Int8> buffer,
  int length,
  int format,
) {
  return _cJSON_PrintPreallocated(
    item,
    buffer,
    length,
    format,
  );
}

final _dart_cJSON_PrintPreallocated _cJSON_PrintPreallocated = _dylib
    .lookupFunction<_c_cJSON_PrintPreallocated, _dart_cJSON_PrintPreallocated>(
        'cJSON_PrintPreallocated');

typedef _c_cJSON_PrintPreallocated = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
  ffi.Pointer<ffi.Int8> buffer,
  ffi.Int32 length,
  ffi.Int32 format,
);

typedef _dart_cJSON_PrintPreallocated = int Function(
  ffi.Pointer<cJSON> item,
  ffi.Pointer<ffi.Int8> buffer,
  int length,
  int format,
);

void cJSON_Delete(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_Delete(
    item,
  );
}

final _dart_cJSON_Delete _cJSON_Delete =
    _dylib.lookupFunction<_c_cJSON_Delete, _dart_cJSON_Delete>('cJSON_Delete');

typedef _c_cJSON_Delete = ffi.Void Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_Delete = void Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_GetArraySize(
  ffi.Pointer<cJSON> array,
) {
  return _cJSON_GetArraySize(
    array,
  );
}

final _dart_cJSON_GetArraySize _cJSON_GetArraySize =
    _dylib.lookupFunction<_c_cJSON_GetArraySize, _dart_cJSON_GetArraySize>(
        'cJSON_GetArraySize');

typedef _c_cJSON_GetArraySize = ffi.Int32 Function(
  ffi.Pointer<cJSON> array,
);

typedef _dart_cJSON_GetArraySize = int Function(
  ffi.Pointer<cJSON> array,
);

ffi.Pointer<cJSON> cJSON_GetArrayItem(
  ffi.Pointer<cJSON> array,
  int index,
) {
  return _cJSON_GetArrayItem(
    array,
    index,
  );
}

final _dart_cJSON_GetArrayItem _cJSON_GetArrayItem =
    _dylib.lookupFunction<_c_cJSON_GetArrayItem, _dart_cJSON_GetArrayItem>(
        'cJSON_GetArrayItem');

typedef _c_cJSON_GetArrayItem = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> array,
  ffi.Int32 index,
);

typedef _dart_cJSON_GetArrayItem = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> array,
  int index,
);

ffi.Pointer<cJSON> cJSON_GetObjectItem(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_GetObjectItem(
    object,
    string,
  );
}

final _dart_cJSON_GetObjectItem _cJSON_GetObjectItem =
    _dylib.lookupFunction<_c_cJSON_GetObjectItem, _dart_cJSON_GetObjectItem>(
        'cJSON_GetObjectItem');

typedef _c_cJSON_GetObjectItem = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_GetObjectItem = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

ffi.Pointer<cJSON> cJSON_GetObjectItemCaseSensitive(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_GetObjectItemCaseSensitive(
    object,
    string,
  );
}

final _dart_cJSON_GetObjectItemCaseSensitive _cJSON_GetObjectItemCaseSensitive =
    _dylib.lookupFunction<_c_cJSON_GetObjectItemCaseSensitive,
            _dart_cJSON_GetObjectItemCaseSensitive>(
        'cJSON_GetObjectItemCaseSensitive');

typedef _c_cJSON_GetObjectItemCaseSensitive = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_GetObjectItemCaseSensitive = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

int cJSON_HasObjectItem(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_HasObjectItem(
    object,
    string,
  );
}

final _dart_cJSON_HasObjectItem _cJSON_HasObjectItem =
    _dylib.lookupFunction<_c_cJSON_HasObjectItem, _dart_cJSON_HasObjectItem>(
        'cJSON_HasObjectItem');

typedef _c_cJSON_HasObjectItem = ffi.Int32 Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_HasObjectItem = int Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

ffi.Pointer<ffi.Int8> cJSON_GetErrorPtr() {
  return _cJSON_GetErrorPtr();
}

final _dart_cJSON_GetErrorPtr _cJSON_GetErrorPtr =
    _dylib.lookupFunction<_c_cJSON_GetErrorPtr, _dart_cJSON_GetErrorPtr>(
        'cJSON_GetErrorPtr');

typedef _c_cJSON_GetErrorPtr = ffi.Pointer<ffi.Int8> Function();

typedef _dart_cJSON_GetErrorPtr = ffi.Pointer<ffi.Int8> Function();

ffi.Pointer<ffi.Int8> cJSON_GetStringValue(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_GetStringValue(
    item,
  );
}

final _dart_cJSON_GetStringValue _cJSON_GetStringValue =
    _dylib.lookupFunction<_c_cJSON_GetStringValue, _dart_cJSON_GetStringValue>(
        'cJSON_GetStringValue');

typedef _c_cJSON_GetStringValue = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_GetStringValue = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsInvalid(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsInvalid(
    item,
  );
}

final _dart_cJSON_IsInvalid _cJSON_IsInvalid =
    _dylib.lookupFunction<_c_cJSON_IsInvalid, _dart_cJSON_IsInvalid>(
        'cJSON_IsInvalid');

typedef _c_cJSON_IsInvalid = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsInvalid = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsFalse(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsFalse(
    item,
  );
}

final _dart_cJSON_IsFalse _cJSON_IsFalse = _dylib
    .lookupFunction<_c_cJSON_IsFalse, _dart_cJSON_IsFalse>('cJSON_IsFalse');

typedef _c_cJSON_IsFalse = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsFalse = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsTrue(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsTrue(
    item,
  );
}

final _dart_cJSON_IsTrue _cJSON_IsTrue =
    _dylib.lookupFunction<_c_cJSON_IsTrue, _dart_cJSON_IsTrue>('cJSON_IsTrue');

typedef _c_cJSON_IsTrue = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsTrue = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsBool(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsBool(
    item,
  );
}

final _dart_cJSON_IsBool _cJSON_IsBool =
    _dylib.lookupFunction<_c_cJSON_IsBool, _dart_cJSON_IsBool>('cJSON_IsBool');

typedef _c_cJSON_IsBool = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsBool = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsNull(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsNull(
    item,
  );
}

final _dart_cJSON_IsNull _cJSON_IsNull =
    _dylib.lookupFunction<_c_cJSON_IsNull, _dart_cJSON_IsNull>('cJSON_IsNull');

typedef _c_cJSON_IsNull = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsNull = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsNumber(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsNumber(
    item,
  );
}

final _dart_cJSON_IsNumber _cJSON_IsNumber = _dylib
    .lookupFunction<_c_cJSON_IsNumber, _dart_cJSON_IsNumber>('cJSON_IsNumber');

typedef _c_cJSON_IsNumber = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsNumber = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsString(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsString(
    item,
  );
}

final _dart_cJSON_IsString _cJSON_IsString = _dylib
    .lookupFunction<_c_cJSON_IsString, _dart_cJSON_IsString>('cJSON_IsString');

typedef _c_cJSON_IsString = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsString = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsArray(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsArray(
    item,
  );
}

final _dart_cJSON_IsArray _cJSON_IsArray = _dylib
    .lookupFunction<_c_cJSON_IsArray, _dart_cJSON_IsArray>('cJSON_IsArray');

typedef _c_cJSON_IsArray = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsArray = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsObject(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsObject(
    item,
  );
}

final _dart_cJSON_IsObject _cJSON_IsObject = _dylib
    .lookupFunction<_c_cJSON_IsObject, _dart_cJSON_IsObject>('cJSON_IsObject');

typedef _c_cJSON_IsObject = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsObject = int Function(
  ffi.Pointer<cJSON> item,
);

int cJSON_IsRaw(
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_IsRaw(
    item,
  );
}

final _dart_cJSON_IsRaw _cJSON_IsRaw =
    _dylib.lookupFunction<_c_cJSON_IsRaw, _dart_cJSON_IsRaw>('cJSON_IsRaw');

typedef _c_cJSON_IsRaw = ffi.Int32 Function(
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_IsRaw = int Function(
  ffi.Pointer<cJSON> item,
);

ffi.Pointer<cJSON> cJSON_CreateNull() {
  return _cJSON_CreateNull();
}

final _dart_cJSON_CreateNull _cJSON_CreateNull =
    _dylib.lookupFunction<_c_cJSON_CreateNull, _dart_cJSON_CreateNull>(
        'cJSON_CreateNull');

typedef _c_cJSON_CreateNull = ffi.Pointer<cJSON> Function();

typedef _dart_cJSON_CreateNull = ffi.Pointer<cJSON> Function();

ffi.Pointer<cJSON> cJSON_CreateTrue() {
  return _cJSON_CreateTrue();
}

final _dart_cJSON_CreateTrue _cJSON_CreateTrue =
    _dylib.lookupFunction<_c_cJSON_CreateTrue, _dart_cJSON_CreateTrue>(
        'cJSON_CreateTrue');

typedef _c_cJSON_CreateTrue = ffi.Pointer<cJSON> Function();

typedef _dart_cJSON_CreateTrue = ffi.Pointer<cJSON> Function();

ffi.Pointer<cJSON> cJSON_CreateFalse() {
  return _cJSON_CreateFalse();
}

final _dart_cJSON_CreateFalse _cJSON_CreateFalse =
    _dylib.lookupFunction<_c_cJSON_CreateFalse, _dart_cJSON_CreateFalse>(
        'cJSON_CreateFalse');

typedef _c_cJSON_CreateFalse = ffi.Pointer<cJSON> Function();

typedef _dart_cJSON_CreateFalse = ffi.Pointer<cJSON> Function();

ffi.Pointer<cJSON> cJSON_CreateBool(
  int boolean,
) {
  return _cJSON_CreateBool(
    boolean,
  );
}

final _dart_cJSON_CreateBool _cJSON_CreateBool =
    _dylib.lookupFunction<_c_cJSON_CreateBool, _dart_cJSON_CreateBool>(
        'cJSON_CreateBool');

typedef _c_cJSON_CreateBool = ffi.Pointer<cJSON> Function(
  ffi.Int32 boolean,
);

typedef _dart_cJSON_CreateBool = ffi.Pointer<cJSON> Function(
  int boolean,
);

ffi.Pointer<cJSON> cJSON_CreateNumber(
  double num,
) {
  return _cJSON_CreateNumber(
    num,
  );
}

final _dart_cJSON_CreateNumber _cJSON_CreateNumber =
    _dylib.lookupFunction<_c_cJSON_CreateNumber, _dart_cJSON_CreateNumber>(
        'cJSON_CreateNumber');

typedef _c_cJSON_CreateNumber = ffi.Pointer<cJSON> Function(
  ffi.Double num,
);

typedef _dart_cJSON_CreateNumber = ffi.Pointer<cJSON> Function(
  double num,
);

ffi.Pointer<cJSON> cJSON_CreateString(
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_CreateString(
    string,
  );
}

final _dart_cJSON_CreateString _cJSON_CreateString =
    _dylib.lookupFunction<_c_cJSON_CreateString, _dart_cJSON_CreateString>(
        'cJSON_CreateString');

typedef _c_cJSON_CreateString = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_CreateString = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> string,
);

ffi.Pointer<cJSON> cJSON_CreateRaw(
  ffi.Pointer<ffi.Int8> raw,
) {
  return _cJSON_CreateRaw(
    raw,
  );
}

final _dart_cJSON_CreateRaw _cJSON_CreateRaw =
    _dylib.lookupFunction<_c_cJSON_CreateRaw, _dart_cJSON_CreateRaw>(
        'cJSON_CreateRaw');

typedef _c_cJSON_CreateRaw = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> raw,
);

typedef _dart_cJSON_CreateRaw = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> raw,
);

ffi.Pointer<cJSON> cJSON_CreateArray() {
  return _cJSON_CreateArray();
}

final _dart_cJSON_CreateArray _cJSON_CreateArray =
    _dylib.lookupFunction<_c_cJSON_CreateArray, _dart_cJSON_CreateArray>(
        'cJSON_CreateArray');

typedef _c_cJSON_CreateArray = ffi.Pointer<cJSON> Function();

typedef _dart_cJSON_CreateArray = ffi.Pointer<cJSON> Function();

ffi.Pointer<cJSON> cJSON_CreateObject() {
  return _cJSON_CreateObject();
}

final _dart_cJSON_CreateObject _cJSON_CreateObject =
    _dylib.lookupFunction<_c_cJSON_CreateObject, _dart_cJSON_CreateObject>(
        'cJSON_CreateObject');

typedef _c_cJSON_CreateObject = ffi.Pointer<cJSON> Function();

typedef _dart_cJSON_CreateObject = ffi.Pointer<cJSON> Function();

ffi.Pointer<cJSON> cJSON_CreateStringReference(
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_CreateStringReference(
    string,
  );
}

final _dart_cJSON_CreateStringReference _cJSON_CreateStringReference =
    _dylib.lookupFunction<_c_cJSON_CreateStringReference,
        _dart_cJSON_CreateStringReference>('cJSON_CreateStringReference');

typedef _c_cJSON_CreateStringReference = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_CreateStringReference = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int8> string,
);

ffi.Pointer<cJSON> cJSON_CreateObjectReference(
  ffi.Pointer<cJSON> child,
) {
  return _cJSON_CreateObjectReference(
    child,
  );
}

final _dart_cJSON_CreateObjectReference _cJSON_CreateObjectReference =
    _dylib.lookupFunction<_c_cJSON_CreateObjectReference,
        _dart_cJSON_CreateObjectReference>('cJSON_CreateObjectReference');

typedef _c_cJSON_CreateObjectReference = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> child,
);

typedef _dart_cJSON_CreateObjectReference = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> child,
);

ffi.Pointer<cJSON> cJSON_CreateArrayReference(
  ffi.Pointer<cJSON> child,
) {
  return _cJSON_CreateArrayReference(
    child,
  );
}

final _dart_cJSON_CreateArrayReference _cJSON_CreateArrayReference =
    _dylib.lookupFunction<_c_cJSON_CreateArrayReference,
        _dart_cJSON_CreateArrayReference>('cJSON_CreateArrayReference');

typedef _c_cJSON_CreateArrayReference = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> child,
);

typedef _dart_cJSON_CreateArrayReference = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> child,
);

ffi.Pointer<cJSON> cJSON_CreateIntArray(
  ffi.Pointer<ffi.Int32> numbers,
  int count,
) {
  return _cJSON_CreateIntArray(
    numbers,
    count,
  );
}

final _dart_cJSON_CreateIntArray _cJSON_CreateIntArray =
    _dylib.lookupFunction<_c_cJSON_CreateIntArray, _dart_cJSON_CreateIntArray>(
        'cJSON_CreateIntArray');

typedef _c_cJSON_CreateIntArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int32> numbers,
  ffi.Int32 count,
);

typedef _dart_cJSON_CreateIntArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Int32> numbers,
  int count,
);

ffi.Pointer<cJSON> cJSON_CreateFloatArray(
  ffi.Pointer<ffi.Float> numbers,
  int count,
) {
  return _cJSON_CreateFloatArray(
    numbers,
    count,
  );
}

final _dart_cJSON_CreateFloatArray _cJSON_CreateFloatArray = _dylib
    .lookupFunction<_c_cJSON_CreateFloatArray, _dart_cJSON_CreateFloatArray>(
        'cJSON_CreateFloatArray');

typedef _c_cJSON_CreateFloatArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Float> numbers,
  ffi.Int32 count,
);

typedef _dart_cJSON_CreateFloatArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Float> numbers,
  int count,
);

ffi.Pointer<cJSON> cJSON_CreateDoubleArray(
  ffi.Pointer<ffi.Double> numbers,
  int count,
) {
  return _cJSON_CreateDoubleArray(
    numbers,
    count,
  );
}

final _dart_cJSON_CreateDoubleArray _cJSON_CreateDoubleArray = _dylib
    .lookupFunction<_c_cJSON_CreateDoubleArray, _dart_cJSON_CreateDoubleArray>(
        'cJSON_CreateDoubleArray');

typedef _c_cJSON_CreateDoubleArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Double> numbers,
  ffi.Int32 count,
);

typedef _dart_cJSON_CreateDoubleArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Double> numbers,
  int count,
);

ffi.Pointer<cJSON> cJSON_CreateStringArray(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
  int count,
) {
  return _cJSON_CreateStringArray(
    strings,
    count,
  );
}

final _dart_cJSON_CreateStringArray _cJSON_CreateStringArray = _dylib
    .lookupFunction<_c_cJSON_CreateStringArray, _dart_cJSON_CreateStringArray>(
        'cJSON_CreateStringArray');

typedef _c_cJSON_CreateStringArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
  ffi.Int32 count,
);

typedef _dart_cJSON_CreateStringArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
  int count,
);

void cJSON_AddItemToArray(
  ffi.Pointer<cJSON> array,
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_AddItemToArray(
    array,
    item,
  );
}

final _dart_cJSON_AddItemToArray _cJSON_AddItemToArray =
    _dylib.lookupFunction<_c_cJSON_AddItemToArray, _dart_cJSON_AddItemToArray>(
        'cJSON_AddItemToArray');

typedef _c_cJSON_AddItemToArray = ffi.Void Function(
  ffi.Pointer<cJSON> array,
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_AddItemToArray = void Function(
  ffi.Pointer<cJSON> array,
  ffi.Pointer<cJSON> item,
);

void cJSON_AddItemToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_AddItemToObject(
    object,
    string,
    item,
  );
}

final _dart_cJSON_AddItemToObject _cJSON_AddItemToObject = _dylib
    .lookupFunction<_c_cJSON_AddItemToObject, _dart_cJSON_AddItemToObject>(
        'cJSON_AddItemToObject');

typedef _c_cJSON_AddItemToObject = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_AddItemToObject = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
);

void cJSON_AddItemToObjectCS(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_AddItemToObjectCS(
    object,
    string,
    item,
  );
}

final _dart_cJSON_AddItemToObjectCS _cJSON_AddItemToObjectCS = _dylib
    .lookupFunction<_c_cJSON_AddItemToObjectCS, _dart_cJSON_AddItemToObjectCS>(
        'cJSON_AddItemToObjectCS');

typedef _c_cJSON_AddItemToObjectCS = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_AddItemToObjectCS = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
);

void cJSON_AddItemReferenceToArray(
  ffi.Pointer<cJSON> array,
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_AddItemReferenceToArray(
    array,
    item,
  );
}

final _dart_cJSON_AddItemReferenceToArray _cJSON_AddItemReferenceToArray =
    _dylib.lookupFunction<_c_cJSON_AddItemReferenceToArray,
        _dart_cJSON_AddItemReferenceToArray>('cJSON_AddItemReferenceToArray');

typedef _c_cJSON_AddItemReferenceToArray = ffi.Void Function(
  ffi.Pointer<cJSON> array,
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_AddItemReferenceToArray = void Function(
  ffi.Pointer<cJSON> array,
  ffi.Pointer<cJSON> item,
);

void cJSON_AddItemReferenceToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_AddItemReferenceToObject(
    object,
    string,
    item,
  );
}

final _dart_cJSON_AddItemReferenceToObject _cJSON_AddItemReferenceToObject =
    _dylib.lookupFunction<_c_cJSON_AddItemReferenceToObject,
        _dart_cJSON_AddItemReferenceToObject>('cJSON_AddItemReferenceToObject');

typedef _c_cJSON_AddItemReferenceToObject = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_AddItemReferenceToObject = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> item,
);

ffi.Pointer<cJSON> cJSON_DetachItemViaPointer(
  ffi.Pointer<cJSON> parent,
  ffi.Pointer<cJSON> item,
) {
  return _cJSON_DetachItemViaPointer(
    parent,
    item,
  );
}

final _dart_cJSON_DetachItemViaPointer _cJSON_DetachItemViaPointer =
    _dylib.lookupFunction<_c_cJSON_DetachItemViaPointer,
        _dart_cJSON_DetachItemViaPointer>('cJSON_DetachItemViaPointer');

typedef _c_cJSON_DetachItemViaPointer = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> parent,
  ffi.Pointer<cJSON> item,
);

typedef _dart_cJSON_DetachItemViaPointer = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> parent,
  ffi.Pointer<cJSON> item,
);

ffi.Pointer<cJSON> cJSON_DetachItemFromArray(
  ffi.Pointer<cJSON> array,
  int which,
) {
  return _cJSON_DetachItemFromArray(
    array,
    which,
  );
}

final _dart_cJSON_DetachItemFromArray _cJSON_DetachItemFromArray =
    _dylib.lookupFunction<_c_cJSON_DetachItemFromArray,
        _dart_cJSON_DetachItemFromArray>('cJSON_DetachItemFromArray');

typedef _c_cJSON_DetachItemFromArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> array,
  ffi.Int32 which,
);

typedef _dart_cJSON_DetachItemFromArray = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> array,
  int which,
);

void cJSON_DeleteItemFromArray(
  ffi.Pointer<cJSON> array,
  int which,
) {
  return _cJSON_DeleteItemFromArray(
    array,
    which,
  );
}

final _dart_cJSON_DeleteItemFromArray _cJSON_DeleteItemFromArray =
    _dylib.lookupFunction<_c_cJSON_DeleteItemFromArray,
        _dart_cJSON_DeleteItemFromArray>('cJSON_DeleteItemFromArray');

typedef _c_cJSON_DeleteItemFromArray = ffi.Void Function(
  ffi.Pointer<cJSON> array,
  ffi.Int32 which,
);

typedef _dart_cJSON_DeleteItemFromArray = void Function(
  ffi.Pointer<cJSON> array,
  int which,
);

ffi.Pointer<cJSON> cJSON_DetachItemFromObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_DetachItemFromObject(
    object,
    string,
  );
}

final _dart_cJSON_DetachItemFromObject _cJSON_DetachItemFromObject =
    _dylib.lookupFunction<_c_cJSON_DetachItemFromObject,
        _dart_cJSON_DetachItemFromObject>('cJSON_DetachItemFromObject');

typedef _c_cJSON_DetachItemFromObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_DetachItemFromObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

ffi.Pointer<cJSON> cJSON_DetachItemFromObjectCaseSensitive(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_DetachItemFromObjectCaseSensitive(
    object,
    string,
  );
}

final _dart_cJSON_DetachItemFromObjectCaseSensitive
    _cJSON_DetachItemFromObjectCaseSensitive = _dylib.lookupFunction<
            _c_cJSON_DetachItemFromObjectCaseSensitive,
            _dart_cJSON_DetachItemFromObjectCaseSensitive>(
        'cJSON_DetachItemFromObjectCaseSensitive');

typedef _c_cJSON_DetachItemFromObjectCaseSensitive = ffi.Pointer<cJSON>
    Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_DetachItemFromObjectCaseSensitive = ffi.Pointer<cJSON>
    Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

void cJSON_DeleteItemFromObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_DeleteItemFromObject(
    object,
    string,
  );
}

final _dart_cJSON_DeleteItemFromObject _cJSON_DeleteItemFromObject =
    _dylib.lookupFunction<_c_cJSON_DeleteItemFromObject,
        _dart_cJSON_DeleteItemFromObject>('cJSON_DeleteItemFromObject');

typedef _c_cJSON_DeleteItemFromObject = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_DeleteItemFromObject = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

void cJSON_DeleteItemFromObjectCaseSensitive(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_DeleteItemFromObjectCaseSensitive(
    object,
    string,
  );
}

final _dart_cJSON_DeleteItemFromObjectCaseSensitive
    _cJSON_DeleteItemFromObjectCaseSensitive = _dylib.lookupFunction<
            _c_cJSON_DeleteItemFromObjectCaseSensitive,
            _dart_cJSON_DeleteItemFromObjectCaseSensitive>(
        'cJSON_DeleteItemFromObjectCaseSensitive');

typedef _c_cJSON_DeleteItemFromObjectCaseSensitive = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_DeleteItemFromObjectCaseSensitive = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
);

void cJSON_InsertItemInArray(
  ffi.Pointer<cJSON> array,
  int which,
  ffi.Pointer<cJSON> newitem,
) {
  return _cJSON_InsertItemInArray(
    array,
    which,
    newitem,
  );
}

final _dart_cJSON_InsertItemInArray _cJSON_InsertItemInArray = _dylib
    .lookupFunction<_c_cJSON_InsertItemInArray, _dart_cJSON_InsertItemInArray>(
        'cJSON_InsertItemInArray');

typedef _c_cJSON_InsertItemInArray = ffi.Void Function(
  ffi.Pointer<cJSON> array,
  ffi.Int32 which,
  ffi.Pointer<cJSON> newitem,
);

typedef _dart_cJSON_InsertItemInArray = void Function(
  ffi.Pointer<cJSON> array,
  int which,
  ffi.Pointer<cJSON> newitem,
);

int cJSON_ReplaceItemViaPointer(
  ffi.Pointer<cJSON> parent,
  ffi.Pointer<cJSON> item,
  ffi.Pointer<cJSON> replacement,
) {
  return _cJSON_ReplaceItemViaPointer(
    parent,
    item,
    replacement,
  );
}

final _dart_cJSON_ReplaceItemViaPointer _cJSON_ReplaceItemViaPointer =
    _dylib.lookupFunction<_c_cJSON_ReplaceItemViaPointer,
        _dart_cJSON_ReplaceItemViaPointer>('cJSON_ReplaceItemViaPointer');

typedef _c_cJSON_ReplaceItemViaPointer = ffi.Int32 Function(
  ffi.Pointer<cJSON> parent,
  ffi.Pointer<cJSON> item,
  ffi.Pointer<cJSON> replacement,
);

typedef _dart_cJSON_ReplaceItemViaPointer = int Function(
  ffi.Pointer<cJSON> parent,
  ffi.Pointer<cJSON> item,
  ffi.Pointer<cJSON> replacement,
);

void cJSON_ReplaceItemInArray(
  ffi.Pointer<cJSON> array,
  int which,
  ffi.Pointer<cJSON> newitem,
) {
  return _cJSON_ReplaceItemInArray(
    array,
    which,
    newitem,
  );
}

final _dart_cJSON_ReplaceItemInArray _cJSON_ReplaceItemInArray =
    _dylib.lookupFunction<_c_cJSON_ReplaceItemInArray,
        _dart_cJSON_ReplaceItemInArray>('cJSON_ReplaceItemInArray');

typedef _c_cJSON_ReplaceItemInArray = ffi.Void Function(
  ffi.Pointer<cJSON> array,
  ffi.Int32 which,
  ffi.Pointer<cJSON> newitem,
);

typedef _dart_cJSON_ReplaceItemInArray = void Function(
  ffi.Pointer<cJSON> array,
  int which,
  ffi.Pointer<cJSON> newitem,
);

void cJSON_ReplaceItemInObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> newitem,
) {
  return _cJSON_ReplaceItemInObject(
    object,
    string,
    newitem,
  );
}

final _dart_cJSON_ReplaceItemInObject _cJSON_ReplaceItemInObject =
    _dylib.lookupFunction<_c_cJSON_ReplaceItemInObject,
        _dart_cJSON_ReplaceItemInObject>('cJSON_ReplaceItemInObject');

typedef _c_cJSON_ReplaceItemInObject = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> newitem,
);

typedef _dart_cJSON_ReplaceItemInObject = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> newitem,
);

void cJSON_ReplaceItemInObjectCaseSensitive(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> newitem,
) {
  return _cJSON_ReplaceItemInObjectCaseSensitive(
    object,
    string,
    newitem,
  );
}

final _dart_cJSON_ReplaceItemInObjectCaseSensitive
    _cJSON_ReplaceItemInObjectCaseSensitive = _dylib.lookupFunction<
            _c_cJSON_ReplaceItemInObjectCaseSensitive,
            _dart_cJSON_ReplaceItemInObjectCaseSensitive>(
        'cJSON_ReplaceItemInObjectCaseSensitive');

typedef _c_cJSON_ReplaceItemInObjectCaseSensitive = ffi.Void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> newitem,
);

typedef _dart_cJSON_ReplaceItemInObjectCaseSensitive = void Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> string,
  ffi.Pointer<cJSON> newitem,
);

ffi.Pointer<cJSON> cJSON_Duplicate(
  ffi.Pointer<cJSON> item,
  int recurse,
) {
  return _cJSON_Duplicate(
    item,
    recurse,
  );
}

final _dart_cJSON_Duplicate _cJSON_Duplicate =
    _dylib.lookupFunction<_c_cJSON_Duplicate, _dart_cJSON_Duplicate>(
        'cJSON_Duplicate');

typedef _c_cJSON_Duplicate = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> item,
  ffi.Int32 recurse,
);

typedef _dart_cJSON_Duplicate = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> item,
  int recurse,
);

int cJSON_Compare(
  ffi.Pointer<cJSON> a,
  ffi.Pointer<cJSON> b,
  int case_sensitive,
) {
  return _cJSON_Compare(
    a,
    b,
    case_sensitive,
  );
}

final _dart_cJSON_Compare _cJSON_Compare = _dylib
    .lookupFunction<_c_cJSON_Compare, _dart_cJSON_Compare>('cJSON_Compare');

typedef _c_cJSON_Compare = ffi.Int32 Function(
  ffi.Pointer<cJSON> a,
  ffi.Pointer<cJSON> b,
  ffi.Int32 case_sensitive,
);

typedef _dart_cJSON_Compare = int Function(
  ffi.Pointer<cJSON> a,
  ffi.Pointer<cJSON> b,
  int case_sensitive,
);

void cJSON_Minify(
  ffi.Pointer<ffi.Int8> json,
) {
  return _cJSON_Minify(
    json,
  );
}

final _dart_cJSON_Minify _cJSON_Minify =
    _dylib.lookupFunction<_c_cJSON_Minify, _dart_cJSON_Minify>('cJSON_Minify');

typedef _c_cJSON_Minify = ffi.Void Function(
  ffi.Pointer<ffi.Int8> json,
);

typedef _dart_cJSON_Minify = void Function(
  ffi.Pointer<ffi.Int8> json,
);

ffi.Pointer<cJSON> cJSON_AddNullToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
) {
  return _cJSON_AddNullToObject(
    object,
    name,
  );
}

final _dart_cJSON_AddNullToObject _cJSON_AddNullToObject = _dylib
    .lookupFunction<_c_cJSON_AddNullToObject, _dart_cJSON_AddNullToObject>(
        'cJSON_AddNullToObject');

typedef _c_cJSON_AddNullToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_cJSON_AddNullToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

ffi.Pointer<cJSON> cJSON_AddTrueToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
) {
  return _cJSON_AddTrueToObject(
    object,
    name,
  );
}

final _dart_cJSON_AddTrueToObject _cJSON_AddTrueToObject = _dylib
    .lookupFunction<_c_cJSON_AddTrueToObject, _dart_cJSON_AddTrueToObject>(
        'cJSON_AddTrueToObject');

typedef _c_cJSON_AddTrueToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_cJSON_AddTrueToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

ffi.Pointer<cJSON> cJSON_AddFalseToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
) {
  return _cJSON_AddFalseToObject(
    object,
    name,
  );
}

final _dart_cJSON_AddFalseToObject _cJSON_AddFalseToObject = _dylib
    .lookupFunction<_c_cJSON_AddFalseToObject, _dart_cJSON_AddFalseToObject>(
        'cJSON_AddFalseToObject');

typedef _c_cJSON_AddFalseToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_cJSON_AddFalseToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

ffi.Pointer<cJSON> cJSON_AddBoolToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  int boolean,
) {
  return _cJSON_AddBoolToObject(
    object,
    name,
    boolean,
  );
}

final _dart_cJSON_AddBoolToObject _cJSON_AddBoolToObject = _dylib
    .lookupFunction<_c_cJSON_AddBoolToObject, _dart_cJSON_AddBoolToObject>(
        'cJSON_AddBoolToObject');

typedef _c_cJSON_AddBoolToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Int32 boolean,
);

typedef _dart_cJSON_AddBoolToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  int boolean,
);

ffi.Pointer<cJSON> cJSON_AddNumberToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  double number,
) {
  return _cJSON_AddNumberToObject(
    object,
    name,
    number,
  );
}

final _dart_cJSON_AddNumberToObject _cJSON_AddNumberToObject = _dylib
    .lookupFunction<_c_cJSON_AddNumberToObject, _dart_cJSON_AddNumberToObject>(
        'cJSON_AddNumberToObject');

typedef _c_cJSON_AddNumberToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Double number,
);

typedef _dart_cJSON_AddNumberToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  double number,
);

ffi.Pointer<cJSON> cJSON_AddStringToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> string,
) {
  return _cJSON_AddStringToObject(
    object,
    name,
    string,
  );
}

final _dart_cJSON_AddStringToObject _cJSON_AddStringToObject = _dylib
    .lookupFunction<_c_cJSON_AddStringToObject, _dart_cJSON_AddStringToObject>(
        'cJSON_AddStringToObject');

typedef _c_cJSON_AddStringToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> string,
);

typedef _dart_cJSON_AddStringToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> string,
);

ffi.Pointer<cJSON> cJSON_AddRawToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> raw,
) {
  return _cJSON_AddRawToObject(
    object,
    name,
    raw,
  );
}

final _dart_cJSON_AddRawToObject _cJSON_AddRawToObject =
    _dylib.lookupFunction<_c_cJSON_AddRawToObject, _dart_cJSON_AddRawToObject>(
        'cJSON_AddRawToObject');

typedef _c_cJSON_AddRawToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> raw,
);

typedef _dart_cJSON_AddRawToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> raw,
);

ffi.Pointer<cJSON> cJSON_AddObjectToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
) {
  return _cJSON_AddObjectToObject(
    object,
    name,
  );
}

final _dart_cJSON_AddObjectToObject _cJSON_AddObjectToObject = _dylib
    .lookupFunction<_c_cJSON_AddObjectToObject, _dart_cJSON_AddObjectToObject>(
        'cJSON_AddObjectToObject');

typedef _c_cJSON_AddObjectToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_cJSON_AddObjectToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

ffi.Pointer<cJSON> cJSON_AddArrayToObject(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
) {
  return _cJSON_AddArrayToObject(
    object,
    name,
  );
}

final _dart_cJSON_AddArrayToObject _cJSON_AddArrayToObject = _dylib
    .lookupFunction<_c_cJSON_AddArrayToObject, _dart_cJSON_AddArrayToObject>(
        'cJSON_AddArrayToObject');

typedef _c_cJSON_AddArrayToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

typedef _dart_cJSON_AddArrayToObject = ffi.Pointer<cJSON> Function(
  ffi.Pointer<cJSON> object,
  ffi.Pointer<ffi.Int8> name,
);

double cJSON_SetNumberHelper(
  ffi.Pointer<cJSON> object,
  double number,
) {
  return _cJSON_SetNumberHelper(
    object,
    number,
  );
}

final _dart_cJSON_SetNumberHelper _cJSON_SetNumberHelper = _dylib
    .lookupFunction<_c_cJSON_SetNumberHelper, _dart_cJSON_SetNumberHelper>(
        'cJSON_SetNumberHelper');

typedef _c_cJSON_SetNumberHelper = ffi.Double Function(
  ffi.Pointer<cJSON> object,
  ffi.Double number,
);

typedef _dart_cJSON_SetNumberHelper = double Function(
  ffi.Pointer<cJSON> object,
  double number,
);

ffi.Pointer<ffi.Void> cJSON_malloc(
  int size,
) {
  return _cJSON_malloc(
    size,
  );
}

final _dart_cJSON_malloc _cJSON_malloc =
    _dylib.lookupFunction<_c_cJSON_malloc, _dart_cJSON_malloc>('cJSON_malloc');

typedef _c_cJSON_malloc = ffi.Pointer<ffi.Void> Function(
  ffi.Uint64 size,
);

typedef _dart_cJSON_malloc = ffi.Pointer<ffi.Void> Function(
  int size,
);

void cJSON_free(
  ffi.Pointer<ffi.Void> object,
) {
  return _cJSON_free(
    object,
  );
}

final _dart_cJSON_free _cJSON_free =
    _dylib.lookupFunction<_c_cJSON_free, _dart_cJSON_free>('cJSON_free');

typedef _c_cJSON_free = ffi.Void Function(
  ffi.Pointer<ffi.Void> object,
);

typedef _dart_cJSON_free = void Function(
  ffi.Pointer<ffi.Void> object,
);
