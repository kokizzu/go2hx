package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_stickyErrorReader_asInterface) class T_stickyErrorReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader> = _r;
        var _n = (0 : stdgo.GoInt), _1 = (null : stdgo.Error);
        if (_r._err != null) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _1 = _r._err };
        };
        {
            var __tmp__ = _r._r.read(_p);
            _n = __tmp__._0;
            _r._err = __tmp__._1;
        };
        return { _0 : _n, _1 : _1 = _r._err };
    }
}
