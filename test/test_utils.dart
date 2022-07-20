// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:ffigen/src/code_generator.dart';
import 'package:logging/logging.dart';
import 'package:list_diff/list_diff.dart' as list_diff;
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

extension LibraryTestExt on Library {
  /// Get a [Binding]'s generated string with a given name.
  String getBindingAsString(String name) {
    try {
      final b = bindings.firstWhere((element) => element.name == name);
      return b.toBindingString(writer).string;
    } catch (e) {
      throw NotFoundException("Binding '$name' not found.");
    }
  }

  /// Get a [Binding] with a given name.
  Binding getBinding(String name) {
    try {
      final b = bindings.firstWhere((element) => element.name == name);
      return b;
    } catch (e) {
      throw NotFoundException("Binding '$name' not found.");
    }
  }
}

/// Check whether a file generated by test/setup.dart exists and throw a helpful
/// exception if it does not.
void verifySetupFile(File file) {
  if (!file.existsSync()) {
    throw NotFoundException("The file ${file.path} does not exist.\n\n"
        "You may need to run: dart run test/setup.dart\n");
  }
}

// String matcher for large strings, which prints the diffs between the expected
// and actual values, rather than just printing the entire strings.
class _LargeStringMatcher extends Matcher {
  final String expected;

  _LargeStringMatcher(this.expected);

  @override
  bool matches(dynamic item, Map matchState) {
    return expected == item;
  }

  @override
  Description describe(Description description) {
    return description.add('Has no diffs');
  }

  @override
  Description describeMismatch(Object? item, Description mismatchDescription,
      Map matchState, bool verbose) {
    if (item is! String) {
      return mismatchDescription.add('is ').addDescriptionOf(item);
    }
    return mismatchDescription.add('has diff:\n').add(_diff(item));
  }

  String _diff(String actual) {
    final out = StringBuffer();
    for (final op in list_diff.diffSync(expected.split('\n'), actual.split('\n'))) {
      out.write(op.isInsertion ? 'ACT ' : 'EXP ');
      out.write('${op.index}\t${op.item}\n');
    }
    return out.toString();
  }
}

/// Generates actual file using library and tests using [expect] with expected
///
/// This will not delete the actual debug file incase [expect] throws an error.
void matchLibraryWithExpected(
    Library library, List<String> pathForActual, List<String> pathToExpected) {
  final file = File(
    path.joinAll(pathForActual),
  );
  library.generateFile(file);

  try {
    final actual = file.readAsStringSync().replaceAll('\r', '');
    final expected = File(path.joinAll(pathToExpected))
        .readAsStringSync()
        .replaceAll('\r', '');
    expect(actual, _LargeStringMatcher(expected));
    if (file.existsSync()) {
      file.delete();
    }
  } catch (e) {
    print('Failed test: Debug generated file: ${file.absolute.path}');
    rethrow;
  }
}

class NotFoundException implements Exception {
  final String message;
  NotFoundException(this.message);

  @override
  String toString() {
    return message;
  }
}

void logWarnings([Level level = Level.WARNING]) {
  Logger.root.level = level;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name.padRight(8)}: ${record.message}');
  });
}

void logWarningsToArray(List<String> logArr, [Level level = Level.WARNING]) {
  Logger.root.level = level;
  Logger.root.onRecord.listen((record) {
    logArr.add('${record.level.name.padRight(8)}: ${record.message}');
  });
}
