package stdgo._internal.encoding.json;
class Time3339_asInterface {
    @:keep
    @:tdfield
    public dynamic function unmarshalJSON(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalJSON(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_Time3339Pointer.Time3339Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
