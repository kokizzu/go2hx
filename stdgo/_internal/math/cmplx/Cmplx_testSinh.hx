package stdgo._internal.math.cmplx;
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cSoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__sinh._sinh[(_i : stdgo.GoInt)], _f, (2e-15 : stdgo.GoFloat64))) {
                        _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__sinh._sinh[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        for (__0 => _v in stdgo._internal.math.cmplx.Cmplx__sinhSC._sinhSC) {
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(_v._in) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._want, _f)) {
                    _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_v._want));
                };
            };
            if ((stdgo._internal.math.Math_isNaN.isNaN(_v._in.imag) || stdgo._internal.math.Math_isNaN.isNaN(_v._want.imag) : Bool)) {
                continue;
            };
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want), _f) && !stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._in, stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : Bool)) {
                    _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want)));
                };
            };
            if ((stdgo._internal.math.Math_isNaN.isNaN(_v._in.real) || stdgo._internal.math.Math_isNaN.isNaN(_v._want.real) : Bool)) {
                continue;
            };
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(-_v._in) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(-_v._want, _f) && !stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._in, -_v._in) : Bool)) {
                    _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_v._want));
                };
            };
        };
    }
