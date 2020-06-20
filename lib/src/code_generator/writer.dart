// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'binding_string.dart';

/// To store generated String bindings.
class Writer {
  String header;
  String dylibIdentifier;
  String initFunctionIdentifier;

  /// dart:ffi library prefix.
  String ffiLibraryPrefix;

  final List<BindingString> _bindings = [];

  Writer({
    this.dylibIdentifier = '_dylib',
    this.initFunctionIdentifier = 'init',
    this.ffiLibraryPrefix = 'ffi',
  });

  @override
  String toString() {
    final s = StringBuffer();

    // Write header (if any)
    if (header != null) {
      s.write(header);
      s.write('\n');
    }

    // write neccesary imports.
    s.write("import 'dart:ffi' as $ffiLibraryPrefix;\n");
    s.write('\n');

    // Write dylib
    s.write('/// Dynamic library\n');
    s.write('$ffiLibraryPrefix.DynamicLibrary ${dylibIdentifier};\n');
    s.write('\n');
    s.write('/// Initialises dynamic library\n');
    s.write(
        'void $initFunctionIdentifier($ffiLibraryPrefix.DynamicLibrary dylib){\n');
    s.write('  ${dylibIdentifier} = dylib;\n');
    s.write('}\n');

    // Write bindings
    for (final bs in _bindings) {
      s.write(bs.toString());
    }

    return s.toString();
  }

  void addBindingString(BindingString b) {
    _bindings.add(b);
  }
}
