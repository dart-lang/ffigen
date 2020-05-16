// Dev tool for generating libclang bindings using the code_generator submodule
// file generated is lib/src/header_parser/clang_bindings/clang_bindings.dart
import 'dart:io';

import 'package:ffigen/src/code_generator.dart';

const _voidPointer = '*void';
const _charPointer = '*utf8';
const _charPointerPointer = '**utf8';

// TODO: this is currently a hack, function pointer int't implemented in code_generator
const _modifiedVisitorFuncPtr = '*ffi.NativeFunction<visitorFunctionSignature>';

const _cxTranslationUnitImp = 'CXTranslationUnitImpl';
const _cxUnsavedFile = 'CXUnsavedFile';
const _cxString = 'CXString';
const _cxCursor = 'CXCursor';
const _cxType = 'CXType';

const _cxindex = _voidPointer;
const _cxtranslationunit = '*$_cxTranslationUnitImp';
void main() {
  final library = Library(
      bindings: bindings,
      header:
          '/// Call [init(dylib)] to initialise dynamicLibrary before using \n\n/// AUTOMATICALLY GENERATED DO NOT EDIT');

  // Generates bindings for libclang wrapper
  library.generateFile(
      File('lib/src/header_parser/clang_bindings/clang_bindings.dart'));
}

final bindings = <Binding>[
  ...functionAndTypedefsList,
  ...structList,
  ...constantsList,
];

final functionAndTypedefsList = <Binding>[
  Func(
    dartDoc: '',
    name: 'clang_createIndex',
    parameters: [
      Parameter(
        name: 'excludeDeclarationsFromPCH',
        type: Type('int32'),
      ),
      Parameter(
        name: 'displayDiagnostics',
        type: Type('int32'),
      ),
    ],
    returnType: Type(_cxindex),
  ),
  Func(
    dartDoc: '',
    name: 'clang_disposeIndex',
    parameters: [
      Parameter(
        name: 'index',
        type: Type(_cxindex),
      ),
    ],
    returnType: Type('void'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_parseTranslationUnit',
    parameters: [
      Parameter(
        name: 'cxindex',
        type: Type(_cxindex),
      ),
      Parameter(
        name: 'source_filename',
        type: Type(_charPointer),
      ),
      Parameter(
        name: 'cmd_line_args',
        type: Type(_charPointerPointer),
      ),
      Parameter(
        name: 'num_cmd_line_args',
        type: Type('int32'),
      ),
      Parameter(
        name: 'unsaved_files',
        type: Type('*$_cxUnsavedFile'),
      ),
      Parameter(
        name: 'num_unsaved_files',
        type: Type('uint32'),
      ),
      Parameter(
        name: 'options',
        type: Type('uint32'),
      ),
    ],
    returnType: Type(_cxtranslationunit),
  ),
  Func(
    dartDoc: '',
    name: 'clang_disposeTranslationUnit',
    parameters: [
      Parameter(
        name: 'cxtranslation_unit',
        type: Type(_cxtranslationunit),
      ),
    ],
    returnType: Type('void'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getTranslationUnitCursor_wrap',
    parameters: [
      Parameter(
        name: 'cxtranslation_unit',
        type: Type(_cxtranslationunit),
      ),
    ],
    returnType: Type('*$_cxCursor'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getNumDiagnostics',
    parameters: [
      Parameter(
        name: 'cxtranslationunit',
        type: Type(_cxtranslationunit),
      ),
    ],
    returnType: Type('uint32'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getDiagnostic',
    parameters: [
      Parameter(
        name: 'cxTranslationUnit',
        type: Type(_cxtranslationunit),
      ),
      Parameter(
        name: 'position',
        type: Type('int32'),
      ),
    ],
    returnType: Type(_voidPointer),
  ),
  Func(
    dartDoc: '',
    name: 'clang_formatDiagnostic_wrap',
    parameters: [
      Parameter(
        name: 'diagnostic',
        type: Type(_voidPointer),
      ),
      Parameter(
        name: 'diagnosticOptions',
        type: Type('uint32'),
      ),
    ],
    returnType: Type('*$_cxString'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_defaultDiagnosticDisplayOptions',
    parameters: [],
    returnType: Type('uint32'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getCString_wrap',
    parameters: [
      Parameter(
        name: 'cxstringPtr',
        type: Type('*$_cxString'),
      ),
    ],
    returnType: Type(_charPointer),
  ),
  Func(
    dartDoc: '',
    name: 'clang_disposeString_wrap',
    parameters: [
      Parameter(
        name: 'cxstringPtr',
        type: Type('*$_cxString'),
      ),
    ],
    returnType: Type('void'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getCursorSpelling_wrap',
    parameters: [
      Parameter(
        name: 'cursor',
        type: Type('*$_cxCursor'),
      ),
    ],
    returnType: Type('*$_cxString'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getCursorKind_wrap',
    parameters: [
      Parameter(
        name: 'cursor',
        type: Type('*$_cxCursor'),
      ),
    ],
    returnType: Type('int32'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getCursorKindSpelling_wrap',
    parameters: [
      Parameter(
        name: 'kind',
        type: Type('int32'),
      ),
    ],
    returnType: Type('*$_cxString'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getCursorType_wrap',
    parameters: [
      Parameter(
        name: 'cursor',
        type: Type('*$_cxCursor'),
      ),
    ],
    returnType: Type('*$_cxType'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getTypeSpelling_wrap',
    parameters: [
      Parameter(
        name: 'typePtr',
        type: Type('*$_cxType'),
      ),
    ],
    returnType: Type('*$_cxString'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getResultType_wrap',
    parameters: [
      Parameter(
        name: 'functionType',
        type: Type('*$_cxType'),
      ),
    ],
    returnType: Type('*$_cxType'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_getPointeeType_wrap',
    parameters: [
      Parameter(
        name: 'pointerType',
        type: Type('*$_cxType'),
      ),
    ],
    returnType: Type('*$_cxType'),
  ),
  TypedefC(
    dartDoc:
        'C signature for `visitorFunction` parameter in [clang_visitChildren_wrap]',
    name: 'visitorFunctionSignature',
    parameters: [
      Parameter(
        name: 'cursor',
        type: Type('*$_cxCursor'),
      ),
      Parameter(
        name: 'parent',
        type: Type('*$_cxCursor'),
      ),
      Parameter(
        name: 'clientData',
        type: Type(_voidPointer),
      ),
    ],
    returnType: Type('int32'),
  ),
  Func(
    dartDoc: '',
    name: 'clang_visitChildren_wrap',
    parameters: [
      Parameter(
        name: 'cursor',
        type: Type('*$_cxCursor'),
      ),
      Parameter(
        name: 'pointerToVisitorFunc',
        type: Type(_modifiedVisitorFuncPtr),
      ),
      Parameter(
        name: 'clientData',
        type: Type('*void'),
      ),
    ],
    returnType: Type('int32'),
  ),
];

final structList = <Binding>[
  // Struc(dartDoc: '',name: 'CXTranslationUnitImpl', members: []),
  Struc(
    dartDoc: '',
    name: _cxUnsavedFile,
    members: [],
  ),
  Struc(
    dartDoc: '',
    name: _cxString,
    members: [],
  ),
  Struc(
    dartDoc: '',
    name: _cxCursor,
    members: [
      Member(type: Type('int32'), name: 'kind'),
    ],
  ),
  Struc(
    dartDoc: '',
    name: _cxType,
    members: [
      Member(type: Type('int32'), name: 'kind'),
    ],
  ),
  Struc(
    dartDoc: '',
    name: _cxTranslationUnitImp,
    members: [],
  ),
  // Global(name: "justANum", type: 'int32')
];

final constantsList = <Binding>[
  Constant(
    name: 'CXTranslationUnit_None',
    type: Type('int32'),
    rawValue: '0x0',
  ),
  Constant(
    name: 'CXChildVisit_Break',
    type: Type('int32'),
    rawValue: '0',
  ),
  Constant(
    name: 'CXChildVisit_Continue',
    type: Type('int32'),
    rawValue: '1',
  ),
  Constant(
    name: 'CXChildVisit_Recurse',
    type: Type('int32'),
    rawValue: '2',
  ),
  Constant(
    name: 'CXCursor_FunctionDecl',
    type: Type('int32'),
    rawValue: '8',
  ),
  Constant(
    name: 'CXCursor_ParmDecl',
    type: Type('int32'),
    rawValue: '10',
  ),
  Constant(
    name: 'CXType_Invalid',
    type: Type('int32'),
    rawValue: '0',
  ),
  Constant(
    name: 'CXType_Void',
    type: Type('int32'),
    rawValue: '2',
  ),
  Constant(
    name: 'CXType_Int',
    type: Type('int32'),
    rawValue: '17',
  ),
  Constant(
    name: 'CXType_FunctionProto',
    type: Type('int32'),
    rawValue: '111',
  ),
  Constant(
    name: 'CXType_Pointer',
    type: Type('int32'),
    rawValue: '101',
  ),
  Constant(
    name: 'CXType_Float',
    type: Type('int32'),
    rawValue: '21',
  ),
  Constant(
    name: 'CXType_Double',
    type: Type('int32'),
    rawValue: '22',
  ),
  // Constant(
  //   name: '',
  //   type: Type('int32'),
  //   rawValue: '',
  // ),
];
