// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cli_util/cli_util.dart';
import 'package:path/path.dart' as path;
import 'package:ffigen/src/code_generator.dart';
import 'package:ffigen/src/header_parser.dart' as parser;
import 'package:ffigen/src/config_provider.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart' as yaml;
import 'package:ffigen/src/strings.dart' as strings;

import '../test_utils.dart';

Library actual, expected;

void main() {
  group('dart_handle_test', () {
    setUpAll(() {
      logWarnings();
      expected = expectedLibrary();
      actual = parser.parse(
        Config.fromYaml(yaml.loadYaml('''
${strings.name}: 'NativeLibrary'
${strings.description}: 'Dart_Handle Test'
${strings.output}: 'unused'
${strings.compilerOpts}: '-I${path.join(getSdkPath(), "include")} -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Headers/'

${strings.headers}:
  ${strings.entryPoints}:
    - 'test/header_parser_tests/dart_handle.h'
  ${strings.includeDirectives}:
    - '**dart_handle.h'
        ''') as yaml.YamlMap),
      );
    });
    test('Total bindings count', () {
      expect(actual.bindings.length, expected.bindings.length);
    });

    test('func1', () {
      expect(actual.getBindingAsString('func1'),
          expected.getBindingAsString('func1'));
    });
    test('func2', () {
      expect(actual.getBindingAsString('func2'),
          expected.getBindingAsString('func2'));
    });
    test('func3', () {
      expect(actual.getBindingAsString('func3'),
          expected.getBindingAsString('func3'));
    });
  });
}

Library expectedLibrary() {
  return Library(
    name: 'NativeLibrary',
    bindings: [
      Func(
        name: 'func1',
        returnType: Type.nativeType(
          SupportedNativeType.Void,
        ),
        parameters: [
          Parameter(type: Type.handle()),
        ],
      ),
      Func(
        name: 'func2',
        returnType: Type.handle(),
      ),
      Func(
        name: 'func3',
        returnType: Type.pointer(Type.pointer(Type.handle())),
        parameters: [
          Parameter(
            type: Type.pointer(Type.handle()),
          ),
        ],
      ),
    ],
  );
}
