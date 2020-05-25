import 'dart:ffi';

import 'package:ffigen/src/code_generator.dart';
import 'package:ffigen/src/print.dart';

import '../clang_bindings/clang_bindings.dart' as clang;
import '../clang_bindings/clang_constants.dart' as clang;
import '../includer.dart';
import '../utils.dart';

/// Temporarily holds a struc before its returned by [parseStructDeclaration]
Struc _struc;

/// Parses a struct declaration
Struc parseStructDeclaration(
  Pointer<clang.CXCursor> cursor, {

  /// Optionally provide name (useful in case struct is inside a typedef)
  String name,
}) {
  _struc = null;
  String structName = name ?? cursor.spelling();

  if (structName == '') {
    printExtraVerbose('unnamed structure declaration');
  } else if (shouldIncludeStruct(structName)) {
    printVerbose(
        "Structure: name:${structName} ${cursor.completeStringRepr()}");
    // TODO: also parse struct fields
    _struc = Struc(
      dartDoc: clang
          .clang_Cursor_getBriefCommentText_wrap(cursor)
          .toStringAndDispose(),
      name: structName,
    );
  }

  return _struc;
}
