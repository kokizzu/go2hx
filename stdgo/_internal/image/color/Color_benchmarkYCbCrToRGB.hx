package stdgo._internal.image.color;
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_yCbCrToRGB.yCbCrToRGB((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._2;
                    };
                    _i++;
                };
            };
        });
        @:check2r _b.run(("128" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_yCbCrToRGB.yCbCrToRGB((128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._2;
                    };
                    _i++;
                };
            };
        });
        @:check2r _b.run(("255" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_yCbCrToRGB.yCbCrToRGB((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._2;
                    };
                    _i++;
                };
            };
        });
    }
