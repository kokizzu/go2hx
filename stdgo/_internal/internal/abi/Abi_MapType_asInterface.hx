package stdgo._internal.internal.abi;
class MapType_asInterface {
    @:keep
    @:tdfield
    public dynamic function hashMightPanic():Bool return @:_0 __self__.value.hashMightPanic();
    @:keep
    @:tdfield
    public dynamic function needKeyUpdate():Bool return @:_0 __self__.value.needKeyUpdate();
    @:keep
    @:tdfield
    public dynamic function reflexiveKey():Bool return @:_0 __self__.value.reflexiveKey();
    @:keep
    @:tdfield
    public dynamic function indirectElem():Bool return @:_0 __self__.value.indirectElem();
    @:keep
    @:tdfield
    public dynamic function indirectKey():Bool return @:_0 __self__.value.indirectKey();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return @:_0 __self__.value.uncommon();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return @:_0 __self__.value.structType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoUIntptr return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pointers():Bool return @:_0 __self__.value.pointers();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return @:_0 __self__.value.mapType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function kind():stdgo._internal.internal.abi.Abi_Kind.Kind return @:_0 __self__.value.kind();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isDirectIface():Bool return @:_0 __self__.value.isDirectIface();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return @:_0 __self__.value.interfaceType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function ifaceIndir():Bool return @:_0 __self__.value.ifaceIndir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function hasName():Bool return @:_0 __self__.value.hasName();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function gcSlice(_0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.gcSlice(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return @:_0 __self__.value.funcType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fieldAlign():stdgo.GoInt return @:_0 __self__.value.fieldAlign();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return @:_0 __self__.value.exportedMethods();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:_0 __self__.value.common();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return @:_0 __self__.value.chanDir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return @:_0 __self__.value.arrayType();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function align():stdgo.GoInt return @:_0 __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.abi.Abi_MapTypePointer.MapTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
