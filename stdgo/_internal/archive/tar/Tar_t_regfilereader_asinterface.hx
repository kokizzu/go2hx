package stdgo._internal.archive.tar;
class T_regFileReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _physicalRemaining():stdgo.GoInt64 return @:_0 __self__.value._physicalRemaining();
    @:keep
    @:tdfield
    public dynamic function _logicalRemaining():stdgo.GoInt64 return @:_0 __self__.value._logicalRemaining();
    @:keep
    @:tdfield
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_w);
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_regfilereaderpointer.T_regFileReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
