package stdgo._internal.encoding.json;
function testErrorMessageFromMisusedString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_n => _tt in stdgo._internal.encoding.json.Json__wrongStringTests._wrongStringTests) {
            var _r = stdgo._internal.strings.Strings_newReader.newReader(_tt._in?.__copy__());
            var _s:stdgo._internal.encoding.json.Json_WrongString.WrongString = ({} : stdgo._internal.encoding.json.Json_WrongString.WrongString);
            var _err = (@:check2r stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_WrongString.WrongString>))) : stdgo.Error);
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__() : stdgo.GoString);
            if (_got != (_tt._err)) {
                @:check2r _t.errorf(("%d. got err = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
