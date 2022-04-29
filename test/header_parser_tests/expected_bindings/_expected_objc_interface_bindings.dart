// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

/// ObjC Interface Test
class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ObjCSel> _registerName1(String name) {
    final cstr = name.toNativeUtf8();
    final sel = _sel_registerName(cstr.cast());
    pkg_ffi.calloc.free(cstr);
    return sel;
  }

  ffi.Pointer<ObjCSel> _sel_registerName(
    ffi.Pointer<pkg_ffi.Char> str,
  ) {
    return __sel_registerName(
      str,
    );
  }

  late final __sel_registerNamePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCSel> Function(
              ffi.Pointer<pkg_ffi.Char>)>>('sel_registerName');
  late final __sel_registerName = __sel_registerNamePtr
      .asFunction<ffi.Pointer<ObjCSel> Function(ffi.Pointer<pkg_ffi.Char>)>();

  ffi.Pointer<ObjCObject> _getClass1(String name) {
    final cstr = name.toNativeUtf8();
    final clazz = _objc_getClass(cstr.cast());
    pkg_ffi.calloc.free(cstr);
    return clazz;
  }

  ffi.Pointer<ObjCObject> _objc_getClass(
    ffi.Pointer<pkg_ffi.Char> str,
  ) {
    return __objc_getClass(
      str,
    );
  }

  late final __objc_getClassPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCObject> Function(
              ffi.Pointer<pkg_ffi.Char>)>>('objc_getClass');
  late final __objc_getClass = __objc_getClassPtr.asFunction<
      ffi.Pointer<ObjCObject> Function(ffi.Pointer<pkg_ffi.Char>)>();

  late final ffi.Pointer<ObjCObject> _class_Foo1 = _getClass1("Foo");
  late final ffi.Pointer<ObjCObject> _class_NSObject1 = _getClass1("NSObject");
  late final ffi.Pointer<ObjCSel> _sel_load1 = _registerName1("load");
  void _objc_msgSend_0(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_0(
      obj,
      sel,
    );
  }

  late final __objc_msgSend_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_0 = __objc_msgSend_0Ptr.asFunction<
      void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_initialize1 =
      _registerName1("initialize");
  late final ffi.Pointer<ObjCSel> _sel_init1 = _registerName1("init");
  instancetype _objc_msgSend_1(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_1(
      obj,
      sel,
    );
  }

  late final __objc_msgSend_1Ptr = _lookup<
      ffi.NativeFunction<
          instancetype Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_1 = __objc_msgSend_1Ptr.asFunction<
      instancetype Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_new1 = _registerName1("new");
  late final ffi.Pointer<ObjCSel> _sel_allocWithZone_1 =
      _registerName1("allocWithZone:");
  instancetype _objc_msgSend_2(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<_NSZone> zone,
  ) {
    return __objc_msgSend_2(
      obj,
      sel,
      zone,
    );
  }

  late final __objc_msgSend_2Ptr = _lookup<
      ffi.NativeFunction<
          instancetype Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Pointer<_NSZone>)>>('objc_msgSend');
  late final __objc_msgSend_2 = __objc_msgSend_2Ptr.asFunction<
      instancetype Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<_NSZone>)>();

  late final ffi.Pointer<ObjCSel> _sel_alloc1 = _registerName1("alloc");
  late final ffi.Pointer<ObjCSel> _sel_dealloc1 = _registerName1("dealloc");
  late final ffi.Pointer<ObjCSel> _sel_finalize1 = _registerName1("finalize");
  late final ffi.Pointer<ObjCSel> _sel_copy1 = _registerName1("copy");
  late final ffi.Pointer<ObjCSel> _sel_mutableCopy1 =
      _registerName1("mutableCopy");
  late final ffi.Pointer<ObjCSel> _sel_copyWithZone_1 =
      _registerName1("copyWithZone:");
  late final ffi.Pointer<ObjCSel> _sel_mutableCopyWithZone_1 =
      _registerName1("mutableCopyWithZone:");
  late final ffi.Pointer<ObjCSel> _sel_instancesRespondToSelector_1 =
      _registerName1("instancesRespondToSelector:");
  bool _objc_msgSend_3(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCSel> aSelector,
  ) {
    return __objc_msgSend_3(
          obj,
          sel,
          aSelector,
        ) !=
        0;
  }

  late final __objc_msgSend_3Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_3 = __objc_msgSend_3Ptr.asFunction<
      int Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_conformsToProtocol_1 =
      _registerName1("conformsToProtocol:");
  bool _objc_msgSend_4(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCObject> protocol,
  ) {
    return __objc_msgSend_4(
          obj,
          sel,
          protocol,
        ) !=
        0;
  }

  late final __objc_msgSend_4Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Pointer<ObjCObject>)>>('objc_msgSend');
  late final __objc_msgSend_4 = __objc_msgSend_4Ptr.asFunction<
      int Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<ObjCObject>)>();

  late final ffi.Pointer<ObjCSel> _sel_methodForSelector_1 =
      _registerName1("methodForSelector:");
  IMP _objc_msgSend_5(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCSel> aSelector,
  ) {
    return __objc_msgSend_5(
      obj,
      sel,
      aSelector,
    );
  }

  late final __objc_msgSend_5Ptr = _lookup<
      ffi.NativeFunction<
          IMP Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_5 = __objc_msgSend_5Ptr.asFunction<
      IMP Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_instanceMethodForSelector_1 =
      _registerName1("instanceMethodForSelector:");
  late final ffi.Pointer<ObjCSel> _sel_doesNotRecognizeSelector_1 =
      _registerName1("doesNotRecognizeSelector:");
  void _objc_msgSend_6(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCSel> aSelector,
  ) {
    return __objc_msgSend_6(
      obj,
      sel,
      aSelector,
    );
  }

  late final __objc_msgSend_6Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_6 = __objc_msgSend_6Ptr.asFunction<
      void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_forwardingTargetForSelector_1 =
      _registerName1("forwardingTargetForSelector:");
  ffi.Pointer<ObjCObject> _objc_msgSend_7(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCSel> aSelector,
  ) {
    return __objc_msgSend_7(
      obj,
      sel,
      aSelector,
    );
  }

  late final __objc_msgSend_7Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>,
              ffi.Pointer<ObjCSel>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_7 = __objc_msgSend_7Ptr.asFunction<
      ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>,
          ffi.Pointer<ObjCSel>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_forwardInvocation_1 =
      _registerName1("forwardInvocation:");
  void _objc_msgSend_8(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCObject> anInvocation,
  ) {
    return __objc_msgSend_8(
      obj,
      sel,
      anInvocation,
    );
  }

  late final __objc_msgSend_8Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Pointer<ObjCObject>)>>('objc_msgSend');
  late final __objc_msgSend_8 = __objc_msgSend_8Ptr.asFunction<
      void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<ObjCObject>)>();

  late final ffi.Pointer<ObjCObject> _class_NSMethodSignature1 =
      _getClass1("NSMethodSignature");
  late final ffi.Pointer<ObjCSel> _sel_methodSignatureForSelector_1 =
      _registerName1("methodSignatureForSelector:");
  ffi.Pointer<ObjCObject> _objc_msgSend_9(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCSel> aSelector,
  ) {
    return __objc_msgSend_9(
      obj,
      sel,
      aSelector,
    );
  }

  late final __objc_msgSend_9Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>,
              ffi.Pointer<ObjCSel>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_9 = __objc_msgSend_9Ptr.asFunction<
      ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>,
          ffi.Pointer<ObjCSel>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_instanceMethodSignatureForSelector_1 =
      _registerName1("instanceMethodSignatureForSelector:");
  late final ffi.Pointer<ObjCSel> _sel_allowsWeakReference1 =
      _registerName1("allowsWeakReference");
  bool _objc_msgSend_10(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_10(
          obj,
          sel,
        ) !=
        0;
  }

  late final __objc_msgSend_10Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_10 = __objc_msgSend_10Ptr.asFunction<
      int Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_retainWeakReference1 =
      _registerName1("retainWeakReference");
  late final ffi.Pointer<ObjCSel> _sel_isSubclassOfClass_1 =
      _registerName1("isSubclassOfClass:");
  late final ffi.Pointer<ObjCSel> _sel_resolveClassMethod_1 =
      _registerName1("resolveClassMethod:");
  late final ffi.Pointer<ObjCSel> _sel_resolveInstanceMethod_1 =
      _registerName1("resolveInstanceMethod:");
  late final ffi.Pointer<ObjCSel> _sel_hash1 = _registerName1("hash");
  int _objc_msgSend_11(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_11(
      obj,
      sel,
    );
  }

  late final __objc_msgSend_11Ptr = _lookup<
      ffi.NativeFunction<
          NSUInteger Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_11 = __objc_msgSend_11Ptr.asFunction<
      int Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_superclass1 =
      _registerName1("superclass");
  late final ffi.Pointer<ObjCSel> _sel_class1 = _registerName1("class");
  late final ffi.Pointer<ObjCObject> _class_NSString1 = _getClass1("NSString");
  late final ffi.Pointer<ObjCSel> _sel_stringWithCString_encoding_1 =
      _registerName1("stringWithCString:encoding:");
  ffi.Pointer<ObjCObject> _objc_msgSend_12(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<pkg_ffi.Char> cString,
    int enc,
  ) {
    return __objc_msgSend_12(
      obj,
      sel,
      cString,
      enc,
    );
  }

  late final __objc_msgSend_12Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCObject> Function(
              ffi.Pointer<ObjCObject>,
              ffi.Pointer<ObjCSel>,
              ffi.Pointer<pkg_ffi.Char>,
              pkg_ffi.UnsignedInt)>>('objc_msgSend');
  late final __objc_msgSend_12 = __objc_msgSend_12Ptr.asFunction<
      ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>,
          ffi.Pointer<ObjCSel>, ffi.Pointer<pkg_ffi.Char>, int)>();

  late final ffi.Pointer<ObjCSel> _sel_UTF8String1 =
      _registerName1("UTF8String");
  ffi.Pointer<pkg_ffi.Char> _objc_msgSend_13(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_13(
      obj,
      sel,
    );
  }

  late final __objc_msgSend_13Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<pkg_ffi.Char> Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_13 = __objc_msgSend_13Ptr.asFunction<
      ffi.Pointer<pkg_ffi.Char> Function(
          ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_description1 =
      _registerName1("description");
  ffi.Pointer<ObjCObject> _objc_msgSend_14(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_14(
      obj,
      sel,
    );
  }

  late final __objc_msgSend_14Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCObject> Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_14 = __objc_msgSend_14Ptr.asFunction<
      ffi.Pointer<ObjCObject> Function(
          ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_debugDescription1 =
      _registerName1("debugDescription");
  late final ffi.Pointer<ObjCSel> _sel_someProperty1 =
      _registerName1("someProperty");
  int _objc_msgSend_15(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
  ) {
    return __objc_msgSend_15(
      obj,
      sel,
    );
  }

  late final __objc_msgSend_15Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>>('objc_msgSend');
  late final __objc_msgSend_15 = __objc_msgSend_15Ptr.asFunction<
      int Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>)>();

  late final ffi.Pointer<ObjCSel> _sel_setSomeProperty_1 =
      _registerName1("setSomeProperty:");
  void _objc_msgSend_16(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    int value,
  ) {
    return __objc_msgSend_16(
      obj,
      sel,
      value,
    );
  }

  late final __objc_msgSend_16Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
              ffi.Int32)>>('objc_msgSend');
  late final __objc_msgSend_16 = __objc_msgSend_16Ptr.asFunction<
      void Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>, int)>();

  late final ffi.Pointer<ObjCSel> _sel_readOnlyProperty1 =
      _registerName1("readOnlyProperty");
  late final ffi.Pointer<ObjCSel> _sel_classReadOnlyProperty1 =
      _registerName1("classReadOnlyProperty");
  late final ffi.Pointer<ObjCSel> _sel_classReadWriteProperty1 =
      _registerName1("classReadWriteProperty");
  late final ffi.Pointer<ObjCSel> _sel_setClassReadWriteProperty_1 =
      _registerName1("setClassReadWriteProperty:");
  late final ffi.Pointer<ObjCSel> _sel_aClassMethod_1 =
      _registerName1("aClassMethod:");
  ffi.Pointer<ObjCObject> _objc_msgSend_17(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    double someArg,
  ) {
    return __objc_msgSend_17(
      obj,
      sel,
      someArg,
    );
  }

  late final __objc_msgSend_17Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ObjCObject> Function(ffi.Pointer<ObjCObject>,
              ffi.Pointer<ObjCSel>, ffi.Double)>>('objc_msgSend');
  late final __objc_msgSend_17 = __objc_msgSend_17Ptr.asFunction<
      ffi.Pointer<ObjCObject> Function(
          ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>, double)>();

  late final ffi.Pointer<ObjCSel> _sel_anInstanceMethod_withOtherArg_1 =
      _registerName1("anInstanceMethod:withOtherArg:");
  int _objc_msgSend_18(
    ffi.Pointer<ObjCObject> obj,
    ffi.Pointer<ObjCSel> sel,
    ffi.Pointer<ObjCObject> someArg,
    ffi.Pointer<ObjCObject> otherArg,
  ) {
    return __objc_msgSend_18(
      obj,
      sel,
      someArg,
      otherArg,
    );
  }

  late final __objc_msgSend_18Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ObjCObject>,
              ffi.Pointer<ObjCSel>,
              ffi.Pointer<ObjCObject>,
              ffi.Pointer<ObjCObject>)>>('objc_msgSend');
  late final __objc_msgSend_18 = __objc_msgSend_18Ptr.asFunction<
      int Function(ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCSel>,
          ffi.Pointer<ObjCObject>, ffi.Pointer<ObjCObject>)>();
}

class _ObjCWrapper {
  final ffi.Pointer<ObjCObject> _id;
  final NativeLibrary _lib;

  _ObjCWrapper._(this._id, this._lib);

  @override
  bool operator ==(Object other) {
    return other is _ObjCWrapper && _id == other._id;
  }

  @override
  int get hashCode => this._id.hashCode;
}

class Foo extends NSObject {
  Foo._(ffi.Pointer<ObjCObject> id, NativeLibrary lib) : super._(id, lib);

  static Foo castFrom<T extends _ObjCWrapper>(T other) {
    return Foo._(other._id, other._lib);
  }

  static Foo castFromPointer(NativeLibrary lib, ffi.Pointer<ObjCObject> other) {
    return Foo._(other, lib);
  }

  int get someProperty {
    return _lib._objc_msgSend_15(_id, _lib._sel_someProperty1);
  }

  set someProperty(int value) {
    _lib._objc_msgSend_16(_id, _lib._sel_setSomeProperty_1, value);
  }

  int get readOnlyProperty {
    return _lib._objc_msgSend_15(_id, _lib._sel_readOnlyProperty1);
  }

  static int getClassReadOnlyProperty(NativeLibrary _lib) {
    return _lib._objc_msgSend_15(
        _lib._class_Foo1, _lib._sel_classReadOnlyProperty1);
  }

  static int getClassReadWriteProperty(NativeLibrary _lib) {
    return _lib._objc_msgSend_15(
        _lib._class_Foo1, _lib._sel_classReadWriteProperty1);
  }

  static void setClassReadWriteProperty(NativeLibrary _lib, int value) {
    _lib._objc_msgSend_16(
        _lib._class_Foo1, _lib._sel_setClassReadWriteProperty_1, value);
  }

  static Foo aClassMethod(NativeLibrary _lib, double someArg) {
    final _ret = _lib._objc_msgSend_17(
        _lib._class_Foo1, _lib._sel_aClassMethod_1, someArg);
    return Foo._(_ret, _lib);
  }

  int anInstanceMethod_withOtherArg(NSObject? someArg, NSObject? otherArg) {
    return _lib._objc_msgSend_18(_id, _lib._sel_anInstanceMethod_withOtherArg_1,
        someArg?._id ?? ffi.nullptr, otherArg?._id ?? ffi.nullptr);
  }

  static Foo new1(NativeLibrary _lib) {
    final _ret = _lib._objc_msgSend_1(_lib._class_Foo1, _lib._sel_new1);
    return Foo._(_ret, _lib);
  }

  static Foo alloc(NativeLibrary _lib) {
    final _ret = _lib._objc_msgSend_1(_lib._class_Foo1, _lib._sel_alloc1);
    return Foo._(_ret, _lib);
  }
}

class ObjCSel extends ffi.Opaque {}

class ObjCObject extends ffi.Opaque {}

class NSObject extends _ObjCWrapper {
  NSObject._(ffi.Pointer<ObjCObject> id, NativeLibrary lib) : super._(id, lib);

  static NSObject castFrom<T extends _ObjCWrapper>(T other) {
    return NSObject._(other._id, other._lib);
  }

  static NSObject castFromPointer(
      NativeLibrary lib, ffi.Pointer<ObjCObject> other) {
    return NSObject._(other, lib);
  }

  static void load(NativeLibrary _lib) {
    _lib._objc_msgSend_0(_lib._class_NSObject1, _lib._sel_load1);
  }

  static void initialize(NativeLibrary _lib) {
    _lib._objc_msgSend_0(_lib._class_NSObject1, _lib._sel_initialize1);
  }

  NSObject init() {
    final _ret = _lib._objc_msgSend_1(_id, _lib._sel_init1);
    return NSObject._(_ret, _lib);
  }

  static NSObject new1(NativeLibrary _lib) {
    final _ret = _lib._objc_msgSend_1(_lib._class_NSObject1, _lib._sel_new1);
    return NSObject._(_ret, _lib);
  }

  static NSObject allocWithZone(NativeLibrary _lib, ffi.Pointer<_NSZone> zone) {
    final _ret = _lib._objc_msgSend_2(
        _lib._class_NSObject1, _lib._sel_allocWithZone_1, zone);
    return NSObject._(_ret, _lib);
  }

  static NSObject alloc(NativeLibrary _lib) {
    final _ret = _lib._objc_msgSend_1(_lib._class_NSObject1, _lib._sel_alloc1);
    return NSObject._(_ret, _lib);
  }

  void dealloc() {
    _lib._objc_msgSend_0(_id, _lib._sel_dealloc1);
  }

  void finalize() {
    _lib._objc_msgSend_0(_id, _lib._sel_finalize1);
  }

  NSObject copy() {
    final _ret = _lib._objc_msgSend_1(_id, _lib._sel_copy1);
    return NSObject._(_ret, _lib);
  }

  NSObject mutableCopy() {
    final _ret = _lib._objc_msgSend_1(_id, _lib._sel_mutableCopy1);
    return NSObject._(_ret, _lib);
  }

  static NSObject copyWithZone(NativeLibrary _lib, ffi.Pointer<_NSZone> zone) {
    final _ret = _lib._objc_msgSend_2(
        _lib._class_NSObject1, _lib._sel_copyWithZone_1, zone);
    return NSObject._(_ret, _lib);
  }

  static NSObject mutableCopyWithZone(
      NativeLibrary _lib, ffi.Pointer<_NSZone> zone) {
    final _ret = _lib._objc_msgSend_2(
        _lib._class_NSObject1, _lib._sel_mutableCopyWithZone_1, zone);
    return NSObject._(_ret, _lib);
  }

  static bool instancesRespondToSelector(
      NativeLibrary _lib, ffi.Pointer<ObjCSel> aSelector) {
    return _lib._objc_msgSend_3(_lib._class_NSObject1,
        _lib._sel_instancesRespondToSelector_1, aSelector);
  }

  static bool conformsToProtocol(NativeLibrary _lib, NSObject? protocol) {
    return _lib._objc_msgSend_4(_lib._class_NSObject1,
        _lib._sel_conformsToProtocol_1, protocol?._id ?? ffi.nullptr);
  }

  IMP methodForSelector(ffi.Pointer<ObjCSel> aSelector) {
    return _lib._objc_msgSend_5(_id, _lib._sel_methodForSelector_1, aSelector);
  }

  static IMP instanceMethodForSelector(
      NativeLibrary _lib, ffi.Pointer<ObjCSel> aSelector) {
    return _lib._objc_msgSend_5(_lib._class_NSObject1,
        _lib._sel_instanceMethodForSelector_1, aSelector);
  }

  void doesNotRecognizeSelector(ffi.Pointer<ObjCSel> aSelector) {
    _lib._objc_msgSend_6(_id, _lib._sel_doesNotRecognizeSelector_1, aSelector);
  }

  NSObject forwardingTargetForSelector(ffi.Pointer<ObjCSel> aSelector) {
    final _ret = _lib._objc_msgSend_7(
        _id, _lib._sel_forwardingTargetForSelector_1, aSelector);
    return NSObject._(_ret, _lib);
  }

  void forwardInvocation(NSObject? anInvocation) {
    _lib._objc_msgSend_8(
        _id, _lib._sel_forwardInvocation_1, anInvocation?._id ?? ffi.nullptr);
  }

  NSMethodSignature methodSignatureForSelector(ffi.Pointer<ObjCSel> aSelector) {
    final _ret = _lib._objc_msgSend_9(
        _id, _lib._sel_methodSignatureForSelector_1, aSelector);
    return NSMethodSignature._(_ret, _lib);
  }

  static NSMethodSignature instanceMethodSignatureForSelector(
      NativeLibrary _lib, ffi.Pointer<ObjCSel> aSelector) {
    final _ret = _lib._objc_msgSend_9(_lib._class_NSObject1,
        _lib._sel_instanceMethodSignatureForSelector_1, aSelector);
    return NSMethodSignature._(_ret, _lib);
  }

  bool allowsWeakReference() {
    return _lib._objc_msgSend_10(_id, _lib._sel_allowsWeakReference1);
  }

  bool retainWeakReference() {
    return _lib._objc_msgSend_10(_id, _lib._sel_retainWeakReference1);
  }

  static bool isSubclassOfClass(NativeLibrary _lib, NSObject aClass) {
    return _lib._objc_msgSend_4(
        _lib._class_NSObject1, _lib._sel_isSubclassOfClass_1, aClass._id);
  }

  static bool resolveClassMethod(NativeLibrary _lib, ffi.Pointer<ObjCSel> sel) {
    return _lib._objc_msgSend_3(
        _lib._class_NSObject1, _lib._sel_resolveClassMethod_1, sel);
  }

  static bool resolveInstanceMethod(
      NativeLibrary _lib, ffi.Pointer<ObjCSel> sel) {
    return _lib._objc_msgSend_3(
        _lib._class_NSObject1, _lib._sel_resolveInstanceMethod_1, sel);
  }

  static int hash(NativeLibrary _lib) {
    return _lib._objc_msgSend_11(_lib._class_NSObject1, _lib._sel_hash1);
  }

  static NSObject superclass(NativeLibrary _lib) {
    final _ret =
        _lib._objc_msgSend_1(_lib._class_NSObject1, _lib._sel_superclass1);
    return NSObject._(_ret, _lib);
  }

  static NSObject class1(NativeLibrary _lib) {
    final _ret = _lib._objc_msgSend_1(_lib._class_NSObject1, _lib._sel_class1);
    return NSObject._(_ret, _lib);
  }

  static NSString description(NativeLibrary _lib) {
    final _ret =
        _lib._objc_msgSend_14(_lib._class_NSObject1, _lib._sel_description1);
    return NSString._(_ret, _lib);
  }

  static NSString debugDescription(NativeLibrary _lib) {
    final _ret = _lib._objc_msgSend_14(
        _lib._class_NSObject1, _lib._sel_debugDescription1);
    return NSString._(_ret, _lib);
  }
}

typedef instancetype = ffi.Pointer<ObjCObject>;

class _NSZone extends ffi.Opaque {}

typedef IMP = ffi.Pointer<ffi.NativeFunction<ffi.Void Function()>>;

class NSMethodSignature extends _ObjCWrapper {
  NSMethodSignature._(ffi.Pointer<ObjCObject> id, NativeLibrary lib)
      : super._(id, lib);

  static NSMethodSignature castFrom<T extends _ObjCWrapper>(T other) {
    return NSMethodSignature._(other._id, other._lib);
  }

  static NSMethodSignature castFromPointer(
      NativeLibrary lib, ffi.Pointer<ObjCObject> other) {
    return NSMethodSignature._(other, lib);
  }
}

typedef NSUInteger = pkg_ffi.UnsignedLong;

class NSString extends _ObjCWrapper {
  NSString._(ffi.Pointer<ObjCObject> id, NativeLibrary lib) : super._(id, lib);

  static NSString castFrom<T extends _ObjCWrapper>(T other) {
    return NSString._(other._id, other._lib);
  }

  static NSString castFromPointer(
      NativeLibrary lib, ffi.Pointer<ObjCObject> other) {
    return NSString._(other, lib);
  }

  factory NSString(NativeLibrary _lib, String str) {
    final cstr = str.toNativeUtf8();
    final nsstr = stringWithCString_encoding(_lib, cstr.cast(), 4 /* UTF8 */);
    pkg_ffi.calloc.free(cstr);
    return nsstr;
  }

  @override
  String toString() => UTF8String().cast<pkg_ffi.Utf8>().toDartString();

  static NSString stringWithCString_encoding(
      NativeLibrary _lib, ffi.Pointer<pkg_ffi.Char> cString, int enc) {
    final _ret = _lib._objc_msgSend_12(_lib._class_NSString1,
        _lib._sel_stringWithCString_encoding_1, cString, enc);
    return NSString._(_ret, _lib);
  }

  ffi.Pointer<pkg_ffi.Char> UTF8String() {
    return _lib._objc_msgSend_13(_id, _lib._sel_UTF8String1);
  }
}

extension StringToNSString on String {
  NSString toNSString(NativeLibrary lib) => NSString(lib, this);
}
