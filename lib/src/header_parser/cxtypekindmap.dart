import 'package:ffigen/src/header_parser/clang_bindings/clang_constants.dart'
    as clang;

/// Utility to convert CXType to [code_generator.Type]
///
/// key: CXTypekindEnum, Value: TypeString for code_generator
final cxTypeKindMap = <int, String>{
  // clang.CXTypeKind.CXType_Invalid: '',
  // clang.CXTypeKind.CXType_Unexposed: '',
  clang.CXTypeKind.CXType_Void: 'void',
  // clang.CXTypeKind.CXType_Bool: '',
  // clang.CXTypeKind.CXType_Char_U: '',
  // clang.CXTypeKind.CXType_UChar: '',
  // clang.CXTypeKind.CXType_Char16: '',
  // clang.CXTypeKind.CXType_Char32: '',
  // clang.CXTypeKind.CXType_UShort: '',
  clang.CXTypeKind.CXType_UInt: 'uint32',
  // clang.CXTypeKind.CXType_ULong: '',
  // clang.CXTypeKind.CXType_ULongLong: '',
  // clang.CXTypeKind.CXType_UInt128: '',
  clang.CXTypeKind.CXType_Char_S: 'utf8',
  // clang.CXTypeKind.CXType_SChar: '',
  // clang.CXTypeKind.CXType_WChar: '',
  // clang.CXTypeKind.CXType_Short: '',
  clang.CXTypeKind.CXType_Int: 'int32',
  // clang.CXTypeKind.CXType_Long: '',
  // clang.CXTypeKind.CXType_LongLong: '',
  // clang.CXTypeKind.CXType_Int128: '',
  clang.CXTypeKind.CXType_Float: 'float',
  clang.CXTypeKind.CXType_Double: 'double',
  // clang.CXTypeKind.CXType_LongDouble: '',
  // clang.CXTypeKind.CXType_NullPtr: '',
  // clang.CXTypeKind.CXType_Overload: '',
  // clang.CXTypeKind.CXType_Dependent: '',
  // clang.CXTypeKind.CXType_ObjCId: '',
  // clang.CXTypeKind.CXType_ObjCClass: '',
  // clang.CXTypeKind.CXType_ObjCSel: '',
  // clang.CXTypeKind.CXType_Float128: '',
  // clang.CXTypeKind.CXType_Half: '',
  // clang.CXTypeKind.CXType_Float16: '',
  // clang.CXTypeKind.CXType_ShortAccum: '',
  // clang.CXTypeKind.CXType_Accum: '',
  // clang.CXTypeKind.CXType_LongAccum: '',
  // clang.CXTypeKind.CXType_UShortAccum: '',
  // clang.CXTypeKind.CXType_UAccum: '',
  // clang.CXTypeKind.CXType_ULongAccum: '',
  // clang.CXTypeKind.CXType_Complex: '',
  // clang.CXTypeKind.CXType_Pointer: '',
  // clang.CXTypeKind.CXType_BlockPointer: '',
  // clang.CXTypeKind.CXType_LValueReference: '',
  // clang.CXTypeKind.CXType_RValueReference: '',
  // clang.CXTypeKind.CXType_Record: '',
  // clang.CXTypeKind.CXType_Enum: '',
  clang.CXTypeKind.CXType_Typedef: '*void',
  // clang.CXTypeKind.CXType_ObjCInterface: '',
  // clang.CXTypeKind.CXType_ObjCObjectPointer: '',
  // clang.CXTypeKind.CXType_FunctionNoProto: '',
  // clang.CXTypeKind.CXType_FunctionProto: '',
  // clang.CXTypeKind.CXType_ConstantArray: '',
  // clang.CXTypeKind.CXType_Vector: '',
  // clang.CXTypeKind.CXType_IncompleteArray: '',
  // clang.CXTypeKind.CXType_VariableArray: '',
  // clang.CXTypeKind.CXType_DependentSizedArray: '',
  // clang.CXTypeKind.CXType_MemberPointer: '',
  // clang.CXTypeKind.CXType_Auto: '',
};
