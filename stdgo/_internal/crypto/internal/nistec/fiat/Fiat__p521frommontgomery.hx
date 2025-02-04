package stdgo._internal.crypto.internal.nistec.fiat;
function _p521FromMontgomery(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (511i64 : stdgo.GoUInt64));
            _x3 = @:tmpset0 __tmp__._0;
            _x2 = @:tmpset0 __tmp__._1;
        };
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x4 = @:tmpset0 __tmp__._1;
        };
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x7 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x9 = @:tmpset0 __tmp__._0;
            _x8 = @:tmpset0 __tmp__._1;
        };
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x11 = @:tmpset0 __tmp__._0;
            _x10 = @:tmpset0 __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x13 = @:tmpset0 __tmp__._0;
            _x12 = @:tmpset0 __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x14 = @:tmpset0 __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x19 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x16, (0i64 : stdgo.GoUInt64));
            _x20 = @:tmpset0 __tmp__._0;
            _x21 = @:tmpset0 __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x14, ((_x21 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x22 = @:tmpset0 __tmp__._0;
            _x23 = @:tmpset0 __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x12, ((_x23 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x24 = @:tmpset0 __tmp__._0;
            _x25 = @:tmpset0 __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x10, ((_x25 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x26 = @:tmpset0 __tmp__._0;
            _x27 = @:tmpset0 __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x8, ((_x27 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x28 = @:tmpset0 __tmp__._0;
            _x29 = @:tmpset0 __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x9, _x6, ((_x29 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x30 = @:tmpset0 __tmp__._0;
            _x31 = @:tmpset0 __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, _x4, ((_x31 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x32 = @:tmpset0 __tmp__._0;
            _x33 = @:tmpset0 __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, _x2, ((_x33 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x34 = @:tmpset0 __tmp__._0;
            _x35 = @:tmpset0 __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x18, (0i64 : stdgo.GoUInt64));
            _x37 = @:tmpset0 __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x20, ((_x37 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x38 = @:tmpset0 __tmp__._0;
            _x39 = @:tmpset0 __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x22, ((_x39 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x40 = @:tmpset0 __tmp__._0;
            _x41 = @:tmpset0 __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x24, ((_x41 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x42 = @:tmpset0 __tmp__._0;
            _x43 = @:tmpset0 __tmp__._1;
        };
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x26, ((_x43 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x44 = @:tmpset0 __tmp__._0;
            _x45 = @:tmpset0 __tmp__._1;
        };
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x28, ((_x45 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x46 = @:tmpset0 __tmp__._0;
            _x47 = @:tmpset0 __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x30, ((_x47 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x48 = @:tmpset0 __tmp__._0;
            _x49 = @:tmpset0 __tmp__._1;
        };
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x32, ((_x49 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x50 = @:tmpset0 __tmp__._0;
            _x51 = @:tmpset0 __tmp__._1;
        };
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x34, ((_x51 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x52 = @:tmpset0 __tmp__._0;
            _x53 = @:tmpset0 __tmp__._1;
        };
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, _arg1[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x54 = @:tmpset0 __tmp__._0;
            _x55 = @:tmpset0 __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, (0i64 : stdgo.GoUInt64), ((_x55 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x56 = @:tmpset0 __tmp__._0;
            _x57 = @:tmpset0 __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, (0i64 : stdgo.GoUInt64), ((_x57 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x58 = @:tmpset0 __tmp__._0;
            _x59 = @:tmpset0 __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, (0i64 : stdgo.GoUInt64), ((_x59 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x60 = @:tmpset0 __tmp__._0;
            _x61 = @:tmpset0 __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x46, (0i64 : stdgo.GoUInt64), ((_x61 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x62 = @:tmpset0 __tmp__._0;
            _x63 = @:tmpset0 __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, (0i64 : stdgo.GoUInt64), ((_x63 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x64 = @:tmpset0 __tmp__._0;
            _x65 = @:tmpset0 __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, (0i64 : stdgo.GoUInt64), ((_x65 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x66 = @:tmpset0 __tmp__._0;
            _x67 = @:tmpset0 __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x52, (0i64 : stdgo.GoUInt64), ((_x67 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x68 = @:tmpset0 __tmp__._0;
            _x69 = @:tmpset0 __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (511i64 : stdgo.GoUInt64));
            _x71 = @:tmpset0 __tmp__._0;
            _x70 = @:tmpset0 __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x73 = @:tmpset0 __tmp__._0;
            _x72 = @:tmpset0 __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x75 = @:tmpset0 __tmp__._0;
            _x74 = @:tmpset0 __tmp__._1;
        };
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x77 = @:tmpset0 __tmp__._0;
            _x76 = @:tmpset0 __tmp__._1;
        };
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x79 = @:tmpset0 __tmp__._0;
            _x78 = @:tmpset0 __tmp__._1;
        };
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x81 = @:tmpset0 __tmp__._0;
            _x80 = @:tmpset0 __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x83 = @:tmpset0 __tmp__._0;
            _x82 = @:tmpset0 __tmp__._1;
        };
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x85 = @:tmpset0 __tmp__._0;
            _x84 = @:tmpset0 __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x87 = @:tmpset0 __tmp__._0;
            _x86 = @:tmpset0 __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x87, _x84, (0i64 : stdgo.GoUInt64));
            _x88 = @:tmpset0 __tmp__._0;
            _x89 = @:tmpset0 __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x85, _x82, ((_x89 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x90 = @:tmpset0 __tmp__._0;
            _x91 = @:tmpset0 __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x83, _x80, ((_x91 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x92 = @:tmpset0 __tmp__._0;
            _x93 = @:tmpset0 __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x81, _x78, ((_x93 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x94 = @:tmpset0 __tmp__._0;
            _x95 = @:tmpset0 __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x79, _x76, ((_x95 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x96 = @:tmpset0 __tmp__._0;
            _x97 = @:tmpset0 __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x77, _x74, ((_x97 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x98 = @:tmpset0 __tmp__._0;
            _x99 = @:tmpset0 __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x75, _x72, ((_x99 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x100 = @:tmpset0 __tmp__._0;
            _x101 = @:tmpset0 __tmp__._1;
        };
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x70, ((_x101 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x102 = @:tmpset0 __tmp__._0;
            _x103 = @:tmpset0 __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _x86, (0i64 : stdgo.GoUInt64));
            _x105 = @:tmpset0 __tmp__._1;
        };
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x88, ((_x105 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x106 = @:tmpset0 __tmp__._0;
            _x107 = @:tmpset0 __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, _x90, ((_x107 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x108 = @:tmpset0 __tmp__._0;
            _x109 = @:tmpset0 __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x92, ((_x109 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x110 = @:tmpset0 __tmp__._0;
            _x111 = @:tmpset0 __tmp__._1;
        };
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x94, ((_x111 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x112 = @:tmpset0 __tmp__._0;
            _x113 = @:tmpset0 __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x96, ((_x113 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x114 = @:tmpset0 __tmp__._0;
            _x115 = @:tmpset0 __tmp__._1;
        };
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x66, _x98, ((_x115 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x116 = @:tmpset0 __tmp__._0;
            _x117 = @:tmpset0 __tmp__._1;
        };
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x68, _x100, ((_x117 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x118 = @:tmpset0 __tmp__._0;
            _x119 = @:tmpset0 __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x69 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x53 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x35 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x3 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x102, ((_x119 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x120 = @:tmpset0 __tmp__._0;
            _x121 = @:tmpset0 __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x106, _arg1[(2 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x122 = @:tmpset0 __tmp__._0;
            _x123 = @:tmpset0 __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x108, (0i64 : stdgo.GoUInt64), ((_x123 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x124 = @:tmpset0 __tmp__._0;
            _x125 = @:tmpset0 __tmp__._1;
        };
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x110, (0i64 : stdgo.GoUInt64), ((_x125 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x126 = @:tmpset0 __tmp__._0;
            _x127 = @:tmpset0 __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x112, (0i64 : stdgo.GoUInt64), ((_x127 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x128 = @:tmpset0 __tmp__._0;
            _x129 = @:tmpset0 __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x114, (0i64 : stdgo.GoUInt64), ((_x129 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x130 = @:tmpset0 __tmp__._0;
            _x131 = @:tmpset0 __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x116, (0i64 : stdgo.GoUInt64), ((_x131 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x132 = @:tmpset0 __tmp__._0;
            _x133 = @:tmpset0 __tmp__._1;
        };
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x118, (0i64 : stdgo.GoUInt64), ((_x133 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x134 = @:tmpset0 __tmp__._0;
            _x135 = @:tmpset0 __tmp__._1;
        };
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x120, (0i64 : stdgo.GoUInt64), ((_x135 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x136 = @:tmpset0 __tmp__._0;
            _x137 = @:tmpset0 __tmp__._1;
        };
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (511i64 : stdgo.GoUInt64));
            _x139 = @:tmpset0 __tmp__._0;
            _x138 = @:tmpset0 __tmp__._1;
        };
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x141 = @:tmpset0 __tmp__._0;
            _x140 = @:tmpset0 __tmp__._1;
        };
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x143 = @:tmpset0 __tmp__._0;
            _x142 = @:tmpset0 __tmp__._1;
        };
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x145 = @:tmpset0 __tmp__._0;
            _x144 = @:tmpset0 __tmp__._1;
        };
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x147 = @:tmpset0 __tmp__._0;
            _x146 = @:tmpset0 __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x149 = @:tmpset0 __tmp__._0;
            _x148 = @:tmpset0 __tmp__._1;
        };
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x151 = @:tmpset0 __tmp__._0;
            _x150 = @:tmpset0 __tmp__._1;
        };
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x153 = @:tmpset0 __tmp__._0;
            _x152 = @:tmpset0 __tmp__._1;
        };
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x155 = @:tmpset0 __tmp__._0;
            _x154 = @:tmpset0 __tmp__._1;
        };
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x155, _x152, (0i64 : stdgo.GoUInt64));
            _x156 = @:tmpset0 __tmp__._0;
            _x157 = @:tmpset0 __tmp__._1;
        };
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x153, _x150, ((_x157 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x158 = @:tmpset0 __tmp__._0;
            _x159 = @:tmpset0 __tmp__._1;
        };
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x151, _x148, ((_x159 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x160 = @:tmpset0 __tmp__._0;
            _x161 = @:tmpset0 __tmp__._1;
        };
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x149, _x146, ((_x161 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x162 = @:tmpset0 __tmp__._0;
            _x163 = @:tmpset0 __tmp__._1;
        };
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x147, _x144, ((_x163 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x164 = @:tmpset0 __tmp__._0;
            _x165 = @:tmpset0 __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x145, _x142, ((_x165 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x166 = @:tmpset0 __tmp__._0;
            _x167 = @:tmpset0 __tmp__._1;
        };
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x143, _x140, ((_x167 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x168 = @:tmpset0 __tmp__._0;
            _x169 = @:tmpset0 __tmp__._1;
        };
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x141, _x138, ((_x169 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x170 = @:tmpset0 __tmp__._0;
            _x171 = @:tmpset0 __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x122, _x154, (0i64 : stdgo.GoUInt64));
            _x173 = @:tmpset0 __tmp__._1;
        };
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x124, _x156, ((_x173 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x174 = @:tmpset0 __tmp__._0;
            _x175 = @:tmpset0 __tmp__._1;
        };
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x126, _x158, ((_x175 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x176 = @:tmpset0 __tmp__._0;
            _x177 = @:tmpset0 __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _x160, ((_x177 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x178 = @:tmpset0 __tmp__._0;
            _x179 = @:tmpset0 __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, _x162, ((_x179 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x180 = @:tmpset0 __tmp__._0;
            _x181 = @:tmpset0 __tmp__._1;
        };
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, _x164, ((_x181 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x182 = @:tmpset0 __tmp__._0;
            _x183 = @:tmpset0 __tmp__._1;
        };
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, _x166, ((_x183 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x184 = @:tmpset0 __tmp__._0;
            _x185 = @:tmpset0 __tmp__._1;
        };
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x136, _x168, ((_x185 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x186 = @:tmpset0 __tmp__._0;
            _x187 = @:tmpset0 __tmp__._1;
        };
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x137 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x121 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x103 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x71 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x170, ((_x187 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x188 = @:tmpset0 __tmp__._0;
            _x189 = @:tmpset0 __tmp__._1;
        };
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x174, _arg1[(3 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x190 = @:tmpset0 __tmp__._0;
            _x191 = @:tmpset0 __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x176, (0i64 : stdgo.GoUInt64), ((_x191 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x192 = @:tmpset0 __tmp__._0;
            _x193 = @:tmpset0 __tmp__._1;
        };
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x178, (0i64 : stdgo.GoUInt64), ((_x193 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x194 = @:tmpset0 __tmp__._0;
            _x195 = @:tmpset0 __tmp__._1;
        };
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x180, (0i64 : stdgo.GoUInt64), ((_x195 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x196 = @:tmpset0 __tmp__._0;
            _x197 = @:tmpset0 __tmp__._1;
        };
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x182, (0i64 : stdgo.GoUInt64), ((_x197 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x198 = @:tmpset0 __tmp__._0;
            _x199 = @:tmpset0 __tmp__._1;
        };
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x184, (0i64 : stdgo.GoUInt64), ((_x199 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x200 = @:tmpset0 __tmp__._0;
            _x201 = @:tmpset0 __tmp__._1;
        };
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x186, (0i64 : stdgo.GoUInt64), ((_x201 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x202 = @:tmpset0 __tmp__._0;
            _x203 = @:tmpset0 __tmp__._1;
        };
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x188, (0i64 : stdgo.GoUInt64), ((_x203 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x204 = @:tmpset0 __tmp__._0;
            _x205 = @:tmpset0 __tmp__._1;
        };
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (511i64 : stdgo.GoUInt64));
            _x207 = @:tmpset0 __tmp__._0;
            _x206 = @:tmpset0 __tmp__._1;
        };
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x209 = @:tmpset0 __tmp__._0;
            _x208 = @:tmpset0 __tmp__._1;
        };
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x211 = @:tmpset0 __tmp__._0;
            _x210 = @:tmpset0 __tmp__._1;
        };
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x213 = @:tmpset0 __tmp__._0;
            _x212 = @:tmpset0 __tmp__._1;
        };
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x215 = @:tmpset0 __tmp__._0;
            _x214 = @:tmpset0 __tmp__._1;
        };
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x217 = @:tmpset0 __tmp__._0;
            _x216 = @:tmpset0 __tmp__._1;
        };
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x219 = @:tmpset0 __tmp__._0;
            _x218 = @:tmpset0 __tmp__._1;
        };
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x221 = @:tmpset0 __tmp__._0;
            _x220 = @:tmpset0 __tmp__._1;
        };
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x223 = @:tmpset0 __tmp__._0;
            _x222 = @:tmpset0 __tmp__._1;
        };
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x223, _x220, (0i64 : stdgo.GoUInt64));
            _x224 = @:tmpset0 __tmp__._0;
            _x225 = @:tmpset0 __tmp__._1;
        };
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x221, _x218, ((_x225 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x226 = @:tmpset0 __tmp__._0;
            _x227 = @:tmpset0 __tmp__._1;
        };
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x219, _x216, ((_x227 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x228 = @:tmpset0 __tmp__._0;
            _x229 = @:tmpset0 __tmp__._1;
        };
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x217, _x214, ((_x229 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x230 = @:tmpset0 __tmp__._0;
            _x231 = @:tmpset0 __tmp__._1;
        };
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x215, _x212, ((_x231 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x232 = @:tmpset0 __tmp__._0;
            _x233 = @:tmpset0 __tmp__._1;
        };
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x213, _x210, ((_x233 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x234 = @:tmpset0 __tmp__._0;
            _x235 = @:tmpset0 __tmp__._1;
        };
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x211, _x208, ((_x235 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x236 = @:tmpset0 __tmp__._0;
            _x237 = @:tmpset0 __tmp__._1;
        };
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x206, ((_x237 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x238 = @:tmpset0 __tmp__._0;
            _x239 = @:tmpset0 __tmp__._1;
        };
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x190, _x222, (0i64 : stdgo.GoUInt64));
            _x241 = @:tmpset0 __tmp__._1;
        };
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x192, _x224, ((_x241 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x242 = @:tmpset0 __tmp__._0;
            _x243 = @:tmpset0 __tmp__._1;
        };
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x245:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x226, ((_x243 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x244 = @:tmpset0 __tmp__._0;
            _x245 = @:tmpset0 __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x228, ((_x245 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x246 = @:tmpset0 __tmp__._0;
            _x247 = @:tmpset0 __tmp__._1;
        };
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x230, ((_x247 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x248 = @:tmpset0 __tmp__._0;
            _x249 = @:tmpset0 __tmp__._1;
        };
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x232, ((_x249 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x250 = @:tmpset0 __tmp__._0;
            _x251 = @:tmpset0 __tmp__._1;
        };
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x202, _x234, ((_x251 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x252 = @:tmpset0 __tmp__._0;
            _x253 = @:tmpset0 __tmp__._1;
        };
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x204, _x236, ((_x253 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x254 = @:tmpset0 __tmp__._0;
            _x255 = @:tmpset0 __tmp__._1;
        };
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x205 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x189 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x171 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x139 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x238, ((_x255 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x256 = @:tmpset0 __tmp__._0;
            _x257 = @:tmpset0 __tmp__._1;
        };
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x242, _arg1[(4 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x258 = @:tmpset0 __tmp__._0;
            _x259 = @:tmpset0 __tmp__._1;
        };
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x244, (0i64 : stdgo.GoUInt64), ((_x259 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x260 = @:tmpset0 __tmp__._0;
            _x261 = @:tmpset0 __tmp__._1;
        };
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x246, (0i64 : stdgo.GoUInt64), ((_x261 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x262 = @:tmpset0 __tmp__._0;
            _x263 = @:tmpset0 __tmp__._1;
        };
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x248, (0i64 : stdgo.GoUInt64), ((_x263 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x264 = @:tmpset0 __tmp__._0;
            _x265 = @:tmpset0 __tmp__._1;
        };
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x250, (0i64 : stdgo.GoUInt64), ((_x265 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x266 = @:tmpset0 __tmp__._0;
            _x267 = @:tmpset0 __tmp__._1;
        };
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x252, (0i64 : stdgo.GoUInt64), ((_x267 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x268 = @:tmpset0 __tmp__._0;
            _x269 = @:tmpset0 __tmp__._1;
        };
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x254, (0i64 : stdgo.GoUInt64), ((_x269 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x270 = @:tmpset0 __tmp__._0;
            _x271 = @:tmpset0 __tmp__._1;
        };
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x256, (0i64 : stdgo.GoUInt64), ((_x271 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x272 = @:tmpset0 __tmp__._0;
            _x273 = @:tmpset0 __tmp__._1;
        };
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (511i64 : stdgo.GoUInt64));
            _x275 = @:tmpset0 __tmp__._0;
            _x274 = @:tmpset0 __tmp__._1;
        };
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x277 = @:tmpset0 __tmp__._0;
            _x276 = @:tmpset0 __tmp__._1;
        };
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x279 = @:tmpset0 __tmp__._0;
            _x278 = @:tmpset0 __tmp__._1;
        };
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x281 = @:tmpset0 __tmp__._0;
            _x280 = @:tmpset0 __tmp__._1;
        };
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x283 = @:tmpset0 __tmp__._0;
            _x282 = @:tmpset0 __tmp__._1;
        };
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x285 = @:tmpset0 __tmp__._0;
            _x284 = @:tmpset0 __tmp__._1;
        };
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x287 = @:tmpset0 __tmp__._0;
            _x286 = @:tmpset0 __tmp__._1;
        };
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x289 = @:tmpset0 __tmp__._0;
            _x288 = @:tmpset0 __tmp__._1;
        };
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x291 = @:tmpset0 __tmp__._0;
            _x290 = @:tmpset0 __tmp__._1;
        };
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x291, _x288, (0i64 : stdgo.GoUInt64));
            _x292 = @:tmpset0 __tmp__._0;
            _x293 = @:tmpset0 __tmp__._1;
        };
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x289, _x286, ((_x293 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x294 = @:tmpset0 __tmp__._0;
            _x295 = @:tmpset0 __tmp__._1;
        };
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x287, _x284, ((_x295 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x296 = @:tmpset0 __tmp__._0;
            _x297 = @:tmpset0 __tmp__._1;
        };
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x285, _x282, ((_x297 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x298 = @:tmpset0 __tmp__._0;
            _x299 = @:tmpset0 __tmp__._1;
        };
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x283, _x280, ((_x299 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x300 = @:tmpset0 __tmp__._0;
            _x301 = @:tmpset0 __tmp__._1;
        };
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x281, _x278, ((_x301 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x302 = @:tmpset0 __tmp__._0;
            _x303 = @:tmpset0 __tmp__._1;
        };
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x279, _x276, ((_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x304 = @:tmpset0 __tmp__._0;
            _x305 = @:tmpset0 __tmp__._1;
        };
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x274, ((_x305 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x306 = @:tmpset0 __tmp__._0;
            _x307 = @:tmpset0 __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x258, _x290, (0i64 : stdgo.GoUInt64));
            _x309 = @:tmpset0 __tmp__._1;
        };
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x260, _x292, ((_x309 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x310 = @:tmpset0 __tmp__._0;
            _x311 = @:tmpset0 __tmp__._1;
        };
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x313:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x262, _x294, ((_x311 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x312 = @:tmpset0 __tmp__._0;
            _x313 = @:tmpset0 __tmp__._1;
        };
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x264, _x296, ((_x313 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x314 = @:tmpset0 __tmp__._0;
            _x315 = @:tmpset0 __tmp__._1;
        };
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x266, _x298, ((_x315 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x316 = @:tmpset0 __tmp__._0;
            _x317 = @:tmpset0 __tmp__._1;
        };
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x268, _x300, ((_x317 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x318 = @:tmpset0 __tmp__._0;
            _x319 = @:tmpset0 __tmp__._1;
        };
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x270, _x302, ((_x319 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x320 = @:tmpset0 __tmp__._0;
            _x321 = @:tmpset0 __tmp__._1;
        };
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x272, _x304, ((_x321 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x322 = @:tmpset0 __tmp__._0;
            _x323 = @:tmpset0 __tmp__._1;
        };
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x273 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x257 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x239 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x207 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x306, ((_x323 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x324 = @:tmpset0 __tmp__._0;
            _x325 = @:tmpset0 __tmp__._1;
        };
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x310, _arg1[(5 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x326 = @:tmpset0 __tmp__._0;
            _x327 = @:tmpset0 __tmp__._1;
        };
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x312, (0i64 : stdgo.GoUInt64), ((_x327 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x328 = @:tmpset0 __tmp__._0;
            _x329 = @:tmpset0 __tmp__._1;
        };
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x314, (0i64 : stdgo.GoUInt64), ((_x329 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x330 = @:tmpset0 __tmp__._0;
            _x331 = @:tmpset0 __tmp__._1;
        };
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x316, (0i64 : stdgo.GoUInt64), ((_x331 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x332 = @:tmpset0 __tmp__._0;
            _x333 = @:tmpset0 __tmp__._1;
        };
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x318, (0i64 : stdgo.GoUInt64), ((_x333 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x334 = @:tmpset0 __tmp__._0;
            _x335 = @:tmpset0 __tmp__._1;
        };
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x320, (0i64 : stdgo.GoUInt64), ((_x335 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x336 = @:tmpset0 __tmp__._0;
            _x337 = @:tmpset0 __tmp__._1;
        };
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x322, (0i64 : stdgo.GoUInt64), ((_x337 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x338 = @:tmpset0 __tmp__._0;
            _x339 = @:tmpset0 __tmp__._1;
        };
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x324, (0i64 : stdgo.GoUInt64), ((_x339 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x340 = @:tmpset0 __tmp__._0;
            _x341 = @:tmpset0 __tmp__._1;
        };
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (511i64 : stdgo.GoUInt64));
            _x343 = @:tmpset0 __tmp__._0;
            _x342 = @:tmpset0 __tmp__._1;
        };
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x345 = @:tmpset0 __tmp__._0;
            _x344 = @:tmpset0 __tmp__._1;
        };
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x347 = @:tmpset0 __tmp__._0;
            _x346 = @:tmpset0 __tmp__._1;
        };
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x349 = @:tmpset0 __tmp__._0;
            _x348 = @:tmpset0 __tmp__._1;
        };
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x351 = @:tmpset0 __tmp__._0;
            _x350 = @:tmpset0 __tmp__._1;
        };
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x353 = @:tmpset0 __tmp__._0;
            _x352 = @:tmpset0 __tmp__._1;
        };
        var _x354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x355 = @:tmpset0 __tmp__._0;
            _x354 = @:tmpset0 __tmp__._1;
        };
        var _x356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x357 = @:tmpset0 __tmp__._0;
            _x356 = @:tmpset0 __tmp__._1;
        };
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x359 = @:tmpset0 __tmp__._0;
            _x358 = @:tmpset0 __tmp__._1;
        };
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x359, _x356, (0i64 : stdgo.GoUInt64));
            _x360 = @:tmpset0 __tmp__._0;
            _x361 = @:tmpset0 __tmp__._1;
        };
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x357, _x354, ((_x361 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x362 = @:tmpset0 __tmp__._0;
            _x363 = @:tmpset0 __tmp__._1;
        };
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x355, _x352, ((_x363 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x364 = @:tmpset0 __tmp__._0;
            _x365 = @:tmpset0 __tmp__._1;
        };
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x353, _x350, ((_x365 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x366 = @:tmpset0 __tmp__._0;
            _x367 = @:tmpset0 __tmp__._1;
        };
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x351, _x348, ((_x367 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x368 = @:tmpset0 __tmp__._0;
            _x369 = @:tmpset0 __tmp__._1;
        };
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x349, _x346, ((_x369 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x370 = @:tmpset0 __tmp__._0;
            _x371 = @:tmpset0 __tmp__._1;
        };
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x347, _x344, ((_x371 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x372 = @:tmpset0 __tmp__._0;
            _x373 = @:tmpset0 __tmp__._1;
        };
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x345, _x342, ((_x373 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x374 = @:tmpset0 __tmp__._0;
            _x375 = @:tmpset0 __tmp__._1;
        };
        var _x377:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x326, _x358, (0i64 : stdgo.GoUInt64));
            _x377 = @:tmpset0 __tmp__._1;
        };
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x328, _x360, ((_x377 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x378 = @:tmpset0 __tmp__._0;
            _x379 = @:tmpset0 __tmp__._1;
        };
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x330, _x362, ((_x379 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x380 = @:tmpset0 __tmp__._0;
            _x381 = @:tmpset0 __tmp__._1;
        };
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x332, _x364, ((_x381 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x382 = @:tmpset0 __tmp__._0;
            _x383 = @:tmpset0 __tmp__._1;
        };
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x334, _x366, ((_x383 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x384 = @:tmpset0 __tmp__._0;
            _x385 = @:tmpset0 __tmp__._1;
        };
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x336, _x368, ((_x385 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x386 = @:tmpset0 __tmp__._0;
            _x387 = @:tmpset0 __tmp__._1;
        };
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x338, _x370, ((_x387 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x388 = @:tmpset0 __tmp__._0;
            _x389 = @:tmpset0 __tmp__._1;
        };
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x340, _x372, ((_x389 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x390 = @:tmpset0 __tmp__._0;
            _x391 = @:tmpset0 __tmp__._1;
        };
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x341 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x325 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x307 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x275 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x374, ((_x391 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x392 = @:tmpset0 __tmp__._0;
            _x393 = @:tmpset0 __tmp__._1;
        };
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x378, _arg1[(6 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x394 = @:tmpset0 __tmp__._0;
            _x395 = @:tmpset0 __tmp__._1;
        };
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x380, (0i64 : stdgo.GoUInt64), ((_x395 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x396 = @:tmpset0 __tmp__._0;
            _x397 = @:tmpset0 __tmp__._1;
        };
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x382, (0i64 : stdgo.GoUInt64), ((_x397 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x398 = @:tmpset0 __tmp__._0;
            _x399 = @:tmpset0 __tmp__._1;
        };
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x384, (0i64 : stdgo.GoUInt64), ((_x399 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x400 = @:tmpset0 __tmp__._0;
            _x401 = @:tmpset0 __tmp__._1;
        };
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x403:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x386, (0i64 : stdgo.GoUInt64), ((_x401 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x402 = @:tmpset0 __tmp__._0;
            _x403 = @:tmpset0 __tmp__._1;
        };
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x388, (0i64 : stdgo.GoUInt64), ((_x403 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x404 = @:tmpset0 __tmp__._0;
            _x405 = @:tmpset0 __tmp__._1;
        };
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x390, (0i64 : stdgo.GoUInt64), ((_x405 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x406 = @:tmpset0 __tmp__._0;
            _x407 = @:tmpset0 __tmp__._1;
        };
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x392, (0i64 : stdgo.GoUInt64), ((_x407 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x408 = @:tmpset0 __tmp__._0;
            _x409 = @:tmpset0 __tmp__._1;
        };
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x411:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (511i64 : stdgo.GoUInt64));
            _x411 = @:tmpset0 __tmp__._0;
            _x410 = @:tmpset0 __tmp__._1;
        };
        var _x412:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x413:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x413 = @:tmpset0 __tmp__._0;
            _x412 = @:tmpset0 __tmp__._1;
        };
        var _x414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x415:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x415 = @:tmpset0 __tmp__._0;
            _x414 = @:tmpset0 __tmp__._1;
        };
        var _x416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x417:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x417 = @:tmpset0 __tmp__._0;
            _x416 = @:tmpset0 __tmp__._1;
        };
        var _x418:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x419:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x419 = @:tmpset0 __tmp__._0;
            _x418 = @:tmpset0 __tmp__._1;
        };
        var _x420:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x421:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x421 = @:tmpset0 __tmp__._0;
            _x420 = @:tmpset0 __tmp__._1;
        };
        var _x422:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x423 = @:tmpset0 __tmp__._0;
            _x422 = @:tmpset0 __tmp__._1;
        };
        var _x424:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x425:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x425 = @:tmpset0 __tmp__._0;
            _x424 = @:tmpset0 __tmp__._1;
        };
        var _x426:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x427 = @:tmpset0 __tmp__._0;
            _x426 = @:tmpset0 __tmp__._1;
        };
        var _x428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x427, _x424, (0i64 : stdgo.GoUInt64));
            _x428 = @:tmpset0 __tmp__._0;
            _x429 = @:tmpset0 __tmp__._1;
        };
        var _x430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x431:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x425, _x422, ((_x429 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x430 = @:tmpset0 __tmp__._0;
            _x431 = @:tmpset0 __tmp__._1;
        };
        var _x432:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x423, _x420, ((_x431 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x432 = @:tmpset0 __tmp__._0;
            _x433 = @:tmpset0 __tmp__._1;
        };
        var _x434:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x435:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x421, _x418, ((_x433 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x434 = @:tmpset0 __tmp__._0;
            _x435 = @:tmpset0 __tmp__._1;
        };
        var _x436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x419, _x416, ((_x435 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x436 = @:tmpset0 __tmp__._0;
            _x437 = @:tmpset0 __tmp__._1;
        };
        var _x438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x439:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x417, _x414, ((_x437 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x438 = @:tmpset0 __tmp__._0;
            _x439 = @:tmpset0 __tmp__._1;
        };
        var _x440:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x415, _x412, ((_x439 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x440 = @:tmpset0 __tmp__._0;
            _x441 = @:tmpset0 __tmp__._1;
        };
        var _x442:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x413, _x410, ((_x441 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x442 = @:tmpset0 __tmp__._0;
            _x443 = @:tmpset0 __tmp__._1;
        };
        var _x445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x394, _x426, (0i64 : stdgo.GoUInt64));
            _x445 = @:tmpset0 __tmp__._1;
        };
        var _x446:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x396, _x428, ((_x445 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x446 = @:tmpset0 __tmp__._0;
            _x447 = @:tmpset0 __tmp__._1;
        };
        var _x448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x449:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x398, _x430, ((_x447 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x448 = @:tmpset0 __tmp__._0;
            _x449 = @:tmpset0 __tmp__._1;
        };
        var _x450:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x451:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x400, _x432, ((_x449 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x450 = @:tmpset0 __tmp__._0;
            _x451 = @:tmpset0 __tmp__._1;
        };
        var _x452:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x453:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x402, _x434, ((_x451 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x452 = @:tmpset0 __tmp__._0;
            _x453 = @:tmpset0 __tmp__._1;
        };
        var _x454:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x455:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x404, _x436, ((_x453 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x454 = @:tmpset0 __tmp__._0;
            _x455 = @:tmpset0 __tmp__._1;
        };
        var _x456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x457:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x406, _x438, ((_x455 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x456 = @:tmpset0 __tmp__._0;
            _x457 = @:tmpset0 __tmp__._1;
        };
        var _x458:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x459:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x408, _x440, ((_x457 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x458 = @:tmpset0 __tmp__._0;
            _x459 = @:tmpset0 __tmp__._1;
        };
        var _x460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x409 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x393 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x375 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x343 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x442, ((_x459 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x460 = @:tmpset0 __tmp__._0;
            _x461 = @:tmpset0 __tmp__._1;
        };
        var _x462:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x463:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x446, _arg1[(7 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x462 = @:tmpset0 __tmp__._0;
            _x463 = @:tmpset0 __tmp__._1;
        };
        var _x464:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x448, (0i64 : stdgo.GoUInt64), ((_x463 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x464 = @:tmpset0 __tmp__._0;
            _x465 = @:tmpset0 __tmp__._1;
        };
        var _x466:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x467:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x450, (0i64 : stdgo.GoUInt64), ((_x465 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x466 = @:tmpset0 __tmp__._0;
            _x467 = @:tmpset0 __tmp__._1;
        };
        var _x468:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x452, (0i64 : stdgo.GoUInt64), ((_x467 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x468 = @:tmpset0 __tmp__._0;
            _x469 = @:tmpset0 __tmp__._1;
        };
        var _x470:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x471:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x454, (0i64 : stdgo.GoUInt64), ((_x469 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x470 = @:tmpset0 __tmp__._0;
            _x471 = @:tmpset0 __tmp__._1;
        };
        var _x472:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x473:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x456, (0i64 : stdgo.GoUInt64), ((_x471 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x472 = @:tmpset0 __tmp__._0;
            _x473 = @:tmpset0 __tmp__._1;
        };
        var _x474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x475:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x458, (0i64 : stdgo.GoUInt64), ((_x473 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x474 = @:tmpset0 __tmp__._0;
            _x475 = @:tmpset0 __tmp__._1;
        };
        var _x476:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x460, (0i64 : stdgo.GoUInt64), ((_x475 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x476 = @:tmpset0 __tmp__._0;
            _x477 = @:tmpset0 __tmp__._1;
        };
        var _x478:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x479:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (511i64 : stdgo.GoUInt64));
            _x479 = @:tmpset0 __tmp__._0;
            _x478 = @:tmpset0 __tmp__._1;
        };
        var _x480:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x481 = @:tmpset0 __tmp__._0;
            _x480 = @:tmpset0 __tmp__._1;
        };
        var _x482:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x483:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x483 = @:tmpset0 __tmp__._0;
            _x482 = @:tmpset0 __tmp__._1;
        };
        var _x484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x485 = @:tmpset0 __tmp__._0;
            _x484 = @:tmpset0 __tmp__._1;
        };
        var _x486:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x487:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x487 = @:tmpset0 __tmp__._0;
            _x486 = @:tmpset0 __tmp__._1;
        };
        var _x488:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x489 = @:tmpset0 __tmp__._0;
            _x488 = @:tmpset0 __tmp__._1;
        };
        var _x490:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x491 = @:tmpset0 __tmp__._0;
            _x490 = @:tmpset0 __tmp__._1;
        };
        var _x492:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x493:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x493 = @:tmpset0 __tmp__._0;
            _x492 = @:tmpset0 __tmp__._1;
        };
        var _x494:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x495:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x495 = @:tmpset0 __tmp__._0;
            _x494 = @:tmpset0 __tmp__._1;
        };
        var _x496:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x497:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x495, _x492, (0i64 : stdgo.GoUInt64));
            _x496 = @:tmpset0 __tmp__._0;
            _x497 = @:tmpset0 __tmp__._1;
        };
        var _x498:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x493, _x490, ((_x497 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x498 = @:tmpset0 __tmp__._0;
            _x499 = @:tmpset0 __tmp__._1;
        };
        var _x500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x501:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x491, _x488, ((_x499 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x500 = @:tmpset0 __tmp__._0;
            _x501 = @:tmpset0 __tmp__._1;
        };
        var _x502:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x489, _x486, ((_x501 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x502 = @:tmpset0 __tmp__._0;
            _x503 = @:tmpset0 __tmp__._1;
        };
        var _x504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x505:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x487, _x484, ((_x503 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x504 = @:tmpset0 __tmp__._0;
            _x505 = @:tmpset0 __tmp__._1;
        };
        var _x506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x507:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x485, _x482, ((_x505 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x506 = @:tmpset0 __tmp__._0;
            _x507 = @:tmpset0 __tmp__._1;
        };
        var _x508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x483, _x480, ((_x507 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x508 = @:tmpset0 __tmp__._0;
            _x509 = @:tmpset0 __tmp__._1;
        };
        var _x510:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x481, _x478, ((_x509 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x510 = @:tmpset0 __tmp__._0;
            _x511 = @:tmpset0 __tmp__._1;
        };
        var _x513:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x462, _x494, (0i64 : stdgo.GoUInt64));
            _x513 = @:tmpset0 __tmp__._1;
        };
        var _x514:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x464, _x496, ((_x513 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x514 = @:tmpset0 __tmp__._0;
            _x515 = @:tmpset0 __tmp__._1;
        };
        var _x516:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x517:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x466, _x498, ((_x515 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x516 = @:tmpset0 __tmp__._0;
            _x517 = @:tmpset0 __tmp__._1;
        };
        var _x518:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x468, _x500, ((_x517 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x518 = @:tmpset0 __tmp__._0;
            _x519 = @:tmpset0 __tmp__._1;
        };
        var _x520:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x470, _x502, ((_x519 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x520 = @:tmpset0 __tmp__._0;
            _x521 = @:tmpset0 __tmp__._1;
        };
        var _x522:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x523:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x472, _x504, ((_x521 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x522 = @:tmpset0 __tmp__._0;
            _x523 = @:tmpset0 __tmp__._1;
        };
        var _x524:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x474, _x506, ((_x523 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x524 = @:tmpset0 __tmp__._0;
            _x525 = @:tmpset0 __tmp__._1;
        };
        var _x526:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x476, _x508, ((_x525 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x526 = @:tmpset0 __tmp__._0;
            _x527 = @:tmpset0 __tmp__._1;
        };
        var _x528:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x529:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x477 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x461 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x443 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x411 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x510, ((_x527 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x528 = @:tmpset0 __tmp__._0;
            _x529 = @:tmpset0 __tmp__._1;
        };
        var _x530:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x514, _arg1[(8 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x530 = @:tmpset0 __tmp__._0;
            _x531 = @:tmpset0 __tmp__._1;
        };
        var _x532:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x533:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x516, (0i64 : stdgo.GoUInt64), ((_x531 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x532 = @:tmpset0 __tmp__._0;
            _x533 = @:tmpset0 __tmp__._1;
        };
        var _x534:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x535:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x518, (0i64 : stdgo.GoUInt64), ((_x533 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x534 = @:tmpset0 __tmp__._0;
            _x535 = @:tmpset0 __tmp__._1;
        };
        var _x536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x537:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x520, (0i64 : stdgo.GoUInt64), ((_x535 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x536 = @:tmpset0 __tmp__._0;
            _x537 = @:tmpset0 __tmp__._1;
        };
        var _x538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x522, (0i64 : stdgo.GoUInt64), ((_x537 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x538 = @:tmpset0 __tmp__._0;
            _x539 = @:tmpset0 __tmp__._1;
        };
        var _x540:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x541:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x524, (0i64 : stdgo.GoUInt64), ((_x539 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x540 = @:tmpset0 __tmp__._0;
            _x541 = @:tmpset0 __tmp__._1;
        };
        var _x542:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x543:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x526, (0i64 : stdgo.GoUInt64), ((_x541 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x542 = @:tmpset0 __tmp__._0;
            _x543 = @:tmpset0 __tmp__._1;
        };
        var _x544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x545:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x528, (0i64 : stdgo.GoUInt64), ((_x543 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x544 = @:tmpset0 __tmp__._0;
            _x545 = @:tmpset0 __tmp__._1;
        };
        var _x546:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x547:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (511i64 : stdgo.GoUInt64));
            _x547 = @:tmpset0 __tmp__._0;
            _x546 = @:tmpset0 __tmp__._1;
        };
        var _x548:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x549:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x549 = @:tmpset0 __tmp__._0;
            _x548 = @:tmpset0 __tmp__._1;
        };
        var _x550:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x551:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x551 = @:tmpset0 __tmp__._0;
            _x550 = @:tmpset0 __tmp__._1;
        };
        var _x552:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x553:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x553 = @:tmpset0 __tmp__._0;
            _x552 = @:tmpset0 __tmp__._1;
        };
        var _x554:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x555:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x555 = @:tmpset0 __tmp__._0;
            _x554 = @:tmpset0 __tmp__._1;
        };
        var _x556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x557:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x557 = @:tmpset0 __tmp__._0;
            _x556 = @:tmpset0 __tmp__._1;
        };
        var _x558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x559 = @:tmpset0 __tmp__._0;
            _x558 = @:tmpset0 __tmp__._1;
        };
        var _x560:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x561:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x561 = @:tmpset0 __tmp__._0;
            _x560 = @:tmpset0 __tmp__._1;
        };
        var _x562:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x563 = @:tmpset0 __tmp__._0;
            _x562 = @:tmpset0 __tmp__._1;
        };
        var _x564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x565:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x563, _x560, (0i64 : stdgo.GoUInt64));
            _x564 = @:tmpset0 __tmp__._0;
            _x565 = @:tmpset0 __tmp__._1;
        };
        var _x566:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x567:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x561, _x558, ((_x565 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x566 = @:tmpset0 __tmp__._0;
            _x567 = @:tmpset0 __tmp__._1;
        };
        var _x568:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x569:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x559, _x556, ((_x567 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x568 = @:tmpset0 __tmp__._0;
            _x569 = @:tmpset0 __tmp__._1;
        };
        var _x570:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x571:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x557, _x554, ((_x569 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x570 = @:tmpset0 __tmp__._0;
            _x571 = @:tmpset0 __tmp__._1;
        };
        var _x572:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x573:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x555, _x552, ((_x571 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x572 = @:tmpset0 __tmp__._0;
            _x573 = @:tmpset0 __tmp__._1;
        };
        var _x574:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x575:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x553, _x550, ((_x573 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x574 = @:tmpset0 __tmp__._0;
            _x575 = @:tmpset0 __tmp__._1;
        };
        var _x576:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x577:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x551, _x548, ((_x575 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x576 = @:tmpset0 __tmp__._0;
            _x577 = @:tmpset0 __tmp__._1;
        };
        var _x578:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x579:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x549, _x546, ((_x577 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x578 = @:tmpset0 __tmp__._0;
            _x579 = @:tmpset0 __tmp__._1;
        };
        var _x581:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x530, _x562, (0i64 : stdgo.GoUInt64));
            _x581 = @:tmpset0 __tmp__._1;
        };
        var _x582:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x583:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x532, _x564, ((_x581 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x582 = @:tmpset0 __tmp__._0;
            _x583 = @:tmpset0 __tmp__._1;
        };
        var _x584:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x585:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x534, _x566, ((_x583 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x584 = @:tmpset0 __tmp__._0;
            _x585 = @:tmpset0 __tmp__._1;
        };
        var _x586:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x587:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x536, _x568, ((_x585 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x586 = @:tmpset0 __tmp__._0;
            _x587 = @:tmpset0 __tmp__._1;
        };
        var _x588:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x589:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x538, _x570, ((_x587 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x588 = @:tmpset0 __tmp__._0;
            _x589 = @:tmpset0 __tmp__._1;
        };
        var _x590:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x591:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x540, _x572, ((_x589 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x590 = @:tmpset0 __tmp__._0;
            _x591 = @:tmpset0 __tmp__._1;
        };
        var _x592:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x593:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x542, _x574, ((_x591 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x592 = @:tmpset0 __tmp__._0;
            _x593 = @:tmpset0 __tmp__._1;
        };
        var _x594:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x595:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x544, _x576, ((_x593 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x594 = @:tmpset0 __tmp__._0;
            _x595 = @:tmpset0 __tmp__._1;
        };
        var _x596:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x597:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x545 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x529 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x511 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x479 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x578, ((_x595 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x596 = @:tmpset0 __tmp__._0;
            _x597 = @:tmpset0 __tmp__._1;
        };
        var _x598 = ((((_x597 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x579 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x547 : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x599:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x600:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x582, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x599 = @:tmpset0 __tmp__._0;
            _x600 = @:tmpset0 __tmp__._1;
        };
        var _x601:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x602:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x584, (-1i64 : stdgo.GoUInt64), ((_x600 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x601 = @:tmpset0 __tmp__._0;
            _x602 = @:tmpset0 __tmp__._1;
        };
        var _x603:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x604:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x586, (-1i64 : stdgo.GoUInt64), ((_x602 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x603 = @:tmpset0 __tmp__._0;
            _x604 = @:tmpset0 __tmp__._1;
        };
        var _x605:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x606:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x588, (-1i64 : stdgo.GoUInt64), ((_x604 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x605 = @:tmpset0 __tmp__._0;
            _x606 = @:tmpset0 __tmp__._1;
        };
        var _x607:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x608:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x590, (-1i64 : stdgo.GoUInt64), ((_x606 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x607 = @:tmpset0 __tmp__._0;
            _x608 = @:tmpset0 __tmp__._1;
        };
        var _x609:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x610:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x592, (-1i64 : stdgo.GoUInt64), ((_x608 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x609 = @:tmpset0 __tmp__._0;
            _x610 = @:tmpset0 __tmp__._1;
        };
        var _x611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x612:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x594, (-1i64 : stdgo.GoUInt64), ((_x610 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x611 = @:tmpset0 __tmp__._0;
            _x612 = @:tmpset0 __tmp__._1;
        };
        var _x613:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x614:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x596, (-1i64 : stdgo.GoUInt64), ((_x612 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x613 = @:tmpset0 __tmp__._0;
            _x614 = @:tmpset0 __tmp__._1;
        };
        var _x615:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x616:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x598, (511i64 : stdgo.GoUInt64), ((_x614 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x615 = @:tmpset0 __tmp__._0;
            _x616 = @:tmpset0 __tmp__._1;
        };
        var _x618:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x616 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x618 = @:tmpset0 __tmp__._1;
        };
        var _x619:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x619__pointer__ = stdgo.Go.pointer(_x619);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x619__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x599, _x582);
        var _x620:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x620__pointer__ = stdgo.Go.pointer(_x620);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x620__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x601, _x584);
        var _x621:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x621__pointer__ = stdgo.Go.pointer(_x621);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x621__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x603, _x586);
        var _x622:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x622__pointer__ = stdgo.Go.pointer(_x622);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x622__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x605, _x588);
        var _x623:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x623__pointer__ = stdgo.Go.pointer(_x623);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x623__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x607, _x590);
        var _x624:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x624__pointer__ = stdgo.Go.pointer(_x624);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x624__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x609, _x592);
        var _x625:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x625__pointer__ = stdgo.Go.pointer(_x625);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x625__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x611, _x594);
        var _x626:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x626__pointer__ = stdgo.Go.pointer(_x626);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x626__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x613, _x596);
        var _x627:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x627__pointer__ = stdgo.Go.pointer(_x627);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x627__pointer__, (_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x615, _x598);
        _out1[(0 : stdgo.GoInt)] = _x619;
        _out1[(1 : stdgo.GoInt)] = _x620;
        _out1[(2 : stdgo.GoInt)] = _x621;
        _out1[(3 : stdgo.GoInt)] = _x622;
        _out1[(4 : stdgo.GoInt)] = _x623;
        _out1[(5 : stdgo.GoInt)] = _x624;
        _out1[(6 : stdgo.GoInt)] = _x625;
        _out1[(7 : stdgo.GoInt)] = _x626;
        _out1[(8 : stdgo.GoInt)] = _x627;
    }
