package stdgo._internal.net.http;
class T_extraHeader_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):Void @:_0 __self__.value.write(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_extraHeaderPointer.T_extraHeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
