package stdgo._internal.bytes;
class T_asciiSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function _contains(_c:stdgo.GoUInt8):Bool return @:_0 __self__.value._contains(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.bytes.Bytes_T_asciiSetPointer.T_asciiSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
