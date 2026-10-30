.section .rodata.aw22xxx_abi_surface,"a",@progbits
.p2align 3
.global aw22xxx_abi_surface
.type aw22xxx_abi_surface, %object
aw22xxx_abi_surface:
// Preserve the stock profiling relocation without introducing an executable call.
.xword mem_alloc_profiling_key - .
.size aw22xxx_abi_surface, . - aw22xxx_abi_surface

.section .note.GNU-stack,"",@progbits
