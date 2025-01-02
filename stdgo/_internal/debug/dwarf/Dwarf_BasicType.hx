package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_BasicType_static_extension.BasicType_static_extension) class BasicType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var bitSize : stdgo.GoInt64 = 0;
    public var bitOffset : stdgo.GoInt64 = 0;
    public var dataBitOffset : stdgo.GoInt64 = 0;
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?bitSize:stdgo.GoInt64, ?bitOffset:stdgo.GoInt64, ?dataBitOffset:stdgo.GoInt64) {
        if (commonType != null) this.commonType = commonType;
        if (bitSize != null) this.bitSize = bitSize;
        if (bitOffset != null) this.bitOffset = bitOffset;
        if (dataBitOffset != null) this.dataBitOffset = dataBitOffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check3 (this.commonType ?? throw "null pointer derefrence").common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check3 (this.commonType ?? throw "null pointer derefrence").size;
    public function __copy__() {
        return new BasicType(commonType, bitSize, bitOffset, dataBitOffset);
    }
}
