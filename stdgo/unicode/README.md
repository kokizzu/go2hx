# Module: `stdgo.unicode`

[(view library index)](../stdgo.md)


# Overview


Package unicode provides data and functions to test some properties of Unicode code points. 


<details><summary>hl tests passed</summary>
<p>

```
=== RUN   TestDigit
--- PASS: TestDigit (0.000164031982421875)
=== RUN   TestDigitOptimization
--- PASS: TestDigitOptimization (0.000420093536376953)
=== RUN   TestIsControlLatin1
--- PASS: TestIsControlLatin1 (0.000152111053466797)
=== RUN   TestIsLetterLatin1
--- PASS: TestIsLetterLatin1 (0.000636100769042969)
=== RUN   TestIsUpperLatin1
--- PASS: TestIsUpperLatin1 (0.000555038452148438)
=== RUN   TestIsLowerLatin1
--- PASS: TestIsLowerLatin1 (0.000607013702392578)
=== RUN   TestNumberLatin1
--- PASS: TestNumberLatin1 (0.00196313858032227)
=== RUN   TestIsPrintLatin1
--- PASS: TestIsPrintLatin1 (0.00313186645507812)
=== RUN   TestIsGraphicLatin1
--- PASS: TestIsGraphicLatin1 (0.00313782691955566)
=== RUN   TestIsPunctLatin1
--- PASS: TestIsPunctLatin1 (0.00122690200805664)
=== RUN   TestIsSpaceLatin1
--- PASS: TestIsSpaceLatin1 (0.0013740062713623)
=== RUN   TestIsSymbolLatin1
--- PASS: TestIsSymbolLatin1 (0.000936985015869141)
=== RUN   TestIsLetter
--- PASS: TestIsLetter (0.000130891799926758)
=== RUN   TestIsUpper
--- PASS: TestIsUpper (7.51018524169922e-05)
=== RUN   TestTo
--- PASS: TestTo (0.000436067581176758)
=== RUN   TestToUpperCase
--- PASS: TestToUpperCase (0.000149011611938477)
=== RUN   TestToLowerCase
--- PASS: TestToLowerCase (0.000142097473144531)
=== RUN   TestToTitleCase
--- PASS: TestToTitleCase (0.00092005729675293)
=== RUN   TestIsSpace
--- PASS: TestIsSpace (8.29696655273438e-05)
=== RUN   TestLetterOptimizations
--- PASS: TestLetterOptimizations (0.0108790397644043)
=== RUN   TestTurkishCase
--- PASS: TestTurkishCase (0.000730991363525391)
=== RUN   TestSimpleFold
--- PASS: TestSimpleFold (0.00017094612121582)
=== RUN   TestCalibrate
--- PASS: TestCalibrate (8.10623168945312e-06)
=== RUN   TestLatinOffset
--- PASS: TestLatinOffset (0.0640230178833008)
=== RUN   TestSpecialCaseNoMapping
--- PASS: TestSpecialCaseNoMapping (5.19752502441406e-05)
=== RUN   TestNegativeRune
--- PASS: TestNegativeRune (0.00561690330505371)
=== RUN   TestCategories
--- PASS: TestCategories (0.0126559734344482)
=== RUN   TestProperties
--- PASS: TestProperties (0.0115289688110352)
```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN   TestDigit
--- PASS: TestDigit (0.00133109092712402344)
=== RUN   TestDigitOptimization
--- PASS: TestDigitOptimization (0.00168013572692871094)
=== RUN   TestIsControlLatin1
--- PASS: TestIsControlLatin1 (0.001007080078125)
=== RUN   TestIsLetterLatin1
--- PASS: TestIsLetterLatin1 (0.00257992744445800781)
=== RUN   TestIsUpperLatin1
--- PASS: TestIsUpperLatin1 (0.00220203399658203125)
=== RUN   TestIsLowerLatin1
--- PASS: TestIsLowerLatin1 (0.00213193893432617188)
=== RUN   TestNumberLatin1
--- PASS: TestNumberLatin1 (0.00240087509155273438)
=== RUN   TestIsPrintLatin1
--- PASS: TestIsPrintLatin1 (0.00702500343322753906)
=== RUN   TestIsGraphicLatin1
--- PASS: TestIsGraphicLatin1 (0.00740003585815429688)
=== RUN   TestIsPunctLatin1
--- PASS: TestIsPunctLatin1 (0.00394296646118164062)
=== RUN   TestIsSpaceLatin1
--- PASS: TestIsSpaceLatin1 (0.00227880477905273438)
=== RUN   TestIsSymbolLatin1
--- PASS: TestIsSymbolLatin1 (0.00329113006591796875)
=== RUN   TestIsLetter
--- PASS: TestIsLetter (0.000917196273803710938)
=== RUN   TestIsUpper
--- PASS: TestIsUpper (0.00049495697021484375)
=== RUN   TestTo
--- PASS: TestTo (0.00144219398498535156)
=== RUN   TestToUpperCase
--- PASS: TestToUpperCase (0.000479936599731445312)
=== RUN   TestToLowerCase
--- PASS: TestToLowerCase (0.000441074371337890625)
=== RUN   TestToTitleCase
--- PASS: TestToTitleCase (0.000419139862060546875)
=== RUN   TestIsSpace
--- PASS: TestIsSpace (0.000278949737548828125)
=== RUN   TestLetterOptimizations
--- PASS: TestLetterOptimizations (0.0298860073089599609)
=== RUN   TestTurkishCase
--- PASS: TestTurkishCase (0.00299000740051269531)
=== RUN   TestSimpleFold
--- PASS: TestSimpleFold (0.000895977020263671875)
=== RUN   TestCalibrate
--- PASS: TestCalibrate (1.0013580322265625e-05)
=== RUN   TestLatinOffset
--- PASS: TestLatinOffset (0.101906061172485352)
=== RUN   TestSpecialCaseNoMapping
--- PASS: TestSpecialCaseNoMapping (0.000252962112426757812)
=== RUN   TestNegativeRune
--- PASS: TestNegativeRune (0.0214431285858154297)
=== RUN   TestCategories
--- PASS: TestCategories (0.0213510990142822266)
=== RUN   TestProperties
--- PASS: TestProperties (0.0199251174926757812)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _is16(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Bool`](<#function-_is16>)

- [`function _is32(_ranges:stdgo.Slice<stdgo.unicode.Range32>, _r:stdgo.GoUInt32):Bool`](<#function-_is32>)

- [`function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool`](<#function-_isexcludinglatin>)

- [`function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo.unicode.CaseRange>):{_1:Bool, _0:stdgo.GoRune}`](<#function-_to>)

- [`function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Bool`](<#function-in_>)

- [`function isControl(_r:stdgo.GoRune):Bool`](<#function-iscontrol>)

- [`function isDigit(_r:stdgo.GoRune):Bool`](<#function-isdigit>)

- [`function isGraphic(_r:stdgo.GoRune):Bool`](<#function-isgraphic>)

- [`function isLetter(_r:stdgo.GoRune):Bool`](<#function-isletter>)

- [`function isLower(_r:stdgo.GoRune):Bool`](<#function-islower>)

- [`function isMark(_r:stdgo.GoRune):Bool`](<#function-ismark>)

- [`function isNumber(_r:stdgo.GoRune):Bool`](<#function-isnumber>)

- [`function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>, _r:stdgo.GoRune):Bool`](<#function-isoneof>)

- [`function isPrint(_r:stdgo.GoRune):Bool`](<#function-isprint>)

- [`function isPunct(_r:stdgo.GoRune):Bool`](<#function-ispunct>)

- [`function isSpace(_r:stdgo.GoRune):Bool`](<#function-isspace>)

- [`function isSymbol(_r:stdgo.GoRune):Bool`](<#function-issymbol>)

- [`function isTitle(_r:stdgo.GoRune):Bool`](<#function-istitle>)

- [`function isUpper(_r:stdgo.GoRune):Bool`](<#function-isupper>)

- [`function is_(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool`](<#function-is_>)

- [`function simpleFold(_r:stdgo.GoRune):stdgo.GoRune`](<#function-simplefold>)

- [`function to(__case:stdgo.GoInt, _r:stdgo.GoRune):stdgo.GoRune`](<#function-to>)

- [`function toLower(_r:stdgo.GoRune):stdgo.GoRune`](<#function-tolower>)

- [`function toTitle(_r:stdgo.GoRune):stdgo.GoRune`](<#function-totitle>)

- [`function toUpper(_r:stdgo.GoRune):stdgo.GoRune`](<#function-toupper>)

- [class CaseRange](<#class-caserange>)

  - [`function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:Null<stdgo.unicode._Unicode.T_d>):Void`](<#caserange-function-new>)

- [class Range16](<#class-range16>)

  - [`function new(?lo:stdgo.GoUInt16, ?hi:stdgo.GoUInt16, ?stride:stdgo.GoUInt16):Void`](<#range16-function-new>)

- [class Range32](<#class-range32>)

  - [`function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?stride:stdgo.GoUInt32):Void`](<#range32-function-new>)

- [class RangeTable](<#class-rangetable>)

  - [`function new(?r16:stdgo.Slice<stdgo.unicode.Range16>, ?r32:stdgo.Slice<stdgo.unicode.Range32>, ?latinOffset:Null<stdgo.GoInt>):Void`](<#rangetable-function-new>)

- [class SpecialCase\_static\_extension](<#class-specialcase_static_extension>)

  - [`function toLower( _r:stdgo.GoRune):stdgo.GoRune`](<#specialcase_static_extension-function-tolower>)

  - [`function toTitle( _r:stdgo.GoRune):stdgo.GoRune`](<#specialcase_static_extension-function-totitle>)

  - [`function toUpper( _r:stdgo.GoRune):stdgo.GoRune`](<#specialcase_static_extension-function-toupper>)

- [typedef SpecialCase](<#typedef-specialcase>)

  - [`function toLower( _r:stdgo.GoRune):stdgo.GoRune`](<#specialcase-function-tolower>)

  - [`function toTitle( _r:stdgo.GoRune):stdgo.GoRune`](<#specialcase-function-totitle>)

  - [`function toUpper( _r:stdgo.GoRune):stdgo.GoRune`](<#specialcase-function-toupper>)

# Examples


- [`exampleIsDigit`](<#exampleisdigit>)

- [`exampleIsLetter`](<#exampleisletter>)

- [`exampleIsLower`](<#exampleislower>)

- [`exampleIsNumber`](<#exampleisnumber>)

- [`exampleIsSpace`](<#exampleisspace>)

- [`exampleIsTitle`](<#exampleistitle>)

- [`exampleIsUpper`](<#exampleisupper>)

- [`exampleSimpleFold`](<#examplesimplefold>)

- [`exampleSpecialCase`](<#examplespecialcase>)

- [`exampleTo`](<#exampleto>)

- [`exampleToLower`](<#exampletolower>)

- [`exampleToTitle`](<#exampletotitle>)

- [`exampleToUpper`](<#exampletoupper>)

# Constants


```haxe
import stdgo.unicode.Unicode
```


```haxe
final lowerCase:stdgo.InvalidType = (("2" : GoUInt64))
```


Indices into the Delta arrays inside CaseRanges for case mapping. 


```haxe
final maxASCII:stdgo.GoInt32 = (("".code : GoRune))
```


maximum ASCII value. 


```haxe
final maxCase:stdgo.InvalidType = (("2" : GoUInt64))
```


Indices into the Delta arrays inside CaseRanges for case mapping. 


```haxe
final maxLatin1:stdgo.GoInt32 = (("ÿ".code : GoRune))
```


maximum Latin\-1 value. 


```haxe
final maxRune:stdgo.GoInt32 = (("􏿿".code : GoRune))
```


Maximum valid Unicode code point. 


```haxe
final replacementChar:stdgo.GoInt32 = (("�".code : GoRune))
```


Represents invalid code points. 


```haxe
final titleCase:stdgo.InvalidType = (("2" : GoUInt64))
```


Indices into the Delta arrays inside CaseRanges for case mapping. 


```haxe
final upperCase:stdgo.GoUInt64 = (("2" : GoUInt64))
```


Indices into the Delta arrays inside CaseRanges for case mapping. 


```haxe
final upperLower:stdgo.GoInt32 = ((1114112 : GoInt32))
```


\(Cannot be a valid delta.\)// If the Delta field of a CaseRange is UpperLower, it means this CaseRange represents a sequence of the form \(say\) Upper Lower Upper Lower. 


```haxe
final version:stdgo.GoString = Go.str("13.0.0")
```


Version is the Unicode edition from which the tables are derived. 


# Variables


```haxe
import stdgo.unicode.Unicode
```


```haxe
var adlam:stdgo.Ref<stdgo.unicode.RangeTable>
```


Adlam is the set of Unicode characters in script Adlam.// These variables have type \*RangeTable. 


```haxe
var ahom:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ahom is the set of Unicode characters in script Ahom.// These variables have type \*RangeTable. 


```haxe
var anatolian_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```


Anatolian\_Hieroglyphs is the set of Unicode characters in script Anatolian\_Hieroglyphs.// These variables have type \*RangeTable. 


```haxe
var arabic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Arabic is the set of Unicode characters in script Arabic.// These variables have type \*RangeTable. 


```haxe
var armenian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Armenian is the set of Unicode characters in script Armenian.// These variables have type \*RangeTable. 


```haxe
var ascii_Hex_Digit:stdgo.Ref<stdgo.unicode.RangeTable>
```


ASCII\_Hex\_Digit is the set of Unicode characters with property ASCII\_Hex\_Digit.// These variables have type \*RangeTable. 


```haxe
var avestan:stdgo.Ref<stdgo.unicode.RangeTable>
```


Avestan is the set of Unicode characters in script Avestan.// These variables have type \*RangeTable. 


```haxe
var azeriCase:stdgo.unicode.SpecialCase
```


```haxe
var balinese:stdgo.Ref<stdgo.unicode.RangeTable>
```


Balinese is the set of Unicode characters in script Balinese.// These variables have type \*RangeTable. 


```haxe
var bamum:stdgo.Ref<stdgo.unicode.RangeTable>
```


Bamum is the set of Unicode characters in script Bamum.// These variables have type \*RangeTable. 


```haxe
var bassa_Vah:stdgo.Ref<stdgo.unicode.RangeTable>
```


Bassa\_Vah is the set of Unicode characters in script Bassa\_Vah.// These variables have type \*RangeTable. 


```haxe
var batak:stdgo.Ref<stdgo.unicode.RangeTable>
```


Batak is the set of Unicode characters in script Batak.// These variables have type \*RangeTable. 


```haxe
var bengali:stdgo.Ref<stdgo.unicode.RangeTable>
```


Bengali is the set of Unicode characters in script Bengali.// These variables have type \*RangeTable. 


```haxe
var bhaiksuki:stdgo.Ref<stdgo.unicode.RangeTable>
```


Bhaiksuki is the set of Unicode characters in script Bhaiksuki.// These variables have type \*RangeTable. 


```haxe
var bidi_Control:stdgo.Ref<stdgo.unicode.RangeTable>
```


Bidi\_Control is the set of Unicode characters with property Bidi\_Control.// These variables have type \*RangeTable. 


```haxe
var bopomofo:stdgo.Ref<stdgo.unicode.RangeTable>
```


Bopomofo is the set of Unicode characters in script Bopomofo.// These variables have type \*RangeTable. 


```haxe
var brahmi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Brahmi is the set of Unicode characters in script Brahmi.// These variables have type \*RangeTable. 


```haxe
var braille:stdgo.Ref<stdgo.unicode.RangeTable>
```


Braille is the set of Unicode characters in script Braille.// These variables have type \*RangeTable. 


```haxe
var buginese:stdgo.Ref<stdgo.unicode.RangeTable>
```


Buginese is the set of Unicode characters in script Buginese.// These variables have type \*RangeTable. 


```haxe
var buhid:stdgo.Ref<stdgo.unicode.RangeTable>
```


Buhid is the set of Unicode characters in script Buhid.// These variables have type \*RangeTable. 


```haxe
var c:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var canadian_Aboriginal:stdgo.Ref<stdgo.unicode.RangeTable>
```


Canadian\_Aboriginal is the set of Unicode characters in script Canadian\_Aboriginal.// These variables have type \*RangeTable. 


```haxe
var carian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Carian is the set of Unicode characters in script Carian.// These variables have type \*RangeTable. 


```haxe
var caseRanges:stdgo.Slice<stdgo.unicode.CaseRange>
```


CaseRanges is the table describing case mappings for all letters with non\-self mappings. 


```haxe
var categories:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```


Categories is the set of Unicode category tables. 


```haxe
var caucasian_Albanian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Caucasian\_Albanian is the set of Unicode characters in script Caucasian\_Albanian.// These variables have type \*RangeTable. 


```haxe
var cc:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cc is the set of Unicode characters in category Cc \(Other, control\).// These variables have type \*RangeTable. 


```haxe
var cf:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cf is the set of Unicode characters in category Cf \(Other, format\).// These variables have type \*RangeTable. 


```haxe
var chakma:stdgo.Ref<stdgo.unicode.RangeTable>
```


Chakma is the set of Unicode characters in script Chakma.// These variables have type \*RangeTable. 


```haxe
var cham:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cham is the set of Unicode characters in script Cham.// These variables have type \*RangeTable. 


```haxe
var cherokee:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cherokee is the set of Unicode characters in script Cherokee.// These variables have type \*RangeTable. 


```haxe
var chorasmian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Chorasmian is the set of Unicode characters in script Chorasmian.// These variables have type \*RangeTable. 


```haxe
var co:stdgo.Ref<stdgo.unicode.RangeTable>
```


Co is the set of Unicode characters in category Co \(Other, private use\).// These variables have type \*RangeTable. 


```haxe
var common:stdgo.Ref<stdgo.unicode.RangeTable>
```


Common is the set of Unicode characters in script Common.// These variables have type \*RangeTable. 


```haxe
var coptic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Coptic is the set of Unicode characters in script Coptic.// These variables have type \*RangeTable. 


```haxe
var cs:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cs is the set of Unicode characters in category Cs \(Other, surrogate\).// These variables have type \*RangeTable. 


```haxe
var cuneiform:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cuneiform is the set of Unicode characters in script Cuneiform.// These variables have type \*RangeTable. 


```haxe
var cypriot:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cypriot is the set of Unicode characters in script Cypriot.// These variables have type \*RangeTable. 


```haxe
var cyrillic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Cyrillic is the set of Unicode characters in script Cyrillic.// These variables have type \*RangeTable. 


```haxe
var dash:stdgo.Ref<stdgo.unicode.RangeTable>
```


Dash is the set of Unicode characters with property Dash.// These variables have type \*RangeTable. 


```haxe
var deprecated:stdgo.Ref<stdgo.unicode.RangeTable>
```


Deprecated is the set of Unicode characters with property Deprecated.// These variables have type \*RangeTable. 


```haxe
var deseret:stdgo.Ref<stdgo.unicode.RangeTable>
```


Deseret is the set of Unicode characters in script Deseret.// These variables have type \*RangeTable. 


```haxe
var devanagari:stdgo.Ref<stdgo.unicode.RangeTable>
```


Devanagari is the set of Unicode characters in script Devanagari.// These variables have type \*RangeTable. 


```haxe
var diacritic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Diacritic is the set of Unicode characters with property Diacritic.// These variables have type \*RangeTable. 


```haxe
var digit:stdgo.Ref<stdgo.unicode.RangeTable>
```


Digit is the set of Unicode characters with the "decimal digit" property.// These variables have type \*RangeTable. 


```haxe
var dives_Akuru:stdgo.Ref<stdgo.unicode.RangeTable>
```


Dives\_Akuru is the set of Unicode characters in script Dives\_Akuru.// These variables have type \*RangeTable. 


```haxe
var dogra:stdgo.Ref<stdgo.unicode.RangeTable>
```


Dogra is the set of Unicode characters in script Dogra.// These variables have type \*RangeTable. 


```haxe
var duployan:stdgo.Ref<stdgo.unicode.RangeTable>
```


Duployan is the set of Unicode characters in script Duployan.// These variables have type \*RangeTable. 


```haxe
var egyptian_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```


Egyptian\_Hieroglyphs is the set of Unicode characters in script Egyptian\_Hieroglyphs.// These variables have type \*RangeTable. 


```haxe
var elbasan:stdgo.Ref<stdgo.unicode.RangeTable>
```


Elbasan is the set of Unicode characters in script Elbasan.// These variables have type \*RangeTable. 


```haxe
var elymaic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Elymaic is the set of Unicode characters in script Elymaic.// These variables have type \*RangeTable. 


```haxe
var ethiopic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ethiopic is the set of Unicode characters in script Ethiopic.// These variables have type \*RangeTable. 


```haxe
var extender:stdgo.Ref<stdgo.unicode.RangeTable>
```


Extender is the set of Unicode characters with property Extender.// These variables have type \*RangeTable. 


```haxe
var foldCategory:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```


FoldCategory maps a category name to a table of code points outside the category that are equivalent under simple case folding to code points inside the category. If there is no entry for a category name, there are no such points. 


```haxe
var foldScript:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```


FoldScript maps a script name to a table of code points outside the script that are equivalent under simple case folding to code points inside the script. If there is no entry for a script name, there are no such points. 


```haxe
var georgian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Georgian is the set of Unicode characters in script Georgian.// These variables have type \*RangeTable. 


```haxe
var glagolitic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Glagolitic is the set of Unicode characters in script Glagolitic.// These variables have type \*RangeTable. 


```haxe
var gothic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Gothic is the set of Unicode characters in script Gothic.// These variables have type \*RangeTable. 


```haxe
var grantha:stdgo.Ref<stdgo.unicode.RangeTable>
```


Grantha is the set of Unicode characters in script Grantha.// These variables have type \*RangeTable. 


```haxe
var graphicRanges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>
```


GraphicRanges defines the set of graphic characters according to Unicode. 


```haxe
var greek:stdgo.Ref<stdgo.unicode.RangeTable>
```


Greek is the set of Unicode characters in script Greek.// These variables have type \*RangeTable. 


```haxe
var gujarati:stdgo.Ref<stdgo.unicode.RangeTable>
```


Gujarati is the set of Unicode characters in script Gujarati.// These variables have type \*RangeTable. 


```haxe
var gunjala_Gondi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Gunjala\_Gondi is the set of Unicode characters in script Gunjala\_Gondi.// These variables have type \*RangeTable. 


```haxe
var gurmukhi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Gurmukhi is the set of Unicode characters in script Gurmukhi.// These variables have type \*RangeTable. 


```haxe
var han:stdgo.Ref<stdgo.unicode.RangeTable>
```


Han is the set of Unicode characters in script Han.// These variables have type \*RangeTable. 


```haxe
var hangul:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hangul is the set of Unicode characters in script Hangul.// These variables have type \*RangeTable. 


```haxe
var hanifi_Rohingya:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hanifi\_Rohingya is the set of Unicode characters in script Hanifi\_Rohingya.// These variables have type \*RangeTable. 


```haxe
var hanunoo:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hanunoo is the set of Unicode characters in script Hanunoo.// These variables have type \*RangeTable. 


```haxe
var hatran:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hatran is the set of Unicode characters in script Hatran.// These variables have type \*RangeTable. 


```haxe
var hebrew:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hebrew is the set of Unicode characters in script Hebrew.// These variables have type \*RangeTable. 


```haxe
var hex_Digit:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hex\_Digit is the set of Unicode characters with property Hex\_Digit.// These variables have type \*RangeTable. 


```haxe
var hiragana:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hiragana is the set of Unicode characters in script Hiragana.// These variables have type \*RangeTable. 


```haxe
var hyphen:stdgo.Ref<stdgo.unicode.RangeTable>
```


Hyphen is the set of Unicode characters with property Hyphen.// These variables have type \*RangeTable. 


```haxe
var ideographic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ideographic is the set of Unicode characters with property Ideographic.// These variables have type \*RangeTable. 


```haxe
var ids_Binary_Operator:stdgo.Ref<stdgo.unicode.RangeTable>
```


IDS\_Binary\_Operator is the set of Unicode characters with property IDS\_Binary\_Operator.// These variables have type \*RangeTable. 


```haxe
var ids_Trinary_Operator:stdgo.Ref<stdgo.unicode.RangeTable>
```


IDS\_Trinary\_Operator is the set of Unicode characters with property IDS\_Trinary\_Operator.// These variables have type \*RangeTable. 


```haxe
var imperial_Aramaic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Imperial\_Aramaic is the set of Unicode characters in script Imperial\_Aramaic.// These variables have type \*RangeTable. 


```haxe
var inherited:stdgo.Ref<stdgo.unicode.RangeTable>
```


Inherited is the set of Unicode characters in script Inherited.// These variables have type \*RangeTable. 


```haxe
var inscriptional_Pahlavi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Inscriptional\_Pahlavi is the set of Unicode characters in script Inscriptional\_Pahlavi.// These variables have type \*RangeTable. 


```haxe
var inscriptional_Parthian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Inscriptional\_Parthian is the set of Unicode characters in script Inscriptional\_Parthian.// These variables have type \*RangeTable. 


```haxe
var javanese:stdgo.Ref<stdgo.unicode.RangeTable>
```


Javanese is the set of Unicode characters in script Javanese.// These variables have type \*RangeTable. 


```haxe
var join_Control:stdgo.Ref<stdgo.unicode.RangeTable>
```


Join\_Control is the set of Unicode characters with property Join\_Control.// These variables have type \*RangeTable. 


```haxe
var kaithi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Kaithi is the set of Unicode characters in script Kaithi.// These variables have type \*RangeTable. 


```haxe
var kannada:stdgo.Ref<stdgo.unicode.RangeTable>
```


Kannada is the set of Unicode characters in script Kannada.// These variables have type \*RangeTable. 


```haxe
var katakana:stdgo.Ref<stdgo.unicode.RangeTable>
```


Katakana is the set of Unicode characters in script Katakana.// These variables have type \*RangeTable. 


```haxe
var kayah_Li:stdgo.Ref<stdgo.unicode.RangeTable>
```


Kayah\_Li is the set of Unicode characters in script Kayah\_Li.// These variables have type \*RangeTable. 


```haxe
var kharoshthi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Kharoshthi is the set of Unicode characters in script Kharoshthi.// These variables have type \*RangeTable. 


```haxe
var khitan_Small_Script:stdgo.Ref<stdgo.unicode.RangeTable>
```


Khitan\_Small\_Script is the set of Unicode characters in script Khitan\_Small\_Script.// These variables have type \*RangeTable. 


```haxe
var khmer:stdgo.Ref<stdgo.unicode.RangeTable>
```


Khmer is the set of Unicode characters in script Khmer.// These variables have type \*RangeTable. 


```haxe
var khojki:stdgo.Ref<stdgo.unicode.RangeTable>
```


Khojki is the set of Unicode characters in script Khojki.// These variables have type \*RangeTable. 


```haxe
var khudawadi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Khudawadi is the set of Unicode characters in script Khudawadi.// These variables have type \*RangeTable. 


```haxe
var l:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var lao:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lao is the set of Unicode characters in script Lao.// These variables have type \*RangeTable. 


```haxe
var latin:stdgo.Ref<stdgo.unicode.RangeTable>
```


Latin is the set of Unicode characters in script Latin.// These variables have type \*RangeTable. 


```haxe
var lepcha:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lepcha is the set of Unicode characters in script Lepcha.// These variables have type \*RangeTable. 


```haxe
var letter:stdgo.Ref<stdgo.unicode.RangeTable>
```


Letter/L is the set of Unicode letters, category L.// These variables have type \*RangeTable. 


```haxe
var limbu:stdgo.Ref<stdgo.unicode.RangeTable>
```


Limbu is the set of Unicode characters in script Limbu.// These variables have type \*RangeTable. 


```haxe
var linear_A:stdgo.Ref<stdgo.unicode.RangeTable>
```


Linear\_A is the set of Unicode characters in script Linear\_A.// These variables have type \*RangeTable. 


```haxe
var linear_B:stdgo.Ref<stdgo.unicode.RangeTable>
```


Linear\_B is the set of Unicode characters in script Linear\_B.// These variables have type \*RangeTable. 


```haxe
var lisu:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lisu is the set of Unicode characters in script Lisu.// These variables have type \*RangeTable. 


```haxe
var ll:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ll is the set of Unicode characters in category Ll \(Letter, lowercase\).// These variables have type \*RangeTable. 


```haxe
var lm:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lm is the set of Unicode characters in category Lm \(Letter, modifier\).// These variables have type \*RangeTable. 


```haxe
var lo:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lo is the set of Unicode characters in category Lo \(Letter, other\).// These variables have type \*RangeTable. 


```haxe
var logical_Order_Exception:stdgo.Ref<stdgo.unicode.RangeTable>
```


Logical\_Order\_Exception is the set of Unicode characters with property Logical\_Order\_Exception.// These variables have type \*RangeTable. 


```haxe
var lower:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lower is the set of Unicode lower case letters.// These variables have type \*RangeTable. 


```haxe
var lt:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lt is the set of Unicode characters in category Lt \(Letter, titlecase\).// These variables have type \*RangeTable. 


```haxe
var lu:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lu is the set of Unicode characters in category Lu \(Letter, uppercase\).// These variables have type \*RangeTable. 


```haxe
var lycian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lycian is the set of Unicode characters in script Lycian.// These variables have type \*RangeTable. 


```haxe
var lydian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Lydian is the set of Unicode characters in script Lydian.// These variables have type \*RangeTable. 


```haxe
var m:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var mahajani:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mahajani is the set of Unicode characters in script Mahajani.// These variables have type \*RangeTable. 


```haxe
var makasar:stdgo.Ref<stdgo.unicode.RangeTable>
```


Makasar is the set of Unicode characters in script Makasar.// These variables have type \*RangeTable. 


```haxe
var malayalam:stdgo.Ref<stdgo.unicode.RangeTable>
```


Malayalam is the set of Unicode characters in script Malayalam.// These variables have type \*RangeTable. 


```haxe
var mandaic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mandaic is the set of Unicode characters in script Mandaic.// These variables have type \*RangeTable. 


```haxe
var manichaean:stdgo.Ref<stdgo.unicode.RangeTable>
```


Manichaean is the set of Unicode characters in script Manichaean.// These variables have type \*RangeTable. 


```haxe
var marchen:stdgo.Ref<stdgo.unicode.RangeTable>
```


Marchen is the set of Unicode characters in script Marchen.// These variables have type \*RangeTable. 


```haxe
var mark:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mark/M is the set of Unicode mark characters, category M.// These variables have type \*RangeTable. 


```haxe
var masaram_Gondi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Masaram\_Gondi is the set of Unicode characters in script Masaram\_Gondi.// These variables have type \*RangeTable. 


```haxe
var mc:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mc is the set of Unicode characters in category Mc \(Mark, spacing combining\).// These variables have type \*RangeTable. 


```haxe
var me:stdgo.Ref<stdgo.unicode.RangeTable>
```


Me is the set of Unicode characters in category Me \(Mark, enclosing\).// These variables have type \*RangeTable. 


```haxe
var medefaidrin:stdgo.Ref<stdgo.unicode.RangeTable>
```


Medefaidrin is the set of Unicode characters in script Medefaidrin.// These variables have type \*RangeTable. 


```haxe
var meetei_Mayek:stdgo.Ref<stdgo.unicode.RangeTable>
```


Meetei\_Mayek is the set of Unicode characters in script Meetei\_Mayek.// These variables have type \*RangeTable. 


```haxe
var mende_Kikakui:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mende\_Kikakui is the set of Unicode characters in script Mende\_Kikakui.// These variables have type \*RangeTable. 


```haxe
var meroitic_Cursive:stdgo.Ref<stdgo.unicode.RangeTable>
```


Meroitic\_Cursive is the set of Unicode characters in script Meroitic\_Cursive.// These variables have type \*RangeTable. 


```haxe
var meroitic_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```


Meroitic\_Hieroglyphs is the set of Unicode characters in script Meroitic\_Hieroglyphs.// These variables have type \*RangeTable. 


```haxe
var miao:stdgo.Ref<stdgo.unicode.RangeTable>
```


Miao is the set of Unicode characters in script Miao.// These variables have type \*RangeTable. 


```haxe
var mn:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mn is the set of Unicode characters in category Mn \(Mark, nonspacing\).// These variables have type \*RangeTable. 


```haxe
var modi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Modi is the set of Unicode characters in script Modi.// These variables have type \*RangeTable. 


```haxe
var mongolian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mongolian is the set of Unicode characters in script Mongolian.// These variables have type \*RangeTable. 


```haxe
var mro:stdgo.Ref<stdgo.unicode.RangeTable>
```


Mro is the set of Unicode characters in script Mro.// These variables have type \*RangeTable. 


```haxe
var multani:stdgo.Ref<stdgo.unicode.RangeTable>
```


Multani is the set of Unicode characters in script Multani.// These variables have type \*RangeTable. 


```haxe
var myanmar:stdgo.Ref<stdgo.unicode.RangeTable>
```


Myanmar is the set of Unicode characters in script Myanmar.// These variables have type \*RangeTable. 


```haxe
var n:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var nabataean:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nabataean is the set of Unicode characters in script Nabataean.// These variables have type \*RangeTable. 


```haxe
var nandinagari:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nandinagari is the set of Unicode characters in script Nandinagari.// These variables have type \*RangeTable. 


```haxe
var nd:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nd is the set of Unicode characters in category Nd \(Number, decimal digit\).// These variables have type \*RangeTable. 


```haxe
var new_Tai_Lue:stdgo.Ref<stdgo.unicode.RangeTable>
```


New\_Tai\_Lue is the set of Unicode characters in script New\_Tai\_Lue.// These variables have type \*RangeTable. 


```haxe
var newa:stdgo.Ref<stdgo.unicode.RangeTable>
```


Newa is the set of Unicode characters in script Newa.// These variables have type \*RangeTable. 


```haxe
var nko:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nko is the set of Unicode characters in script Nko.// These variables have type \*RangeTable. 


```haxe
var nl:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nl is the set of Unicode characters in category Nl \(Number, letter\).// These variables have type \*RangeTable. 


```haxe
var no:stdgo.Ref<stdgo.unicode.RangeTable>
```


No is the set of Unicode characters in category No \(Number, other\).// These variables have type \*RangeTable. 


```haxe
var noncharacter_Code_Point:stdgo.Ref<stdgo.unicode.RangeTable>
```


Noncharacter\_Code\_Point is the set of Unicode characters with property Noncharacter\_Code\_Point.// These variables have type \*RangeTable. 


```haxe
var number:stdgo.Ref<stdgo.unicode.RangeTable>
```


Number/N is the set of Unicode number characters, category N.// These variables have type \*RangeTable. 


```haxe
var nushu:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nushu is the set of Unicode characters in script Nushu.// These variables have type \*RangeTable. 


```haxe
var nyiakeng_Puachue_Hmong:stdgo.Ref<stdgo.unicode.RangeTable>
```


Nyiakeng\_Puachue\_Hmong is the set of Unicode characters in script Nyiakeng\_Puachue\_Hmong.// These variables have type \*RangeTable. 


```haxe
var ogham:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ogham is the set of Unicode characters in script Ogham.// These variables have type \*RangeTable. 


```haxe
var ol_Chiki:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ol\_Chiki is the set of Unicode characters in script Ol\_Chiki.// These variables have type \*RangeTable. 


```haxe
var old_Hungarian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_Hungarian is the set of Unicode characters in script Old\_Hungarian.// These variables have type \*RangeTable. 


```haxe
var old_Italic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_Italic is the set of Unicode characters in script Old\_Italic.// These variables have type \*RangeTable. 


```haxe
var old_North_Arabian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_North\_Arabian is the set of Unicode characters in script Old\_North\_Arabian.// These variables have type \*RangeTable. 


```haxe
var old_Permic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_Permic is the set of Unicode characters in script Old\_Permic.// These variables have type \*RangeTable. 


```haxe
var old_Persian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_Persian is the set of Unicode characters in script Old\_Persian.// These variables have type \*RangeTable. 


```haxe
var old_Sogdian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_Sogdian is the set of Unicode characters in script Old\_Sogdian.// These variables have type \*RangeTable. 


```haxe
var old_South_Arabian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_South\_Arabian is the set of Unicode characters in script Old\_South\_Arabian.// These variables have type \*RangeTable. 


```haxe
var old_Turkic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Old\_Turkic is the set of Unicode characters in script Old\_Turkic.// These variables have type \*RangeTable. 


```haxe
var oriya:stdgo.Ref<stdgo.unicode.RangeTable>
```


Oriya is the set of Unicode characters in script Oriya.// These variables have type \*RangeTable. 


```haxe
var osage:stdgo.Ref<stdgo.unicode.RangeTable>
```


Osage is the set of Unicode characters in script Osage.// These variables have type \*RangeTable. 


```haxe
var osmanya:stdgo.Ref<stdgo.unicode.RangeTable>
```


Osmanya is the set of Unicode characters in script Osmanya.// These variables have type \*RangeTable. 


```haxe
var other:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other/C is the set of Unicode control and special characters, category C.// These variables have type \*RangeTable. 


```haxe
var other_Alphabetic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_Alphabetic is the set of Unicode characters with property Other\_Alphabetic.// These variables have type \*RangeTable. 


```haxe
var other_Default_Ignorable_Code_Point:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_Default\_Ignorable\_Code\_Point is the set of Unicode characters with property Other\_Default\_Ignorable\_Code\_Point.// These variables have type \*RangeTable. 


```haxe
var other_Grapheme_Extend:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_Grapheme\_Extend is the set of Unicode characters with property Other\_Grapheme\_Extend.// These variables have type \*RangeTable. 


```haxe
var other_ID_Continue:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_ID\_Continue is the set of Unicode characters with property Other\_ID\_Continue.// These variables have type \*RangeTable. 


```haxe
var other_ID_Start:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_ID\_Start is the set of Unicode characters with property Other\_ID\_Start.// These variables have type \*RangeTable. 


```haxe
var other_Lowercase:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_Lowercase is the set of Unicode characters with property Other\_Lowercase.// These variables have type \*RangeTable. 


```haxe
var other_Math:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_Math is the set of Unicode characters with property Other\_Math.// These variables have type \*RangeTable. 


```haxe
var other_Uppercase:stdgo.Ref<stdgo.unicode.RangeTable>
```


Other\_Uppercase is the set of Unicode characters with property Other\_Uppercase.// These variables have type \*RangeTable. 


```haxe
var p:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var pahawh_Hmong:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pahawh\_Hmong is the set of Unicode characters in script Pahawh\_Hmong.// These variables have type \*RangeTable. 


```haxe
var palmyrene:stdgo.Ref<stdgo.unicode.RangeTable>
```


Palmyrene is the set of Unicode characters in script Palmyrene.// These variables have type \*RangeTable. 


```haxe
var pattern_Syntax:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pattern\_Syntax is the set of Unicode characters with property Pattern\_Syntax.// These variables have type \*RangeTable. 


```haxe
var pattern_White_Space:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pattern\_White\_Space is the set of Unicode characters with property Pattern\_White\_Space.// These variables have type \*RangeTable. 


```haxe
var pau_Cin_Hau:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pau\_Cin\_Hau is the set of Unicode characters in script Pau\_Cin\_Hau.// These variables have type \*RangeTable. 


```haxe
var pc:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pc is the set of Unicode characters in category Pc \(Punctuation, connector\).// These variables have type \*RangeTable. 


```haxe
var pd:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pd is the set of Unicode characters in category Pd \(Punctuation, dash\).// These variables have type \*RangeTable. 


```haxe
var pe:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pe is the set of Unicode characters in category Pe \(Punctuation, close\).// These variables have type \*RangeTable. 


```haxe
var pf:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pf is the set of Unicode characters in category Pf \(Punctuation, final quote\).// These variables have type \*RangeTable. 


```haxe
var phags_Pa:stdgo.Ref<stdgo.unicode.RangeTable>
```


Phags\_Pa is the set of Unicode characters in script Phags\_Pa.// These variables have type \*RangeTable. 


```haxe
var phoenician:stdgo.Ref<stdgo.unicode.RangeTable>
```


Phoenician is the set of Unicode characters in script Phoenician.// These variables have type \*RangeTable. 


```haxe
var pi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Pi is the set of Unicode characters in category Pi \(Punctuation, initial quote\).// These variables have type \*RangeTable. 


```haxe
var po:stdgo.Ref<stdgo.unicode.RangeTable>
```


Po is the set of Unicode characters in category Po \(Punctuation, other\).// These variables have type \*RangeTable. 


```haxe
var prepended_Concatenation_Mark:stdgo.Ref<stdgo.unicode.RangeTable>
```


Prepended\_Concatenation\_Mark is the set of Unicode characters with property Prepended\_Concatenation\_Mark.// These variables have type \*RangeTable. 


```haxe
var printRanges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>
```


PrintRanges defines the set of printable characters according to Go. ASCII space, U\+0020, is handled separately. 


```haxe
var properties:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```


Properties is the set of Unicode property tables. 


```haxe
var ps:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ps is the set of Unicode characters in category Ps \(Punctuation, open\).// These variables have type \*RangeTable. 


```haxe
var psalter_Pahlavi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Psalter\_Pahlavi is the set of Unicode characters in script Psalter\_Pahlavi.// These variables have type \*RangeTable. 


```haxe
var punct:stdgo.Ref<stdgo.unicode.RangeTable>
```


Punct/P is the set of Unicode punctuation characters, category P.// These variables have type \*RangeTable. 


```haxe
var quotation_Mark:stdgo.Ref<stdgo.unicode.RangeTable>
```


Quotation\_Mark is the set of Unicode characters with property Quotation\_Mark.// These variables have type \*RangeTable. 


```haxe
var radical:stdgo.Ref<stdgo.unicode.RangeTable>
```


Radical is the set of Unicode characters with property Radical.// These variables have type \*RangeTable. 


```haxe
var regional_Indicator:stdgo.Ref<stdgo.unicode.RangeTable>
```


Regional\_Indicator is the set of Unicode characters with property Regional\_Indicator.// These variables have type \*RangeTable. 


```haxe
var rejang:stdgo.Ref<stdgo.unicode.RangeTable>
```


Rejang is the set of Unicode characters in script Rejang.// These variables have type \*RangeTable. 


```haxe
var runic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Runic is the set of Unicode characters in script Runic.// These variables have type \*RangeTable. 


```haxe
var s:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var samaritan:stdgo.Ref<stdgo.unicode.RangeTable>
```


Samaritan is the set of Unicode characters in script Samaritan.// These variables have type \*RangeTable. 


```haxe
var saurashtra:stdgo.Ref<stdgo.unicode.RangeTable>
```


Saurashtra is the set of Unicode characters in script Saurashtra.// These variables have type \*RangeTable. 


```haxe
var sc:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sc is the set of Unicode characters in category Sc \(Symbol, currency\).// These variables have type \*RangeTable. 


```haxe
var scripts:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```


Scripts is the set of Unicode script tables. 


```haxe
var sentence_Terminal:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sentence\_Terminal is the set of Unicode characters with property Sentence\_Terminal.// These variables have type \*RangeTable. 


```haxe
var sharada:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sharada is the set of Unicode characters in script Sharada.// These variables have type \*RangeTable. 


```haxe
var shavian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Shavian is the set of Unicode characters in script Shavian.// These variables have type \*RangeTable. 


```haxe
var siddham:stdgo.Ref<stdgo.unicode.RangeTable>
```


Siddham is the set of Unicode characters in script Siddham.// These variables have type \*RangeTable. 


```haxe
var signWriting:stdgo.Ref<stdgo.unicode.RangeTable>
```


SignWriting is the set of Unicode characters in script SignWriting.// These variables have type \*RangeTable. 


```haxe
var sinhala:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sinhala is the set of Unicode characters in script Sinhala.// These variables have type \*RangeTable. 


```haxe
var sk:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sk is the set of Unicode characters in category Sk \(Symbol, modifier\).// These variables have type \*RangeTable. 


```haxe
var sm:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sm is the set of Unicode characters in category Sm \(Symbol, math\).// These variables have type \*RangeTable. 


```haxe
var so:stdgo.Ref<stdgo.unicode.RangeTable>
```


So is the set of Unicode characters in category So \(Symbol, other\).// These variables have type \*RangeTable. 


```haxe
var soft_Dotted:stdgo.Ref<stdgo.unicode.RangeTable>
```


Soft\_Dotted is the set of Unicode characters with property Soft\_Dotted.// These variables have type \*RangeTable. 


```haxe
var sogdian:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sogdian is the set of Unicode characters in script Sogdian.// These variables have type \*RangeTable. 


```haxe
var sora_Sompeng:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sora\_Sompeng is the set of Unicode characters in script Sora\_Sompeng.// These variables have type \*RangeTable. 


```haxe
var soyombo:stdgo.Ref<stdgo.unicode.RangeTable>
```


Soyombo is the set of Unicode characters in script Soyombo.// These variables have type \*RangeTable. 


```haxe
var space:stdgo.Ref<stdgo.unicode.RangeTable>
```


Space/Z is the set of Unicode space characters, category Z.// These variables have type \*RangeTable. 


```haxe
var sterm:stdgo.Ref<stdgo.unicode.RangeTable>
```


STerm is an alias for Sentence\_Terminal.// These variables have type \*RangeTable. 


```haxe
var sundanese:stdgo.Ref<stdgo.unicode.RangeTable>
```


Sundanese is the set of Unicode characters in script Sundanese.// These variables have type \*RangeTable. 


```haxe
var syloti_Nagri:stdgo.Ref<stdgo.unicode.RangeTable>
```


Syloti\_Nagri is the set of Unicode characters in script Syloti\_Nagri.// These variables have type \*RangeTable. 


```haxe
var symbol:stdgo.Ref<stdgo.unicode.RangeTable>
```


Symbol/S is the set of Unicode symbol characters, category S.// These variables have type \*RangeTable. 


```haxe
var syriac:stdgo.Ref<stdgo.unicode.RangeTable>
```


Syriac is the set of Unicode characters in script Syriac.// These variables have type \*RangeTable. 


```haxe
var tagalog:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tagalog is the set of Unicode characters in script Tagalog.// These variables have type \*RangeTable. 


```haxe
var tagbanwa:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tagbanwa is the set of Unicode characters in script Tagbanwa.// These variables have type \*RangeTable. 


```haxe
var tai_Le:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tai\_Le is the set of Unicode characters in script Tai\_Le.// These variables have type \*RangeTable. 


```haxe
var tai_Tham:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tai\_Tham is the set of Unicode characters in script Tai\_Tham.// These variables have type \*RangeTable. 


```haxe
var tai_Viet:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tai\_Viet is the set of Unicode characters in script Tai\_Viet.// These variables have type \*RangeTable. 


```haxe
var takri:stdgo.Ref<stdgo.unicode.RangeTable>
```


Takri is the set of Unicode characters in script Takri.// These variables have type \*RangeTable. 


```haxe
var tamil:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tamil is the set of Unicode characters in script Tamil.// These variables have type \*RangeTable. 


```haxe
var tangut:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tangut is the set of Unicode characters in script Tangut.// These variables have type \*RangeTable. 


```haxe
var telugu:stdgo.Ref<stdgo.unicode.RangeTable>
```


Telugu is the set of Unicode characters in script Telugu.// These variables have type \*RangeTable. 


```haxe
var terminal_Punctuation:stdgo.Ref<stdgo.unicode.RangeTable>
```


Terminal\_Punctuation is the set of Unicode characters with property Terminal\_Punctuation.// These variables have type \*RangeTable. 


```haxe
var thaana:stdgo.Ref<stdgo.unicode.RangeTable>
```


Thaana is the set of Unicode characters in script Thaana.// These variables have type \*RangeTable. 


```haxe
var thai:stdgo.Ref<stdgo.unicode.RangeTable>
```


Thai is the set of Unicode characters in script Thai.// These variables have type \*RangeTable. 


```haxe
var tibetan:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tibetan is the set of Unicode characters in script Tibetan.// These variables have type \*RangeTable. 


```haxe
var tifinagh:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tifinagh is the set of Unicode characters in script Tifinagh.// These variables have type \*RangeTable. 


```haxe
var tirhuta:stdgo.Ref<stdgo.unicode.RangeTable>
```


Tirhuta is the set of Unicode characters in script Tirhuta.// These variables have type \*RangeTable. 


```haxe
var title:stdgo.Ref<stdgo.unicode.RangeTable>
```


Title is the set of Unicode title case letters.// These variables have type \*RangeTable. 


```haxe
var turkishCase:stdgo.unicode.SpecialCase
```


```haxe
var ugaritic:stdgo.Ref<stdgo.unicode.RangeTable>
```


Ugaritic is the set of Unicode characters in script Ugaritic.// These variables have type \*RangeTable. 


```haxe
var unified_Ideograph:stdgo.Ref<stdgo.unicode.RangeTable>
```


Unified\_Ideograph is the set of Unicode characters with property Unified\_Ideograph.// These variables have type \*RangeTable. 


```haxe
var upper:stdgo.Ref<stdgo.unicode.RangeTable>
```


Upper is the set of Unicode upper case letters.// These variables have type \*RangeTable. 


```haxe
var vai:stdgo.Ref<stdgo.unicode.RangeTable>
```


Vai is the set of Unicode characters in script Vai.// These variables have type \*RangeTable. 


```haxe
var variation_Selector:stdgo.Ref<stdgo.unicode.RangeTable>
```


Variation\_Selector is the set of Unicode characters with property Variation\_Selector.// These variables have type \*RangeTable. 


```haxe
var wancho:stdgo.Ref<stdgo.unicode.RangeTable>
```


Wancho is the set of Unicode characters in script Wancho.// These variables have type \*RangeTable. 


```haxe
var warang_Citi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Warang\_Citi is the set of Unicode characters in script Warang\_Citi.// These variables have type \*RangeTable. 


```haxe
var white_Space:stdgo.Ref<stdgo.unicode.RangeTable>
```


White\_Space is the set of Unicode characters with property White\_Space.// These variables have type \*RangeTable. 


```haxe
var yezidi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Yezidi is the set of Unicode characters in script Yezidi.// These variables have type \*RangeTable. 


```haxe
var yi:stdgo.Ref<stdgo.unicode.RangeTable>
```


Yi is the set of Unicode characters in script Yi.// These variables have type \*RangeTable. 


```haxe
var z:stdgo.Ref<stdgo.unicode.RangeTable>
```


These variables have type \*RangeTable. 


```haxe
var zanabazar_Square:stdgo.Ref<stdgo.unicode.RangeTable>
```


Zanabazar\_Square is the set of Unicode characters in script Zanabazar\_Square.// These variables have type \*RangeTable. 


```haxe
var zl:stdgo.Ref<stdgo.unicode.RangeTable>
```


Zl is the set of Unicode characters in category Zl \(Separator, line\).// These variables have type \*RangeTable. 


```haxe
var zp:stdgo.Ref<stdgo.unicode.RangeTable>
```


Zp is the set of Unicode characters in category Zp \(Separator, paragraph\).// These variables have type \*RangeTable. 


```haxe
var zs:stdgo.Ref<stdgo.unicode.RangeTable>
```


Zs is the set of Unicode characters in category Zs \(Separator, space\).// These variables have type \*RangeTable. 


# Functions


```haxe
import stdgo.unicode.Unicode
```


## function \_is16


```haxe
function _is16(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```


is16 reports whether r is in the sorted slice of 16\-bit ranges. 


[\(view code\)](<./Unicode.hx#L8811>)


## function \_is32


```haxe
function _is32(_ranges:stdgo.Slice<stdgo.unicode.Range32>, _r:stdgo.GoUInt32):Bool
```


is32 reports whether r is in the sorted slice of 32\-bit ranges. 


[\(view code\)](<./Unicode.hx#L8844>)


## function \_isExcludingLatin


```haxe
function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool
```


 


[\(view code\)](<./Unicode.hx#L8889>)


## function \_to


```haxe
function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo.unicode.CaseRange>):{_1:Bool, _0:stdgo.GoRune}
```


to maps the rune using the specified case mapping. It additionally reports whether caseRange contained a mapping for r. 


[\(view code\)](<./Unicode.hx#L8938>)


## function in\_


```haxe
function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Bool
```


In reports whether the rune is a member of one of the ranges. 


[\(view code\)](<./Unicode.hx#L8717>)


## function isControl


```haxe
function isControl(_r:stdgo.GoRune):Bool
```


IsControl reports whether the rune is a control character. The C \(Other\) Unicode category includes more code points such as surrogates; use Is\(C, r\) to test for them. 


[\(view code\)](<./Unicode.hx#L8732>)


## function isDigit


```haxe
function isDigit(_r:stdgo.GoRune):Bool
```


IsDigit reports whether the rune is a decimal digit. 


### exampleIsDigit


<details><summary></summary>
<p>


```haxe
function exampleIsDigit():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isDigit(("৩".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isDigit(("A".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8668>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Bool
```


IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such characters include letters, marks, numbers, punctuation, symbols, and spaces, from categories L, M, N, P, S, Zs. 


[\(view code\)](<./Unicode.hx#L8680>)


## function isLetter


```haxe
function isLetter(_r:stdgo.GoRune):Bool
```


IsLetter reports whether the rune is a letter \(category L\). 


### exampleIsLetter


<details><summary></summary>
<p>


```haxe
function exampleIsLetter():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isLetter(("A".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isLetter(("7".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8742>)


## function isLower


```haxe
function isLower(_r:stdgo.GoRune):Bool
```


IsLower reports whether the rune is a lower case letter. 


### exampleIsLower


<details><summary></summary>
<p>


```haxe
function exampleIsLower():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isLower(("a".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isLower(("A".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8917>)


## function isMark


```haxe
function isMark(_r:stdgo.GoRune):Bool
```


IsMark reports whether the rune is a mark character \(category M\). 


[\(view code\)](<./Unicode.hx#L8752>)


## function isNumber


```haxe
function isNumber(_r:stdgo.GoRune):Bool
```


IsNumber reports whether the rune is a number \(category N\). 


### exampleIsNumber


<details><summary></summary>
<p>


```haxe
function exampleIsNumber():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isNumber(("Ⅷ".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isNumber(("A".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8759>)


## function isOneOf


```haxe
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>, _r:stdgo.GoRune):Bool
```


IsOneOf reports whether the rune is a member of one of the ranges. The function "In" provides a nicer signature and should be used in preference to IsOneOf. 


[\(view code\)](<./Unicode.hx#L8705>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Bool
```


IsPrint reports whether the rune is defined as printable by Go. Such characters include letters, marks, numbers, punctuation, symbols, and the ASCII space character, from categories L, M, N, P, S and the ASCII space character. This categorization is the same as IsGraphic except that the only spacing character is ASCII space, U\+0020. 


[\(view code\)](<./Unicode.hx#L8694>)


## function isPunct


```haxe
function isPunct(_r:stdgo.GoRune):Bool
```


IsPunct reports whether the rune is a Unicode punctuation character \(category P\). 


[\(view code\)](<./Unicode.hx#L8770>)


## function isSpace


```haxe
function isSpace(_r:stdgo.GoRune):Bool
```


IsSpace reports whether the rune is a space character as defined by Unicode's White Space property; in the Latin\-1 space this is  '\\t', '\\n', '\\v', '\\f', '\\r', ' ', U\+0085 \(NEL\), U\+00A0 \(NBSP\).  Other definitions of spacing characters are set by category Z and property Pattern\_White\_Space. 


### exampleIsSpace


<details><summary></summary>
<p>


```haxe
function exampleIsSpace():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isSpace((" ".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isSpace(("\n".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isSpace(("\t".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isSpace(("a".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8787>)


## function isSymbol


```haxe
function isSymbol(_r:stdgo.GoRune):Bool
```


IsSymbol reports whether the rune is a symbolic character. 


[\(view code\)](<./Unicode.hx#L8801>)


## function isTitle


```haxe
function isTitle(_r:stdgo.GoRune):Bool
```


IsTitle reports whether the rune is a title case letter. 


### exampleIsTitle


<details><summary></summary>
<p>


```haxe
function exampleIsTitle():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isTitle(("ǅ".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isTitle(("a".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8927>)


## function isUpper


```haxe
function isUpper(_r:stdgo.GoRune):Bool
```


IsUpper reports whether the rune is an upper case letter. 


### exampleIsUpper


<details><summary></summary>
<p>


```haxe
function exampleIsUpper():Void {
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isUpper(("A".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%t\n"), Go.toInterface(stdgo.unicode.Unicode.isUpper(("a".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8907>)


## function is\_


```haxe
function is_(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool
```


Is reports whether the rune is in the specified table of ranges. 


[\(view code\)](<./Unicode.hx#L8877>)


## function simpleFold


```haxe
function simpleFold(_r:stdgo.GoRune):stdgo.GoRune
```


SimpleFold iterates over Unicode code points equivalent under the Unicode\-defined simple case folding. Among the code points equivalent to rune \(including rune itself\), SimpleFold returns the smallest rune \> r if one exists, or else the smallest rune \>= 0. If r is not a valid Unicode code point, SimpleFold\(r\) returns r.  For example:  SimpleFold\('A'\) = 'a' SimpleFold\('a'\) = 'A'  SimpleFold\('K'\) = 'k' SimpleFold\('k'\) = '\\u212A' \(Kelvin symbol, K\) SimpleFold\('\\u212A'\) = 'K'  SimpleFold\('1'\) = '1'  SimpleFold\(\-2\) = \-2 


### exampleSimpleFold


<details><summary></summary>
<p>


```haxe
function exampleSimpleFold():Void {
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.simpleFold(("A".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.simpleFold(("a".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.simpleFold(("K".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.simpleFold(("k".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.simpleFold(("\u212A".code : GoRune))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.simpleFold(("1".code : GoRune))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9034>)


## function to


```haxe
function to(__case:stdgo.GoInt, _r:stdgo.GoRune):stdgo.GoRune
```


To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase. 


### exampleTo


<details><summary></summary>
<p>


```haxe
function exampleTo():Void {
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.to((0 : GoInt), (103 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.to((1 : GoInt), (103 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.to((2 : GoInt), (103 : GoInt32))));
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.to((0 : GoInt), (71 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.to((1 : GoInt), (71 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.to((2 : GoInt), (71 : GoInt32))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8967>)


## function toLower


```haxe
function toLower(_r:stdgo.GoRune):stdgo.GoRune
```


ToLower maps the rune to lower case. 


### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.toLower((71 : GoInt32))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8991>)


## function toTitle


```haxe
function toTitle(_r:stdgo.GoRune):stdgo.GoRune
```


ToTitle maps the rune to title case. 


### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.toTitle((103 : GoInt32))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9004>)


## function toUpper


```haxe
function toUpper(_r:stdgo.GoRune):stdgo.GoRune
```


ToUpper maps the rune to upper case. 


### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(stdgo.unicode.Unicode.toUpper((103 : GoInt32))));
}
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L8978>)


# Classes


```haxe
import stdgo.unicode.*
```


## class CaseRange


CaseRange represents a range of Unicode code points for simple \(one code point to one code point\) case conversion. The range runs from Lo to Hi inclusive, with a fixed stride of 1. Deltas are the number to add to the code point to reach the code point for a different case for that character. They may be negative. If zero, it means the character is in the corresponding case. There is a special case representing sequences of alternating corresponding Upper and Lower pairs. It appears with a fixed Delta of  \{UpperLower, UpperLower, UpperLower\}  The constant UpperLower has an otherwise impossible delta value. 


```haxe
var delta:stdgo.unicode._Unicode.T_d
```


```haxe
var hi:stdgo.GoUInt32
```


```haxe
var lo:stdgo.GoUInt32
```


### CaseRange function new


```haxe
function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:Null<stdgo.unicode._Unicode.T_d>):Void
```


 


[\(view code\)](<./Unicode.hx#L8615>)


## class Range16


Range16 represents of a range of 16\-bit Unicode code points. The range runs from Lo to Hi inclusive and has the specified stride. 


```haxe
var hi:stdgo.GoUInt16
```


```haxe
var lo:stdgo.GoUInt16
```


```haxe
var stride:stdgo.GoUInt16
```


### Range16 function new


```haxe
function new(?lo:stdgo.GoUInt16, ?hi:stdgo.GoUInt16, ?stride:stdgo.GoUInt16):Void
```


 


[\(view code\)](<./Unicode.hx#L8552>)


## class Range32


Range32 represents of a range of Unicode code points and is used when one or more of the values will not fit in 16 bits. The range runs from Lo to Hi inclusive and has the specified stride. Lo and Hi must always be \>= 1\<\<16. 


```haxe
var hi:stdgo.GoUInt32
```


```haxe
var lo:stdgo.GoUInt32
```


```haxe
var stride:stdgo.GoUInt32
```


### Range32 function new


```haxe
function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?stride:stdgo.GoUInt32):Void
```


 


[\(view code\)](<./Unicode.hx#L8579>)


## class RangeTable


RangeTable defines a set of Unicode code points by listing the ranges of code points within the set. The ranges are listed in two slices to save space: a slice of 16\-bit ranges and a slice of 32\-bit ranges. The two slices must be in sorted order and non\-overlapping. Also, R32 should contain only values \>= 0x10000 \(1\<\<16\). 


```haxe
var latinOffset:stdgo.GoInt
```


number of entries in R16 with Hi \<= MaxLatin1 


```haxe
var r16:stdgo.Slice<stdgo.unicode.Range16>
```


```haxe
var r32:stdgo.Slice<stdgo.unicode.Range32>
```


### RangeTable function new


```haxe
function new(?r16:stdgo.Slice<stdgo.unicode.Range16>, ?r32:stdgo.Slice<stdgo.unicode.Range32>, ?latinOffset:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Unicode.hx#L8526>)


## class SpecialCase\_static\_extension


 


### SpecialCase\_static\_extension function toLower


```haxe
function toLower( _r:stdgo.GoRune):stdgo.GoRune
```


ToLower maps the rune to lower case giving priority to the special mapping. 


[\(view code\)](<./Unicode.hx#L9103>)


### SpecialCase\_static\_extension function toTitle


```haxe
function toTitle( _r:stdgo.GoRune):stdgo.GoRune
```


ToTitle maps the rune to title case giving priority to the special mapping. 


[\(view code\)](<./Unicode.hx#L9117>)


### SpecialCase\_static\_extension function toUpper


```haxe
function toUpper( _r:stdgo.GoRune):stdgo.GoRune
```


ToUpper maps the rune to upper case giving priority to the special mapping. 


[\(view code\)](<./Unicode.hx#L9131>)


# Typedefs


```haxe
import stdgo.unicode.*
```


## typedef SpecialCase


```haxe
typedef SpecialCase = var x:stdgo.unicode.CaseRange
```


SpecialCase represents language\-specific case mappings such as Turkish. Methods of SpecialCase customize \(by overriding\) the standard mappings. 


### exampleSpecialCase


<details><summary></summary>
<p>


```haxe
function exampleSpecialCase():Void {
	var _t:SpecialCase = stdgo.unicode.Unicode.turkishCase;
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_t.toLower((105 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_t.toTitle((105 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_t.toUpper((105 : GoInt32))));
	{};
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_t.toLower((304 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_t.toTitle((304 : GoInt32))));
	stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_t.toUpper((304 : GoInt32))));
}
```


</p>
</details>


### SpecialCase function toLower


```haxe
function toLower( _r:stdgo.GoRune):stdgo.GoRune
```


ToLower maps the rune to lower case giving priority to the special mapping. 


[\(view code\)](<./Unicode.hx#L9103>)


### SpecialCase function toTitle


```haxe
function toTitle( _r:stdgo.GoRune):stdgo.GoRune
```


ToTitle maps the rune to title case giving priority to the special mapping. 


[\(view code\)](<./Unicode.hx#L9117>)


### SpecialCase function toUpper


```haxe
function toUpper( _r:stdgo.GoRune):stdgo.GoRune
```


ToUpper maps the rune to upper case giving priority to the special mapping. 


[\(view code\)](<./Unicode.hx#L9131>)


