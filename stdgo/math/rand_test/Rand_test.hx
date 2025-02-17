package stdgo.math.rand_test;

import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var _rn = __tmp__0._0;
var _kn = __tmp__0._1;
var _wn = __tmp__0._2;
var _fn = __tmp__0._3;
var _re = __tmp__1._0;
var _ke = __tmp__1._1;
var _we = __tmp__1._2;
var _fe = __tmp__1._3;

private var _testSeeds:Slice<GoInt64> = (new Slice<GoInt64>(0, 0, ("1" : GoInt64), ("1754801282" : GoInt64), ("1698661970" : GoInt64),
	("1550503961" : GoInt64)) : Slice<GoInt64>);

private var _printgolden:Pointer<Bool> = stdgo.flag.Flag.bool_(Go.str("printgolden"), false, Go.str("print golden results for regression test"));

private var _regressGolden:Slice<AnyInterface> = (new Slice<AnyInterface>(0, 0, Go.toInterface((4.668112973579268 : GoFloat64)),
	Go.toInterface((0.1601593871172866 : GoFloat64)), Go.toInterface((3.0465834105636 : GoFloat64)), Go.toInterface((0.06385839451671879 : GoFloat64)),
	Go.toInterface((1.8578917487258961 : GoFloat64)), Go.toInterface((0.784676123472182 : GoFloat64)), Go.toInterface((0.11225477361256932 : GoFloat64)),
	Go.toInterface((0.20173283329802255 : GoFloat64)), Go.toInterface((0.3468619496201105 : GoFloat64)), Go.toInterface((0.35601103454384536 : GoFloat64)),
	Go.toInterface((0.888376329507869 : GoFloat64)), Go.toInterface((1.4081362450365698 : GoFloat64)), Go.toInterface((1.0077753823151994 : GoFloat64)),
	Go.toInterface((0.23594100766227588 : GoFloat64)), Go.toInterface((2.777245612300007 : GoFloat64)), Go.toInterface((0.5202997830662377 : GoFloat64)),
	Go.toInterface((1.2842705247770294 : GoFloat64)), Go.toInterface((0.030307408362776206 : GoFloat64)), Go.toInterface((2.204156824853721 : GoFloat64)),
	Go.toInterface((2.09891923895058 : GoFloat64)), Go.toInterface(((0.94519615 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.24496509 : GoFloat64) : GoFloat32)), Go.toInterface(((0.65595627 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.05434384 : GoFloat64) : GoFloat32)), Go.toInterface(((0.3675872 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.28948045 : GoFloat64) : GoFloat32)), Go.toInterface(((0.1924386 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.65533215 : GoFloat64) : GoFloat32)), Go.toInterface(((0.8971697 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.16735445 : GoFloat64) : GoFloat32)), Go.toInterface(((0.28858566 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.9026048 : GoFloat64) : GoFloat32)), Go.toInterface(((0.84978026 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.2730468 : GoFloat64) : GoFloat32)), Go.toInterface(((0.6090802 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.253656 : GoFloat64) : GoFloat32)), Go.toInterface(((0.7746542 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.017480763 : GoFloat64) : GoFloat32)), Go.toInterface(((0.78707397 : GoFloat64) : GoFloat32)),
	Go.toInterface(((0.7993937 : GoFloat64) : GoFloat32)), Go.toInterface((0.9451961492941164 : GoFloat64)),
	Go.toInterface((0.24496508529377975 : GoFloat64)), Go.toInterface((0.6559562651954052 : GoFloat64)), Go.toInterface((0.05434383959970039 : GoFloat64)),
	Go.toInterface((0.36758720663245853 : GoFloat64)), Go.toInterface((0.2894804331565928 : GoFloat64)), Go.toInterface((0.19243860967493215 : GoFloat64)),
	Go.toInterface((0.6553321508148324 : GoFloat64)), Go.toInterface((0.897169713149801 : GoFloat64)), Go.toInterface((0.16735444255905835 : GoFloat64)),
	Go.toInterface((0.2885856518054551 : GoFloat64)), Go.toInterface((0.9026048462705047 : GoFloat64)), Go.toInterface((0.8497802817628735 : GoFloat64)),
	Go.toInterface((0.2730468047134829 : GoFloat64)), Go.toInterface((0.6090801919903561 : GoFloat64)), Go.toInterface((0.25365600644283687 : GoFloat64)),
	Go.toInterface((0.7746542391859803 : GoFloat64)), Go.toInterface((0.017480762156647272 : GoFloat64)), Go.toInterface((0.7870739563039942 : GoFloat64)),
	Go.toInterface((0.7993936979594545 : GoFloat64)), Go.toInterface((("8717895732742165505" : GoInt64) : GoInt64)),
	Go.toInterface((("2259404117704393152" : GoInt64) : GoInt64)), Go.toInterface((("6050128673802995827" : GoInt64) : GoInt64)),
	Go.toInterface((("501233450539197794" : GoInt64) : GoInt64)), Go.toInterface((("3390393562759376202" : GoInt64) : GoInt64)),
	Go.toInterface((("2669985732393126063" : GoInt64) : GoInt64)), Go.toInterface((("1774932891286980153" : GoInt64) : GoInt64)),
	Go.toInterface((("6044372234677422456" : GoInt64) : GoInt64)), Go.toInterface((("8274930044578894929" : GoInt64) : GoInt64)),
	Go.toInterface((("1543572285742637646" : GoInt64) : GoInt64)), Go.toInterface((("2661732831099943416" : GoInt64) : GoInt64)),
	Go.toInterface((("8325060299420976708" : GoInt64) : GoInt64)), Go.toInterface((("7837839688282259259" : GoInt64) : GoInt64)),
	Go.toInterface((("2518412263346885298" : GoInt64) : GoInt64)), Go.toInterface((("5617773211005988520" : GoInt64) : GoInt64)),
	Go.toInterface((("2339563716805116249" : GoInt64) : GoInt64)), Go.toInterface((("7144924247938981575" : GoInt64) : GoInt64)),
	Go.toInterface((("161231572858529631" : GoInt64) : GoInt64)), Go.toInterface((("7259475919510918339" : GoInt64) : GoInt64)),
	Go.toInterface((("7373105480197164748" : GoInt64) : GoInt64)), Go.toInterface((2029793274 : GoInt32)), Go.toInterface((526058514 : GoInt32)),
	Go.toInterface((1408655353 : GoInt32)), Go.toInterface((116702506 : GoInt32)), Go.toInterface((789387515 : GoInt32)),
	Go.toInterface((621654496 : GoInt32)), Go.toInterface((413258767 : GoInt32)), Go.toInterface((1407315077 : GoInt32)),
	Go.toInterface((1926657288 : GoInt32)), Go.toInterface((359390928 : GoInt32)), Go.toInterface((619732968 : GoInt32)),
	Go.toInterface((1938329147 : GoInt32)), Go.toInterface((1824889259 : GoInt32)), Go.toInterface((586363548 : GoInt32)),
	Go.toInterface((1307989752 : GoInt32)), Go.toInterface((544722126 : GoInt32)), Go.toInterface((1663557311 : GoInt32)),
	Go.toInterface((37539650 : GoInt32)), Go.toInterface((1690228450 : GoInt32)), Go.toInterface((1716684894 : GoInt32)), Go.toInterface((0 : GoInt32)),
	Go.toInterface((4 : GoInt32)), Go.toInterface((25 : GoInt32)), Go.toInterface((310570 : GoInt32)), Go.toInterface((857611 : GoInt32)),
	Go.toInterface((621654496 : GoInt32)), Go.toInterface((413258767 : GoInt32)), Go.toInterface((1407315077 : GoInt32)),
	Go.toInterface((1926657288 : GoInt32)), Go.toInterface((0 : GoInt32)), Go.toInterface((8 : GoInt32)), Go.toInterface((27 : GoInt32)),
	Go.toInterface((367019 : GoInt32)), Go.toInterface((209005 : GoInt32)), Go.toInterface((307989752 : GoInt32)), Go.toInterface((544722126 : GoInt32)),
	Go.toInterface((1663557311 : GoInt32)), Go.toInterface((37539650 : GoInt32)), Go.toInterface((0 : GoInt32)), Go.toInterface((4 : GoInt32)),
	Go.toInterface((("8717895732742165505" : GoInt64) : GoInt64)), Go.toInterface((("2259404117704393152" : GoInt64) : GoInt64)),
	Go.toInterface((("6050128673802995827" : GoInt64) : GoInt64)), Go.toInterface((("501233450539197794" : GoInt64) : GoInt64)),
	Go.toInterface((("3390393562759376202" : GoInt64) : GoInt64)), Go.toInterface((("2669985732393126063" : GoInt64) : GoInt64)),
	Go.toInterface((("1774932891286980153" : GoInt64) : GoInt64)), Go.toInterface((("6044372234677422456" : GoInt64) : GoInt64)),
	Go.toInterface((("8274930044578894929" : GoInt64) : GoInt64)), Go.toInterface((("1543572285742637646" : GoInt64) : GoInt64)),
	Go.toInterface((("2661732831099943416" : GoInt64) : GoInt64)), Go.toInterface((("8325060299420976708" : GoInt64) : GoInt64)),
	Go.toInterface((("7837839688282259259" : GoInt64) : GoInt64)), Go.toInterface((("2518412263346885298" : GoInt64) : GoInt64)),
	Go.toInterface((("5617773211005988520" : GoInt64) : GoInt64)), Go.toInterface((("2339563716805116249" : GoInt64) : GoInt64)),
	Go.toInterface((("7144924247938981575" : GoInt64) : GoInt64)), Go.toInterface((("161231572858529631" : GoInt64) : GoInt64)),
	Go.toInterface((("7259475919510918339" : GoInt64) : GoInt64)), Go.toInterface((("7373105480197164748" : GoInt64) : GoInt64)),
	Go.toInterface((("0" : GoInt64) : GoInt64)), Go.toInterface((("2" : GoInt64) : GoInt64)), Go.toInterface((("19" : GoInt64) : GoInt64)),
	Go.toInterface((("959842" : GoInt64) : GoInt64)), Go.toInterface((("688912" : GoInt64) : GoInt64)), Go.toInterface((("393126063" : GoInt64) : GoInt64)),
	Go.toInterface((("89212473" : GoInt64) : GoInt64)), Go.toInterface((("834026388" : GoInt64) : GoInt64)),
	Go.toInterface((("1577188963" : GoInt64) : GoInt64)), Go.toInterface((("543572285742637646" : GoInt64) : GoInt64)),
	Go.toInterface((("355889821886249464" : GoInt64) : GoInt64)), Go.toInterface((("8325060299420976708" : GoInt64) : GoInt64)),
	Go.toInterface((("7837839688282259259" : GoInt64) : GoInt64)), Go.toInterface((("0" : GoInt64) : GoInt64)), Go.toInterface((("0" : GoInt64) : GoInt64)),
	Go.toInterface((("25" : GoInt64) : GoInt64)), Go.toInterface((("679623" : GoInt64) : GoInt64)), Go.toInterface((("882178" : GoInt64) : GoInt64)),
	Go.toInterface((("510918339" : GoInt64) : GoInt64)), Go.toInterface((("782454476" : GoInt64) : GoInt64)), Go.toInterface((("0" : GoInt64) : GoInt64)),
	Go.toInterface((("4" : GoInt64) : GoInt64)), Go.toInterface((("25" : GoInt64) : GoInt64)), Go.toInterface((("310570" : GoInt64) : GoInt64)),
	Go.toInterface((("857611" : GoInt64) : GoInt64)), Go.toInterface((("621654496" : GoInt64) : GoInt64)),
	Go.toInterface((("413258767" : GoInt64) : GoInt64)), Go.toInterface((("1407315077" : GoInt64) : GoInt64)),
	Go.toInterface((("1926657288" : GoInt64) : GoInt64)), Go.toInterface((("543572285742637646" : GoInt64) : GoInt64)),
	Go.toInterface((("355889821886249464" : GoInt64) : GoInt64)), Go.toInterface((("8325060299420976708" : GoInt64) : GoInt64)),
	Go.toInterface((("7837839688282259259" : GoInt64) : GoInt64)), Go.toInterface((("0" : GoInt64) : GoInt64)), Go.toInterface((("2" : GoInt64) : GoInt64)),
	Go.toInterface((("14" : GoInt64) : GoInt64)), Go.toInterface((("515775" : GoInt64) : GoInt64)), Go.toInterface((("839455" : GoInt64) : GoInt64)),
	Go.toInterface((("690228450" : GoInt64) : GoInt64)), Go.toInterface((("642943070" : GoInt64) : GoInt64)),
	Go.toInterface((-0.28158587086436215 : GoFloat64)), Go.toInterface((0.570933095808067 : GoFloat64)), Go.toInterface((-1.6920196326157044 : GoFloat64)),
	Go.toInterface((0.1996229111693099 : GoFloat64)), Go.toInterface((1.9195199291234621 : GoFloat64)), Go.toInterface((0.8954838794918353 : GoFloat64)),
	Go.toInterface((0.41457072128813166 : GoFloat64)), Go.toInterface((-0.48700161491544713 : GoFloat64)), Go.toInterface((-0.1684059662402393 : GoFloat64)),
	Go.toInterface((0.37056410998929545 : GoFloat64)), Go.toInterface((1.0156889027029008 : GoFloat64)), Go.toInterface((-0.5174422210625114 : GoFloat64)),
	Go.toInterface((-0.5565834214413804 : GoFloat64)), Go.toInterface((0.778320596648391 : GoFloat64)), Go.toInterface((-1.8970718197702225 : GoFloat64)),
	Go.toInterface((0.5229525761688676 : GoFloat64)), Go.toInterface((-1.5515595563231523 : GoFloat64)), Go.toInterface((0.0182029289376123 : GoFloat64)),
	Go.toInterface((-0.6820951356608795 : GoFloat64)), Go.toInterface((-0.5987943422687668 : GoFloat64)),
	Go.toInterface((new Slice<GoInt>(0, 0) : Slice<GoInt>)), Go.toInterface((new Slice<GoInt>(0, 0, (0 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (0 : GoInt), (4 : GoInt), (1 : GoInt), (3 : GoInt), (2 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (3 : GoInt), (1 : GoInt), (0 : GoInt), (4 : GoInt), (7 : GoInt), (5 : GoInt), (2 : GoInt),
		(6 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (5 : GoInt), (0 : GoInt), (3 : GoInt), (6 : GoInt), (7 : GoInt), (4 : GoInt), (2 : GoInt), (1 : GoInt),
		(8 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (4 : GoInt), (5 : GoInt), (0 : GoInt), (2 : GoInt), (6 : GoInt), (9 : GoInt), (3 : GoInt), (1 : GoInt),
		(8 : GoInt), (7 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (14 : GoInt), (2 : GoInt), (0 : GoInt), (8 : GoInt), (3 : GoInt), (5 : GoInt), (13 : GoInt), (12 : GoInt),
		(1 : GoInt), (4 : GoInt), (6 : GoInt), (7 : GoInt), (11 : GoInt), (9 : GoInt), (15 : GoInt), (10 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0) : Slice<GoInt>)), Go.toInterface((new Slice<GoInt>(0, 0, (0 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (3 : GoInt), (0 : GoInt), (1 : GoInt), (2 : GoInt), (4 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (5 : GoInt), (1 : GoInt), (2 : GoInt), (0 : GoInt), (4 : GoInt), (7 : GoInt), (3 : GoInt),
		(6 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (4 : GoInt), (0 : GoInt), (6 : GoInt), (8 : GoInt), (1 : GoInt), (5 : GoInt), (2 : GoInt), (7 : GoInt),
		(3 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (8 : GoInt), (6 : GoInt), (1 : GoInt), (7 : GoInt), (5 : GoInt), (4 : GoInt), (3 : GoInt), (2 : GoInt),
		(9 : GoInt), (0 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (0 : GoInt), (3 : GoInt), (13 : GoInt), (2 : GoInt), (15 : GoInt), (4 : GoInt), (10 : GoInt), (1 : GoInt),
		(8 : GoInt), (14 : GoInt), (7 : GoInt), (6 : GoInt), (12 : GoInt), (9 : GoInt), (5 : GoInt), (11 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0) : Slice<GoInt>)), Go.toInterface((new Slice<GoInt>(0, 0, (0 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (0 : GoInt), (4 : GoInt), (2 : GoInt), (1 : GoInt), (3 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (2 : GoInt), (1 : GoInt), (7 : GoInt), (0 : GoInt), (6 : GoInt), (3 : GoInt), (4 : GoInt),
		(5 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (8 : GoInt), (7 : GoInt), (5 : GoInt), (3 : GoInt), (4 : GoInt), (6 : GoInt), (0 : GoInt), (1 : GoInt),
		(2 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoInt>(0, 0, (1 : GoInt), (0 : GoInt), (2 : GoInt), (5 : GoInt), (7 : GoInt), (6 : GoInt), (9 : GoInt), (8 : GoInt),
		(3 : GoInt), (4 : GoInt)) : Slice<GoInt>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (148 : GoUInt8), (253 : GoUInt8), (194 : GoUInt8), (250 : GoUInt8), (47 : GoUInt8), (252 : GoUInt8),
		(192 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (65 : GoUInt8), (211 : GoUInt8), (255 : GoUInt8), (18 : GoUInt8), (4 : GoUInt8), (91 : GoUInt8), (115 : GoUInt8),
		(200 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (110 : GoUInt8), (79 : GoUInt8), (249 : GoUInt8), (95 : GoUInt8), (246 : GoUInt8), (98 : GoUInt8),
		(165 : GoUInt8), (238 : GoUInt8), (232 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (42 : GoUInt8), (189 : GoUInt8), (244 : GoUInt8), (74 : GoUInt8), (45 : GoUInt8), (11 : GoUInt8),
		(117 : GoUInt8), (251 : GoUInt8), (24 : GoUInt8), (13 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (175 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (72 : GoUInt8), (167 : GoUInt8), (158 : GoUInt8), (224 : GoUInt8), (177 : GoUInt8), (13 : GoUInt8),
		(57 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (70 : GoUInt8), (81 : GoUInt8), (133 : GoUInt8), (15 : GoUInt8), (212 : GoUInt8), (161 : GoUInt8),
		(120 : GoUInt8), (137 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (46 : GoUInt8), (226 : GoUInt8), (133 : GoUInt8), (236 : GoUInt8), (225 : GoUInt8), (81 : GoUInt8),
		(20 : GoUInt8), (85 : GoUInt8), (120 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (8 : GoUInt8), (117 : GoUInt8), (214 : GoUInt8), (78 : GoUInt8), (226 : GoUInt8), (211 : GoUInt8),
		(208 : GoUInt8), (208 : GoUInt8), (222 : GoUInt8), (107 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (248 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (249 : GoUInt8), (180 : GoUInt8), (76 : GoUInt8), (232 : GoUInt8), (95 : GoUInt8), (240 : GoUInt8),
		(68 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (198 : GoUInt8), (177 : GoUInt8), (248 : GoUInt8), (59 : GoUInt8), (142 : GoUInt8), (136 : GoUInt8),
		(59 : GoUInt8), (191 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (133 : GoUInt8), (122 : GoUInt8), (171 : GoUInt8), (153 : GoUInt8), (197 : GoUInt8), (178 : GoUInt8),
		(82 : GoUInt8), (199 : GoUInt8), (66 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (156 : GoUInt8), (50 : GoUInt8), (243 : GoUInt8), (168 : GoUInt8), (174 : GoUInt8), (183 : GoUInt8),
		(158 : GoUInt8), (248 : GoUInt8), (86 : GoUInt8), (246 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (89 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (193 : GoUInt8), (143 : GoUInt8), (13 : GoUInt8), (206 : GoUInt8), (204 : GoUInt8), (119 : GoUInt8),
		(199 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (94 : GoUInt8), (122 : GoUInt8), (129 : GoUInt8), (191 : GoUInt8), (222 : GoUInt8), (39 : GoUInt8),
		(95 : GoUInt8), (103 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (207 : GoUInt8), (226 : GoUInt8), (66 : GoUInt8), (207 : GoUInt8), (60 : GoUInt8), (195 : GoUInt8),
		(84 : GoUInt8), (243 : GoUInt8), (237 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((new Slice<GoUInt8>(0, 0, (226 : GoUInt8), (214 : GoUInt8), (190 : GoUInt8), (204 : GoUInt8), (78 : GoUInt8), (163 : GoUInt8),
		(174 : GoUInt8), (94 : GoUInt8), (136 : GoUInt8), (82 : GoUInt8)) : Slice<GoUInt8>)),
	Go.toInterface((("4059586549" : GoUInt32) : GoUInt32)), Go.toInterface((("1052117029" : GoUInt32) : GoUInt32)),
	Go.toInterface((("2817310706" : GoUInt32) : GoUInt32)), Go.toInterface((("233405013" : GoUInt32) : GoUInt32)),
	Go.toInterface((("1578775030" : GoUInt32) : GoUInt32)), Go.toInterface((("1243308993" : GoUInt32) : GoUInt32)),
	Go.toInterface((("826517535" : GoUInt32) : GoUInt32)), Go.toInterface((("2814630155" : GoUInt32) : GoUInt32)),
	Go.toInterface((("3853314576" : GoUInt32) : GoUInt32)), Go.toInterface((("718781857" : GoUInt32) : GoUInt32)),
	Go.toInterface((("1239465936" : GoUInt32) : GoUInt32)), Go.toInterface((("3876658295" : GoUInt32) : GoUInt32)),
	Go.toInterface((("3649778518" : GoUInt32) : GoUInt32)), Go.toInterface((("1172727096" : GoUInt32) : GoUInt32)),
	Go.toInterface((("2615979505" : GoUInt32) : GoUInt32)), Go.toInterface((("1089444252" : GoUInt32) : GoUInt32)),
	Go.toInterface((("3327114623" : GoUInt32) : GoUInt32)), Go.toInterface((("75079301" : GoUInt32) : GoUInt32)),
	Go.toInterface((("3380456901" : GoUInt32) : GoUInt32)), Go.toInterface((("3433369789" : GoUInt32) : GoUInt32)),
	Go.toInterface((("8717895732742165505" : GoUInt64) : GoUInt64)), Go.toInterface((("2259404117704393152" : GoUInt64) : GoUInt64)),
	Go.toInterface((("6050128673802995827" : GoUInt64) : GoUInt64)), Go.toInterface((("9724605487393973602" : GoUInt64) : GoUInt64)),
	Go.toInterface((("12613765599614152010" : GoUInt64) : GoUInt64)), Go.toInterface((("11893357769247901871" : GoUInt64) : GoUInt64)),
	Go.toInterface((("1774932891286980153" : GoUInt64) : GoUInt64)), Go.toInterface((("15267744271532198264" : GoUInt64) : GoUInt64)),
	Go.toInterface((("17498302081433670737" : GoUInt64) : GoUInt64)), Go.toInterface((("1543572285742637646" : GoUInt64) : GoUInt64)),
	Go.toInterface((("11885104867954719224" : GoUInt64) : GoUInt64)), Go.toInterface((("17548432336275752516" : GoUInt64) : GoUInt64)),
	Go.toInterface((("7837839688282259259" : GoUInt64) : GoUInt64)), Go.toInterface((("2518412263346885298" : GoUInt64) : GoUInt64)),
	Go.toInterface((("5617773211005988520" : GoUInt64) : GoUInt64)), Go.toInterface((("11562935753659892057" : GoUInt64) : GoUInt64)),
	Go.toInterface((("16368296284793757383" : GoUInt64) : GoUInt64)), Go.toInterface((("161231572858529631" : GoUInt64) : GoUInt64)),
	Go.toInterface((("16482847956365694147" : GoUInt64) : GoUInt64)), Go.toInterface((("16596477517051940556" : GoUInt64) : GoUInt64))) : Slice<AnyInterface>);

private final _numTestSamples:GoUInt64 = ("10000" : GoUInt64);
var __tmp__0 = getNormalDistributionParameters();
var __tmp__1 = getExponentialDistributionParameters();

@:structInit @:using(stdgo.math.rand_test.Rand_test.T_statsResults_static_extension) private class T_statsResults {
	public var _mean:GoFloat64 = 0;
	public var _stddev:GoFloat64 = 0;
	public var _closeEnough:GoFloat64 = 0;
	public var _maxError:GoFloat64 = 0;

	public function new(?_mean:GoFloat64, ?_stddev:GoFloat64, ?_closeEnough:GoFloat64, ?_maxError:GoFloat64) {
		if (_mean != null)
			this._mean = _mean;
		if (_stddev != null)
			this._stddev = _stddev;
		if (_closeEnough != null)
			this._closeEnough = _closeEnough;
		if (_maxError != null)
			this._maxError = _maxError;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_statsResults(_mean, _stddev, _closeEnough, _maxError);
	}
}

@:local private typedef T__struct_0 = {
	public var _name:GoString;
	public var _fn:() -> GoInt;
};

function example():Void {
	stdgo.math.rand.Rand.seed(("42" : GoInt64));
	var _answers = (new Slice<GoString>(0, 0, Go.str("It is certain"), Go.str("It is decidedly so"), Go.str("Without a doubt"), Go.str("Yes definitely"),
		Go.str("You may rely on it"), Go.str("As I see it yes"), Go.str("Most likely"), Go.str("Outlook good"), Go.str("Yes"), Go.str("Signs point to yes"),
		Go.str("Reply hazy try again"), Go.str("Ask again later"), Go.str("Better not tell you now"), Go.str("Cannot predict now"),
		Go.str("Concentrate and ask again"), Go.str("Don\'t count on it"), Go.str("My reply is no"), Go.str("My sources say no"),
		Go.str("Outlook not so good"), Go.str("Very doubtful")) : Slice<GoString>);
	stdgo.fmt.Fmt.println(Go.str("Magic 8-Ball says:"), _answers[stdgo.math.rand.Rand.intn((_answers.length))]);
}

/**
	// This example shows the use of each of the methods on a *Rand.
	// The use of the global functions is the same, without the receiver.
**/
function example_rand():Void {
	var __deferstack__:Array<Void->Void> = [];
	var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(("99" : GoInt64)));
	try {
		var _w = stdgo.text.tabwriter.Tabwriter.newWriter(Go.asInterface(stdgo.os.Os.stdout), (1 : GoInt), (1 : GoInt), (1 : GoInt), (" ".code : GoRune),
			("0" : GoUInt));
		__deferstack__.unshift(() -> _w.flush());
		var _show:(GoString, AnyInterface, AnyInterface,
			AnyInterface) -> Void = function(_name:GoString, _v1:AnyInterface, _v2:AnyInterface, _v3:AnyInterface):Void {
				stdgo.fmt.Fmt.fprintf(Go.asInterface(_w), Go.str("%s\t%v\t%v\t%v\n"), Go.toInterface(_name), _v1, _v2, _v3);
			};
		_show(Go.str("Float32"), Go.toInterface(_r.float32()), Go.toInterface(_r.float32()), Go.toInterface(_r.float32()));
		_show(Go.str("Float64"), Go.toInterface(_r.float64()), Go.toInterface(_r.float64()), Go.toInterface(_r.float64()));
		_show(Go.str("ExpFloat64"), Go.toInterface(_r.expFloat64()), Go.toInterface(_r.expFloat64()), Go.toInterface(_r.expFloat64()));
		_show(Go.str("NormFloat64"), Go.toInterface(_r.normFloat64()), Go.toInterface(_r.normFloat64()), Go.toInterface(_r.normFloat64()));
		_show(Go.str("Int31"), Go.toInterface(_r.int31()), Go.toInterface(_r.int31()), Go.toInterface(_r.int31()));
		_show(Go.str("Int63"), Go.toInterface(_r.int63()), Go.toInterface(_r.int63()), Go.toInterface(_r.int63()));
		_show(Go.str("Uint32"), Go.toInterface(_r.uint32()), Go.toInterface(_r.uint32()), Go.toInterface(_r.uint32()));
		_show(Go.str("Intn(10)"), Go.toInterface(_r.intn((10 : GoInt))), Go.toInterface(_r.intn((10 : GoInt))), Go.toInterface(_r.intn((10 : GoInt))));
		_show(Go.str("Int31n(10)"), Go.toInterface(_r.int31n((10 : GoInt32))), Go.toInterface(_r.int31n((10 : GoInt32))),
			Go.toInterface(_r.int31n((10 : GoInt32))));
		_show(Go.str("Int63n(10)"), Go.toInterface(_r.int63n(("10" : GoInt64))), Go.toInterface(_r.int63n(("10" : GoInt64))),
			Go.toInterface(_r.int63n(("10" : GoInt64))));
		_show(Go.str("Perm"), Go.toInterface(_r.perm((5 : GoInt))), Go.toInterface(_r.perm((5 : GoInt))), Go.toInterface(_r.perm((5 : GoInt))));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function examplePerm():Void {
	for (_0 => _value in stdgo.math.rand.Rand.perm((3 : GoInt))) {
		stdgo.fmt.Fmt.println(_value);
	};
}

function exampleShuffle():Void {
	var _words = stdgo.strings.Strings.fields(Go.str("ink runs from the corners of my mouth"));
	stdgo.math.rand.Rand.shuffle((_words.length), function(_i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = _words[_j];
			final __tmp__1 = _words[_i];
			_words[_i] = __tmp__0;
			_words[_j] = __tmp__1;
		};
	});
	stdgo.fmt.Fmt.println(_words);
}

function exampleShuffle_slicesInUnison():Void {
	var _numbers = (Go.str("12345") : Slice<GoByte>);
	var _letters = (Go.str("ABCDE") : Slice<GoByte>);
	stdgo.math.rand.Rand.shuffle((_numbers.length), function(_i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = _numbers[_j];
			final __tmp__1 = _numbers[_i];
			_numbers[_i] = __tmp__0;
			_numbers[_j] = __tmp__1;
		};
		{
			final __tmp__0 = _letters[_j];
			final __tmp__1 = _letters[_i];
			_letters[_i] = __tmp__0;
			_letters[_j] = __tmp__1;
		};
	});
	for (_i => _ in _numbers) {
		stdgo.fmt.Fmt.printf(Go.str("%c: %c\n"), Go.toInterface(_letters[_i]), Go.toInterface(_numbers[_i]));
	};
}

function exampleIntn():Void {
	stdgo.math.rand.Rand.seed(("86" : GoInt64));
	stdgo.fmt.Fmt.println(stdgo.math.rand.Rand.intn((100 : GoInt)));
	stdgo.fmt.Fmt.println(stdgo.math.rand.Rand.intn((100 : GoInt)));
	stdgo.fmt.Fmt.println(stdgo.math.rand.Rand.intn((100 : GoInt)));
}

/**
	// TestConcurrent exercises the rand API concurrently, triggering situations
	// where the race detector is likely to detect issues.
**/
function testConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
		__deferstack__.unshift(() -> _wg.wait_());
		_wg.add((10 : GoInt));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				Go.routine(() -> {
					var a = function(_i:GoInt):Void {
						var __deferstack__:Array<Void->Void> = [];
						__deferstack__.unshift(() -> _wg.done());
						try {
							var _buf = new Slice<GoUInt8>((997 : GoInt).toBasic(), 0, ...[for (i in 0...(997 : GoInt).toBasic()) (0 : GoUInt8)]);
							{
								var _j:GoInt = (0 : GoInt);
								Go.cfor(_j < (10:GoInt), _j++, {
									var _seed:GoInt64 = (0 : GoInt64);
									_seed = _seed + ((expFloat64() : GoInt64));
									_seed = _seed + ((float32() : GoInt64));
									_seed = _seed + ((float64() : GoInt64));
									_seed = _seed + ((intn(int_()) : GoInt64));
									_seed = _seed + ((int31n(int31()) : GoInt64));
									_seed = _seed + ((int63n(int63()) : GoInt64));
									_seed = _seed + ((normFloat64() : GoInt64));
									_seed = _seed + ((uint32() : GoInt64));
									_seed = _seed + ((uint64() : GoInt64));
									for (_0 => _p in perm((10 : GoInt))) {
										_seed = _seed + ((_p : GoInt64));
									};
									read(_buf);
									for (_1 => _b in _buf) {
										_seed = _seed + ((_b : GoInt64));
									};
									seed((_i * _j : GoInt64) * _seed);
								});
							};
							for (defer in __deferstack__) {
								defer();
							};
							{
								for (defer in __deferstack__) {
									defer();
								};
								if (Go.recover_exception != null)
									throw Go.recover_exception;
								return;
							};
						} catch (__exception__) {
							if (!(__exception__.native is AnyInterfaceData))
								throw __exception__;
							Go.recover_exception = __exception__.native;
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					};
					a(_i);
				});
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _max(_a:GoFloat64, _b:GoFloat64):GoFloat64 {
	if (_a > _b) {
		return _a;
	};
	return _b;
}

function _nearEqual(_a:GoFloat64, _b:GoFloat64, _closeEnough:GoFloat64, _maxError:GoFloat64):Bool {
	var _absDiff:GoFloat64 = stdgo.math.Math.abs(_a - _b);
	if (_absDiff < _closeEnough) {
		return true;
	};
	return (_absDiff / _max(stdgo.math.Math.abs(_a), stdgo.math.Math.abs(_b))) < _maxError;
}

function _getStatsResults(_samples:Slice<GoFloat64>):Ref<T_statsResults> {
	var _res = ({} : stdgo.math.rand_test.Rand_test.T_statsResults);
	var _sum:GoFloat64 = (0 : GoFloat64),
		_squaresum:GoFloat64 = (0 : GoFloat64);
	for (_0 => _s in _samples) {
		_sum = _sum + (_s);
		_squaresum = _squaresum + (_s * _s);
	};
	_res._mean = _sum / (_samples.length : GoFloat64);
	_res._stddev = stdgo.math.Math.sqrt((_squaresum / (_samples.length : GoFloat64)) - (_res._mean * _res._mean));
	return _res;
}

function _checkSampleDistribution(_t:Ref<stdgo.testing.Testing.T>, _samples:Slice<GoFloat64>, _expected:Ref<T_statsResults>):Void {
	_t.helper();
	var _actual = _getStatsResults(_samples);
	var _err:Error = _actual._checkSimilarDistribution(_expected);
	if (_err != null) {
		_t.errorf(_err.error());
	};
}

function _checkSampleSliceDistributions(_t:Ref<stdgo.testing.Testing.T>, _samples:Slice<GoFloat64>, _nslices:GoInt, _expected:Ref<T_statsResults>):Void {
	_t.helper();
	var _chunk:GoInt = (_samples.length) / _nslices;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _nslices, _i++, {
			var _low:GoInt = _i * _chunk;
			var _high:GoInt = (0 : GoInt);
			if (_i == (_nslices - (1 : GoInt))) {
				_high = (_samples.length) - (1 : GoInt);
			} else {
				_high = (_i + (1 : GoInt)) * _chunk;
			};
			_checkSampleDistribution(_t, (_samples.__slice__(_low, _high) : Slice<GoFloat64>), _expected);
		});
	};
}

function _generateNormalSamples(_nsamples:GoInt, _mean:GoFloat64, _stddev:GoFloat64, _seed:GoInt64):Slice<GoFloat64> {
	var _r = new_(newSource(_seed));
	var _samples = new Slice<GoFloat64>((_nsamples : GoInt).toBasic(), 0, ...[for (i in 0...(_nsamples : GoInt).toBasic()) (0 : GoFloat64)]);
	for (_i => _ in _samples) {
		_samples[_i] = (_r.normFloat64() * _stddev) + _mean;
	};
	return _samples;
}

function _testNormalDistribution(_t:Ref<stdgo.testing.Testing.T>, _nsamples:GoInt, _mean:GoFloat64, _stddev:GoFloat64, _seed:GoInt64):Void {
	var _samples = _generateNormalSamples(_nsamples, _mean, _stddev, _seed);
	var _errorScale:GoFloat64 = _max((1 : GoFloat64), _stddev);
	var _expected = ((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, (0.1 : GoFloat64) * _errorScale,
		(0.08 : GoFloat64) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults) : Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
	_checkSampleDistribution(_t, _samples, _expected);
	_checkSampleSliceDistributions(_t, _samples, (2 : GoInt), _expected);
	_checkSampleSliceDistributions(_t, _samples, (7 : GoInt), _expected);
}

function testStandardNormalValues(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _seed in _testSeeds) {
		_testNormalDistribution(_t, (10000 : GoInt), (0 : GoFloat64), (1 : GoFloat64), _seed);
	};
}

function testNonStandardNormalValues(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _sdmax:GoFloat64 = (1000 : GoFloat64);
	var _mmax:GoFloat64 = (1000 : GoFloat64);
	if (stdgo.testing.Testing.short()) {
		_sdmax = (5 : GoFloat64);
		_mmax = (5 : GoFloat64);
	};
	{
		var _sd:GoFloat64 = (0.5 : GoFloat64);
		Go.cfor(_sd < _sdmax, _sd = _sd * (2 : GoFloat64), {
			{
				var _m:GoFloat64 = (0.5 : GoFloat64);
				Go.cfor(_m < _mmax, _m = _m * (2 : GoFloat64), {
					for (_0 => _seed in _testSeeds) {
						_testNormalDistribution(_t, (10000 : GoInt), _m, _sd, _seed);
						if (stdgo.testing.Testing.short()) {
							break;
						};
					};
				});
			};
		});
	};
}

function _generateExponentialSamples(_nsamples:GoInt, _rate:GoFloat64, _seed:GoInt64):Slice<GoFloat64> {
	var _r = new_(newSource(_seed));
	var _samples = new Slice<GoFloat64>((_nsamples : GoInt).toBasic(), 0, ...[for (i in 0...(_nsamples : GoInt).toBasic()) (0 : GoFloat64)]);
	for (_i => _ in _samples) {
		_samples[_i] = _r.expFloat64() / _rate;
	};
	return _samples;
}

function _testExponentialDistribution(_t:Ref<stdgo.testing.Testing.T>, _nsamples:GoInt, _rate:GoFloat64, _seed:GoInt64):Void {
	var _mean:GoFloat64 = (1 : GoFloat64) / _rate;
	var _stddev:GoFloat64 = _mean;
	var _samples = _generateExponentialSamples(_nsamples, _rate, _seed);
	var _errorScale:GoFloat64 = _max((1 : GoFloat64), (1 : GoFloat64) / _rate);
	var _expected = ((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, (0.1 : GoFloat64) * _errorScale,
		(0.2 : GoFloat64) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults) : Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
	_checkSampleDistribution(_t, _samples, _expected);
	_checkSampleSliceDistributions(_t, _samples, (2 : GoInt), _expected);
	_checkSampleSliceDistributions(_t, _samples, (7 : GoInt), _expected);
}

function testStandardExponentialValues(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _seed in _testSeeds) {
		_testExponentialDistribution(_t, (10000 : GoInt), (1 : GoFloat64), _seed);
	};
}

function testNonStandardExponentialValues(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _rate:GoFloat64 = (0.05 : GoFloat64);
		Go.cfor(_rate < (10:GoFloat64), _rate = _rate * (2 : GoFloat64), {
			for (_0 => _seed in _testSeeds) {
				_testExponentialDistribution(_t, (10000 : GoInt), _rate, _seed);
				if (stdgo.testing.Testing.short()) {
					break;
				};
			};
		});
	};
}

function _initNorm():{var _0:Slice<GoUInt32>; var _1:Slice<GoFloat32>; var _2:Slice<GoFloat32>;} {
	var _testKn:Slice<GoUInt32> = (null : Slice<GoUInt32>),
		_testWn:Slice<GoFloat32> = (null : Slice<GoFloat32>),
		_testFn:Slice<GoFloat32> = (null : Slice<GoFloat32>);
	{};
	var _dn:GoFloat64 = _rn,
		_tn:GoFloat64 = _dn,
		_vn:GoFloat64 = (0.00991256303526217 : GoFloat64);
	_testKn = new Slice<GoUInt32>((128 : GoInt).toBasic(), 0, ...[for (i in 0...(128 : GoInt).toBasic()) (0 : GoUInt32)]);
	_testWn = new Slice<GoFloat32>((128 : GoInt).toBasic(), 0, ...[for (i in 0...(128 : GoInt).toBasic()) (0 : GoFloat32)]);
	_testFn = new Slice<GoFloat32>((128 : GoInt).toBasic(), 0, ...[for (i in 0...(128 : GoInt).toBasic()) (0 : GoFloat32)]);
	var _q:GoFloat64 = _vn / stdgo.math.Math.exp(((-0.5 : GoFloat64) * _dn) * _dn);
	_testKn[(0 : GoInt)] = ((_dn / _q) * (2.147483648e+09 : GoFloat64) : GoUInt32);
	_testKn[(1 : GoInt)] = ("0" : GoUInt32);
	_testWn[(0 : GoInt)] = (_q / (2.147483648e+09 : GoFloat64) : GoFloat32);
	_testWn[(127 : GoInt)] = (_dn / (2.147483648e+09 : GoFloat64) : GoFloat32);
	_testFn[(0 : GoInt)] = (1 : GoFloat64);
	_testFn[(127 : GoInt)] = (stdgo.math.Math.exp(((-0.5 : GoFloat64) * _dn) * _dn) : GoFloat32);
	{
		var _i:GoInt = (126 : GoInt);
		Go.cfor(_i >= (1 : GoInt), _i--, {
			_dn = stdgo.math.Math.sqrt((-2 : GoFloat64) * stdgo.math.Math.log((_vn / _dn) + stdgo.math.Math.exp(((-0.5 : GoFloat64) * _dn) * _dn)));
			_testKn[_i + (1 : GoInt)] = ((_dn / _tn) * (2.147483648e+09 : GoFloat64) : GoUInt32);
			_tn = _dn;
			_testFn[_i] = (stdgo.math.Math.exp(((-0.5 : GoFloat64) * _dn) * _dn) : GoFloat32);
			_testWn[_i] = (_dn / (2.147483648e+09 : GoFloat64) : GoFloat32);
		});
	};
	return {_0: _testKn, _1: _testWn, _2: _testFn};
}

function _initExp():{var _0:Slice<GoUInt32>; var _1:Slice<GoFloat32>; var _2:Slice<GoFloat32>;} {
	var _testKe:Slice<GoUInt32> = (null : Slice<GoUInt32>),
		_testWe:Slice<GoFloat32> = (null : Slice<GoFloat32>),
		_testFe:Slice<GoFloat32> = (null : Slice<GoFloat32>);
	{};
	var _de:GoFloat64 = _re,
		_te:GoFloat64 = _de,
		_ve:GoFloat64 = (0.003949659822581557 : GoFloat64);
	_testKe = new Slice<GoUInt32>((256 : GoInt).toBasic(), 0, ...[for (i in 0...(256 : GoInt).toBasic()) (0 : GoUInt32)]);
	_testWe = new Slice<GoFloat32>((256 : GoInt).toBasic(), 0, ...[for (i in 0...(256 : GoInt).toBasic()) (0 : GoFloat32)]);
	_testFe = new Slice<GoFloat32>((256 : GoInt).toBasic(), 0, ...[for (i in 0...(256 : GoInt).toBasic()) (0 : GoFloat32)]);
	var _q:GoFloat64 = _ve / stdgo.math.Math.exp(-_de);
	_testKe[(0 : GoInt)] = ((_de / _q) * (4.294967296e+09 : GoFloat64) : GoUInt32);
	_testKe[(1 : GoInt)] = ("0" : GoUInt32);
	_testWe[(0 : GoInt)] = (_q / (4.294967296e+09 : GoFloat64) : GoFloat32);
	_testWe[(255 : GoInt)] = (_de / (4.294967296e+09 : GoFloat64) : GoFloat32);
	_testFe[(0 : GoInt)] = (1 : GoFloat64);
	_testFe[(255 : GoInt)] = (stdgo.math.Math.exp(-_de) : GoFloat32);
	{
		var _i:GoInt = (254 : GoInt);
		Go.cfor(_i >= (1 : GoInt), _i--, {
			_de = -stdgo.math.Math.log((_ve / _de) + stdgo.math.Math.exp(-_de));
			_testKe[_i + (1 : GoInt)] = ((_de / _te) * (4.294967296e+09 : GoFloat64) : GoUInt32);
			_te = _de;
			_testFe[_i] = (stdgo.math.Math.exp(-_de) : GoFloat32);
			_testWe[_i] = (_de / (4.294967296e+09 : GoFloat64) : GoFloat32);
		});
	};
	return {_0: _testKe, _1: _testWe, _2: _testFe};
}

/**
	// compareUint32Slices returns the first index where the two slices
	// disagree, or <0 if the lengths are the same and all elements
	// are identical.
**/
function _compareUint32Slices(_s1:Slice<GoUInt32>, _s2:Slice<GoUInt32>):GoInt {
	if ((_s1.length) != ((_s2.length))) {
		if ((_s1.length) > (_s2.length)) {
			return (_s2.length) + (1 : GoInt);
		};
		return (_s1.length) + (1 : GoInt);
	};
	for (_i => _ in _s1) {
		if (_s1[_i] != (_s2[_i])) {
			return _i;
		};
	};
	return (-1 : GoInt);
}

/**
	// compareFloat32Slices returns the first index where the two slices
	// disagree, or <0 if the lengths are the same and all elements
	// are identical.
**/
function _compareFloat32Slices(_s1:Slice<GoFloat32>, _s2:Slice<GoFloat32>):GoInt {
	if ((_s1.length) != ((_s2.length))) {
		if ((_s1.length) > (_s2.length)) {
			return (_s2.length) + (1 : GoInt);
		};
		return (_s1.length) + (1 : GoInt);
	};
	for (_i => _ in _s1) {
		if (!_nearEqual((_s1[_i] : GoFloat64), (_s2[_i] : GoFloat64), (0 : GoFloat64), (1e-07 : GoFloat64))) {
			return _i;
		};
	};
	return (-1 : GoInt);
}

function testNormTables(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = _initNorm(),
		_testKn:Slice<GoUInt32> = __tmp__._0,
		_testWn:Slice<GoFloat32> = __tmp__._1,
		_testFn:Slice<GoFloat32> = __tmp__._2;
	{
		var _i:GoInt = _compareUint32Slices((_kn.__slice__((0 : GoInt)) : Slice<GoUInt32>), _testKn);
		if (_i >= (0 : GoInt)) {
			_t.errorf(Go.str("kn disagrees at index %v; %v != %v"), Go.toInterface(_i), Go.toInterface(_kn[_i]), Go.toInterface(_testKn[_i]));
		};
	};
	{
		var _i:GoInt = _compareFloat32Slices((_wn.__slice__((0 : GoInt)) : Slice<GoFloat32>), _testWn);
		if (_i >= (0 : GoInt)) {
			_t.errorf(Go.str("wn disagrees at index %v; %v != %v"), Go.toInterface(_i), Go.toInterface(_wn[_i]), Go.toInterface(_testWn[_i]));
		};
	};
	{
		var _i:GoInt = _compareFloat32Slices((_fn.__slice__((0 : GoInt)) : Slice<GoFloat32>), _testFn);
		if (_i >= (0 : GoInt)) {
			_t.errorf(Go.str("fn disagrees at index %v; %v != %v"), Go.toInterface(_i), Go.toInterface(_fn[_i]), Go.toInterface(_testFn[_i]));
		};
	};
}

function testExpTables(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = _initExp(),
		_testKe:Slice<GoUInt32> = __tmp__._0,
		_testWe:Slice<GoFloat32> = __tmp__._1,
		_testFe:Slice<GoFloat32> = __tmp__._2;
	{
		var _i:GoInt = _compareUint32Slices((_ke.__slice__((0 : GoInt)) : Slice<GoUInt32>), _testKe);
		if (_i >= (0 : GoInt)) {
			_t.errorf(Go.str("ke disagrees at index %v; %v != %v"), Go.toInterface(_i), Go.toInterface(_ke[_i]), Go.toInterface(_testKe[_i]));
		};
	};
	{
		var _i:GoInt = _compareFloat32Slices((_we.__slice__((0 : GoInt)) : Slice<GoFloat32>), _testWe);
		if (_i >= (0 : GoInt)) {
			_t.errorf(Go.str("we disagrees at index %v; %v != %v"), Go.toInterface(_i), Go.toInterface(_we[_i]), Go.toInterface(_testWe[_i]));
		};
	};
	{
		var _i:GoInt = _compareFloat32Slices((_fe.__slice__((0 : GoInt)) : Slice<GoFloat32>), _testFe);
		if (_i >= (0 : GoInt)) {
			_t.errorf(Go.str("fe disagrees at index %v; %v != %v"), Go.toInterface(_i), Go.toInterface(_fe[_i]), Go.toInterface(_testFe[_i]));
		};
	};
}

function _hasSlowFloatingPoint():Bool {
	if (Go.str("wasm") == (Go.str("arm"))) {
		return stdgo.os.Os.getenv(Go.str("GOARM")) == (Go.str("5"));
	} else if (Go.str("wasm") == (Go.str("mips"))
		|| Go.str("wasm") == (Go.str("mipsle"))
		|| Go.str("wasm") == (Go.str("mips64"))
		|| Go.str("wasm") == (Go.str("mips64le"))) {
		return true;
	};
	return false;
}

function testFloat32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _num:GoInt = (10000000 : GoInt);
	if (stdgo.testing.Testing.short() && ((stdgo.internal.testenv.Testenv.builder() == Go.str()) || _hasSlowFloatingPoint())) {
		_num = _num / ((100 : GoInt));
	};
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _ct:GoInt = (0 : GoInt);
		Go.cfor(_ct < _num, _ct++, {
			var _f:GoFloat32 = _r.float32();
			if (_f >= (1 : GoFloat64)) {
				_t.fatal(Go.toInterface(Go.str("Float32() should be in range [0,1). ct:")), Go.toInterface(_ct), Go.toInterface(Go.str("f:")),
					Go.toInterface(_f));
			};
		});
	};
}

function _testReadUniformity(_t:Ref<stdgo.testing.Testing.T>, _n:GoInt, _seed:GoInt64):Void {
	var _r = new_(newSource(_seed));
	var _buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]);
	var __tmp__ = _r.read(_buf),
		_nRead:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.errorf(Go.str("Read err %v"), Go.toInterface(_err));
	};
	if (_nRead != (_n)) {
		_t.errorf(Go.str("Read returned unexpected n; %d != %d"), Go.toInterface(_nRead), Go.toInterface(_n));
	};
	var _mean:GoFloat64 = (127.5 : GoFloat64),
		_stddev:GoFloat64 = (256 : GoFloat64) / stdgo.math.Math.sqrt((12 : GoFloat64)),
		_errorScale:GoFloat64 = _stddev / stdgo.math.Math.sqrt((_n : GoFloat64));
	var _expected = ((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, (0.1 : GoFloat64) * _errorScale,
		(0.08 : GoFloat64) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults) : Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
	var _samples = new Slice<GoFloat64>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoFloat64)]);
	for (_i => _val in _buf) {
		_samples[_i] = (_val : GoFloat64);
	};
	_checkSampleDistribution(_t, _samples, _expected);
}

function testReadUniformity(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testBufferSizes = (new Slice<GoInt>(0, 0, (2 : GoInt), (4 : GoInt), (7 : GoInt), (64 : GoInt), (1024 : GoInt), (65536 : GoInt),
		(1048576 : GoInt)) : Slice<GoInt>);
	for (_0 => _seed in _testSeeds) {
		for (_1 => _n in _testBufferSizes) {
			_testReadUniformity(_t, _n, _seed);
		};
	};
}

function testReadEmpty(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	var _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), 0, ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	var __tmp__ = _r.read(_buf),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.errorf(Go.str("Read err into empty buffer; %v"), Go.toInterface(_err));
	};
	if (_n != ((0 : GoInt))) {
		_t.errorf(Go.str("Read into empty buffer returned unexpected n of %d"), Go.toInterface(_n));
	};
}

function testReadByOneByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	var _b1 = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (0 : GoUInt8)]);
	var __tmp__ = stdgo.io.Io.readFull(stdgo.testing.iotest.Iotest.oneByteReader(Go.asInterface(_r)), _b1),
		_0:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.errorf(Go.str("read by one byte: %v"), Go.toInterface(_err));
	};
	_r = new_(newSource(("1" : GoInt64)));
	var _b2 = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var __tmp__ = _r.read(_b2);
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.errorf(Go.str("read: %v"), Go.toInterface(_err));
	};
	if (!stdgo.bytes.Bytes.equal(_b1, _b2)) {
		_t.errorf(Go.str("read by one byte vs single read:\n%x\n%x"), Go.toInterface(_b1), Go.toInterface(_b2));
	};
}

function testReadSeedReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = new_(newSource(("42" : GoInt64)));
	var _b1 = new Slice<GoUInt8>((128 : GoInt).toBasic(), 0, ...[for (i in 0...(128 : GoInt).toBasic()) (0 : GoUInt8)]);
	var __tmp__ = _r.read(_b1), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
	if (_err != null) {
		_t.errorf(Go.str("read: %v"), Go.toInterface(_err));
	};
	_r.seed(("42" : GoInt64));
	var _b2 = new Slice<GoUInt8>((128 : GoInt).toBasic(), 0, ...[for (i in 0...(128 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var __tmp__ = _r.read(_b2);
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.errorf(Go.str("read: %v"), Go.toInterface(_err));
	};
	if (!stdgo.bytes.Bytes.equal(_b1, _b2)) {
		_t.errorf(Go.str("mismatch after re-seed:\n%x\n%x"), Go.toInterface(_b1), Go.toInterface(_b2));
	};
}

function testShuffleSmall(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = (0 : GoInt);
		Go.cfor(_n <= (1 : GoInt), _n++, {
			_r.shuffle(_n, function(_i:GoInt, _j:GoInt):Void {
				_t.fatalf(Go.str("swap called, n=%d i=%d j=%d"), Go.toInterface(_n), Go.toInterface(_i), Go.toInterface(_j));
			});
		});
	};
}

/**
	// encodePerm converts from a permuted slice of length n, such as Perm generates, to an int in [0, n!).
	// See https://en.wikipedia.org/wiki/Lehmer_code.
	// encodePerm modifies the input slice.
**/
function _encodePerm(_s:Slice<GoInt>):GoInt {
	for (_i => _x in _s) {
		var _r = (_s.__slice__(_i + (1 : GoInt)) : Slice<GoInt>);
		for (_j => _y in _r) {
			if (_y > _x) {
				_r[_j]--;
			};
		};
	};
	var _m:GoInt = (0 : GoInt);
	var _fact:GoInt = (1 : GoInt);
	{
		var _i:GoInt = (_s.length) - (1 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_m = _m + (_s[_i] * _fact);
			_fact = _fact * (_s.length - _i);
		});
	};
	return _m;
}

/**
	// TestUniformFactorial tests several ways of generating a uniform value in [0, n!).
**/
function testUniformFactorial(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = new_(newSource(_testSeeds[(0 : GoInt)]));
	var _top:GoInt = (6 : GoInt);
	if (stdgo.testing.Testing.short()) {
		_top = (3 : GoInt);
	};
	{
		var _n:GoInt = (3 : GoInt);
		Go.cfor(_n <= _top, _n++, {
			_t.run(stdgo.fmt.Fmt.sprintf(Go.str("n=%d"), Go.toInterface(_n)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
				var _nfact:GoInt = (1 : GoInt);
				{
					var _i:GoInt = (2 : GoInt);
					Go.cfor(_i <= _n, _i++, {
						_nfact = _nfact * (_i);
					});
				};
				var _p = new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoInt)]);
				var _tests = (new GoArray<T__struct_0>(({_name: ("" : GoString), _fn: null} : T__struct_0),
					({_name: ("" : GoString), _fn: null} : T__struct_0), ({_name: ("" : GoString), _fn: null} : T__struct_0),
					({_name: ("" : GoString), _fn: null} : T__struct_0)) : GoArray<T__struct_0>);
				for (_0 => _test in _tests) {
					_t.run(_test._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
						var _nsamples:GoInt = (10 : GoInt) * _nfact;
						if (_nsamples < (200:GoInt)) {
							_nsamples = (200 : GoInt);
						};
						var _samples = new Slice<GoFloat64>((_nsamples : GoInt).toBasic(), 0,
							...[for (i in 0...(_nsamples : GoInt).toBasic()) (0 : GoFloat64)]);
						for (_i => _ in _samples) {
							{};
							var _counts = new Slice<GoInt>((_nfact : GoInt).toBasic(), 0, ...[for (i in 0...(_nfact : GoInt).toBasic()) (0 : GoInt)]);
							{
								var _i:GoInt = (0 : GoInt);
								Go.cfor(_i < (1000:GoInt), _i++, {
									_counts[_test._fn()]++;
								});
							};
							var _want:GoFloat64 = (1000 : GoFloat64) / (_nfact : GoFloat64);
							var __9672:GoFloat64 = (0 : GoFloat64);
							for (_0 => _have in _counts) {
								var _err:GoFloat64 = (_have : GoFloat64) - _want;
								__9672 = __9672 + (_err * _err);
							};
							__9672 = __9672 / (_want);
							_samples[_i] = __9672;
						};
						var _dof:GoFloat64 = (_nfact - (1 : GoInt) : GoFloat64);
						var _expected = (({_mean: _dof,
							_stddev: stdgo.math.Math.sqrt((2 : GoFloat64) * _dof)} : stdgo.math.rand_test.Rand_test.T_statsResults) : Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
						var _errorScale:GoFloat64 = _max((1 : GoFloat64), _expected._stddev);
						_expected._closeEnough = (0.1 : GoFloat64) * _errorScale;
						_expected._maxError = (0.08 : GoFloat64);
						_checkSampleDistribution(_t, _samples, _expected);
					});
				};
			});
		});
	};
}

function benchmarkInt63Threadsafe(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			int63();
		});
	};
}

function benchmarkInt63ThreadsafeParallel(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			int63();
		};
	});
}

function benchmarkInt63Unthreadsafe(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.int63();
		});
	};
}

function benchmarkIntn1000(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.intn((1000 : GoInt));
		});
	};
}

function benchmarkInt63n1000(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.int63n(("1000" : GoInt64));
		});
	};
}

function benchmarkInt31n1000(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.int31n((1000 : GoInt32));
		});
	};
}

function benchmarkFloat32(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.float32();
		});
	};
}

function benchmarkFloat64(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.float64();
		});
	};
}

function benchmarkPerm3(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.perm((3 : GoInt));
		});
	};
}

function benchmarkPerm30(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.perm((30 : GoInt));
		});
	};
}

function benchmarkPerm30ViaShuffle(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			var _p = new Slice<GoInt>((30 : GoInt).toBasic(), 0, ...[for (i in 0...(30 : GoInt).toBasic()) (0 : GoInt)]);
			for (_i => _ in _p) {
				_p[_i] = _i;
			};
			_r.shuffle((30 : GoInt), function(_i:GoInt, _j:GoInt):Void {
				{
					final __tmp__0 = _p[_j];
					final __tmp__1 = _p[_i];
					_p[_i] = __tmp__0;
					_p[_j] = __tmp__1;
				};
			});
		});
	};
}

/**
	// BenchmarkShuffleOverhead uses a minimal swap function
	// to measure just the shuffling overhead.
**/
function benchmarkShuffleOverhead(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.shuffle((52 : GoInt), function(_i:GoInt, _j:GoInt):Void {
				if ((((_i < (0:GoInt)) || (_i >= (52 : GoInt))) || (_j < (0:GoInt))) || (_j >= (52 : GoInt))) {
					_b.fatalf(Go.str("bad swap(%d, %d)"), Go.toInterface(_i), Go.toInterface(_j));
				};
			});
		});
	};
}

function benchmarkRead3(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
	_b.resetTimer();
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.read(_buf);
		});
	};
}

function benchmarkRead64(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	var _buf = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0...(64 : GoInt).toBasic()) (0 : GoUInt8)]);
	_b.resetTimer();
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.read(_buf);
		});
	};
}

function benchmarkRead1000(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = new_(newSource(("1" : GoInt64)));
	var _buf = new Slice<GoUInt8>((1000 : GoInt).toBasic(), 0, ...[for (i in 0...(1000 : GoInt).toBasic()) (0 : GoUInt8)]);
	_b.resetTimer();
	{
		var _n:GoInt = _b.n;
		Go.cfor(_n > (0 : GoInt), _n--, {
			_r.read(_buf);
		});
	};
}

function testRegress(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _int32s:Slice<GoInt32> = (new Slice<GoInt32>(0, 0, (1 : GoInt32), (10 : GoInt32), (32 : GoInt32), (1048576 : GoInt32), (1048577 : GoInt32),
		(1000000000 : GoInt32), (1073741824 : GoInt32), (2147483646 : GoInt32), (2147483647 : GoInt32)) : Slice<GoInt32>);
	var _int64s:Slice<GoInt64> = (new Slice<GoInt64>(0, 0, ("1" : GoInt64), ("10" : GoInt64), ("32" : GoInt64), ("1048576" : GoInt64), ("1048577" : GoInt64),
		("1000000000" : GoInt64), ("1073741824" : GoInt64), ("2147483646" : GoInt64), ("2147483647" : GoInt64), ("1000000000000000000" : GoInt64),
		("1152921504606846976" : GoInt64), ("9223372036854775806" : GoInt64), ("9223372036854775807" : GoInt64)) : Slice<GoInt64>);
	var _permSizes:Slice<GoInt> = (new Slice<GoInt>(0, 0, (0 : GoInt), (1 : GoInt), (5 : GoInt), (8 : GoInt), (9 : GoInt), (10 : GoInt),
		(16 : GoInt)) : Slice<GoInt>);
	var _readBufferSizes:Slice<GoInt> = (new Slice<GoInt>(0, 0, (1 : GoInt), (7 : GoInt), (8 : GoInt), (9 : GoInt), (10 : GoInt)) : Slice<GoInt>);
	var _r = new_(newSource(("0" : GoInt64)));
	var _rv:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_r)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_r))
		.__copy__());
	var _n:GoInt = _rv.numMethod();
	var _p:GoInt = (0 : GoInt);
	if (_printgolden.value) {
		stdgo.fmt.Fmt.printf(Go.str("var regressGolden = []interface{}{\n"));
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			var _m:stdgo.reflect.Reflect.Method = (_rv.type().method(_i) == null ? null : _rv.type().method(_i).__copy__());
			var _mv:stdgo.reflect.Reflect.Value = (_rv.method(_i) == null ? null : _rv.method(_i).__copy__());
			var _mt:stdgo.reflect.Reflect.Type = _mv.type();
			if (_mt.numOut() == ((0 : GoInt))) {
				continue;
			};
			_r.seed(("0" : GoInt64));
			{
				var _repeat:GoInt = (0 : GoInt);
				Go.cfor(_repeat < (20:GoInt), _repeat++, {
					var _args:Slice<stdgo.reflect.Reflect.Value> = (null : Slice<stdgo.reflect.Reflect.Value>);
					var _argstr:GoString = ("" : GoString);
					if (_mt.numIn() == ((1 : GoInt))) {
						var _x:AnyInterface = (null : AnyInterface);
						{
							var __switchIndex__ = -1;
							while (true) {
								if (_mt.in_((0 : GoInt)).kind() == ((("2" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
									if (_m.name == (Go.str("Perm"))) {
										_x = Go.toInterface(_permSizes[_repeat % (_permSizes.length)]);
										break;
									};
									var _big:GoInt64 = _int64s[_repeat % (_int64s.length)];
									if (((_big : GoInt) : GoInt64) != (_big)) {
										_r.int63n(_big);
										if (_printgolden.value) {
											stdgo.fmt.Fmt.printf(Go.str("\tskipped, // must run printgolden on 64-bit machine\n"));
										};
										_p++;
										continue;
									};
									_x = Go.toInterface((_big : GoInt));
									break;
								} else if (_mt.in_((0 : GoInt)).kind() == ((("5" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
									_x = Go.toInterface(_int32s[_repeat % (_int32s.length)]);
									break;
								} else if (_mt.in_((0 : GoInt)).kind() == ((("6" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
									_x = Go.toInterface(_int64s[_repeat % (_int64s.length)]);
									break;
								} else if (_mt.in_((0 : GoInt)).kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
									if (_m.name == (Go.str("Read"))) {
										var _n:GoInt = _readBufferSizes[_repeat % (_readBufferSizes.length)];
										_x = Go.toInterface(new Slice<GoUInt8>((_n : GoInt).toBasic(), 0,
											...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]));
									};
									break;
								};
								break;
							};
						};
						_argstr = stdgo.fmt.Fmt.sprint(_x);
						_args = (_args.__append__(stdgo.reflect.Reflect.valueOf(_x) == null ? null : stdgo.reflect.Reflect.valueOf(_x).__copy__()));
					};
					var _out:AnyInterface = (null : AnyInterface);
					_out = _mv.call(_args)[(0 : GoInt)].interface_();
					if ((_m.name == Go.str("Int")) || (_m.name == Go.str("Intn"))) {
						_out = Go.toInterface((Go.typeAssert((_out : GoInt)) : GoInt64));
					};
					if (_m.name == (Go.str("Read"))) {
						_out = Go.toInterface(Go.typeAssert((_args[(0 : GoInt)].interface_() : Slice<GoByte>)));
					};
					if (_printgolden.value) {
						var _val:GoString = ("" : GoString);
						var _big:GoInt64 = (("1152921504606846976" : GoInt64) : GoInt64);
						if ((((_big : GoInt) : GoInt64) != _big) && ((_m.name == Go.str("Int")) || (_m.name == Go.str("Intn")))) {
							_val = Go.str("truncated");
						} else if (stdgo.reflect.Reflect.typeOf(_out).kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
							_val = stdgo.fmt.Fmt.sprintf(Go.str("%#v"), _out);
						} else {
							_val = stdgo.fmt.Fmt.sprintf(Go.str("%T(%v)"), _out, _out);
						};
						stdgo.fmt.Fmt.printf(Go.str("\t%s, // %s(%s)\n"), Go.toInterface(_val), Go.toInterface(_m.name), Go.toInterface(_argstr));
					} else {
						var _want:AnyInterface = _regressGolden[_p];
						if (_m.name == (Go.str("Int"))) {
							_want = Go.toInterface(((((Go.typeAssert((_want : GoInt64)) : GoUInt) << (("1" : GoUInt64) : GoUInt64)) >> ("1" : GoUInt64) : GoInt) : GoInt64));
						};
						if (!stdgo.reflect.Reflect.deepEqual(_out, _want)) {
							_t.errorf(Go.str("r.%s(%s) = %v, want %v"), Go.toInterface(_m.name), Go.toInterface(_argstr), _out, _want);
						};
					};
					_p++;
				});
			};
		});
	};
	if (_printgolden.value) {
		stdgo.fmt.Fmt.printf(Go.str("}\n"));
	};
}

private class T_statsResults_asInterface {
	/**
		// checkSimilarDistribution returns success if the mean and stddev of the
		// two statsResults are similar.
	**/
	@:keep
	public function _checkSimilarDistribution(_expected:Ref<T_statsResults>):Error
		return __self__.value._checkSimilarDistribution(_expected);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_statsResults>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.math.rand_test.Rand_test.T_statsResults_asInterface) class T_statsResults_static_extension {
	/**
		// checkSimilarDistribution returns success if the mean and stddev of the
		// two statsResults are similar.
	**/
	@:keep
	static public function _checkSimilarDistribution(_this:Ref<T_statsResults>, _expected:Ref<T_statsResults>):Error {
		if (!_nearEqual(_this._mean, _expected._mean, _expected._closeEnough, _expected._maxError)) {
			var _s:GoString = stdgo.fmt.Fmt.sprintf(Go.str("mean %v != %v (allowed error %v, %v)"), Go.toInterface(_this._mean),
				Go.toInterface(_expected._mean), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
			stdgo.fmt.Fmt.println(_s);
			return stdgo.errors.Errors.new_(_s);
		};
		if (!_nearEqual(_this._stddev, _expected._stddev, _expected._closeEnough, _expected._maxError)) {
			var _s:GoString = stdgo.fmt.Fmt.sprintf(Go.str("stddev %v != %v (allowed error %v, %v)"), Go.toInterface(_this._stddev),
				Go.toInterface(_expected._stddev), Go.toInterface(_expected._closeEnough), Go.toInterface(_expected._maxError));
			stdgo.fmt.Fmt.println(_s);
			return stdgo.errors.Errors.new_(_s);
		};
		return (null : Error);
	}
}
