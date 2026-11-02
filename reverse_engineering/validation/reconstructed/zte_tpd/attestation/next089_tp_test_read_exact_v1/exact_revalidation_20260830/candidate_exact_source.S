.section .text,"ax",@progbits
.align 2
.global tp_test_read
.type tp_test_read, %function
.word 0xf4e9d97c
tp_test_read:
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
    .inst 0xb4000188
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540005e1
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0103f5
    .inst 0xaa0203f4
    .inst 0xf9400116
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa0303f3
    .inst 0x397002c1
    .inst 0x7103fc3f
    .inst 0x54000181
    .inst 0x39511ac1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xba11
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xba11
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394076c8
    .inst 0x36000168
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6161
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6161
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e3
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2ac3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2ac3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800023
    .inst 0x14000005
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8037
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8037
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800043
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
    .inst 0x17ffffce
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size tp_test_read, .-tp_test_read

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tp_test_read_rodata:
    .include "tp_test_read_rodata.inc"
