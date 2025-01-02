package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2PushPromiseFrame_asInterface) class T_http2PushPromiseFrame_static_extension {
    @:keep
    @:tdfield
    static public function headersEnded( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.flags.has((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags));
    }
    @:keep
    @:tdfield
    static public function headerBlockFragment( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = _f;
        @:check2r _f._checkValid();
        return (@:checkr _f ?? throw "null pointer dereference")._headerFragBuf;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return @:_5 __self__.header();
}
