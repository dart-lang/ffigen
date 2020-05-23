import 'dart:ffi';

import 'package:ffigen/src/code_generator.dart';
import '../visitors/typedefdecl_visitor.dart';
import 'package:ffigen/src/print.dart';

import '../clang_bindings/clang_bindings.dart' as clang;
import '../clang_bindings/clang_constants.dart' as clang;
import '../utils.dart';
import '../data.dart' as data;

/// Parses a struct declaration
void parseStructDeclaration(
  Pointer<clang.CXCursor> cursor, {

  /// Optionally provide name (useful in case struct is inside a typedef)
  String name,
}) {
  if (name == null && cursor.spelling() == '') {
    printExtraVerbose('unnamed structure declaration');
  }
  String structName = name ?? cursor.spelling();
  if (data.config.structFilters != null &&
      data.config.structFilters.shouldInclude(structName)) {
    printVerbose(
        "Structure: name:${structName} ${cursor.completeStringRepr()}");
    // TODO: also parse struct fields
    data.bindings.add(
      Struc(name: structName),
    );
  }
}
