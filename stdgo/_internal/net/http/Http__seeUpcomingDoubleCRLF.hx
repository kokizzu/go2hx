package stdgo._internal.net.http;
function _seeUpcomingDoubleCRLF(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):Bool {
        {
            var _peekSize = (4 : stdgo.GoInt);
            while (true) {
                var __tmp__ = @:check2r _r.peek(_peekSize), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_buf, stdgo._internal.net.http.Http__doubleCRLF._doubleCRLF)) {
                    return true;
                };
if (_err != null) {
                    break;
                };
                _peekSize++;
            };
        };
        return false;
    }
