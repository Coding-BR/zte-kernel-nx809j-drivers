.section .text,"ax",@progbits
.align 2
.global syna_mmap
.type syna_mmap, %function
    .word 0x7de14acc
syna_mmap:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xa9402428
    .inst 0xcb080123
    .inst 0xf140c87f
    .inst 0x54000388
    .inst 0xf9401009
    .inst 0xf940282a
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, memstart_addr
    .inst 0xf940016b
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, memstart_addr
    .inst 0xf9400c24
    .inst 0xaa0103e0
    .inst 0xf9423129
    .inst 0xd36cad4a
    .inst 0xaa0803e1
    .inst 0x934cfd6b
    .inst 0x8b092149
    .inst 0xd2c0100a
    .inst 0xd37ae56b
    .inst 0x8b892149
    .inst 0xb25f7bea
    .inst 0xf2b8000a
    .inst 0xcb0a016b
    .inst 0x8b491969
    .inst 0x8b0a0129
    .inst 0x9346fd22
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remap_pfn_range
    .inst 0x12800148
    .inst 0x7100001f
    .inst 0x1a8803e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a0303e2
    .inst 0x52840003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x86ad
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x86ad
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x86d7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x86d7
    .inst 0x72a00063
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a0
    .inst 0x17fffff4
.size syna_mmap, .-syna_mmap

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "syna_mmap_exact.inc"
