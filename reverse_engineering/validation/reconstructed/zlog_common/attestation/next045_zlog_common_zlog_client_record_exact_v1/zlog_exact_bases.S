.section .rodata.str1.1,"a",@progbits
.align 1
.global zlog_exact_rodata_str_base
zlog_exact_rodata_str_base:
.incbin "stock_rodata_str.bin"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.global zlog_exact_codetag_base
zlog_exact_codetag_base:
.incbin "stock_codetag.bin"
.reloc zlog_exact_codetag_base+0x8, R_AARCH64_ABS64, zlog_exact_rodata_str_base+0x55c
.reloc zlog_exact_codetag_base+0x10, R_AARCH64_ABS64, zlog_exact_rodata_str_base+0x6dd
.reloc zlog_exact_codetag_base+0x18, R_AARCH64_ABS64, zlog_exact_rodata_str_base+0x288
.reloc zlog_exact_codetag_base+0x20, R_AARCH64_ABS64, zlog_exact_percpu_base
.reloc zlog_exact_codetag_base+0x30, R_AARCH64_ABS64, zlog_exact_rodata_str_base+0x55c
.reloc zlog_exact_codetag_base+0x38, R_AARCH64_ABS64, zlog_exact_rodata_str_base+0x4a3
.reloc zlog_exact_codetag_base+0x40, R_AARCH64_ABS64, zlog_exact_rodata_str_base+0x288
.reloc zlog_exact_codetag_base+0x48, R_AARCH64_ABS64, zlog_exact_percpu_base+0x10

.section .data..percpu,"aw",@progbits
.align 3
.global zlog_exact_percpu_base
zlog_exact_percpu_base:
.incbin "stock_percpu.bin"

.section __jump_table,"aw",@progbits
.align 3
zlog_exact_jump_table_base:
.incbin "stock_jump_table.bin"
.reloc zlog_exact_jump_table_base + 0x0, R_AARCH64_PREL32, .text + 0x380
.reloc zlog_exact_jump_table_base + 0x4, R_AARCH64_PREL32, .text + 0x3c0
.reloc zlog_exact_jump_table_base + 0x8, R_AARCH64_PREL64, mem_alloc_profiling_key
.reloc zlog_exact_jump_table_base + 0x10, R_AARCH64_PREL32, .text + 0x73c
.reloc zlog_exact_jump_table_base + 0x14, R_AARCH64_PREL32, .text + 0x988
.reloc zlog_exact_jump_table_base + 0x18, R_AARCH64_PREL64, mem_alloc_profiling_key

.section .bss,"aw",@nobits
.align 3
.global zlog_exact_bss_base
.global g_zlog_server
zlog_exact_bss_base:
g_zlog_server:
.zero 0x24c8

.section .note.GNU-stack,"",@progbits
