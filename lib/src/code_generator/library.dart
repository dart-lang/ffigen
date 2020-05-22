import 'dart:io';

import 'package:meta/meta.dart';

import 'binding.dart';
import 'writer.dart';

/// Definition of a Binding object.
class Library {
  /// variable name of dynamicLibrary, defaults to `_dylib`,
  /// you can rename it in case of name conflicts with something else.
  final String dylibIdentifier;

  /// init function for providing dynamic library, defaults to `init`,
  /// you can rename it in case of name conflicts with something else.
  final String initFunctionIdentifier;

  /// Header of file
  final String header;

  /// bindings in this
  final List<Binding> bindings;
  Library({
    @required this.bindings,
    this.dylibIdentifier = '_dylib',
    this.initFunctionIdentifier = 'init',
    this.header = '/// AUTO GENERATED FILE, DO NOT EDIT',
  })  : assert(dylibIdentifier != null),
        assert(initFunctionIdentifier != null);

  /// Sorts all bindings in alphabetical order
  void sort() {
    bindings.sort((b1, b2) => b1.name.compareTo(b2.name));
  }

  /// Generates [file] by generating C bindings.
  /// If format is true(default) 'dartfmt -w $PATH' will be called to format the generated file.
  void generateFile(File file, {bool format = true}) {
    file.writeAsStringSync(toString());
    if (format) {
      _dartFmt(file.path);
    }
  }

  /// generates bindings and stores it in given [Writer]
  void _generate(Writer w) {
    w.header = header;
    for (var b in bindings) {
      w.addBindingString(b.toBindingString(w));
    }
  }

  /// Formats a file using 'dartfmt'
  void _dartFmt(String path) {
    final result = Process.runSync('dartfmt', ['-w', path],
        runInShell: Platform.isWindows);
    if (result.stderr.toString().isNotEmpty) {
      print(result.stderr);
    }
  }

  @override
  String toString() {
    final w = Writer(
      dylibIdentifier: dylibIdentifier,
      initFunctionIdentifier: initFunctionIdentifier,
    );
    _generate(w);
    return w.toString();
  }
}
