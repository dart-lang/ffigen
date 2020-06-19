/// AUTO GENERATED FILE, DO NOT EDIT.
import 'dart:ffi' as ffi;

/// Dynamic library
ffi.DynamicLibrary _dylib;

/// Initialises dynamic library
void init(ffi.DynamicLibrary dylib) {
  _dylib = dylib;
}

/// Describes how the traversal of the children of a particular cursor should proceed after visiting a particular child cursor.
class CXChildVisitResult {
  static const int CXChildVisit_Break = 0;
  static const int CXChildVisit_Continue = 1;
  static const int CXChildVisit_Recurse = 2;
}

/// A cursor representing some element in the abstract syntax tree for a translation unit.
class CXCursor extends ffi.Struct {
  @ffi.Int32()
  int kind;

  @ffi.Int32()
  int xdata;

  ffi.Pointer<ffi.Void> _data_item_0;
  ffi.Pointer<ffi.Void> _data_item_1;
  ffi.Pointer<ffi.Void> _data_item_2;

  /// helper for array, supports `[]` operator
  _ArrayHelper_CXCursor_data get data => _ArrayHelper_CXCursor_data(this, 3);
}

/// Helper for array data in struct CXCursor
class _ArrayHelper_CXCursor_data {
  final CXCursor _struct;
  final int length;
  _ArrayHelper_CXCursor_data(this._struct, this.length);
  void operator []=(int index, ffi.Pointer<ffi.Void> value) {
    switch (index) {
      case 0:
        _struct._data_item_0 = value;
        break;
      case 1:
        _struct._data_item_1 = value;
        break;
      case 2:
        _struct._data_item_2 = value;
        break;
      default:
        throw RangeError('Index $index must be in the range [0..2].');
    }
  }

  ffi.Pointer<ffi.Void> operator [](int index) {
    switch (index) {
      case 0:
        return _struct._data_item_0;
      case 1:
        return _struct._data_item_1;
      case 2:
        return _struct._data_item_2;
      default:
        throw RangeError('Index $index must be in the range [0..2].');
    }
  }

  @override
  String toString() {
    if (length == 0) return '[]';
    var sb = StringBuffer('[');
    sb.write(this[0]);
    for (var i = 1; i < length; i++) {
      sb.write(',');
      sb.write(this[i]);
    }
    sb.write(']');
    return sb.toString();
  }
}

/// Describes the kind of entity that a cursor refers to.
class CXCursorKind {
  static const int CXCursor_UnexposedDecl = 1;
  static const int CXCursor_StructDecl = 2;
  static const int CXCursor_UnionDecl = 3;
  static const int CXCursor_ClassDecl = 4;
  static const int CXCursor_EnumDecl = 5;
  static const int CXCursor_FieldDecl = 6;
  static const int CXCursor_EnumConstantDecl = 7;
  static const int CXCursor_FunctionDecl = 8;
  static const int CXCursor_VarDecl = 9;
  static const int CXCursor_ParmDecl = 10;
  static const int CXCursor_ObjCInterfaceDecl = 11;
  static const int CXCursor_ObjCCategoryDecl = 12;
  static const int CXCursor_ObjCProtocolDecl = 13;
  static const int CXCursor_ObjCPropertyDecl = 14;
  static const int CXCursor_ObjCIvarDecl = 15;
  static const int CXCursor_ObjCInstanceMethodDecl = 16;
  static const int CXCursor_ObjCClassMethodDecl = 17;
  static const int CXCursor_ObjCImplementationDecl = 18;
  static const int CXCursor_ObjCCategoryImplDecl = 19;
  static const int CXCursor_TypedefDecl = 20;
  static const int CXCursor_CXXMethod = 21;
  static const int CXCursor_Namespace = 22;
  static const int CXCursor_LinkageSpec = 23;
  static const int CXCursor_Constructor = 24;
  static const int CXCursor_Destructor = 25;
  static const int CXCursor_ConversionFunction = 26;
  static const int CXCursor_TemplateTypeParameter = 27;
  static const int CXCursor_NonTypeTemplateParameter = 28;
  static const int CXCursor_TemplateTemplateParameter = 29;
  static const int CXCursor_FunctionTemplate = 30;
  static const int CXCursor_ClassTemplate = 31;
  static const int CXCursor_ClassTemplatePartialSpecialization = 32;
  static const int CXCursor_NamespaceAlias = 33;
  static const int CXCursor_UsingDirective = 34;
  static const int CXCursor_UsingDeclaration = 35;
  static const int CXCursor_TypeAliasDecl = 36;
  static const int CXCursor_ObjCSynthesizeDecl = 37;
  static const int CXCursor_ObjCDynamicDecl = 38;
  static const int CXCursor_CXXAccessSpecifier = 39;
  static const int CXCursor_FirstDecl = 1;
  static const int CXCursor_LastDecl = 39;
  static const int CXCursor_FirstRef = 40;
  static const int CXCursor_ObjCSuperClassRef = 40;
  static const int CXCursor_ObjCProtocolRef = 41;
  static const int CXCursor_ObjCClassRef = 42;
  static const int CXCursor_TypeRef = 43;
  static const int CXCursor_CXXBaseSpecifier = 44;
  static const int CXCursor_TemplateRef = 45;
  static const int CXCursor_NamespaceRef = 46;
  static const int CXCursor_MemberRef = 47;
  static const int CXCursor_LabelRef = 48;
  static const int CXCursor_OverloadedDeclRef = 49;
  static const int CXCursor_VariableRef = 50;
  static const int CXCursor_LastRef = 50;
  static const int CXCursor_FirstInvalid = 70;
  static const int CXCursor_InvalidFile = 70;
  static const int CXCursor_NoDeclFound = 71;
  static const int CXCursor_NotImplemented = 72;
  static const int CXCursor_InvalidCode = 73;
  static const int CXCursor_LastInvalid = 73;
  static const int CXCursor_FirstExpr = 100;
  static const int CXCursor_UnexposedExpr = 100;
  static const int CXCursor_DeclRefExpr = 101;
  static const int CXCursor_MemberRefExpr = 102;
  static const int CXCursor_CallExpr = 103;
  static const int CXCursor_ObjCMessageExpr = 104;
  static const int CXCursor_BlockExpr = 105;
  static const int CXCursor_IntegerLiteral = 106;
  static const int CXCursor_FloatingLiteral = 107;
  static const int CXCursor_ImaginaryLiteral = 108;
  static const int CXCursor_StringLiteral = 109;
  static const int CXCursor_CharacterLiteral = 110;
  static const int CXCursor_ParenExpr = 111;
  static const int CXCursor_UnaryOperator = 112;
  static const int CXCursor_ArraySubscriptExpr = 113;
  static const int CXCursor_BinaryOperator = 114;
  static const int CXCursor_CompoundAssignOperator = 115;
  static const int CXCursor_ConditionalOperator = 116;
  static const int CXCursor_CStyleCastExpr = 117;
  static const int CXCursor_CompoundLiteralExpr = 118;
  static const int CXCursor_InitListExpr = 119;
  static const int CXCursor_AddrLabelExpr = 120;
  static const int CXCursor_StmtExpr = 121;
  static const int CXCursor_GenericSelectionExpr = 122;
  static const int CXCursor_GNUNullExpr = 123;
  static const int CXCursor_CXXStaticCastExpr = 124;
  static const int CXCursor_CXXDynamicCastExpr = 125;
  static const int CXCursor_CXXReinterpretCastExpr = 126;
  static const int CXCursor_CXXConstCastExpr = 127;
  static const int CXCursor_CXXFunctionalCastExpr = 128;
  static const int CXCursor_CXXTypeidExpr = 129;
  static const int CXCursor_CXXBoolLiteralExpr = 130;
  static const int CXCursor_CXXNullPtrLiteralExpr = 131;
  static const int CXCursor_CXXThisExpr = 132;
  static const int CXCursor_CXXThrowExpr = 133;
  static const int CXCursor_CXXNewExpr = 134;
  static const int CXCursor_CXXDeleteExpr = 135;
  static const int CXCursor_UnaryExpr = 136;
  static const int CXCursor_ObjCStringLiteral = 137;
  static const int CXCursor_ObjCEncodeExpr = 138;
  static const int CXCursor_ObjCSelectorExpr = 139;
  static const int CXCursor_ObjCProtocolExpr = 140;
  static const int CXCursor_ObjCBridgedCastExpr = 141;
  static const int CXCursor_PackExpansionExpr = 142;
  static const int CXCursor_SizeOfPackExpr = 143;
  static const int CXCursor_LambdaExpr = 144;
  static const int CXCursor_ObjCBoolLiteralExpr = 145;
  static const int CXCursor_ObjCSelfExpr = 146;
  static const int CXCursor_OMPArraySectionExpr = 147;
  static const int CXCursor_ObjCAvailabilityCheckExpr = 148;
  static const int CXCursor_FixedPointLiteral = 149;
  static const int CXCursor_LastExpr = 149;
  static const int CXCursor_FirstStmt = 200;
  static const int CXCursor_UnexposedStmt = 200;
  static const int CXCursor_LabelStmt = 201;
  static const int CXCursor_CompoundStmt = 202;
  static const int CXCursor_CaseStmt = 203;
  static const int CXCursor_DefaultStmt = 204;
  static const int CXCursor_IfStmt = 205;
  static const int CXCursor_SwitchStmt = 206;
  static const int CXCursor_WhileStmt = 207;
  static const int CXCursor_DoStmt = 208;
  static const int CXCursor_ForStmt = 209;
  static const int CXCursor_GotoStmt = 210;
  static const int CXCursor_IndirectGotoStmt = 211;
  static const int CXCursor_ContinueStmt = 212;
  static const int CXCursor_BreakStmt = 213;
  static const int CXCursor_ReturnStmt = 214;
  static const int CXCursor_GCCAsmStmt = 215;
  static const int CXCursor_AsmStmt = 215;
  static const int CXCursor_ObjCAtTryStmt = 216;
  static const int CXCursor_ObjCAtCatchStmt = 217;
  static const int CXCursor_ObjCAtFinallyStmt = 218;
  static const int CXCursor_ObjCAtThrowStmt = 219;
  static const int CXCursor_ObjCAtSynchronizedStmt = 220;
  static const int CXCursor_ObjCAutoreleasePoolStmt = 221;
  static const int CXCursor_ObjCForCollectionStmt = 222;
  static const int CXCursor_CXXCatchStmt = 223;
  static const int CXCursor_CXXTryStmt = 224;
  static const int CXCursor_CXXForRangeStmt = 225;
  static const int CXCursor_SEHTryStmt = 226;
  static const int CXCursor_SEHExceptStmt = 227;
  static const int CXCursor_SEHFinallyStmt = 228;
  static const int CXCursor_MSAsmStmt = 229;
  static const int CXCursor_NullStmt = 230;
  static const int CXCursor_DeclStmt = 231;
  static const int CXCursor_OMPParallelDirective = 232;
  static const int CXCursor_OMPSimdDirective = 233;
  static const int CXCursor_OMPForDirective = 234;
  static const int CXCursor_OMPSectionsDirective = 235;
  static const int CXCursor_OMPSectionDirective = 236;
  static const int CXCursor_OMPSingleDirective = 237;
  static const int CXCursor_OMPParallelForDirective = 238;
  static const int CXCursor_OMPParallelSectionsDirective = 239;
  static const int CXCursor_OMPTaskDirective = 240;
  static const int CXCursor_OMPMasterDirective = 241;
  static const int CXCursor_OMPCriticalDirective = 242;
  static const int CXCursor_OMPTaskyieldDirective = 243;
  static const int CXCursor_OMPBarrierDirective = 244;
  static const int CXCursor_OMPTaskwaitDirective = 245;
  static const int CXCursor_OMPFlushDirective = 246;
  static const int CXCursor_SEHLeaveStmt = 247;
  static const int CXCursor_OMPOrderedDirective = 248;
  static const int CXCursor_OMPAtomicDirective = 249;
  static const int CXCursor_OMPForSimdDirective = 250;
  static const int CXCursor_OMPParallelForSimdDirective = 251;
  static const int CXCursor_OMPTargetDirective = 252;
  static const int CXCursor_OMPTeamsDirective = 253;
  static const int CXCursor_OMPTaskgroupDirective = 254;
  static const int CXCursor_OMPCancellationPointDirective = 255;
  static const int CXCursor_OMPCancelDirective = 256;
  static const int CXCursor_OMPTargetDataDirective = 257;
  static const int CXCursor_OMPTaskLoopDirective = 258;
  static const int CXCursor_OMPTaskLoopSimdDirective = 259;
  static const int CXCursor_OMPDistributeDirective = 260;
  static const int CXCursor_OMPTargetEnterDataDirective = 261;
  static const int CXCursor_OMPTargetExitDataDirective = 262;
  static const int CXCursor_OMPTargetParallelDirective = 263;
  static const int CXCursor_OMPTargetParallelForDirective = 264;
  static const int CXCursor_OMPTargetUpdateDirective = 265;
  static const int CXCursor_OMPDistributeParallelForDirective = 266;
  static const int CXCursor_OMPDistributeParallelForSimdDirective = 267;
  static const int CXCursor_OMPDistributeSimdDirective = 268;
  static const int CXCursor_OMPTargetParallelForSimdDirective = 269;
  static const int CXCursor_OMPTargetSimdDirective = 270;
  static const int CXCursor_OMPTeamsDistributeDirective = 271;
  static const int CXCursor_OMPTeamsDistributeSimdDirective = 272;
  static const int CXCursor_OMPTeamsDistributeParallelForSimdDirective = 273;
  static const int CXCursor_OMPTeamsDistributeParallelForDirective = 274;
  static const int CXCursor_OMPTargetTeamsDirective = 275;
  static const int CXCursor_OMPTargetTeamsDistributeDirective = 276;
  static const int CXCursor_OMPTargetTeamsDistributeParallelForDirective = 277;
  static const int CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective =
      278;
  static const int CXCursor_OMPTargetTeamsDistributeSimdDirective = 279;
  static const int CXCursor_BuiltinBitCastExpr = 280;
  static const int CXCursor_OMPMasterTaskLoopDirective = 281;
  static const int CXCursor_OMPParallelMasterTaskLoopDirective = 282;
  static const int CXCursor_OMPMasterTaskLoopSimdDirective = 283;
  static const int CXCursor_OMPParallelMasterTaskLoopSimdDirective = 284;
  static const int CXCursor_OMPParallelMasterDirective = 285;
  static const int CXCursor_LastStmt = 285;
  static const int CXCursor_TranslationUnit = 300;
  static const int CXCursor_FirstAttr = 400;
  static const int CXCursor_UnexposedAttr = 400;
  static const int CXCursor_IBActionAttr = 401;
  static const int CXCursor_IBOutletAttr = 402;
  static const int CXCursor_IBOutletCollectionAttr = 403;
  static const int CXCursor_CXXFinalAttr = 404;
  static const int CXCursor_CXXOverrideAttr = 405;
  static const int CXCursor_AnnotateAttr = 406;
  static const int CXCursor_AsmLabelAttr = 407;
  static const int CXCursor_PackedAttr = 408;
  static const int CXCursor_PureAttr = 409;
  static const int CXCursor_ConstAttr = 410;
  static const int CXCursor_NoDuplicateAttr = 411;
  static const int CXCursor_CUDAConstantAttr = 412;
  static const int CXCursor_CUDADeviceAttr = 413;
  static const int CXCursor_CUDAGlobalAttr = 414;
  static const int CXCursor_CUDAHostAttr = 415;
  static const int CXCursor_CUDASharedAttr = 416;
  static const int CXCursor_VisibilityAttr = 417;
  static const int CXCursor_DLLExport = 418;
  static const int CXCursor_DLLImport = 419;
  static const int CXCursor_NSReturnsRetained = 420;
  static const int CXCursor_NSReturnsNotRetained = 421;
  static const int CXCursor_NSReturnsAutoreleased = 422;
  static const int CXCursor_NSConsumesSelf = 423;
  static const int CXCursor_NSConsumed = 424;
  static const int CXCursor_ObjCException = 425;
  static const int CXCursor_ObjCNSObject = 426;
  static const int CXCursor_ObjCIndependentClass = 427;
  static const int CXCursor_ObjCPreciseLifetime = 428;
  static const int CXCursor_ObjCReturnsInnerPointer = 429;
  static const int CXCursor_ObjCRequiresSuper = 430;
  static const int CXCursor_ObjCRootClass = 431;
  static const int CXCursor_ObjCSubclassingRestricted = 432;
  static const int CXCursor_ObjCExplicitProtocolImpl = 433;
  static const int CXCursor_ObjCDesignatedInitializer = 434;
  static const int CXCursor_ObjCRuntimeVisible = 435;
  static const int CXCursor_ObjCBoxable = 436;
  static const int CXCursor_FlagEnum = 437;
  static const int CXCursor_ConvergentAttr = 438;
  static const int CXCursor_WarnUnusedAttr = 439;
  static const int CXCursor_WarnUnusedResultAttr = 440;
  static const int CXCursor_AlignedAttr = 441;
  static const int CXCursor_LastAttr = 441;
  static const int CXCursor_PreprocessingDirective = 500;
  static const int CXCursor_MacroDefinition = 501;
  static const int CXCursor_MacroExpansion = 502;
  static const int CXCursor_MacroInstantiation = 502;
  static const int CXCursor_InclusionDirective = 503;
  static const int CXCursor_FirstPreprocessing = 500;
  static const int CXCursor_LastPreprocessing = 503;
  static const int CXCursor_ModuleImportDecl = 600;
  static const int CXCursor_TypeAliasTemplateDecl = 601;
  static const int CXCursor_StaticAssert = 602;
  static const int CXCursor_FriendDecl = 603;
  static const int CXCursor_FirstExtraDecl = 600;
  static const int CXCursor_LastExtraDecl = 603;
  static const int CXCursor_OverloadCandidate = 700;
}

/// Options to control the display of diagnostics.
class CXDiagnosticDisplayOptions {
  static const int CXDiagnostic_DisplaySourceLocation = 1;
  static const int CXDiagnostic_DisplayColumn = 2;
  static const int CXDiagnostic_DisplaySourceRanges = 4;
  static const int CXDiagnostic_DisplayOption = 8;
  static const int CXDiagnostic_DisplayCategoryId = 16;
  static const int CXDiagnostic_DisplayCategoryName = 32;
}

/// Identifies a specific source location within a translation unit.
class CXSourceLocation extends ffi.Struct {
  ffi.Pointer<ffi.Void> _ptr_data_item_0;
  ffi.Pointer<ffi.Void> _ptr_data_item_1;
  ffi.Pointer<ffi.Void> _ptr_data_item_2;

  /// helper for array, supports `[]` operator
  _ArrayHelper_CXSourceLocation_ptr_data get ptr_data =>
      _ArrayHelper_CXSourceLocation_ptr_data(this, 3);
  @ffi.Uint32()
  int int_data;
}

/// Helper for array ptr_data in struct CXSourceLocation
class _ArrayHelper_CXSourceLocation_ptr_data {
  final CXSourceLocation _struct;
  final int length;
  _ArrayHelper_CXSourceLocation_ptr_data(this._struct, this.length);
  void operator []=(int index, ffi.Pointer<ffi.Void> value) {
    switch (index) {
      case 0:
        _struct._ptr_data_item_0 = value;
        break;
      case 1:
        _struct._ptr_data_item_1 = value;
        break;
      case 2:
        _struct._ptr_data_item_2 = value;
        break;
      default:
        throw RangeError('Index $index must be in the range [0..2].');
    }
  }

  ffi.Pointer<ffi.Void> operator [](int index) {
    switch (index) {
      case 0:
        return _struct._ptr_data_item_0;
      case 1:
        return _struct._ptr_data_item_1;
      case 2:
        return _struct._ptr_data_item_2;
      default:
        throw RangeError('Index $index must be in the range [0..2].');
    }
  }

  @override
  String toString() {
    if (length == 0) return '[]';
    var sb = StringBuffer('[');
    sb.write(this[0]);
    for (var i = 1; i < length; i++) {
      sb.write(',');
      sb.write(this[i]);
    }
    sb.write(']');
    return sb.toString();
  }
}

/// A character string.
class CXString extends ffi.Struct {
  ffi.Pointer<ffi.Void> data;

  @ffi.Uint32()
  int private_flags;
}

class CXTranslationUnitImpl extends ffi.Struct {}

/// Flags that control the creation of translation units.
class CXTranslationUnit_Flags {
  static const int CXTranslationUnit_None = 0;
  static const int CXTranslationUnit_DetailedPreprocessingRecord = 1;
  static const int CXTranslationUnit_Incomplete = 2;
  static const int CXTranslationUnit_PrecompiledPreamble = 4;
  static const int CXTranslationUnit_CacheCompletionResults = 8;
  static const int CXTranslationUnit_ForSerialization = 16;
  static const int CXTranslationUnit_CXXChainedPCH = 32;
  static const int CXTranslationUnit_SkipFunctionBodies = 64;
  static const int CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = 128;
  static const int CXTranslationUnit_CreatePreambleOnFirstParse = 256;
  static const int CXTranslationUnit_KeepGoing = 512;
  static const int CXTranslationUnit_SingleFileParse = 1024;
  static const int CXTranslationUnit_LimitSkipFunctionBodiesToPreamble = 2048;
  static const int CXTranslationUnit_IncludeAttributedTypes = 4096;
  static const int CXTranslationUnit_VisitImplicitAttributes = 8192;
  static const int CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles = 16384;
  static const int CXTranslationUnit_RetainExcludedConditionalBlocks = 32768;
}

/// The type of an element in the abstract syntax tree.
class CXType extends ffi.Struct {
  @ffi.Int32()
  int kind;

  ffi.Pointer<ffi.Void> _data_item_0;
  ffi.Pointer<ffi.Void> _data_item_1;
  ffi.Pointer<ffi.Void> _data_item_2;

  /// helper for array, supports `[]` operator
  _ArrayHelper_CXType_data get data => _ArrayHelper_CXType_data(this, 3);
}

/// Helper for array data in struct CXType
class _ArrayHelper_CXType_data {
  final CXType _struct;
  final int length;
  _ArrayHelper_CXType_data(this._struct, this.length);
  void operator []=(int index, ffi.Pointer<ffi.Void> value) {
    switch (index) {
      case 0:
        _struct._data_item_0 = value;
        break;
      case 1:
        _struct._data_item_1 = value;
        break;
      case 2:
        _struct._data_item_2 = value;
        break;
      default:
        throw RangeError('Index $index must be in the range [0..2].');
    }
  }

  ffi.Pointer<ffi.Void> operator [](int index) {
    switch (index) {
      case 0:
        return _struct._data_item_0;
      case 1:
        return _struct._data_item_1;
      case 2:
        return _struct._data_item_2;
      default:
        throw RangeError('Index $index must be in the range [0..2].');
    }
  }

  @override
  String toString() {
    if (length == 0) return '[]';
    var sb = StringBuffer('[');
    sb.write(this[0]);
    for (var i = 1; i < length; i++) {
      sb.write(',');
      sb.write(this[i]);
    }
    sb.write(']');
    return sb.toString();
  }
}

/// Describes the kind of type
class CXTypeKind {
  static const int CXType_Invalid = 0;
  static const int CXType_Unexposed = 1;
  static const int CXType_Void = 2;
  static const int CXType_Bool = 3;
  static const int CXType_Char_U = 4;
  static const int CXType_UChar = 5;
  static const int CXType_Char16 = 6;
  static const int CXType_Char32 = 7;
  static const int CXType_UShort = 8;
  static const int CXType_UInt = 9;
  static const int CXType_ULong = 10;
  static const int CXType_ULongLong = 11;
  static const int CXType_UInt128 = 12;
  static const int CXType_Char_S = 13;
  static const int CXType_SChar = 14;
  static const int CXType_WChar = 15;
  static const int CXType_Short = 16;
  static const int CXType_Int = 17;
  static const int CXType_Long = 18;
  static const int CXType_LongLong = 19;
  static const int CXType_Int128 = 20;
  static const int CXType_Float = 21;
  static const int CXType_Double = 22;
  static const int CXType_LongDouble = 23;
  static const int CXType_NullPtr = 24;
  static const int CXType_Overload = 25;
  static const int CXType_Dependent = 26;
  static const int CXType_ObjCId = 27;
  static const int CXType_ObjCClass = 28;
  static const int CXType_ObjCSel = 29;
  static const int CXType_Float128 = 30;
  static const int CXType_Half = 31;
  static const int CXType_Float16 = 32;
  static const int CXType_ShortAccum = 33;
  static const int CXType_Accum = 34;
  static const int CXType_LongAccum = 35;
  static const int CXType_UShortAccum = 36;
  static const int CXType_UAccum = 37;
  static const int CXType_ULongAccum = 38;
  static const int CXType_FirstBuiltin = 2;
  static const int CXType_LastBuiltin = 38;
  static const int CXType_Complex = 100;
  static const int CXType_Pointer = 101;
  static const int CXType_BlockPointer = 102;
  static const int CXType_LValueReference = 103;
  static const int CXType_RValueReference = 104;
  static const int CXType_Record = 105;
  static const int CXType_Enum = 106;
  static const int CXType_Typedef = 107;
  static const int CXType_ObjCInterface = 108;
  static const int CXType_ObjCObjectPointer = 109;
  static const int CXType_FunctionNoProto = 110;
  static const int CXType_FunctionProto = 111;
  static const int CXType_ConstantArray = 112;
  static const int CXType_Vector = 113;
  static const int CXType_IncompleteArray = 114;
  static const int CXType_VariableArray = 115;
  static const int CXType_DependentSizedArray = 116;
  static const int CXType_MemberPointer = 117;
  static const int CXType_Auto = 118;
  static const int CXType_Elaborated = 119;
  static const int CXType_Pipe = 120;
  static const int CXType_OCLImage1dRO = 121;
  static const int CXType_OCLImage1dArrayRO = 122;
  static const int CXType_OCLImage1dBufferRO = 123;
  static const int CXType_OCLImage2dRO = 124;
  static const int CXType_OCLImage2dArrayRO = 125;
  static const int CXType_OCLImage2dDepthRO = 126;
  static const int CXType_OCLImage2dArrayDepthRO = 127;
  static const int CXType_OCLImage2dMSAARO = 128;
  static const int CXType_OCLImage2dArrayMSAARO = 129;
  static const int CXType_OCLImage2dMSAADepthRO = 130;
  static const int CXType_OCLImage2dArrayMSAADepthRO = 131;
  static const int CXType_OCLImage3dRO = 132;
  static const int CXType_OCLImage1dWO = 133;
  static const int CXType_OCLImage1dArrayWO = 134;
  static const int CXType_OCLImage1dBufferWO = 135;
  static const int CXType_OCLImage2dWO = 136;
  static const int CXType_OCLImage2dArrayWO = 137;
  static const int CXType_OCLImage2dDepthWO = 138;
  static const int CXType_OCLImage2dArrayDepthWO = 139;
  static const int CXType_OCLImage2dMSAAWO = 140;
  static const int CXType_OCLImage2dArrayMSAAWO = 141;
  static const int CXType_OCLImage2dMSAADepthWO = 142;
  static const int CXType_OCLImage2dArrayMSAADepthWO = 143;
  static const int CXType_OCLImage3dWO = 144;
  static const int CXType_OCLImage1dRW = 145;
  static const int CXType_OCLImage1dArrayRW = 146;
  static const int CXType_OCLImage1dBufferRW = 147;
  static const int CXType_OCLImage2dRW = 148;
  static const int CXType_OCLImage2dArrayRW = 149;
  static const int CXType_OCLImage2dDepthRW = 150;
  static const int CXType_OCLImage2dArrayDepthRW = 151;
  static const int CXType_OCLImage2dMSAARW = 152;
  static const int CXType_OCLImage2dArrayMSAARW = 153;
  static const int CXType_OCLImage2dMSAADepthRW = 154;
  static const int CXType_OCLImage2dArrayMSAADepthRW = 155;
  static const int CXType_OCLImage3dRW = 156;
  static const int CXType_OCLSampler = 157;
  static const int CXType_OCLEvent = 158;
  static const int CXType_OCLQueue = 159;
  static const int CXType_OCLReserveID = 160;
  static const int CXType_ObjCObject = 161;
  static const int CXType_ObjCTypeParam = 162;
  static const int CXType_Attributed = 163;
  static const int CXType_OCLIntelSubgroupAVCMcePayload = 164;
  static const int CXType_OCLIntelSubgroupAVCImePayload = 165;
  static const int CXType_OCLIntelSubgroupAVCRefPayload = 166;
  static const int CXType_OCLIntelSubgroupAVCSicPayload = 167;
  static const int CXType_OCLIntelSubgroupAVCMceResult = 168;
  static const int CXType_OCLIntelSubgroupAVCImeResult = 169;
  static const int CXType_OCLIntelSubgroupAVCRefResult = 170;
  static const int CXType_OCLIntelSubgroupAVCSicResult = 171;
  static const int CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout = 172;
  static const int CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout = 173;
  static const int CXType_OCLIntelSubgroupAVCImeSingleRefStreamin = 174;
  static const int CXType_OCLIntelSubgroupAVCImeDualRefStreamin = 175;
  static const int CXType_ExtVector = 176;
}

/// Provides the contents of a file that has not yet been saved to disk.
class CXUnsavedFile extends ffi.Struct {
  ffi.Pointer<ffi.Int8> Filename;

  ffi.Pointer<ffi.Int8> Contents;

  @ffi.Uint64()
  int Length;
}

typedef ModifiedCXCursorVisitor = ffi.Int32 Function(
  ffi.Pointer<CXCursor>,
  ffi.Pointer<CXCursor>,
  ffi.Pointer<ffi.Void>,
);

ffi.Pointer<CXCursor> clang_Cursor_getArgument_wrap(
  ffi.Pointer<CXCursor> cursor,
  int i,
) {
  return _clang_Cursor_getArgument_wrap(
    cursor,
    i,
  );
}

final _dart_clang_Cursor_getArgument_wrap _clang_Cursor_getArgument_wrap =
    _dylib.lookupFunction<_c_clang_Cursor_getArgument_wrap,
        _dart_clang_Cursor_getArgument_wrap>('clang_Cursor_getArgument_wrap');

typedef _c_clang_Cursor_getArgument_wrap = ffi.Pointer<CXCursor> Function(
  ffi.Pointer<CXCursor> cursor,
  ffi.Uint32 i,
);

typedef _dart_clang_Cursor_getArgument_wrap = ffi.Pointer<CXCursor> Function(
  ffi.Pointer<CXCursor> cursor,
  int i,
);

/// Returns the first paragraph of doxygen doc comment
ffi.Pointer<CXString> clang_Cursor_getBriefCommentText_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_Cursor_getBriefCommentText_wrap(
    cursor,
  );
}

final _dart_clang_Cursor_getBriefCommentText_wrap
    _clang_Cursor_getBriefCommentText_wrap = _dylib.lookupFunction<
            _c_clang_Cursor_getBriefCommentText_wrap,
            _dart_clang_Cursor_getBriefCommentText_wrap>(
        'clang_Cursor_getBriefCommentText_wrap');

typedef _c_clang_Cursor_getBriefCommentText_wrap = ffi.Pointer<CXString>
    Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_Cursor_getBriefCommentText_wrap = ffi.Pointer<CXString>
    Function(
  ffi.Pointer<CXCursor> cursor,
);

int clang_Cursor_getNumArguments_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_Cursor_getNumArguments_wrap(
    cursor,
  );
}

final _dart_clang_Cursor_getNumArguments_wrap
    _clang_Cursor_getNumArguments_wrap = _dylib.lookupFunction<
            _c_clang_Cursor_getNumArguments_wrap,
            _dart_clang_Cursor_getNumArguments_wrap>(
        'clang_Cursor_getNumArguments_wrap');

typedef _c_clang_Cursor_getNumArguments_wrap = ffi.Int32 Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_Cursor_getNumArguments_wrap = int Function(
  ffi.Pointer<CXCursor> cursor,
);

ffi.Pointer<CXType> clang_Type_getNamedType_wrap(
  ffi.Pointer<CXType> elaboratedType,
) {
  return _clang_Type_getNamedType_wrap(
    elaboratedType,
  );
}

final _dart_clang_Type_getNamedType_wrap _clang_Type_getNamedType_wrap =
    _dylib.lookupFunction<_c_clang_Type_getNamedType_wrap,
        _dart_clang_Type_getNamedType_wrap>('clang_Type_getNamedType_wrap');

typedef _c_clang_Type_getNamedType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> elaboratedType,
);

typedef _dart_clang_Type_getNamedType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> elaboratedType,
);

/// Provides a shared context for creating translation units.
ffi.Pointer<ffi.Void> clang_createIndex(
  int excludeDeclarationsFromPCH,
  int displayDiagnostics,
) {
  return _clang_createIndex(
    excludeDeclarationsFromPCH,
    displayDiagnostics,
  );
}

final _dart_clang_createIndex _clang_createIndex =
    _dylib.lookupFunction<_c_clang_createIndex, _dart_clang_createIndex>(
        'clang_createIndex');

typedef _c_clang_createIndex = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 excludeDeclarationsFromPCH,
  ffi.Int32 displayDiagnostics,
);

typedef _dart_clang_createIndex = ffi.Pointer<ffi.Void> Function(
  int excludeDeclarationsFromPCH,
  int displayDiagnostics,
);

/// Destroy a diagnostic.
void clang_disposeDiagnostic(
  ffi.Pointer<ffi.Void> Diagnostic,
) {
  return _clang_disposeDiagnostic(
    Diagnostic,
  );
}

final _dart_clang_disposeDiagnostic _clang_disposeDiagnostic = _dylib
    .lookupFunction<_c_clang_disposeDiagnostic, _dart_clang_disposeDiagnostic>(
        'clang_disposeDiagnostic');

typedef _c_clang_disposeDiagnostic = ffi.Void Function(
  ffi.Pointer<ffi.Void> Diagnostic,
);

typedef _dart_clang_disposeDiagnostic = void Function(
  ffi.Pointer<ffi.Void> Diagnostic,
);

/// Destroy the given index.
void clang_disposeIndex(
  ffi.Pointer<ffi.Void> index,
) {
  return _clang_disposeIndex(
    index,
  );
}

final _dart_clang_disposeIndex _clang_disposeIndex =
    _dylib.lookupFunction<_c_clang_disposeIndex, _dart_clang_disposeIndex>(
        'clang_disposeIndex');

typedef _c_clang_disposeIndex = ffi.Void Function(
  ffi.Pointer<ffi.Void> index,
);

typedef _dart_clang_disposeIndex = void Function(
  ffi.Pointer<ffi.Void> index,
);

void clang_disposeString_wrap(
  ffi.Pointer<CXString> string,
) {
  return _clang_disposeString_wrap(
    string,
  );
}

final _dart_clang_disposeString_wrap _clang_disposeString_wrap =
    _dylib.lookupFunction<_c_clang_disposeString_wrap,
        _dart_clang_disposeString_wrap>('clang_disposeString_wrap');

typedef _c_clang_disposeString_wrap = ffi.Void Function(
  ffi.Pointer<CXString> string,
);

typedef _dart_clang_disposeString_wrap = void Function(
  ffi.Pointer<CXString> string,
);

/// Destroy the specified CXTranslationUnit object.
void clang_disposeTranslationUnit(
  ffi.Pointer<CXTranslationUnitImpl> arg0,
) {
  return _clang_disposeTranslationUnit(
    arg0,
  );
}

final _dart_clang_disposeTranslationUnit _clang_disposeTranslationUnit =
    _dylib.lookupFunction<_c_clang_disposeTranslationUnit,
        _dart_clang_disposeTranslationUnit>('clang_disposeTranslationUnit');

typedef _c_clang_disposeTranslationUnit = ffi.Void Function(
  ffi.Pointer<CXTranslationUnitImpl> arg0,
);

typedef _dart_clang_disposeTranslationUnit = void Function(
  ffi.Pointer<CXTranslationUnitImpl> arg0,
);

ffi.Pointer<CXString> clang_formatDiagnostic_wrap(
  ffi.Pointer<ffi.Void> diag,
  int opts,
) {
  return _clang_formatDiagnostic_wrap(
    diag,
    opts,
  );
}

final _dart_clang_formatDiagnostic_wrap _clang_formatDiagnostic_wrap =
    _dylib.lookupFunction<_c_clang_formatDiagnostic_wrap,
        _dart_clang_formatDiagnostic_wrap>('clang_formatDiagnostic_wrap');

typedef _c_clang_formatDiagnostic_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<ffi.Void> diag,
  ffi.Int32 opts,
);

typedef _dart_clang_formatDiagnostic_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<ffi.Void> diag,
  int opts,
);

ffi.Pointer<CXType> clang_getArgType_wrap(
  ffi.Pointer<CXType> cxtype,
  int i,
) {
  return _clang_getArgType_wrap(
    cxtype,
    i,
  );
}

final _dart_clang_getArgType_wrap _clang_getArgType_wrap = _dylib
    .lookupFunction<_c_clang_getArgType_wrap, _dart_clang_getArgType_wrap>(
        'clang_getArgType_wrap');

typedef _c_clang_getArgType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> cxtype,
  ffi.Uint32 i,
);

typedef _dart_clang_getArgType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> cxtype,
  int i,
);

ffi.Pointer<CXType> clang_getArrayElementType_wrap(
  ffi.Pointer<CXType> cxtype,
) {
  return _clang_getArrayElementType_wrap(
    cxtype,
  );
}

final _dart_clang_getArrayElementType_wrap _clang_getArrayElementType_wrap =
    _dylib.lookupFunction<_c_clang_getArrayElementType_wrap,
        _dart_clang_getArrayElementType_wrap>('clang_getArrayElementType_wrap');

typedef _c_clang_getArrayElementType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> cxtype,
);

typedef _dart_clang_getArrayElementType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> cxtype,
);

ffi.Pointer<ffi.Int8> clang_getCString_wrap(
  ffi.Pointer<CXString> string,
) {
  return _clang_getCString_wrap(
    string,
  );
}

final _dart_clang_getCString_wrap _clang_getCString_wrap = _dylib
    .lookupFunction<_c_clang_getCString_wrap, _dart_clang_getCString_wrap>(
        'clang_getCString_wrap');

typedef _c_clang_getCString_wrap = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<CXString> string,
);

typedef _dart_clang_getCString_wrap = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<CXString> string,
);

ffi.Pointer<CXType> clang_getCanonicalType_wrap(
  ffi.Pointer<CXType> typerefType,
) {
  return _clang_getCanonicalType_wrap(
    typerefType,
  );
}

final _dart_clang_getCanonicalType_wrap _clang_getCanonicalType_wrap =
    _dylib.lookupFunction<_c_clang_getCanonicalType_wrap,
        _dart_clang_getCanonicalType_wrap>('clang_getCanonicalType_wrap');

typedef _c_clang_getCanonicalType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> typerefType,
);

typedef _dart_clang_getCanonicalType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> typerefType,
);

ffi.Pointer<CXString> clang_getCursorKindSpelling_wrap(
  int kind,
) {
  return _clang_getCursorKindSpelling_wrap(
    kind,
  );
}

final _dart_clang_getCursorKindSpelling_wrap _clang_getCursorKindSpelling_wrap =
    _dylib.lookupFunction<_c_clang_getCursorKindSpelling_wrap,
            _dart_clang_getCursorKindSpelling_wrap>(
        'clang_getCursorKindSpelling_wrap');

typedef _c_clang_getCursorKindSpelling_wrap = ffi.Pointer<CXString> Function(
  ffi.Int32 kind,
);

typedef _dart_clang_getCursorKindSpelling_wrap = ffi.Pointer<CXString> Function(
  int kind,
);

int clang_getCursorKind_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorKind_wrap(
    cursor,
  );
}

final _dart_clang_getCursorKind_wrap _clang_getCursorKind_wrap =
    _dylib.lookupFunction<_c_clang_getCursorKind_wrap,
        _dart_clang_getCursorKind_wrap>('clang_getCursorKind_wrap');

typedef _c_clang_getCursorKind_wrap = ffi.Int32 Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_getCursorKind_wrap = int Function(
  ffi.Pointer<CXCursor> cursor,
);

ffi.Pointer<CXSourceLocation> clang_getCursorLocation_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorLocation_wrap(
    cursor,
  );
}

final _dart_clang_getCursorLocation_wrap _clang_getCursorLocation_wrap =
    _dylib.lookupFunction<_c_clang_getCursorLocation_wrap,
        _dart_clang_getCursorLocation_wrap>('clang_getCursorLocation_wrap');

typedef _c_clang_getCursorLocation_wrap = ffi.Pointer<CXSourceLocation>
    Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_getCursorLocation_wrap = ffi.Pointer<CXSourceLocation>
    Function(
  ffi.Pointer<CXCursor> cursor,
);

/// The name of parameter, struct, typedef
ffi.Pointer<CXString> clang_getCursorSpelling_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorSpelling_wrap(
    cursor,
  );
}

final _dart_clang_getCursorSpelling_wrap _clang_getCursorSpelling_wrap =
    _dylib.lookupFunction<_c_clang_getCursorSpelling_wrap,
        _dart_clang_getCursorSpelling_wrap>('clang_getCursorSpelling_wrap');

typedef _c_clang_getCursorSpelling_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_getCursorSpelling_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXCursor> cursor,
);

ffi.Pointer<CXType> clang_getCursorType_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getCursorType_wrap(
    cursor,
  );
}

final _dart_clang_getCursorType_wrap _clang_getCursorType_wrap =
    _dylib.lookupFunction<_c_clang_getCursorType_wrap,
        _dart_clang_getCursorType_wrap>('clang_getCursorType_wrap');

typedef _c_clang_getCursorType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_getCursorType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXCursor> cursor,
);

/// Retrieve a diagnostic associated with the given translation unit.
ffi.Pointer<ffi.Void> clang_getDiagnostic(
  ffi.Pointer<CXTranslationUnitImpl> Unit,
  int Index,
) {
  return _clang_getDiagnostic(
    Unit,
    Index,
  );
}

final _dart_clang_getDiagnostic _clang_getDiagnostic =
    _dylib.lookupFunction<_c_clang_getDiagnostic, _dart_clang_getDiagnostic>(
        'clang_getDiagnostic');

typedef _c_clang_getDiagnostic = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<CXTranslationUnitImpl> Unit,
  ffi.Uint32 Index,
);

typedef _dart_clang_getDiagnostic = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<CXTranslationUnitImpl> Unit,
  int Index,
);

int clang_getEnumConstantDeclValue_wrap(
  ffi.Pointer<CXCursor> cursor,
) {
  return _clang_getEnumConstantDeclValue_wrap(
    cursor,
  );
}

final _dart_clang_getEnumConstantDeclValue_wrap
    _clang_getEnumConstantDeclValue_wrap = _dylib.lookupFunction<
            _c_clang_getEnumConstantDeclValue_wrap,
            _dart_clang_getEnumConstantDeclValue_wrap>(
        'clang_getEnumConstantDeclValue_wrap');

typedef _c_clang_getEnumConstantDeclValue_wrap = ffi.Int64 Function(
  ffi.Pointer<CXCursor> cursor,
);

typedef _dart_clang_getEnumConstantDeclValue_wrap = int Function(
  ffi.Pointer<CXCursor> cursor,
);

void clang_getFileLocation_wrap(
  ffi.Pointer<CXSourceLocation> location,
  ffi.Pointer<ffi.Pointer<ffi.Void>> file,
  ffi.Pointer<ffi.Uint32> line,
  ffi.Pointer<ffi.Uint32> column,
  ffi.Pointer<ffi.Uint32> offset,
) {
  return _clang_getFileLocation_wrap(
    location,
    file,
    line,
    column,
    offset,
  );
}

final _dart_clang_getFileLocation_wrap _clang_getFileLocation_wrap =
    _dylib.lookupFunction<_c_clang_getFileLocation_wrap,
        _dart_clang_getFileLocation_wrap>('clang_getFileLocation_wrap');

typedef _c_clang_getFileLocation_wrap = ffi.Void Function(
  ffi.Pointer<CXSourceLocation> location,
  ffi.Pointer<ffi.Pointer<ffi.Void>> file,
  ffi.Pointer<ffi.Uint32> line,
  ffi.Pointer<ffi.Uint32> column,
  ffi.Pointer<ffi.Uint32> offset,
);

typedef _dart_clang_getFileLocation_wrap = void Function(
  ffi.Pointer<CXSourceLocation> location,
  ffi.Pointer<ffi.Pointer<ffi.Void>> file,
  ffi.Pointer<ffi.Uint32> line,
  ffi.Pointer<ffi.Uint32> column,
  ffi.Pointer<ffi.Uint32> offset,
);

ffi.Pointer<CXString> clang_getFileName_wrap(
  ffi.Pointer<ffi.Void> SFile,
) {
  return _clang_getFileName_wrap(
    SFile,
  );
}

final _dart_clang_getFileName_wrap _clang_getFileName_wrap = _dylib
    .lookupFunction<_c_clang_getFileName_wrap, _dart_clang_getFileName_wrap>(
        'clang_getFileName_wrap');

typedef _c_clang_getFileName_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<ffi.Void> SFile,
);

typedef _dart_clang_getFileName_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<ffi.Void> SFile,
);

int clang_getNumArgTypes_wrap(
  ffi.Pointer<CXType> cxtype,
) {
  return _clang_getNumArgTypes_wrap(
    cxtype,
  );
}

final _dart_clang_getNumArgTypes_wrap _clang_getNumArgTypes_wrap =
    _dylib.lookupFunction<_c_clang_getNumArgTypes_wrap,
        _dart_clang_getNumArgTypes_wrap>('clang_getNumArgTypes_wrap');

typedef _c_clang_getNumArgTypes_wrap = ffi.Int32 Function(
  ffi.Pointer<CXType> cxtype,
);

typedef _dart_clang_getNumArgTypes_wrap = int Function(
  ffi.Pointer<CXType> cxtype,
);

/// Determine the number of diagnostics produced for the given translation unit.
int clang_getNumDiagnostics(
  ffi.Pointer<CXTranslationUnitImpl> Unit,
) {
  return _clang_getNumDiagnostics(
    Unit,
  );
}

final _dart_clang_getNumDiagnostics _clang_getNumDiagnostics = _dylib
    .lookupFunction<_c_clang_getNumDiagnostics, _dart_clang_getNumDiagnostics>(
        'clang_getNumDiagnostics');

typedef _c_clang_getNumDiagnostics = ffi.Uint32 Function(
  ffi.Pointer<CXTranslationUnitImpl> Unit,
);

typedef _dart_clang_getNumDiagnostics = int Function(
  ffi.Pointer<CXTranslationUnitImpl> Unit,
);

int clang_getNumElements_wrap(
  ffi.Pointer<CXType> cxtype,
) {
  return _clang_getNumElements_wrap(
    cxtype,
  );
}

final _dart_clang_getNumElements_wrap _clang_getNumElements_wrap =
    _dylib.lookupFunction<_c_clang_getNumElements_wrap,
        _dart_clang_getNumElements_wrap>('clang_getNumElements_wrap');

typedef _c_clang_getNumElements_wrap = ffi.Uint64 Function(
  ffi.Pointer<CXType> cxtype,
);

typedef _dart_clang_getNumElements_wrap = int Function(
  ffi.Pointer<CXType> cxtype,
);

ffi.Pointer<CXType> clang_getPointeeType_wrap(
  ffi.Pointer<CXType> pointerType,
) {
  return _clang_getPointeeType_wrap(
    pointerType,
  );
}

final _dart_clang_getPointeeType_wrap _clang_getPointeeType_wrap =
    _dylib.lookupFunction<_c_clang_getPointeeType_wrap,
        _dart_clang_getPointeeType_wrap>('clang_getPointeeType_wrap');

typedef _c_clang_getPointeeType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> pointerType,
);

typedef _dart_clang_getPointeeType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> pointerType,
);

ffi.Pointer<CXType> clang_getResultType_wrap(
  ffi.Pointer<CXType> functionType,
) {
  return _clang_getResultType_wrap(
    functionType,
  );
}

final _dart_clang_getResultType_wrap _clang_getResultType_wrap =
    _dylib.lookupFunction<_c_clang_getResultType_wrap,
        _dart_clang_getResultType_wrap>('clang_getResultType_wrap');

typedef _c_clang_getResultType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> functionType,
);

typedef _dart_clang_getResultType_wrap = ffi.Pointer<CXType> Function(
  ffi.Pointer<CXType> functionType,
);

ffi.Pointer<CXCursor> clang_getTranslationUnitCursor_wrap(
  ffi.Pointer<CXTranslationUnitImpl> tu,
) {
  return _clang_getTranslationUnitCursor_wrap(
    tu,
  );
}

final _dart_clang_getTranslationUnitCursor_wrap
    _clang_getTranslationUnitCursor_wrap = _dylib.lookupFunction<
            _c_clang_getTranslationUnitCursor_wrap,
            _dart_clang_getTranslationUnitCursor_wrap>(
        'clang_getTranslationUnitCursor_wrap');

typedef _c_clang_getTranslationUnitCursor_wrap = ffi.Pointer<CXCursor> Function(
  ffi.Pointer<CXTranslationUnitImpl> tu,
);

typedef _dart_clang_getTranslationUnitCursor_wrap = ffi.Pointer<CXCursor>
    Function(
  ffi.Pointer<CXTranslationUnitImpl> tu,
);

ffi.Pointer<CXCursor> clang_getTypeDeclaration_wrap(
  ffi.Pointer<CXType> cxtype,
) {
  return _clang_getTypeDeclaration_wrap(
    cxtype,
  );
}

final _dart_clang_getTypeDeclaration_wrap _clang_getTypeDeclaration_wrap =
    _dylib.lookupFunction<_c_clang_getTypeDeclaration_wrap,
        _dart_clang_getTypeDeclaration_wrap>('clang_getTypeDeclaration_wrap');

typedef _c_clang_getTypeDeclaration_wrap = ffi.Pointer<CXCursor> Function(
  ffi.Pointer<CXType> cxtype,
);

typedef _dart_clang_getTypeDeclaration_wrap = ffi.Pointer<CXCursor> Function(
  ffi.Pointer<CXType> cxtype,
);

ffi.Pointer<CXString> clang_getTypeKindSpelling_wrap(
  int typeKind,
) {
  return _clang_getTypeKindSpelling_wrap(
    typeKind,
  );
}

final _dart_clang_getTypeKindSpelling_wrap _clang_getTypeKindSpelling_wrap =
    _dylib.lookupFunction<_c_clang_getTypeKindSpelling_wrap,
        _dart_clang_getTypeKindSpelling_wrap>('clang_getTypeKindSpelling_wrap');

typedef _c_clang_getTypeKindSpelling_wrap = ffi.Pointer<CXString> Function(
  ffi.Int32 typeKind,
);

typedef _dart_clang_getTypeKindSpelling_wrap = ffi.Pointer<CXString> Function(
  int typeKind,
);

ffi.Pointer<CXString> clang_getTypeSpelling_wrap(
  ffi.Pointer<CXType> type,
) {
  return _clang_getTypeSpelling_wrap(
    type,
  );
}

final _dart_clang_getTypeSpelling_wrap _clang_getTypeSpelling_wrap =
    _dylib.lookupFunction<_c_clang_getTypeSpelling_wrap,
        _dart_clang_getTypeSpelling_wrap>('clang_getTypeSpelling_wrap');

typedef _c_clang_getTypeSpelling_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXType> type,
);

typedef _dart_clang_getTypeSpelling_wrap = ffi.Pointer<CXString> Function(
  ffi.Pointer<CXType> type,
);

ffi.Pointer<CXType> clang_getTypedefDeclUnderlyingType_wrap(
  ffi.Pointer<CXCursor> cxcursor,
) {
  return _clang_getTypedefDeclUnderlyingType_wrap(
    cxcursor,
  );
}

final _dart_clang_getTypedefDeclUnderlyingType_wrap
    _clang_getTypedefDeclUnderlyingType_wrap = _dylib.lookupFunction<
            _c_clang_getTypedefDeclUnderlyingType_wrap,
            _dart_clang_getTypedefDeclUnderlyingType_wrap>(
        'clang_getTypedefDeclUnderlyingType_wrap');

typedef _c_clang_getTypedefDeclUnderlyingType_wrap = ffi.Pointer<CXType>
    Function(
  ffi.Pointer<CXCursor> cxcursor,
);

typedef _dart_clang_getTypedefDeclUnderlyingType_wrap = ffi.Pointer<CXType>
    Function(
  ffi.Pointer<CXCursor> cxcursor,
);

/// Same as clang_parseTranslationUnit2, but returns the CXTranslationUnit instead of an error code. In case of an error this routine returns a NULL CXTranslationUnit, without further detailed error codes.
ffi.Pointer<CXTranslationUnitImpl> clang_parseTranslationUnit(
  ffi.Pointer<ffi.Void> CIdx,
  ffi.Pointer<ffi.Int8> source_filename,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> command_line_args,
  int num_command_line_args,
  ffi.Pointer<CXUnsavedFile> unsaved_files,
  int num_unsaved_files,
  int options,
) {
  return _clang_parseTranslationUnit(
    CIdx,
    source_filename,
    command_line_args,
    num_command_line_args,
    unsaved_files,
    num_unsaved_files,
    options,
  );
}

final _dart_clang_parseTranslationUnit _clang_parseTranslationUnit =
    _dylib.lookupFunction<_c_clang_parseTranslationUnit,
        _dart_clang_parseTranslationUnit>('clang_parseTranslationUnit');

typedef _c_clang_parseTranslationUnit = ffi.Pointer<CXTranslationUnitImpl>
    Function(
  ffi.Pointer<ffi.Void> CIdx,
  ffi.Pointer<ffi.Int8> source_filename,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> command_line_args,
  ffi.Int32 num_command_line_args,
  ffi.Pointer<CXUnsavedFile> unsaved_files,
  ffi.Uint32 num_unsaved_files,
  ffi.Uint32 options,
);

typedef _dart_clang_parseTranslationUnit = ffi.Pointer<CXTranslationUnitImpl>
    Function(
  ffi.Pointer<ffi.Void> CIdx,
  ffi.Pointer<ffi.Int8> source_filename,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> command_line_args,
  int num_command_line_args,
  ffi.Pointer<CXUnsavedFile> unsaved_files,
  int num_unsaved_files,
  int options,
);

/// visitor is a function pointer with parameters having pointers to cxcursor instead of cxcursor by default
int clang_visitChildren_wrap(
  ffi.Pointer<CXCursor> parent,
  ffi.Pointer<ffi.NativeFunction<ModifiedCXCursorVisitor>> _modifiedVisitor,
  ffi.Pointer<ffi.Void> clientData,
) {
  return _clang_visitChildren_wrap(
    parent,
    _modifiedVisitor,
    clientData,
  );
}

final _dart_clang_visitChildren_wrap _clang_visitChildren_wrap =
    _dylib.lookupFunction<_c_clang_visitChildren_wrap,
        _dart_clang_visitChildren_wrap>('clang_visitChildren_wrap');

typedef _c_clang_visitChildren_wrap = ffi.Uint32 Function(
  ffi.Pointer<CXCursor> parent,
  ffi.Pointer<ffi.NativeFunction<ModifiedCXCursorVisitor>> _modifiedVisitor,
  ffi.Pointer<ffi.Void> clientData,
);

typedef _dart_clang_visitChildren_wrap = int Function(
  ffi.Pointer<CXCursor> parent,
  ffi.Pointer<ffi.NativeFunction<ModifiedCXCursorVisitor>> _modifiedVisitor,
  ffi.Pointer<ffi.Void> clientData,
);
