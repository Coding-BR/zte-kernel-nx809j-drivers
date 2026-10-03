.section .rodata.zte_ir_abi_surface,"a",@progbits
.p2align 3
.global zte_ir_abi_surface
.type zte_ir_abi_surface, %object
zte_ir_abi_surface:
// These addresses preserve stock undefined-symbol/relocation compatibility.
// They are data-only anchors: no symbol is called and no driver path branches here.
.xword mem_alloc_profiling_key - .
.xword noop_llseek
.word alt_cb_patch_nops - .
.size zte_ir_abi_surface, . - zte_ir_abi_surface

.section .note.GNU-stack,"",@progbits
