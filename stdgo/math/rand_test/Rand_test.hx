package stdgo.math.rand_test;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
import stdgo.math.rand.Rand;
var __tmp__0 = getNormalDistributionParameters();
var _kn = __tmp__0._1;
var _fn = __tmp__0._3;
var _rn = __tmp__0._0;
var _wn = __tmp__0._2;
var _wn = __tmp__0._2;
var __tmp__2 = getExponentialDistributionParameters();
var _ke = __tmp__2._1;
var _fe = __tmp__2._3;
var _re = __tmp__2._0;
var _we = __tmp__2._2;
var _we = __tmp__2._2;
/**
    
    
    
**/
var _testSeeds : stdgo.Slice<stdgo.GoInt64> = (new stdgo.Slice<stdgo.GoInt64>(4, 4, (1i64 : stdgo.GoInt64), (1754801282i64 : stdgo.GoInt64), (1698661970i64 : stdgo.GoInt64), (1550503961i64 : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoInt64>);
/**
    
    
    
**/
var _printgolden : stdgo.Pointer<Bool> = stdgo.flag.Flag.bool_(("printgolden" : stdgo.GoString), false, ("print golden results for regression test" : stdgo.GoString));
/**
    
    
    
**/
var _regressGolden : stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(
280,
280,
stdgo.Go.toInterface((4.668112973579268 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.1601593871172866 : stdgo.GoFloat64)),
stdgo.Go.toInterface((3.0465834105636 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.06385839451671879 : stdgo.GoFloat64)),
stdgo.Go.toInterface((1.8578917487258961 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.784676123472182 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.11225477361256932 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.20173283329802255 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.3468619496201105 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.35601103454384536 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.888376329507869 : stdgo.GoFloat64)),
stdgo.Go.toInterface((1.4081362450365698 : stdgo.GoFloat64)),
stdgo.Go.toInterface((1.0077753823151994 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.23594100766227588 : stdgo.GoFloat64)),
stdgo.Go.toInterface((2.777245612300007 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.5202997830662377 : stdgo.GoFloat64)),
stdgo.Go.toInterface((1.2842705247770294 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.030307408362776206 : stdgo.GoFloat64)),
stdgo.Go.toInterface((2.204156824853721 : stdgo.GoFloat64)),
stdgo.Go.toInterface((2.09891923895058 : stdgo.GoFloat64)),
stdgo.Go.toInterface(((0.94519615 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.24496509 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.65595627 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.05434384 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.3675872 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.28948045 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.1924386 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.65533215 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.8971697 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.16735445 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.28858566 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.9026048 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.84978026 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.2730468 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.6090802 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.253656 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.7746542 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.017480763 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.78707397 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface(((0.7993937 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface((0.9451961492941164 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.24496508529377975 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.6559562651954052 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.05434383959970039 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.36758720663245853 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.2894804331565928 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.19243860967493215 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.6553321508148324 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.897169713149801 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.16735444255905835 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.2885856518054551 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.9026048462705047 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.8497802817628735 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.2730468047134829 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.6090801919903561 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.25365600644283687 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.7746542391859803 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.017480762156647272 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.7870739563039942 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.7993936979594545 : stdgo.GoFloat64)),
stdgo.Go.toInterface((8717895732742165505i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2259404117704393152i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((6050128673802995827i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((501233450539197794i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((3390393562759376202i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2669985732393126063i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1774932891286980153i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((6044372234677422456i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((8274930044578894929i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1543572285742637646i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2661732831099943416i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((8325060299420976708i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7837839688282259259i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2518412263346885298i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((5617773211005988520i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2339563716805116249i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7144924247938981575i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((161231572858529631i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7259475919510918339i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7373105480197164748i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2029793274 : stdgo.GoInt32)),
stdgo.Go.toInterface((526058514 : stdgo.GoInt32)),
stdgo.Go.toInterface((1408655353 : stdgo.GoInt32)),
stdgo.Go.toInterface((116702506 : stdgo.GoInt32)),
stdgo.Go.toInterface((789387515 : stdgo.GoInt32)),
stdgo.Go.toInterface((621654496 : stdgo.GoInt32)),
stdgo.Go.toInterface((413258767 : stdgo.GoInt32)),
stdgo.Go.toInterface((1407315077 : stdgo.GoInt32)),
stdgo.Go.toInterface((1926657288 : stdgo.GoInt32)),
stdgo.Go.toInterface((359390928 : stdgo.GoInt32)),
stdgo.Go.toInterface((619732968 : stdgo.GoInt32)),
stdgo.Go.toInterface((1938329147 : stdgo.GoInt32)),
stdgo.Go.toInterface((1824889259 : stdgo.GoInt32)),
stdgo.Go.toInterface((586363548 : stdgo.GoInt32)),
stdgo.Go.toInterface((1307989752 : stdgo.GoInt32)),
stdgo.Go.toInterface((544722126 : stdgo.GoInt32)),
stdgo.Go.toInterface((1663557311 : stdgo.GoInt32)),
stdgo.Go.toInterface((37539650 : stdgo.GoInt32)),
stdgo.Go.toInterface((1690228450 : stdgo.GoInt32)),
stdgo.Go.toInterface((1716684894 : stdgo.GoInt32)),
stdgo.Go.toInterface((0 : stdgo.GoInt32)),
stdgo.Go.toInterface((4 : stdgo.GoInt32)),
stdgo.Go.toInterface((25 : stdgo.GoInt32)),
stdgo.Go.toInterface((310570 : stdgo.GoInt32)),
stdgo.Go.toInterface((857611 : stdgo.GoInt32)),
stdgo.Go.toInterface((621654496 : stdgo.GoInt32)),
stdgo.Go.toInterface((413258767 : stdgo.GoInt32)),
stdgo.Go.toInterface((1407315077 : stdgo.GoInt32)),
stdgo.Go.toInterface((1926657288 : stdgo.GoInt32)),
stdgo.Go.toInterface((0 : stdgo.GoInt32)),
stdgo.Go.toInterface((8 : stdgo.GoInt32)),
stdgo.Go.toInterface((27 : stdgo.GoInt32)),
stdgo.Go.toInterface((367019 : stdgo.GoInt32)),
stdgo.Go.toInterface((209005 : stdgo.GoInt32)),
stdgo.Go.toInterface((307989752 : stdgo.GoInt32)),
stdgo.Go.toInterface((544722126 : stdgo.GoInt32)),
stdgo.Go.toInterface((1663557311 : stdgo.GoInt32)),
stdgo.Go.toInterface((37539650 : stdgo.GoInt32)),
stdgo.Go.toInterface((0 : stdgo.GoInt32)),
stdgo.Go.toInterface((4 : stdgo.GoInt32)),
stdgo.Go.toInterface((8717895732742165505i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2259404117704393152i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((6050128673802995827i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((501233450539197794i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((3390393562759376202i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2669985732393126063i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1774932891286980153i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((6044372234677422456i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((8274930044578894929i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1543572285742637646i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2661732831099943416i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((8325060299420976708i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7837839688282259259i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2518412263346885298i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((5617773211005988520i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2339563716805116249i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7144924247938981575i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((161231572858529631i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7259475919510918339i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7373105480197164748i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((0i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((19i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((959842i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((688912i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((393126063i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((89212473i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((834026388i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1577188963i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((543572285742637646i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((355889821886249464i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((8325060299420976708i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7837839688282259259i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((0i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((0i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((25i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((679623i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((882178i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((510918339i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((782454476i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((0i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((4i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((25i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((310570i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((857611i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((621654496i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((413258767i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1407315077i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1926657288i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((543572285742637646i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((355889821886249464i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((8325060299420976708i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((7837839688282259259i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((0i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((2i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((14i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((515775i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((839455i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((690228450i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((642943070i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((-0.28158587086436215 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.570933095808067 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-1.6920196326157044 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.1996229111693099 : stdgo.GoFloat64)),
stdgo.Go.toInterface((1.9195199291234621 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.8954838794918353 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.41457072128813166 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-0.48700161491544713 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-0.1684059662402393 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.37056410998929545 : stdgo.GoFloat64)),
stdgo.Go.toInterface((1.0156889027029008 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-0.5174422210625114 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-0.5565834214413804 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.778320596648391 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-1.8970718197702225 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.5229525761688676 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-1.5515595563231523 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0.0182029289376123 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-0.6820951356608795 : stdgo.GoFloat64)),
stdgo.Go.toInterface((-0.5987943422687668 : stdgo.GoFloat64)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(5, 5, (0 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(8, 8, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt), (5 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
9,
9,
(5 : stdgo.GoInt),
(0 : stdgo.GoInt),
(3 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(4 : stdgo.GoInt),
(2 : stdgo.GoInt),
(1 : stdgo.GoInt),
(8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
10,
10,
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(0 : stdgo.GoInt),
(2 : stdgo.GoInt),
(6 : stdgo.GoInt),
(9 : stdgo.GoInt),
(3 : stdgo.GoInt),
(1 : stdgo.GoInt),
(8 : stdgo.GoInt),
(7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
16,
16,
(14 : stdgo.GoInt),
(2 : stdgo.GoInt),
(0 : stdgo.GoInt),
(8 : stdgo.GoInt),
(3 : stdgo.GoInt),
(5 : stdgo.GoInt),
(13 : stdgo.GoInt),
(12 : stdgo.GoInt),
(1 : stdgo.GoInt),
(4 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(11 : stdgo.GoInt),
(9 : stdgo.GoInt),
(15 : stdgo.GoInt),
(10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(5, 5, (3 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(8, 8, (5 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt), (3 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
9,
9,
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(6 : stdgo.GoInt),
(8 : stdgo.GoInt),
(1 : stdgo.GoInt),
(5 : stdgo.GoInt),
(2 : stdgo.GoInt),
(7 : stdgo.GoInt),
(3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
10,
10,
(8 : stdgo.GoInt),
(6 : stdgo.GoInt),
(1 : stdgo.GoInt),
(7 : stdgo.GoInt),
(5 : stdgo.GoInt),
(4 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(9 : stdgo.GoInt),
(0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
16,
16,
(0 : stdgo.GoInt),
(3 : stdgo.GoInt),
(13 : stdgo.GoInt),
(2 : stdgo.GoInt),
(15 : stdgo.GoInt),
(4 : stdgo.GoInt),
(10 : stdgo.GoInt),
(1 : stdgo.GoInt),
(8 : stdgo.GoInt),
(14 : stdgo.GoInt),
(7 : stdgo.GoInt),
(6 : stdgo.GoInt),
(12 : stdgo.GoInt),
(9 : stdgo.GoInt),
(5 : stdgo.GoInt),
(11 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(1, 1, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(5, 5, (0 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(8, 8, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
9,
9,
(8 : stdgo.GoInt),
(7 : stdgo.GoInt),
(5 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(6 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(
10,
10,
(1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(2 : stdgo.GoInt),
(5 : stdgo.GoInt),
(7 : stdgo.GoInt),
(6 : stdgo.GoInt),
(9 : stdgo.GoInt),
(8 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(7, 7, (148 : stdgo.GoUInt8), (253 : stdgo.GoUInt8), (194 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (252 : stdgo.GoUInt8), (192 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (65 : stdgo.GoUInt8), (211 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (18 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (91 : stdgo.GoUInt8), (115 : stdgo.GoUInt8), (200 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(110 : stdgo.GoUInt8),
(79 : stdgo.GoUInt8),
(249 : stdgo.GoUInt8),
(95 : stdgo.GoUInt8),
(246 : stdgo.GoUInt8),
(98 : stdgo.GoUInt8),
(165 : stdgo.GoUInt8),
(238 : stdgo.GoUInt8),
(232 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
10,
10,
(42 : stdgo.GoUInt8),
(189 : stdgo.GoUInt8),
(244 : stdgo.GoUInt8),
(74 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(24 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (175 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(7, 7, (72 : stdgo.GoUInt8), (167 : stdgo.GoUInt8), (158 : stdgo.GoUInt8), (224 : stdgo.GoUInt8), (177 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (57 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (70 : stdgo.GoUInt8), (81 : stdgo.GoUInt8), (133 : stdgo.GoUInt8), (15 : stdgo.GoUInt8), (212 : stdgo.GoUInt8), (161 : stdgo.GoUInt8), (120 : stdgo.GoUInt8), (137 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(46 : stdgo.GoUInt8),
(226 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(236 : stdgo.GoUInt8),
(225 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(120 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
10,
10,
(8 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(214 : stdgo.GoUInt8),
(78 : stdgo.GoUInt8),
(226 : stdgo.GoUInt8),
(211 : stdgo.GoUInt8),
(208 : stdgo.GoUInt8),
(208 : stdgo.GoUInt8),
(222 : stdgo.GoUInt8),
(107 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (248 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(7, 7, (249 : stdgo.GoUInt8), (180 : stdgo.GoUInt8), (76 : stdgo.GoUInt8), (232 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (240 : stdgo.GoUInt8), (68 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (198 : stdgo.GoUInt8), (177 : stdgo.GoUInt8), (248 : stdgo.GoUInt8), (59 : stdgo.GoUInt8), (142 : stdgo.GoUInt8), (136 : stdgo.GoUInt8), (59 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(133 : stdgo.GoUInt8),
(122 : stdgo.GoUInt8),
(171 : stdgo.GoUInt8),
(153 : stdgo.GoUInt8),
(197 : stdgo.GoUInt8),
(178 : stdgo.GoUInt8),
(82 : stdgo.GoUInt8),
(199 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
10,
10,
(156 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(168 : stdgo.GoUInt8),
(174 : stdgo.GoUInt8),
(183 : stdgo.GoUInt8),
(158 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(86 : stdgo.GoUInt8),
(246 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (89 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(7, 7, (193 : stdgo.GoUInt8), (143 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (206 : stdgo.GoUInt8), (204 : stdgo.GoUInt8), (119 : stdgo.GoUInt8), (199 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (94 : stdgo.GoUInt8), (122 : stdgo.GoUInt8), (129 : stdgo.GoUInt8), (191 : stdgo.GoUInt8), (222 : stdgo.GoUInt8), (39 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (103 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(207 : stdgo.GoUInt8),
(226 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(60 : stdgo.GoUInt8),
(195 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(237 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(
10,
10,
(226 : stdgo.GoUInt8),
(214 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(204 : stdgo.GoUInt8),
(78 : stdgo.GoUInt8),
(163 : stdgo.GoUInt8),
(174 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8),
(136 : stdgo.GoUInt8),
(82 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((-235380747u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1052117029u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-1477656590u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((233405013u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1578775030u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1243308993u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((826517535u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-1480337141u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-441652720u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((718781857u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1239465936u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-418309001u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-645188778u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1172727096u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-1678987791u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1089444252u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-967852673u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((75079301u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-914510395u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((-861597507u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((8717895732742165505i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((2259404117704393152i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((6050128673802995827i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-8722138586315578014i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-5832978474095399606i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-6553386304461649745i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((1774932891286980153i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-3178999802177353352i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-948441992275880879i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((1543572285742637646i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-6561639205754832392i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-898311737433799100i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((7837839688282259259i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((2518412263346885298i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((5617773211005988520i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-6883808320049659559i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-2078447788915794233i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((161231572858529631i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-1963896117343857469i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((-1850266556657611060i64 : stdgo.GoUInt64))) : stdgo.Slice<stdgo.AnyInterface>);
/**
    
    
    
**/
final _numTestSamples : stdgo.GoUInt64 = (10000i64 : stdgo.GoUInt64);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.rand_test.Rand_test.T_statsResults_static_extension) class T_statsResults {
    public var _mean : stdgo.GoFloat64 = 0;
    public var _stddev : stdgo.GoFloat64 = 0;
    public var _closeEnough : stdgo.GoFloat64 = 0;
    public var _maxError : stdgo.GoFloat64 = 0;
    public function new(?_mean:stdgo.GoFloat64, ?_stddev:stdgo.GoFloat64, ?_closeEnough:stdgo.GoFloat64, ?_maxError:stdgo.GoFloat64) {
        if (_mean != null) this._mean = _mean;
        if (_stddev != null) this._stddev = _stddev;
        if (_closeEnough != null) this._closeEnough = _closeEnough;
        if (_maxError != null) this._maxError = _maxError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statsResults(_mean, _stddev, _closeEnough, _maxError);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.rand_test.Rand_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.math.rand_test.Rand_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _fn : () -> stdgo.GoInt;
};
function testAuto(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _out:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.GoInt), _i++, {
                _out = (_out.__append__(int63()));
            });
        };
        seed((1i64 : stdgo.GoInt64));
        var _found:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (1000 : stdgo.GoInt), _i++, {
                var _x:stdgo.GoInt64 = int63();
                if (_x == (_out[(_found : stdgo.GoInt)])) {
                    _found++;
                    if (_found == ((_out.length))) {
                        _t.fatalf(("found unseeded output in Seed(1) output" : stdgo.GoString));
                    };
                };
            });
        };
    }
/**
    // Test that racy access to the default functions behaves reasonably.
**/
function testDefaultRace(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        if (stdgo.testing.Testing.short() && true) {
            _t.skip(stdgo.Go.toInterface(("skipping starting another executable in short mode" : stdgo.GoString)));
        };
        {};
        {
            var _v:stdgo.GoString = stdgo.os.Os.getenv(("GO_RAND_TEST_HELPER_CODE" : stdgo.GoString))?.__copy__();
            if (_v != (stdgo.Go.str())) {
                _doDefaultTest(_t, _v?.__copy__());
                return;
            };
        };
        _t.parallel();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (6 : stdgo.GoInt), _i++, {
                var _i:stdgo.GoInt = _i;
                _t.run(stdgo.strconv.Strconv.itoa(_i)?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                    _t.parallel();
                    var __tmp__ = stdgo.os.Os.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _exe = stdgo.os.Os.args[(0 : stdgo.GoInt)]?.__copy__();
                    };
                    var _cmd = stdgo.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), _exe?.__copy__(), ("-test.run=TestDefaultRace" : stdgo.GoString));
                    _cmd = stdgo.internal.testenv.Testenv.cleanCmdEnv(_cmd);
                    _cmd.env = (_cmd.env.__append__(stdgo.fmt.Fmt.sprintf(("GO_RAND_TEST_HELPER_CODE=%d" : stdgo.GoString), stdgo.Go.toInterface(_i / (2 : stdgo.GoInt)))?.__copy__()));
                    if (_i % (2 : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _cmd.env = (_cmd.env.__append__(("GODEBUG=randautoseed=0" : stdgo.GoString)));
                    };
                    var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_out.length) > (0 : stdgo.GoInt)) {
                        _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
                    };
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                });
            });
        };
    }
/**
    // doDefaultTest should be run before there have been any calls to the
    // top-level math/rand functions. Make sure that we can make concurrent
    // calls to top-level functions and to Seed without any duplicate values.
    // This will also give the race detector a change to report any problems.
**/
function _doDefaultTest(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _v:stdgo.GoString):Void {
        var __tmp__ = stdgo.strconv.Strconv.atoi(_v?.__copy__()), _code:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("internal error: unrecognized code %q" : stdgo.GoString), stdgo.Go.toInterface(_v));
        };
        var _goroutines:stdgo.GoInt = stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt));
        if (_goroutines < (4 : stdgo.GoInt)) {
            _goroutines = (4 : stdgo.GoInt);
        };
        var _ch = new stdgo.Chan<stdgo.GoUInt64>((_goroutines * (3 : stdgo.GoInt) : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoUInt64));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            final __value__ = _code;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _wg.add(_goroutines);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _goroutines, _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function(_s:stdgo.GoInt64):Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    seed(_s);
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a((_i : stdgo.GoInt64) + (100i64 : stdgo.GoInt64));
                        });
                    });
                };
                _wg.add(_goroutines);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _goroutines, _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    _ch.__send__(uint64());
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                    });
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _wg.add(_goroutines);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _goroutines, _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    _ch.__send__(uint64());
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                    });
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _ch.__send__(uint64());
                _wg.add(_goroutines);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _goroutines, _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function(_s:stdgo.GoInt64):Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    seed(_s);
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a((_i : stdgo.GoInt64) + (100i64 : stdgo.GoInt64));
                        });
                    });
                };
                _wg.add(_goroutines);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i < _goroutines, _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    _ch.__send__(uint64());
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                    });
                };
            } else {
                _t.fatalf(("internal error: unrecognized code %d" : stdgo.GoString), stdgo.Go.toInterface(_code));
            };
        };
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _wg.wait_();
                if (_ch != null) _ch.__close__();
            };
            a();
        });
        var _m = ({
            final x = new stdgo.GoMap.GoInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        for (_i => _ in _ch) {
            if ((_m[_i] ?? false)) {
                _t.errorf(("saw %d twice" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
            _m[_i] = true;
        };
    }
function example():Void {
        var _answers = (new stdgo.Slice<stdgo.GoString>(
20,
20,
("It is certain" : stdgo.GoString),
("It is decidedly so" : stdgo.GoString),
("Without a doubt" : stdgo.GoString),
("Yes definitely" : stdgo.GoString),
("You may rely on it" : stdgo.GoString),
("As I see it yes" : stdgo.GoString),
("Most likely" : stdgo.GoString),
("Outlook good" : stdgo.GoString),
("Yes" : stdgo.GoString),
("Signs point to yes" : stdgo.GoString),
("Reply hazy try again" : stdgo.GoString),
("Ask again later" : stdgo.GoString),
("Better not tell you now" : stdgo.GoString),
("Cannot predict now" : stdgo.GoString),
("Concentrate and ask again" : stdgo.GoString),
("Don\'t count on it" : stdgo.GoString),
("My reply is no" : stdgo.GoString),
("My sources say no" : stdgo.GoString),
("Outlook not so good" : stdgo.GoString),
("Very doubtful" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Magic 8-Ball says:" : stdgo.GoString)), stdgo.Go.toInterface(_answers[(stdgo.math.rand.Rand.intn((_answers.length)) : stdgo.GoInt)]));
    }
/**
    // This example shows the use of each of the methods on a *Rand.
    // The use of the global functions is the same, without the receiver.
**/
function example_rand():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource((99i64 : stdgo.GoInt64)));
            var _w = stdgo.text.tabwriter.Tabwriter.newWriter(stdgo.Go.asInterface(stdgo.os.Os.stdout), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
            __deferstack__.unshift(() -> _w.flush());
            var _show:(stdgo.GoString, stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Void = function(_name:stdgo.GoString, _v1:stdgo.AnyInterface, _v2:stdgo.AnyInterface, _v3:stdgo.AnyInterface):Void {
                stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_w), ("%s\t%v\t%v\t%v\n" : stdgo.GoString), stdgo.Go.toInterface(_name), _v1, _v2, _v3);
            };
            _show(("Float32" : stdgo.GoString), stdgo.Go.toInterface(_r.float32()), stdgo.Go.toInterface(_r.float32()), stdgo.Go.toInterface(_r.float32()));
            _show(("Float64" : stdgo.GoString), stdgo.Go.toInterface(_r.float64()), stdgo.Go.toInterface(_r.float64()), stdgo.Go.toInterface(_r.float64()));
            _show(("ExpFloat64" : stdgo.GoString), stdgo.Go.toInterface(_r.expFloat64()), stdgo.Go.toInterface(_r.expFloat64()), stdgo.Go.toInterface(_r.expFloat64()));
            _show(("NormFloat64" : stdgo.GoString), stdgo.Go.toInterface(_r.normFloat64()), stdgo.Go.toInterface(_r.normFloat64()), stdgo.Go.toInterface(_r.normFloat64()));
            _show(("Int31" : stdgo.GoString), stdgo.Go.toInterface(_r.int31()), stdgo.Go.toInterface(_r.int31()), stdgo.Go.toInterface(_r.int31()));
            _show(("Int63" : stdgo.GoString), stdgo.Go.toInterface(_r.int63()), stdgo.Go.toInterface(_r.int63()), stdgo.Go.toInterface(_r.int63()));
            _show(("Uint32" : stdgo.GoString), stdgo.Go.toInterface(_r.uint32()), stdgo.Go.toInterface(_r.uint32()), stdgo.Go.toInterface(_r.uint32()));
            _show(("Intn(10)" : stdgo.GoString), stdgo.Go.toInterface(_r.intn((10 : stdgo.GoInt))), stdgo.Go.toInterface(_r.intn((10 : stdgo.GoInt))), stdgo.Go.toInterface(_r.intn((10 : stdgo.GoInt))));
            _show(("Int31n(10)" : stdgo.GoString), stdgo.Go.toInterface(_r.int31n((10 : stdgo.GoInt32))), stdgo.Go.toInterface(_r.int31n((10 : stdgo.GoInt32))), stdgo.Go.toInterface(_r.int31n((10 : stdgo.GoInt32))));
            _show(("Int63n(10)" : stdgo.GoString), stdgo.Go.toInterface(_r.int63n((10i64 : stdgo.GoInt64))), stdgo.Go.toInterface(_r.int63n((10i64 : stdgo.GoInt64))), stdgo.Go.toInterface(_r.int63n((10i64 : stdgo.GoInt64))));
            _show(("Perm" : stdgo.GoString), stdgo.Go.toInterface(_r.perm((5 : stdgo.GoInt))), stdgo.Go.toInterface(_r.perm((5 : stdgo.GoInt))), stdgo.Go.toInterface(_r.perm((5 : stdgo.GoInt))));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function examplePerm():Void {
        for (__4 => _value in stdgo.math.rand.Rand.perm((3 : stdgo.GoInt))) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_value));
        };
    }
function exampleShuffle():Void {
        var _words = stdgo.strings.Strings.fields(("ink runs from the corners of my mouth" : stdgo.GoString));
        stdgo.math.rand.Rand.shuffle((_words.length), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            {
                final __tmp__0 = _words[(_j : stdgo.GoInt)]?.__copy__();
                final __tmp__1 = _words[(_i : stdgo.GoInt)]?.__copy__();
                _words[(_i : stdgo.GoInt)] = __tmp__0;
                _words[(_j : stdgo.GoInt)] = __tmp__1;
            };
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_words));
    }
function exampleShuffle_slicesInUnison():Void {
        var _numbers = (("12345" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _letters = (("ABCDE" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo.math.rand.Rand.shuffle((_numbers.length), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            {
                final __tmp__0 = _numbers[(_j : stdgo.GoInt)];
                final __tmp__1 = _numbers[(_i : stdgo.GoInt)];
                _numbers[(_i : stdgo.GoInt)] = __tmp__0;
                _numbers[(_j : stdgo.GoInt)] = __tmp__1;
            };
            {
                final __tmp__0 = _letters[(_j : stdgo.GoInt)];
                final __tmp__1 = _letters[(_i : stdgo.GoInt)];
                _letters[(_i : stdgo.GoInt)] = __tmp__0;
                _letters[(_j : stdgo.GoInt)] = __tmp__1;
            };
        });
        for (_i in 0 ... _numbers.length.toBasic()) {
            stdgo.fmt.Fmt.printf(("%c: %c\n" : stdgo.GoString), stdgo.Go.toInterface(_letters[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_numbers[(_i : stdgo.GoInt)]));
        };
    }
function exampleIntn():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.math.rand.Rand.intn((100 : stdgo.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.math.rand.Rand.intn((100 : stdgo.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.math.rand.Rand.intn((100 : stdgo.GoInt))));
    }
/**
    // TestConcurrent exercises the rand API concurrently, triggering situations
    // where the race detector is likely to detect issues.
**/
function testConcurrent(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
            __deferstack__.unshift(() -> _wg.wait_());
            _wg.add((10 : stdgo.GoInt));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_i < (10 : stdgo.GoInt), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var _buf = new stdgo.Slice<stdgo.GoUInt8>((997 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                                {
                                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor(_j < (10 : stdgo.GoInt), _j++, {
                                        var _seed:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                                        _seed = _seed + ((expFloat64() : stdgo.GoInt64));
                                        _seed = _seed + ((float32() : stdgo.GoInt64));
                                        _seed = _seed + ((float64() : stdgo.GoInt64));
                                        _seed = _seed + ((intn(int_()) : stdgo.GoInt64));
                                        _seed = _seed + ((int31n(int31()) : stdgo.GoInt64));
                                        _seed = _seed + ((int63n(int63()) : stdgo.GoInt64));
                                        _seed = _seed + ((normFloat64() : stdgo.GoInt64));
                                        _seed = _seed + ((uint32() : stdgo.GoInt64));
                                        _seed = _seed + ((uint64() : stdgo.GoInt64));
                                        for (__16 => _p in perm((10 : stdgo.GoInt))) {
                                            _seed = _seed + ((_p : stdgo.GoInt64));
                                        };
                                        read(_buf);
                                        for (__17 => _b in _buf) {
                                            _seed = _seed + ((_b : stdgo.GoInt64));
                                        };
                                        seed((_i * _j : stdgo.GoInt64) * _seed);
                                    });
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a(_i);
                    });
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _max(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_a > _b) {
            return _a;
        };
        return _b;
    }
function _nearEqual(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _closeEnough:stdgo.GoFloat64, _maxError:stdgo.GoFloat64):Bool {
        var _absDiff:stdgo.GoFloat64 = stdgo.math.Math.abs(_a - _b);
        if (_absDiff < _closeEnough) {
            return true;
        };
        return (_absDiff / _max(stdgo.math.Math.abs(_a), stdgo.math.Math.abs(_b))) < _maxError;
    }
function _getStatsResults(_samples:stdgo.Slice<stdgo.GoFloat64>):stdgo.Ref<T_statsResults> {
        var _res = (stdgo.Go.setRef(({} : stdgo.math.rand_test.Rand_test.T_statsResults)) : stdgo.Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _squaresum:stdgo.GoFloat64 = __1, _sum:stdgo.GoFloat64 = __0;
        for (__4 => _s in _samples) {
            _sum = _sum + (_s);
            _squaresum = _squaresum + (_s * _s);
        };
        _res._mean = _sum / (_samples.length : stdgo.GoFloat64);
        _res._stddev = stdgo.math.Math.sqrt((_squaresum / (_samples.length : stdgo.GoFloat64)) - (_res._mean * _res._mean));
        return _res;
    }
function _checkSampleDistribution(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _samples:stdgo.Slice<stdgo.GoFloat64>, _expected:stdgo.Ref<T_statsResults>):Void {
        _t.helper();
        var _actual = _getStatsResults(_samples);
        var _err:stdgo.Error = _actual._checkSimilarDistribution(_expected);
        if (_err != null) {
            _t.errorf(_err.error()?.__copy__());
        };
    }
function _checkSampleSliceDistributions(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _samples:stdgo.Slice<stdgo.GoFloat64>, _nslices:stdgo.GoInt, _expected:stdgo.Ref<T_statsResults>):Void {
        _t.helper();
        var _chunk:stdgo.GoInt = (_samples.length) / _nslices;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _nslices, _i++, {
                var _low:stdgo.GoInt = _i * _chunk;
                var _high:stdgo.GoInt = (0 : stdgo.GoInt);
                if (_i == (_nslices - (1 : stdgo.GoInt))) {
                    _high = (_samples.length) - (1 : stdgo.GoInt);
                } else {
                    _high = (_i + (1 : stdgo.GoInt)) * _chunk;
                };
                _checkSampleDistribution(_t, (_samples.__slice__(_low, _high) : stdgo.Slice<stdgo.GoFloat64>), _expected);
            });
        };
    }
function _generateNormalSamples(_nsamples:stdgo.GoInt, _mean:stdgo.GoFloat64, _stddev:stdgo.GoFloat64, _seed:stdgo.GoInt64):stdgo.Slice<stdgo.GoFloat64> {
        var _r = new_(newSource(_seed));
        var _samples = new stdgo.Slice<stdgo.GoFloat64>((_nsamples : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _samples.length.toBasic()) {
            _samples[(_i : stdgo.GoInt)] = (_r.normFloat64() * _stddev) + _mean;
        };
        return _samples;
    }
function _testNormalDistribution(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _nsamples:stdgo.GoInt, _mean:stdgo.GoFloat64, _stddev:stdgo.GoFloat64, _seed:stdgo.GoInt64):Void {
        var _samples = _generateNormalSamples(_nsamples, _mean, _stddev, _seed);
        var _errorScale:stdgo.GoFloat64 = _max((1 : stdgo.GoFloat64), _stddev);
        var _expected = (stdgo.Go.setRef((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, (0.1 : stdgo.GoFloat64) * _errorScale, (0.08 : stdgo.GoFloat64) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults)) : stdgo.Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
        _checkSampleDistribution(_t, _samples, _expected);
        _checkSampleSliceDistributions(_t, _samples, (2 : stdgo.GoInt), _expected);
        _checkSampleSliceDistributions(_t, _samples, (7 : stdgo.GoInt), _expected);
    }
function testStandardNormalValues(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__4 => _seed in _testSeeds) {
            _testNormalDistribution(_t, (10000 : stdgo.GoInt), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), _seed);
        };
    }
function testNonStandardNormalValues(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _sdmax:stdgo.GoFloat64 = (1000 : stdgo.GoFloat64);
        var _mmax:stdgo.GoFloat64 = (1000 : stdgo.GoFloat64);
        if (stdgo.testing.Testing.short()) {
            _sdmax = (5 : stdgo.GoFloat64);
            _mmax = (5 : stdgo.GoFloat64);
        };
        {
            var _sd:stdgo.GoFloat64 = (0.5 : stdgo.GoFloat64);
            stdgo.Go.cfor(_sd < _sdmax, _sd = _sd * (2 : stdgo.GoFloat64), {
                {
                    var _m:stdgo.GoFloat64 = (0.5 : stdgo.GoFloat64);
                    stdgo.Go.cfor(_m < _mmax, _m = _m * (2 : stdgo.GoFloat64), {
                        for (__4 => _seed in _testSeeds) {
                            _testNormalDistribution(_t, (10000 : stdgo.GoInt), _m, _sd, _seed);
                            if (stdgo.testing.Testing.short()) {
                                break;
                            };
                        };
                    });
                };
            });
        };
    }
function _generateExponentialSamples(_nsamples:stdgo.GoInt, _rate:stdgo.GoFloat64, _seed:stdgo.GoInt64):stdgo.Slice<stdgo.GoFloat64> {
        var _r = new_(newSource(_seed));
        var _samples = new stdgo.Slice<stdgo.GoFloat64>((_nsamples : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _samples.length.toBasic()) {
            _samples[(_i : stdgo.GoInt)] = _r.expFloat64() / _rate;
        };
        return _samples;
    }
function _testExponentialDistribution(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _nsamples:stdgo.GoInt, _rate:stdgo.GoFloat64, _seed:stdgo.GoInt64):Void {
        var _mean:stdgo.GoFloat64 = (1 : stdgo.GoFloat64) / _rate;
        var _stddev:stdgo.GoFloat64 = _mean;
        var _samples = _generateExponentialSamples(_nsamples, _rate, _seed);
        var _errorScale:stdgo.GoFloat64 = _max((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64) / _rate);
        var _expected = (stdgo.Go.setRef((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, (0.1 : stdgo.GoFloat64) * _errorScale, (0.2 : stdgo.GoFloat64) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults)) : stdgo.Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
        _checkSampleDistribution(_t, _samples, _expected);
        _checkSampleSliceDistributions(_t, _samples, (2 : stdgo.GoInt), _expected);
        _checkSampleSliceDistributions(_t, _samples, (7 : stdgo.GoInt), _expected);
    }
function testStandardExponentialValues(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        for (__4 => _seed in _testSeeds) {
            _testExponentialDistribution(_t, (10000 : stdgo.GoInt), (1 : stdgo.GoFloat64), _seed);
        };
    }
function testNonStandardExponentialValues(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _rate:stdgo.GoFloat64 = (0.05 : stdgo.GoFloat64);
            stdgo.Go.cfor(_rate < (10 : stdgo.GoFloat64), _rate = _rate * (2 : stdgo.GoFloat64), {
                for (__4 => _seed in _testSeeds) {
                    _testExponentialDistribution(_t, (10000 : stdgo.GoInt), _rate, _seed);
                    if (stdgo.testing.Testing.short()) {
                        break;
                    };
                };
            });
        };
    }
function _initNorm():{ var _0 : stdgo.Slice<stdgo.GoUInt32>; var _1 : stdgo.Slice<stdgo.GoFloat32>; var _2 : stdgo.Slice<stdgo.GoFloat32>; } {
        var _testKn:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>), _testWn:stdgo.Slice<stdgo.GoFloat32> = (null : stdgo.Slice<stdgo.GoFloat32>), _testFn:stdgo.Slice<stdgo.GoFloat32> = (null : stdgo.Slice<stdgo.GoFloat32>);
        {};
        var __0:stdgo.GoFloat64 = _rn, __1:stdgo.GoFloat64 = _dn, __2:stdgo.GoFloat64 = (0.00991256303526217 : stdgo.GoFloat64), _vn:stdgo.GoFloat64 = __2, _tn:stdgo.GoFloat64 = __1, _dn:stdgo.GoFloat64 = __0;
        _testKn = new stdgo.Slice<stdgo.GoUInt32>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _testWn = new stdgo.Slice<stdgo.GoFloat32>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _testFn = new stdgo.Slice<stdgo.GoFloat32>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _q:stdgo.GoFloat64 = _vn / stdgo.math.Math.exp(((-0.5 : stdgo.GoFloat64) * _dn) * _dn);
        _testKn[(0 : stdgo.GoInt)] = ((_dn / _q) * (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoUInt32);
        _testKn[(1 : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
        _testWn[(0 : stdgo.GoInt)] = (_q / (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testWn[(127 : stdgo.GoInt)] = (_dn / (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testFn[(0 : stdgo.GoInt)] = (1 : stdgo.GoFloat64);
        _testFn[(127 : stdgo.GoInt)] = (stdgo.math.Math.exp(((-0.5 : stdgo.GoFloat64) * _dn) * _dn) : stdgo.GoFloat32);
        {
            var _i:stdgo.GoInt = (126 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (1 : stdgo.GoInt), _i--, {
                _dn = stdgo.math.Math.sqrt((-2 : stdgo.GoFloat64) * stdgo.math.Math.log((_vn / _dn) + stdgo.math.Math.exp(((-0.5 : stdgo.GoFloat64) * _dn) * _dn)));
                _testKn[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_dn / _tn) * (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoUInt32);
                _tn = _dn;
                _testFn[(_i : stdgo.GoInt)] = (stdgo.math.Math.exp(((-0.5 : stdgo.GoFloat64) * _dn) * _dn) : stdgo.GoFloat32);
                _testWn[(_i : stdgo.GoInt)] = (_dn / (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat32);
            });
        };
        return { _0 : _testKn, _1 : _testWn, _2 : _testFn };
    }
function _initExp():{ var _0 : stdgo.Slice<stdgo.GoUInt32>; var _1 : stdgo.Slice<stdgo.GoFloat32>; var _2 : stdgo.Slice<stdgo.GoFloat32>; } {
        var _testKe:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>), _testWe:stdgo.Slice<stdgo.GoFloat32> = (null : stdgo.Slice<stdgo.GoFloat32>), _testFe:stdgo.Slice<stdgo.GoFloat32> = (null : stdgo.Slice<stdgo.GoFloat32>);
        {};
        var __0:stdgo.GoFloat64 = _re, __1:stdgo.GoFloat64 = _de, __2:stdgo.GoFloat64 = (0.003949659822581557 : stdgo.GoFloat64), _ve:stdgo.GoFloat64 = __2, _te:stdgo.GoFloat64 = __1, _de:stdgo.GoFloat64 = __0;
        _testKe = new stdgo.Slice<stdgo.GoUInt32>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _testWe = new stdgo.Slice<stdgo.GoFloat32>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _testFe = new stdgo.Slice<stdgo.GoFloat32>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _q:stdgo.GoFloat64 = _ve / stdgo.math.Math.exp(-_de);
        _testKe[(0 : stdgo.GoInt)] = ((_de / _q) * (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoUInt32);
        _testKe[(1 : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
        _testWe[(0 : stdgo.GoInt)] = (_q / (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testWe[(255 : stdgo.GoInt)] = (_de / (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testFe[(0 : stdgo.GoInt)] = (1 : stdgo.GoFloat64);
        _testFe[(255 : stdgo.GoInt)] = (stdgo.math.Math.exp(-_de) : stdgo.GoFloat32);
        {
            var _i:stdgo.GoInt = (254 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (1 : stdgo.GoInt), _i--, {
                _de = -stdgo.math.Math.log((_ve / _de) + stdgo.math.Math.exp(-_de));
                _testKe[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_de / _te) * (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoUInt32);
                _te = _de;
                _testFe[(_i : stdgo.GoInt)] = (stdgo.math.Math.exp(-_de) : stdgo.GoFloat32);
                _testWe[(_i : stdgo.GoInt)] = (_de / (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat32);
            });
        };
        return { _0 : _testKe, _1 : _testWe, _2 : _testFe };
    }
/**
    // compareUint32Slices returns the first index where the two slices
    // disagree, or <0 if the lengths are the same and all elements
    // are identical.
**/
function _compareUint32Slices(_s1:stdgo.Slice<stdgo.GoUInt32>, _s2:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoInt {
        if ((_s1.length) != ((_s2.length))) {
            if ((_s1.length) > (_s2.length)) {
                return (_s2.length) + (1 : stdgo.GoInt);
            };
            return (_s1.length) + (1 : stdgo.GoInt);
        };
        for (_i in 0 ... _s1.length.toBasic()) {
            if (_s1[(_i : stdgo.GoInt)] != (_s2[(_i : stdgo.GoInt)])) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // compareFloat32Slices returns the first index where the two slices
    // disagree, or <0 if the lengths are the same and all elements
    // are identical.
**/
function _compareFloat32Slices(_s1:stdgo.Slice<stdgo.GoFloat32>, _s2:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoInt {
        if ((_s1.length) != ((_s2.length))) {
            if ((_s1.length) > (_s2.length)) {
                return (_s2.length) + (1 : stdgo.GoInt);
            };
            return (_s1.length) + (1 : stdgo.GoInt);
        };
        for (_i in 0 ... _s1.length.toBasic()) {
            if (!_nearEqual((_s1[(_i : stdgo.GoInt)] : stdgo.GoFloat64), (_s2[(_i : stdgo.GoInt)] : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1e-07 : stdgo.GoFloat64))) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
function testNormTables(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = _initNorm(), _testKn:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _testWn:stdgo.Slice<stdgo.GoFloat32> = __tmp__._1, _testFn:stdgo.Slice<stdgo.GoFloat32> = __tmp__._2;
        {
            var _i:stdgo.GoInt = _compareUint32Slices((_kn.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>), _testKn);
            if (_i >= (0 : stdgo.GoInt)) {
                _t.errorf(("kn disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_kn[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testKn[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i:stdgo.GoInt = _compareFloat32Slices((_wn.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testWn);
            if (_i >= (0 : stdgo.GoInt)) {
                _t.errorf(("wn disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_wn[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testWn[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i:stdgo.GoInt = _compareFloat32Slices((_fn.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testFn);
            if (_i >= (0 : stdgo.GoInt)) {
                _t.errorf(("fn disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_fn[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testFn[(_i : stdgo.GoInt)]));
            };
        };
    }
function testExpTables(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = _initExp(), _testKe:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _testWe:stdgo.Slice<stdgo.GoFloat32> = __tmp__._1, _testFe:stdgo.Slice<stdgo.GoFloat32> = __tmp__._2;
        {
            var _i:stdgo.GoInt = _compareUint32Slices((_ke.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>), _testKe);
            if (_i >= (0 : stdgo.GoInt)) {
                _t.errorf(("ke disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ke[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testKe[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i:stdgo.GoInt = _compareFloat32Slices((_we.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testWe);
            if (_i >= (0 : stdgo.GoInt)) {
                _t.errorf(("we disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_we[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testWe[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i:stdgo.GoInt = _compareFloat32Slices((_fe.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testFe);
            if (_i >= (0 : stdgo.GoInt)) {
                _t.errorf(("fe disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_fe[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testFe[(_i : stdgo.GoInt)]));
            };
        };
    }
function _hasSlowFloatingPoint():Bool {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString))) {
                return stdgo.os.Os.getenv(("GOARM" : stdgo.GoString)) == (("5" : stdgo.GoString));
            } else if (__value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
function testFloat32(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _num:stdgo.GoInt = (10000000 : stdgo.GoInt);
        if (stdgo.testing.Testing.short() && ((stdgo.internal.testenv.Testenv.builder() == stdgo.Go.str()) || _hasSlowFloatingPoint())) {
            _num = _num / ((100 : stdgo.GoInt));
        };
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _ct:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_ct < _num, _ct++, {
                var _f:stdgo.GoFloat32 = _r.float32();
                if (_f >= (1 : stdgo.GoFloat64)) {
                    _t.fatal(stdgo.Go.toInterface(("Float32() should be in range [0,1). ct:" : stdgo.GoString)), stdgo.Go.toInterface(_ct), stdgo.Go.toInterface(("f:" : stdgo.GoString)), stdgo.Go.toInterface(_f));
                };
            });
        };
    }
function _testReadUniformity(_t:stdgo.Ref<stdgo.testing.Testing.T_>, _n:stdgo.GoInt, _seed:stdgo.GoInt64):Void {
        var _r = new_(newSource(_seed));
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = _r.read(_buf), _nRead:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Read err %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_nRead != (_n)) {
            _t.errorf(("Read returned unexpected n; %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_nRead), stdgo.Go.toInterface(_n));
        };
        var __0:stdgo.GoFloat64 = (127.5 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (256 : stdgo.GoFloat64) / stdgo.math.Math.sqrt((12 : stdgo.GoFloat64)), __2:stdgo.GoFloat64 = _stddev / stdgo.math.Math.sqrt((_n : stdgo.GoFloat64)), _errorScale:stdgo.GoFloat64 = __2, _stddev:stdgo.GoFloat64 = __1, _mean:stdgo.GoFloat64 = __0;
        var _expected = (stdgo.Go.setRef((new stdgo.math.rand_test.Rand_test.T_statsResults(_mean, _stddev, (0.1 : stdgo.GoFloat64) * _errorScale, (0.08 : stdgo.GoFloat64) * _errorScale) : stdgo.math.rand_test.Rand_test.T_statsResults)) : stdgo.Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
        var _samples = new stdgo.Slice<stdgo.GoFloat64>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (_i => _val in _buf) {
            _samples[(_i : stdgo.GoInt)] = (_val : stdgo.GoFloat64);
        };
        _checkSampleDistribution(_t, _samples, _expected);
    }
function testReadUniformity(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _testBufferSizes = (new stdgo.Slice<stdgo.GoInt>(7, 7, (2 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt), (64 : stdgo.GoInt), (1024 : stdgo.GoInt), (65536 : stdgo.GoInt), (1048576 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        for (__4 => _seed in _testSeeds) {
            for (__5 => _n in _testBufferSizes) {
                _testReadUniformity(_t, _n, _seed);
            };
        };
    }
function testReadEmpty(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Read err into empty buffer; %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("Read into empty buffer returned unexpected n of %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testReadByOneByte(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        var _b1 = new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.io.Io.readFull(stdgo.testing.iotest.Iotest.oneByteReader(stdgo.Go.asInterface(_r)), _b1), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read by one byte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _r = new_(newSource((1i64 : stdgo.GoInt64)));
        var _b2 = new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var __tmp__ = _r.read(_b2);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_b1, _b2)) {
            _t.errorf(("read by one byte vs single read:\n%x\n%x" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
        };
    }
function testReadSeedReset(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _r = new_(newSource((42i64 : stdgo.GoInt64)));
        var _b1 = new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = _r.read(_b1), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _r.seed((42i64 : stdgo.GoInt64));
        var _b2 = new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var __tmp__ = _r.read(_b2);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_b1, _b2)) {
            _t.errorf(("mismatch after re-seed:\n%x\n%x" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
        };
    }
function testShuffleSmall(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_n <= (1 : stdgo.GoInt), _n++, {
                _r.shuffle(_n, function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                    _t.fatalf(("swap called, n=%d i=%d j=%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                });
            });
        };
    }
/**
    // encodePerm converts from a permuted slice of length n, such as Perm generates, to an int in [0, n!).
    // See https://en.wikipedia.org/wiki/Lehmer_code.
    // encodePerm modifies the input slice.
**/
function _encodePerm(_s:stdgo.Slice<stdgo.GoInt>):stdgo.GoInt {
        for (_i => _x in _s) {
            var _r = (_s.__slice__(_i + (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            for (_j => _y in _r) {
                if (_y > _x) {
                    _r[(_j : stdgo.GoInt)]--;
                };
            };
        };
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fact:stdgo.GoInt = (1 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (_s.length) - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                _m = _m + (_s[(_i : stdgo.GoInt)] * _fact);
                _fact = _fact * (_s.length - _i);
            });
        };
        return _m;
    }
/**
    // TestUniformFactorial tests several ways of generating a uniform value in [0, n!).
**/
function testUniformFactorial(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _r = new_(newSource(_testSeeds[(0 : stdgo.GoInt)]));
        var _top:stdgo.GoInt = (6 : stdgo.GoInt);
        if (stdgo.testing.Testing.short()) {
            _top = (3 : stdgo.GoInt);
        };
        {
            var _n:stdgo.GoInt = (3 : stdgo.GoInt);
            stdgo.Go.cfor(_n <= _top, _n++, {
                _t.run(stdgo.fmt.Fmt.sprintf(("n=%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                    var _nfact:stdgo.GoInt = (1 : stdgo.GoInt);
                    {
                        var _i:stdgo.GoInt = (2 : stdgo.GoInt);
                        stdgo.Go.cfor(_i <= _n, _i++, {
                            _nfact = _nfact * (_i);
                        });
                    };
                    var _p = new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                    var _tests = (new stdgo.GoArray<T__struct_0>(({ _name : ("Int31n" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        return (_r.int31n((_nfact : stdgo.GoInt32)) : stdgo.GoInt);
                    } } : T__struct_0), ({ _name : ("int31n" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        return (int31nForTest(_r, (_nfact : stdgo.GoInt32)) : stdgo.GoInt);
                    } } : T__struct_0), ({ _name : ("Perm" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        return _encodePerm(_r.perm(_n));
                    } } : T__struct_0), ({ _name : ("Shuffle" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        for (_i in 0 ... _p.length.toBasic()) {
                            _p[(_i : stdgo.GoInt)] = _i;
                        };
                        _r.shuffle(_n, function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                            {
                                final __tmp__0 = _p[(_j : stdgo.GoInt)];
                                final __tmp__1 = _p[(_i : stdgo.GoInt)];
                                _p[(_i : stdgo.GoInt)] = __tmp__0;
                                _p[(_j : stdgo.GoInt)] = __tmp__1;
                            };
                        });
                        return _encodePerm(_p);
                    } } : T__struct_0)) : stdgo.GoArray<T__struct_0>);
                    for (__12 => _test in _tests) {
                        _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
                            var _nsamples:stdgo.GoInt = (10 : stdgo.GoInt) * _nfact;
                            if (_nsamples < (200 : stdgo.GoInt)) {
                                _nsamples = (200 : stdgo.GoInt);
                            };
                            var _samples = new stdgo.Slice<stdgo.GoFloat64>((_nsamples : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                            for (_i in 0 ... _samples.length.toBasic()) {
                                {};
                                var _counts = new stdgo.Slice<stdgo.GoInt>((_nfact : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                                {
                                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor(_i < (1000 : stdgo.GoInt), _i++, {
                                        _counts[(_test._fn() : stdgo.GoInt)]++;
                                    });
                                };
                                var _want:stdgo.GoFloat64 = (1000 : stdgo.GoFloat64) / (_nfact : stdgo.GoFloat64);
                                var __9672:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                                for (__21 => _have in _counts) {
                                    var _err:stdgo.GoFloat64 = (_have : stdgo.GoFloat64) - _want;
                                    __9672 = __9672 + (_err * _err);
                                };
                                __9672 = __9672 / (_want);
                                _samples[(_i : stdgo.GoInt)] = __9672;
                            };
                            var _dof:stdgo.GoFloat64 = (_nfact - (1 : stdgo.GoInt) : stdgo.GoFloat64);
                            var _expected = (stdgo.Go.setRef(({ _mean : _dof, _stddev : stdgo.math.Math.sqrt((2 : stdgo.GoFloat64) * _dof) } : stdgo.math.rand_test.Rand_test.T_statsResults)) : stdgo.Ref<stdgo.math.rand_test.Rand_test.T_statsResults>);
                            var _errorScale:stdgo.GoFloat64 = _max((1 : stdgo.GoFloat64), _expected._stddev);
                            _expected._closeEnough = (0.1 : stdgo.GoFloat64) * _errorScale;
                            _expected._maxError = (0.08 : stdgo.GoFloat64);
                            _checkSampleDistribution(_t, _samples, _expected);
                        });
                    };
                });
            });
        };
    }
function benchmarkInt63Threadsafe(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                int63();
            });
        };
    }
function benchmarkInt63ThreadsafeParallel(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                int63();
            };
        });
    }
function benchmarkInt63Unthreadsafe(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.int63();
            });
        };
    }
function benchmarkIntn1000(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.intn((1000 : stdgo.GoInt));
            });
        };
    }
function benchmarkInt63n1000(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.int63n((1000i64 : stdgo.GoInt64));
            });
        };
    }
function benchmarkInt31n1000(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.int31n((1000 : stdgo.GoInt32));
            });
        };
    }
function benchmarkFloat32(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.float32();
            });
        };
    }
function benchmarkFloat64(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.float64();
            });
        };
    }
function benchmarkPerm3(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.perm((3 : stdgo.GoInt));
            });
        };
    }
function benchmarkPerm30(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.perm((30 : stdgo.GoInt));
            });
        };
    }
function benchmarkPerm30ViaShuffle(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                var _p = new stdgo.Slice<stdgo.GoInt>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                for (_i in 0 ... _p.length.toBasic()) {
                    _p[(_i : stdgo.GoInt)] = _i;
                };
                _r.shuffle((30 : stdgo.GoInt), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                    {
                        final __tmp__0 = _p[(_j : stdgo.GoInt)];
                        final __tmp__1 = _p[(_i : stdgo.GoInt)];
                        _p[(_i : stdgo.GoInt)] = __tmp__0;
                        _p[(_j : stdgo.GoInt)] = __tmp__1;
                    };
                });
            });
        };
    }
/**
    // BenchmarkShuffleOverhead uses a minimal swap function
    // to measure just the shuffling overhead.
**/
function benchmarkShuffleOverhead(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.shuffle((52 : stdgo.GoInt), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                    if ((((_i < (0 : stdgo.GoInt)) || (_i >= (52 : stdgo.GoInt))) || (_j < (0 : stdgo.GoInt))) || (_j >= (52 : stdgo.GoInt))) {
                        _b.fatalf(("bad swap(%d, %d)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    };
                });
            });
        };
    }
function benchmarkRead3(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _b.resetTimer();
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.read(_buf);
            });
        };
    }
function benchmarkRead64(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _b.resetTimer();
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.read(_buf);
            });
        };
    }
function benchmarkRead1000(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        var _r = new_(newSource((1i64 : stdgo.GoInt64)));
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _b.resetTimer();
        {
            var _n:stdgo.GoInt = _b.n;
            stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                _r.read(_buf);
            });
        };
    }
function benchmarkConcurrent(_b:stdgo.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        _wg.add((4 : stdgo.GoInt));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (4 : stdgo.GoInt), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            {
                                var _n:stdgo.GoInt = _b.n;
                                stdgo.Go.cfor(_n > (0 : stdgo.GoInt), _n--, {
                                    int63();
                                });
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
function testRegress(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _int32s:stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(
9,
9,
(1 : stdgo.GoInt32),
(10 : stdgo.GoInt32),
(32 : stdgo.GoInt32),
(1048576 : stdgo.GoInt32),
(1048577 : stdgo.GoInt32),
(1000000000 : stdgo.GoInt32),
(1073741824 : stdgo.GoInt32),
(2147483646 : stdgo.GoInt32),
(2147483647 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        var _int64s:stdgo.Slice<stdgo.GoInt64> = (new stdgo.Slice<stdgo.GoInt64>(
13,
13,
(1i64 : stdgo.GoInt64),
(10i64 : stdgo.GoInt64),
(32i64 : stdgo.GoInt64),
(1048576i64 : stdgo.GoInt64),
(1048577i64 : stdgo.GoInt64),
(1000000000i64 : stdgo.GoInt64),
(1073741824i64 : stdgo.GoInt64),
(2147483646i64 : stdgo.GoInt64),
(2147483647i64 : stdgo.GoInt64),
(1000000000000000000i64 : stdgo.GoInt64),
(1152921504606846976i64 : stdgo.GoInt64),
(9223372036854775806i64 : stdgo.GoInt64),
(9223372036854775807i64 : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoInt64>);
        var _permSizes:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(7, 7, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _readBufferSizes:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(5, 5, (1 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _r = new_(newSource((0i64 : stdgo.GoInt64)));
        var _rv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)))?.__copy__();
        var _n:stdgo.GoInt = _rv.numMethod();
        var _p:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_printgolden.value) {
            stdgo.fmt.Fmt.printf(("var regressGolden = []interface{}{\n" : stdgo.GoString));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                var _m:stdgo.reflect.Reflect.Method = _rv.type().method(_i)?.__copy__();
                var _mv:stdgo.reflect.Reflect.Value = _rv.method(_i)?.__copy__();
                var _mt:stdgo.reflect.Reflect.Type_ = _mv.type();
                if (_mt.numOut() == ((0 : stdgo.GoInt))) {
                    continue;
                };
                _r.seed((0i64 : stdgo.GoInt64));
                {
                    var _repeat:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_repeat < (20 : stdgo.GoInt), _repeat++, {
                        var _args:stdgo.Slice<stdgo.reflect.Reflect.Value> = (null : stdgo.Slice<stdgo.reflect.Reflect.Value>);
                        var _argstr:stdgo.GoString = ("" : stdgo.GoString);
                        if (_mt.numIn() == ((1 : stdgo.GoInt))) {
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            {
                                var __continue__ = false;
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _mt.in_((0 : stdgo.GoInt)).kind();
                                        if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind))) {
                                            if (_m.name == (("Perm" : stdgo.GoString))) {
                                                _x = stdgo.Go.toInterface(_permSizes[(_repeat % (_permSizes.length) : stdgo.GoInt)]);
                                                break;
                                            };
                                            var _big:stdgo.GoInt64 = _int64s[(_repeat % (_int64s.length) : stdgo.GoInt)];
                                            if (((_big : stdgo.GoInt) : stdgo.GoInt64) != (_big)) {
                                                _r.int63n(_big);
                                                if (_printgolden.value) {
                                                    stdgo.fmt.Fmt.printf(("\tskipped, // must run printgolden on 64-bit machine\n" : stdgo.GoString));
                                                };
                                                _p++;
                                                {
                                                    __continue__ = true;
                                                    break;
                                                };
                                            };
                                            _x = stdgo.Go.toInterface((_big : stdgo.GoInt));
                                            break;
                                        } else if (__value__ == ((5u32 : stdgo.reflect.Reflect.Kind))) {
                                            _x = stdgo.Go.toInterface(_int32s[(_repeat % (_int32s.length) : stdgo.GoInt)]);
                                            break;
                                        } else if (__value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                                            _x = stdgo.Go.toInterface(_int64s[(_repeat % (_int64s.length) : stdgo.GoInt)]);
                                            break;
                                        } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                            if (_m.name == (("Read" : stdgo.GoString))) {
                                                var _n:stdgo.GoInt = _readBufferSizes[(_repeat % (_readBufferSizes.length) : stdgo.GoInt)];
                                                _x = stdgo.Go.toInterface(new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__());
                                            };
                                            break;
                                        } else {
                                            _t.fatalf(("unexpected argument type for r.%s" : stdgo.GoString), stdgo.Go.toInterface(_m.name));
                                        };
                                    };
                                    break;
                                };
                                if (__continue__) continue;
                            };
                            _argstr = stdgo.fmt.Fmt.sprint(_x)?.__copy__();
                            _args = (_args.__append__(stdgo.reflect.Reflect.valueOf(_x)?.__copy__()));
                        };
                        var _out:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                        _out = _mv.call(_args)[(0 : stdgo.GoInt)].interface_();
                        if ((_m.name == ("Int" : stdgo.GoString)) || (_m.name == ("Intn" : stdgo.GoString))) {
                            _out = stdgo.Go.toInterface(((stdgo.Go.typeAssert((_out : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64));
                        };
                        if (_m.name == (("Read" : stdgo.GoString))) {
                            _out = stdgo.Go.toInterface((stdgo.Go.typeAssert((_args[(0 : stdgo.GoInt)].interface_() : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.GoByte>));
                        };
                        if (_printgolden.value) {
                            var _val:stdgo.GoString = ("" : stdgo.GoString);
                            var _big:stdgo.GoInt64 = (1152921504606846976i64 : stdgo.GoInt64);
                            if ((((_big : stdgo.GoInt) : stdgo.GoInt64) != _big) && ((_m.name == ("Int" : stdgo.GoString)) || (_m.name == ("Intn" : stdgo.GoString)))) {
                                _val = ("truncated" : stdgo.GoString);
                            } else if (stdgo.reflect.Reflect.typeOf(_out).kind() == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                _val = stdgo.fmt.Fmt.sprintf(("%#v" : stdgo.GoString), _out)?.__copy__();
                            } else {
                                _val = stdgo.fmt.Fmt.sprintf(("%T(%v)" : stdgo.GoString), _out, _out)?.__copy__();
                            };
                            stdgo.fmt.Fmt.printf(("\t%s, // %s(%s)\n" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_argstr));
                        } else {
                            var _want:stdgo.AnyInterface = _regressGolden[(_p : stdgo.GoInt)];
                            if (_m.name == (("Int" : stdgo.GoString))) {
                                _want = stdgo.Go.toInterface((((((stdgo.Go.typeAssert((_want : stdgo.GoInt64)) : stdgo.GoInt64) : stdgo.GoUInt) << (1i64 : stdgo.GoUInt64)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt64));
                            };
                            if (!stdgo.reflect.Reflect.deepEqual(_out, _want)) {
                                _t.errorf(("r.%s(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_argstr), _out, _want);
                            };
                        };
                        _p++;
                    });
                };
            });
        };
        if (_printgolden.value) {
            stdgo.fmt.Fmt.printf(("}\n" : stdgo.GoString));
        };
    }
class T_statsResults_asInterface {
    /**
        // checkSimilarDistribution returns success if the mean and stddev of the
        // two statsResults are similar.
    **/
    @:keep
    public dynamic function _checkSimilarDistribution(_expected:stdgo.Ref<T_statsResults>):stdgo.Error return __self__.value._checkSimilarDistribution(_expected);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statsResults>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.rand_test.Rand_test.T_statsResults_asInterface) class T_statsResults_static_extension {
    /**
        // checkSimilarDistribution returns success if the mean and stddev of the
        // two statsResults are similar.
    **/
    @:keep
    static public function _checkSimilarDistribution( _this:stdgo.Ref<T_statsResults>, _expected:stdgo.Ref<T_statsResults>):stdgo.Error {
        @:recv var _this:stdgo.Ref<T_statsResults> = _this;
        if (!_nearEqual(_this._mean, _expected._mean, _expected._closeEnough, _expected._maxError)) {
            var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("mean %v != %v (allowed error %v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_this._mean), stdgo.Go.toInterface(_expected._mean), stdgo.Go.toInterface(_expected._closeEnough), stdgo.Go.toInterface(_expected._maxError))?.__copy__();
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
            return stdgo.errors.Errors.new_(_s?.__copy__());
        };
        if (!_nearEqual(_this._stddev, _expected._stddev, _expected._closeEnough, _expected._maxError)) {
            var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("stddev %v != %v (allowed error %v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_this._stddev), stdgo.Go.toInterface(_expected._stddev), stdgo.Go.toInterface(_expected._closeEnough), stdgo.Go.toInterface(_expected._maxError))?.__copy__();
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
            return stdgo.errors.Errors.new_(_s?.__copy__());
        };
        return (null : stdgo.Error);
    }
}
