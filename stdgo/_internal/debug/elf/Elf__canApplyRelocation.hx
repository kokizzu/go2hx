package stdgo._internal.debug.elf;
function _canApplyRelocation(_sym:stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>):Bool {
        return (((@:checkr _sym ?? throw "null pointer dereference").section != (0 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex)) && ((@:checkr _sym ?? throw "null pointer dereference").section < (65280 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex) : Bool) : Bool);
    }
