package stdgo._internal.os;
class T_rawConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return @:_0 __self__.value.write(_f);
    @:keep
    @:tdfield
    public dynamic function read(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return @:_0 __self__.value.read(_f);
    @:keep
    @:tdfield
    public dynamic function control(_f:stdgo.GoUIntptr -> Void):stdgo.Error return @:_0 __self__.value.control(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.Os_T_rawConnPointer.T_rawConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
