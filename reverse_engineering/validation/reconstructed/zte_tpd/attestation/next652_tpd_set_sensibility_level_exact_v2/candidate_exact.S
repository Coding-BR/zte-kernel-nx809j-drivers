.section .text,"ax",@progbits
.align 2
.global tpd_set_sensibility_level
.type tpd_set_sensibility_level, %function
    .word 0xe1d63dc1
tpd_set_sensibility_level:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf946dc13
    .inst 0x2a0103f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3346
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3346
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6028
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6028
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb40002f3
    .inst 0xf9413a69
    .inst 0xf9400268
    .inst 0xb940b92a
    .inst 0x340000aa
    .inst 0x3942f129
    .inst 0x36000069
    .inst 0x2a1f03e2
    .inst 0x14000002
    .inst 0xb9420d02
    .inst 0xb9457e68
    .inst 0x12001e89
    .inst 0x721e169f
    .inst 0x5280008a
    .inst 0x1a8a0121
    .inst 0x7100051f
    .inst 0xb905fe61
    .inst 0x54000161
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_sensibility_level
    .inst 0x37f80160
    .inst 0x2a1f03e0
    .inst 0x14000002
    .inst 0x128002a0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa419
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa419
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x54a3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x54a3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6028
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6028
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff1
.size tpd_set_sensibility_level, .-tpd_set_sensibility_level

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "tpd_set_sensibility_level_exact.inc"
