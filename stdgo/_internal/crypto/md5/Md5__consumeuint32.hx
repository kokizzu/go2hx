package stdgo._internal.crypto.md5;
function _consumeUint32(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt32; } {
        return { _0 : (_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_b.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) };
    }
