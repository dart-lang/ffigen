// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:ffigen/src/code_generator.dart';
import 'package:test/test.dart';

void main() {
  group('code_generator: ', () {
    test('Function Binding (primitives, pointers)', () {
      final library = Library(
        bindings: [
          Func(
            name: 'noParam',
            dartDoc: 'Just a test function\nheres another line',
            returnType: Type.nativeType(
              SupportedNativeType.Int32,
            ),
          ),
          Func(
            name: 'withPrimitiveParam',
            parameters: [
              Parameter(
                name: 'a',
                type: Type.nativeType(
                  SupportedNativeType.Int32,
                ),
              ),
              Parameter(
                name: 'b',
                type: Type.nativeType(
                  SupportedNativeType.Uint8,
                ),
              ),
            ],
            returnType: Type.nativeType(
              SupportedNativeType.Char,
            ),
          ),
          Func(
            name: 'withPointerParam',
            parameters: [
              Parameter(
                name: 'a',
                type: Type.pointer(
                  Type.nativeType(
                    SupportedNativeType.Int32,
                  ),
                ),
              ),
              Parameter(
                name: 'b',
                type: Type.pointer(
                  Type.pointer(
                    Type.nativeType(
                      SupportedNativeType.Uint8,
                    ),
                  ),
                ),
              ),
            ],
            returnType: Type.pointer(
              Type.nativeType(
                SupportedNativeType.Double,
              ),
            ),
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file = File(
        'test/debug_generated/Function-Binding-test-output.dart',
      );
      try {
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
/// Just a test function
/// heres another line
int noParam(
) {
  return _noParam(
  );
}

final _dart_noParam _noParam = _dylib.lookupFunction<_c_noParam,_dart_noParam>('noParam');

typedef _c_noParam = ffi.Int32 Function(
);

typedef _dart_noParam = int Function(
);

int withPrimitiveParam(
  int a,
  int b,
) {
  return _withPrimitiveParam(
    a,
    b,
  );
}

final _dart_withPrimitiveParam _withPrimitiveParam = _dylib.lookupFunction<_c_withPrimitiveParam,_dart_withPrimitiveParam>('withPrimitiveParam');

typedef _c_withPrimitiveParam = ffi.Uint8 Function(
  ffi.Int32 a,
  ffi.Uint8 b,
);

typedef _dart_withPrimitiveParam = int Function(
  int a,
  int b,
);

ffi.Pointer<ffi.Double> withPointerParam(
  ffi.Pointer<ffi.Int32> a,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> b,
) {
  return _withPointerParam(
    a,
    b,
  );
}

final _dart_withPointerParam _withPointerParam = _dylib.lookupFunction<_c_withPointerParam,_dart_withPointerParam>('withPointerParam');

typedef _c_withPointerParam = ffi.Pointer<ffi.Double> Function(
  ffi.Pointer<ffi.Int32> a,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> b,
);

typedef _dart_withPointerParam = ffi.Pointer<ffi.Double> Function(
  ffi.Pointer<ffi.Int32> a,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> b,
);

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });

    test('Struct Binding (primitives, pointers)', () {
      final library = Library(
        bindings: [
          Struc(
            name: 'NoMember',
            dartDoc: 'Just a test struct\nheres another line',
          ),
          Struc(
            name: 'WithPrimitiveMember',
            members: [
              Member(
                name: 'a',
                type: Type.nativeType(
                  SupportedNativeType.Int32,
                ),
              ),
              Member(
                name: 'b',
                type: Type.nativeType(
                  SupportedNativeType.Double,
                ),
              ),
              Member(
                name: 'c',
                type: Type.nativeType(
                  SupportedNativeType.Char,
                ),
              ),
            ],
          ),
          Struc(
            name: 'WithPointerMember',
            members: [
              Member(
                name: 'a',
                type: Type.pointer(
                  Type.nativeType(
                    SupportedNativeType.Int32,
                  ),
                ),
              ),
              Member(
                name: 'b',
                type: Type.pointer(
                  Type.pointer(
                    Type.nativeType(
                      SupportedNativeType.Double,
                    ),
                  ),
                ),
              ),
              Member(
                name: 'c',
                type: Type.nativeType(
                  SupportedNativeType.Char,
                ),
              ),
            ],
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file = File('test/debug_generated/Struct-Binding-test-output.dart');

      try {
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
/// Just a test struct
/// heres another line
class NoMember extends ffi.Struct{
}

class WithPrimitiveMember extends ffi.Struct{
  @ffi.Int32()
  int a;

  @ffi.Double()
  double b;

  @ffi.Uint8()
  int c;

}

class WithPointerMember extends ffi.Struct{
  ffi.Pointer<ffi.Int32> a;

  ffi.Pointer<ffi.Pointer<ffi.Double>> b;

  @ffi.Uint8()
  int c;

}

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });

    test('Function and Struct Binding (pointer to Struct)', () {
      final library = Library(
        bindings: [
          Struc(
            name: 'SomeStruc',
            members: [
              Member(
                name: 'a',
                type: Type.nativeType(
                  SupportedNativeType.Int32,
                ),
              ),
              Member(
                name: 'b',
                type: Type.nativeType(
                  SupportedNativeType.Double,
                ),
              ),
              Member(
                name: 'c',
                type: Type.nativeType(
                  SupportedNativeType.Char,
                ),
              ),
            ],
          ),
          Func(
            name: 'someFunc',
            parameters: [
              Parameter(
                name: 'some',
                type: Type.pointer(
                  Type.pointer(
                    Type.struct(
                      'SomeStruc',
                    ),
                  ),
                ),
              ),
            ],
            returnType: Type.pointer(
              Type.struct(
                'SomeStruc',
              ),
            ),
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file =
          File('test/debug_generated/Func-n-Struct-Binding-test-output.dart');
      try {
        //expect
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
class SomeStruc extends ffi.Struct{
  @ffi.Int32()
  int a;

  @ffi.Double()
  double b;

  @ffi.Uint8()
  int c;

}

ffi.Pointer<SomeStruc> someFunc(
  ffi.Pointer<ffi.Pointer<SomeStruc>> some,
) {
  return _someFunc(
    some,
  );
}

final _dart_someFunc _someFunc = _dylib.lookupFunction<_c_someFunc,_dart_someFunc>('someFunc');

typedef _c_someFunc = ffi.Pointer<SomeStruc> Function(
  ffi.Pointer<ffi.Pointer<SomeStruc>> some,
);

typedef _dart_someFunc = ffi.Pointer<SomeStruc> Function(
  ffi.Pointer<ffi.Pointer<SomeStruc>> some,
);

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });

    test('global (primitives, pointers, pointer to struct)',
        () {
      final library = Library(
        bindings: [
          Global(
            name: 'test1',
            type: Type.nativeType(
              SupportedNativeType.Int32,
            ),
          ),
          Global(
            name: 'test2',
            type: Type.pointer(
              Type.nativeType(
                SupportedNativeType.Float,
              ),
            ),
          ),
          Struc(
            name: 'Some',
          ),
          Global(
            name: 'test5',
            type: Type.pointer(
              Type.struct(
                'Some',
              ),
            ),
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file = File(
        'test/debug_generated/Global-Binding-test-output.dart',
      );
      try {
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
final int test1 = _dylib.lookup<ffi.Int32>('test1').value;

final ffi.Pointer<ffi.Float> test2 = _dylib.lookup<ffi.Pointer<ffi.Float>>('test2').value;

class Some extends ffi.Struct{
}

final ffi.Pointer<Some> test5 = _dylib.lookup<ffi.Pointer<Some>>('test5').value;

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });

    test('constant', () {
      final library = Library(
        bindings: [
          Constant(
            name: 'test1',
            type: Type.nativeType(
              SupportedNativeType.Int32,
            ),
            rawValue: '20',
          ),
          Constant(
            name: 'test2',
            type: Type.nativeType(
              SupportedNativeType.Float,
            ),
            rawValue: '20.0',
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file = File(
        'test/debug_generated/Constant-test-output.dart',
      );
      try {
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
const int test1 = 20;

const double test2 = 20.0;

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });

    test('TypedefC (primitive, pointers, pointer to struct)', () {
      final library = Library(
        bindings: [
          TypedefC(
            dartDoc: 'just a test',
            name: 'test1',
            returnType: Type.nativeType(
              SupportedNativeType.Int32,
            ),
          ),
          Struc(name: 'SomeStruct'),
          TypedefC(
            name: 'test2',
            returnType: Type.pointer(
              Type.nativeType(
                SupportedNativeType.Int32,
              ),
            ),
            parameters: [
              Parameter(
                name: 'param1',
                type: Type.pointer(
                  Type.struct('SomeStruct'),
                ),
              ),
              Parameter(
                name: 'param2',
                type: Type.nativeType(
                  SupportedNativeType.Char,
                ),
              ),
            ],
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file = File('test/debug_generated/typedef-Binding-test-output.dart');
      try {
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
/// just a test
typedef test1 = ffi.Int32 Function(
);

class SomeStruct extends ffi.Struct{
}

typedef test2 = ffi.Pointer<ffi.Int32> Function(
  ffi.Pointer<SomeStruct> param1,
  ffi.Uint8 param2,
);

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });

    test('enum_class', () {
      final library = Library(
        bindings: [
          EnumClass(
            name: 'Constants',
            dartDoc: 'test line 1\ntest line 2',
            enumConstants: [
              EnumConstant(
                name: 'a',
                value: 10,
              ),
              EnumConstant(name: 'b', value: -1, dartDoc: 'negative'),
            ],
          ),
        ],
      );

      var gen = library.toString();

      // writing to file for debug purpose
      var file = File(
        'test/debug_generated/enum-class-test-output.dart',
      );
      try {
        expect(gen, '''/// AUTO GENERATED FILE, DO NOT EDIT
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib){
  _dylib = dylib;
}
/// test line 1
/// test line 2
class Constants {
  static const int a = 10;
  /// negative
  static const int b = -1;
}

''');
        if (file.existsSync()) {
          file.delete();
        }
      } catch (e) {
        file.writeAsStringSync(gen);
        print('Failed test, Debug output: ${file.absolute?.path}');
        rethrow;
      }
    });
  });
}
