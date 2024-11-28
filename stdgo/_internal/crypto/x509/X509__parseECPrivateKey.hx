package stdgo._internal.crypto.x509;
function _parseECPrivateKey(_namedCurveOID:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>, _der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        var _key = (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _err = (null : stdgo.Error);
        var _privKey:stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey = ({} : stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface((stdgo.Go.setRef(_privKey) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey>))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8() : stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return { _0 : _key = null, _1 : _err = stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)" : stdgo.GoString)) };
                    };
                };
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey() : stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey>))), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return { _0 : _key = null, _1 : _err = stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)" : stdgo.GoString)) };
                    };
                };
                return { _0 : _key = null, _1 : _err = stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse EC private key: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        if (_privKey.version != ((1 : stdgo.GoInt))) {
            return { _0 : _key = null, _1 : _err = stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unknown EC private key version %d" : stdgo.GoString), stdgo.Go.toInterface(_privKey.version)) };
        };
        var _curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
        if ((_namedCurveOID != null && ((_namedCurveOID : Dynamic).__nil__ == null || !(_namedCurveOID : Dynamic).__nil__))) {
            _curve = stdgo._internal.crypto.x509.X509__namedCurveFromOID._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier));
        } else {
            _curve = stdgo._internal.crypto.x509.X509__namedCurveFromOID._namedCurveFromOID(_privKey.namedCurveOID);
        };
        if (_curve == null) {
            return { _0 : _key = null, _1 : _err = stdgo._internal.errors.Errors_new_.new_(("x509: unknown elliptic curve" : stdgo.GoString)) };
        };
        var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_privKey.privateKey);
        var _curveOrder = _curve.params().n;
        if ((_k.cmp(_curveOrder) >= (0 : stdgo.GoInt) : Bool)) {
            return { _0 : _key = null, _1 : _err = stdgo._internal.errors.Errors_new_.new_(("x509: invalid elliptic curve private key value" : stdgo.GoString)) };
        };
        var _priv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>);
        _priv.publicKey.curve = _curve;
        _priv.d = _k;
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((((_curveOrder.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_privKey.privateKey.length) > (_privateKey.length) : Bool)) {
            if (_privKey.privateKey[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return { _0 : _key = null, _1 : _err = stdgo._internal.errors.Errors_new_.new_(("x509: invalid private key length" : stdgo.GoString)) };
            };
            _privKey.privateKey = (_privKey.privateKey.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo.Go.copySlice((_privateKey.__slice__(((_privateKey.length) - (_privKey.privateKey.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _privKey.privateKey);
        {
            var __tmp__ = _curve.scalarBaseMult(_privateKey);
            _priv.publicKey.x = __tmp__._0;
            _priv.publicKey.y = __tmp__._1;
        };
        return { _0 : _key = _priv, _1 : _err = (null : stdgo.Error) };
    }
