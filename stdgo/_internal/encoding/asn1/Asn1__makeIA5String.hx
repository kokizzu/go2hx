package stdgo._internal.encoding.asn1;
function _makeIA5String(_s:stdgo.GoString):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if ((_s[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("IA5String contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
                };
                _i++;
            };
        };
        return { _0 : _e = stdgo.Go.asInterface((_s : stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder)), _1 : _err = (null : stdgo.Error) };
    }
