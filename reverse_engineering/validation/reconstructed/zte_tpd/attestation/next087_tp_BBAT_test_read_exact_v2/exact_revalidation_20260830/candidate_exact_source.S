.section .text,"ax",@progbits
.align 2
.global tp_BBAT_test_read
.type tp_BBAT_test_read, %function
.word 0xf4e9d97c
tp_BBAT_test_read:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa1f03e0
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9400068
    .inst 0x790023ff
    .inst 0xf90007ff
    .inst 0xb5000428
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0303f3
    .inst 0xaa0203f4
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa0103f5
    .inst 0xf947f408
    .inst 0xb4000168
    .inst 0xb85fc110
    .inst 0x7281af31
    .inst 0x72ae7f91
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x350003a0
    .inst 0x2a1f03e3
    .inst 0x14000005
    .inst 0x39405008
    .inst 0x7100011f
    .inst 0x1a9f17e8
    .inst 0x531f7903
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2abf
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2abf
    .inst 0x910023e0
    .inst 0x52800141
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c04
    .inst 0x910023e3
    .inst 0xaa1403e1
    .inst 0xaa1503e0
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540001c1
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb9f5
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb9f5
    .inst 0x2a0003f6
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1603e3
    .inst 0x17ffffe4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size tp_BBAT_test_read, .-tp_BBAT_test_read

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tp_bbat_rodata:
    .include "tp_BBAT_test_read_rodata.inc"
