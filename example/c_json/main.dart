// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

import 'cjson_generated_bindings.dart' as cjson;

/// Using the generated C_JSON bindings.
void main() {
  // init cjson bindings.
  cjson.init(DynamicLibrary.open(_getPath()));

  // load json from [example.json] file.
  final jsonString = File('./example.json').readAsStringSync();

  // parse this json string using our cJSON library.
  final cjsonParsedJson = cjson.cJSON_Parse(Utf8.toUtf8(jsonString).cast());
  if (cjsonParsedJson == nullptr) {
    print('Error parsing cjson');
    exit(1);
  }
  // the json is now stored in some C data structure which we need
  // to iterate and convert to a dart object (map/list).

  // converting cjson object to a dart object.
  final dynamic dartJson = convertCJsonToDartObj(cjsonParsedJson.cast());

  // delete the cjsonParsedJson object.
  cjson.cJSON_Delete(cjsonParsedJson);

  // check if the converted json is correct
  // by comparing the result with json converted by dart:convert.
  if (dartJson.toString() == json.decode(jsonString).toString()) {
    print('Parsed Json: $dartJson');
    print('Json converted successfully');
  } else {
    print("Converted json doesn't match\n");
    print('Actual:\n' + dartJson.toString() + '\n');
    print('Expected:\n' + json.decode(jsonString).toString());
  }
}

String _getPath() {
  var path = './third_party/cjson_library/libcjson.so';
  if (Platform.isMacOS) path = './third_party/cjson_library/libstructs.dylib';
  if (Platform.isWindows) path = r'third_party\cjson_library\Debug\structs.dll';
  return path;
}

dynamic convertCJsonToDartObj(Pointer<cjson.cJSON> parsedcjson) {
  dynamic obj;
  if (cjson.cJSON_IsObject(parsedcjson.cast()) == 1) {
    obj = <String, dynamic>{};

    Pointer<cjson.cJSON> ptr;
    ptr = parsedcjson.ref.child;
    while (ptr != nullptr) {
      final dynamic o = convertCJsonToDartObj(ptr);
      _addToObj(obj, o, ptr.ref.string.cast());
      ptr = ptr.ref.next;
    }
  } else if (cjson.cJSON_IsArray(parsedcjson.cast()) == 1) {
    obj = <dynamic>[];

    Pointer<cjson.cJSON> ptr;
    ptr = parsedcjson.ref.child;
    while (ptr != nullptr) {
      final dynamic o = convertCJsonToDartObj(ptr);
      _addToObj(obj, o);
      ptr = ptr.ref.next;
    }
  } else if (cjson.cJSON_IsString(parsedcjson.cast()) == 1) {
    obj = Utf8.fromUtf8(parsedcjson.ref.valuestring.cast());
  } else if (cjson.cJSON_IsNumber(parsedcjson.cast()) == 1) {
    obj = parsedcjson.ref.valueint == parsedcjson.ref.valuedouble
        ? parsedcjson.ref.valueint
        : parsedcjson.ref.valuedouble;
  }

  return obj;
}

void _addToObj(dynamic obj, dynamic o, [Pointer<Utf8> name]) {
  if (obj is Map<String, dynamic>) {
    obj[Utf8.fromUtf8(name)] = o;
  } else if (obj is List<dynamic>) {
    obj.add(o);
  }
}
