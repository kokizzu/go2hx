package stdgo._internal.context;
class T_cancelCtx_asInterface {
    @:keep
    @:tdfield
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void @:_0 __self__.value._cancel(_removeFromParent, _err, _cause);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _propagateCancel(_parent:stdgo._internal.context.Context_Context.Context, _child:stdgo._internal.context.Context_T_canceler.T_canceler):Void @:_0 __self__.value._propagateCancel(_parent, _child);
    @:keep
    @:tdfield
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:keep
    @:tdfield
    public dynamic function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return @:_0 __self__.value.done();
    @:keep
    @:tdfield
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return @:_0 __self__.value.value(_key);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return @:_0 __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.context.Context_T_cancelCtxPointer.T_cancelCtxPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
