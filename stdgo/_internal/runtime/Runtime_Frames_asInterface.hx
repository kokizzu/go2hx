package stdgo._internal.runtime;
class Frames_asInterface {
    @:keep
    @:tdfield
    public dynamic function next():{ var _0 : stdgo._internal.runtime.Runtime_Frame.Frame; var _1 : Bool; } return @:_0 __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_FramesPointer.FramesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
