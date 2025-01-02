package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_Prog_static_extension.Prog_static_extension) class Prog {
    @:embedded
    public var progHeader : stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader = ({} : stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader);
    @:embedded
    public var readerAt : stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
    public function new(?progHeader:stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>) {
        if (progHeader != null) this.progHeader = progHeader;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.readerAt ?? throw "null pointer derefrence").readAt;
    public function __copy__() {
        return new Prog(progHeader, readerAt, _sr);
    }
}
