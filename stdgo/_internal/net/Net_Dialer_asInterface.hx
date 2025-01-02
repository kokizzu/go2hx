package stdgo._internal.net;
class Dialer_asInterface {
    @:keep
    @:tdfield
    public dynamic function dialContext(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dialContext(_ctx, _network, _address);
    @:keep
    @:tdfield
    public dynamic function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dial(_network, _address);
    @:keep
    @:tdfield
    public dynamic function setMultipathTCP(_use:Bool):Void @:_0 __self__.value.setMultipathTCP(_use);
    @:keep
    @:tdfield
    public dynamic function multipathTCP():Bool return @:_0 __self__.value.multipathTCP();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_DialerPointer.DialerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
