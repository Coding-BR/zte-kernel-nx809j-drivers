.section .text,"ax",@progbits
.align 2
.global tp_BBAT_test_write
.type tp_BBAT_test_write, %function
.word 0xc3d43b4d
tp_BBAT_test_write:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8ae8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8ae8
    .inst 0xaa0203f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tp_BBAT_test_write, .-tp_BBAT_test_write

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tp_bbat_write_rodata:
    .include "tp_BBAT_test_write_rodata.inc"
