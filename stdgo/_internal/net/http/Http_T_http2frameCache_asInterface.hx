package stdgo._internal.net.http;
class T_http2frameCache_asInterface {
    @:keep
    @:tdfield
    public dynamic function _getDataFrame():stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> return @:_0 __self__.value._getDataFrame();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2frameCachePointer.T_http2frameCachePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
