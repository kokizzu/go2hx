package stdgo._internal.slices;
function benchmarkSlicesSortInts_Reversed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makeReversedInts._makeReversedInts((100000 : stdgo.GoInt));
@:check2r _b.startTimer();
stdgo._internal.slices.Slices_sort.sort(_ints);
                _i++;
            };
        };
    }
