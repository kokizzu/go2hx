package stdgo.go.printer_test;
import stdgo.go.printer.Printer;
function _parseFunc(_filename:stdgo.GoString, _functionname:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>; var _1 : stdgo.Ref<stdgo.go.token.Token.FileSet>; } {
        var _fun:stdgo.Ref<stdgo.go.ast.Ast.FuncDecl> = (null : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>), _fset:stdgo.Ref<stdgo.go.token.Token.FileSet> = (null : stdgo.Ref<stdgo.go.token.Token.FileSet>);
        _fset = stdgo.go.token.Token.newFileSet();
        {
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename?.__copy__(), (null : stdgo.AnyInterface), (0u32 : stdgo.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                for (__0 => _d in _file.decls) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>)) : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo.go.ast.Ast.FuncDecl>), _1 : false };
                        }, _f = __tmp__._0, _ok = __tmp__._1;
                        if (_ok && (_f.name.name == _functionname)) {
                            _fun = _f;
                            return { _0 : _fun, _1 : _fset };
                        };
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(("function not found" : stdgo.GoString));
    }
function _printSelf():Void {
        var __tmp__ = _parseFunc(("example_test.go" : stdgo.GoString), ("printSelf" : stdgo.GoString)), _funcAST:stdgo.Ref<stdgo.go.ast.Ast.FuncDecl> = __tmp__._0, _fset:stdgo.Ref<stdgo.go.token.Token.FileSet> = __tmp__._1;
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        stdgo.go.printer.Printer.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_funcAST.body)));
        var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        _s = (_s.__slice__((1 : stdgo.GoInt), (_s.length) - (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _s = stdgo.strings.Strings.trimSpace(stdgo.strings.Strings.replaceAll(_s?.__copy__(), ("\n\t" : stdgo.GoString), ("\n" : stdgo.GoString))?.__copy__())?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleFprint():Void {
        _printSelf();
    }
