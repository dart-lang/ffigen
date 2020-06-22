// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffigen/src/code_generator.dart';
import 'package:logging/logging.dart';

import '../clang_bindings/clang_bindings.dart' as clang;
import '../includer.dart';
import '../utils.dart';

var _logger = Logger('parser:functiondecl_parser');

/// Temporarily holds a function before its returned by [parseFunctionDeclaration].
Func _func;

/// Parses a function declaration.
Func parseFunctionDeclaration(Pointer<clang.CXCursor> cursor) {
  _func = null;
  structByValueParameter = false;
  unimplementedParameterType = false;
  constantArrayParameterType = false;

  final name = cursor.spelling();
  if (shouldIncludeFunc(name)) {
    _logger.fine('++++ Adding Function: ${cursor.completeStringRepr()}');

    final rt = _getFunctionReturnType(cursor);
    final parameters = _getParameters(cursor);

    //TODO(3): remove this when support for Structs by value arrive
    if (rt.broadType == BroadType.Struct || structByValueParameter) {
      _logger.fine(
          '---- Removed Function, reason: struct pass/return by value: ${cursor.completeStringRepr()}');
      _logger.warning(
          "Skipped Function '$name', struct pass/return by value not supported.");
      return null; //returning null so that [addToBindings] function excludes this.
    }

    // TODO: check, handling arrays in function parameters
    if (constantArrayParameterType) {
      _logger.fine(
          '---- Removed Function, reason: constant array passed to function parameter: ${cursor.completeStringRepr()}');
      _logger.warning(
          "Skipped Function '$name', constant array in function parameter not supported.");
      return null; //returning null so that [addToBindings] function excludes this.
    }

    if (rt.getBaseBroadType() == BroadType.Unimplemented ||
        unimplementedParameterType) {
      _logger.fine(
          '---- Removed Function, reason: unsupported return type or parameter type: ${cursor.completeStringRepr()}');
      _logger.warning(
          "Skipped Function '$name', function has unsupported return type or parameter type.");
      return null; //returning null so that [addToBindings] function excludes this.
    }

    _func = Func(
      dartDoc: getCursorDocComment(cursor),
      name: name,
      returnType: rt,
      parameters: parameters,
    );
  }

  return _func;
}

bool structByValueParameter = false;
bool constantArrayParameterType = false;
bool unimplementedParameterType = false;
Type _getFunctionReturnType(Pointer<clang.CXCursor> cursor) {
  return cursor.returnType().toCodeGenTypeAndDispose();
}

List<Parameter> _getParameters(Pointer<clang.CXCursor> cursor) {
  final parameters = <Parameter>[];

  final totalArgs = clang.clang_Cursor_getNumArguments_wrap(cursor);
  for (var i = 0; i < totalArgs; i++) {
    final paramCursor = clang.clang_Cursor_getArgument_wrap(cursor, i);

    _logger.finer('===== parameter: ${paramCursor.completeStringRepr()}');

    final pt = _getParameterType(paramCursor);
    //TODO(3): remove this when support for Structs by value arrive
    if (pt.broadType == BroadType.Struct) {
      structByValueParameter = true;
    } else if (pt.broadType == BroadType.ConstantArray) {
      //TODO: check constant array in function
      constantArrayParameterType = true;
    } else if (pt.getBaseBroadType() == BroadType.Unimplemented) {
      unimplementedParameterType = true;
    }

    final pn = paramCursor.spelling();

    /// if pn is null or empty, its set to `arg$i` by code_generator.
    parameters.add(
      Parameter(
        name: pn,
        type: pt,
      ),
    );
    paramCursor.dispose();
  }

  return parameters;
}

Type _getParameterType(Pointer<clang.CXCursor> cursor) {
  return cursor.type().toCodeGenTypeAndDispose();
}
