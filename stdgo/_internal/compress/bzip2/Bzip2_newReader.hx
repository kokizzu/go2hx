package stdgo._internal.compress.bzip2;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        var _bz2 = (stdgo.Go.setRef(({} : stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader)) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>);
        (@:checkr _bz2 ?? throw "null pointer dereference")._br = stdgo._internal.compress.bzip2.Bzip2__newBitReader._newBitReader(_r)?.__copy__();
        return stdgo.Go.asInterface(_bz2);
    }
