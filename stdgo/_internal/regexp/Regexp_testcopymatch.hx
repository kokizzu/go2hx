package stdgo._internal.regexp;
function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            stdgo._internal.regexp.Regexp__copymatchtest._copyMatchTest(_t, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>));
        };
    }
