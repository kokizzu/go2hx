package stdgo._internal.crypto.des;
@:keep @:allow(stdgo._internal.crypto.des.Des.KeySizeError_asInterface) class KeySizeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _k:stdgo._internal.crypto.des.Des_KeySizeError.KeySizeError):stdgo.GoString {
        @:recv var _k:stdgo._internal.crypto.des.Des_KeySizeError.KeySizeError = _k;
        return (("crypto/des: invalid key size " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_k : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
