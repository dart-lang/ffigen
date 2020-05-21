import 'dart:ffi';

import 'package:ffigen/src/code_generator.dart';

import '../clang_bindings/clang_bindings.dart' as clang;
import '../clang_bindings/clang_constants.dart' as clang;
import '../utils.dart';
import 'function_visitor.dart';
import '../data.dart' as data;

/// Visitor for the Root cursor [CXCursorKind.CXCursor_TranslationUnit]
///
/// child visitor invoked on translationUnitCursor
int rootCursorVisitor(Pointer<clang.CXCursor> cursor,
    Pointer<clang.CXCursor> parent, Pointer<Void> clientData) {
  try {
    print('debug rootCursorVisitor: ${cursor.completeStringRepr()}');

    switch (clang.clang_getCursorKind_wrap(cursor)) {
      case clang.CXCursorKind.CXCursor_FunctionDecl:
        _createFuncIfIncluded(cursor);
        break;
      default:
        print('debug: Not Implemented');
    }

    cursor.dispose();
    parent.dispose();
  } catch (e, s) {
    print(e);
    print(s);
    rethrow;
  }
  return clang.CXChildVisitResult.CXChildVisit_Continue;
}

/// Returns true if functions should be created
///
/// Creates a function if its not excluded according to config
void _createFuncIfIncluded(Pointer<clang.CXCursor> cursor) {
  var name = cursor.spelling();
  if (data.config.functionFilters.shouldInclude(name)) {
    data.func = Func(
      name: name,
      returnType: _getFunctionReturnType(cursor),
    );
    _addParameters(cursor);
    _addFuncToBinding();
  }
}

Type _getFunctionReturnType(Pointer<clang.CXCursor> cursor) {
  return cursor.returnType().toCodeGenTypeAndDispose();
}

void _addParameters(Pointer<clang.CXCursor> cursor) {
  int resultCode = clang.clang_visitChildren_wrap(
    cursor,
    Pointer.fromFunction(
        functionCursorVisitor, clang.CXChildVisitResult.CXChildVisit_Break),
    nullptr,
  );

  visitChildrenResultChecker(resultCode);
}

void _addFuncToBinding() {
  data.bindings.add(data.func);
}
