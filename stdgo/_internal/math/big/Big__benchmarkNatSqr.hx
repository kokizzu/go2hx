package stdgo._internal.math.big;
function _benchmarkNatSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _nwords:stdgo.GoInt):Void {
        var _x = (stdgo._internal.math.big.Big__rndNat._rndNat(_nwords) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                _z._sqr(_x);
                _i++;
            };
        };
    }
