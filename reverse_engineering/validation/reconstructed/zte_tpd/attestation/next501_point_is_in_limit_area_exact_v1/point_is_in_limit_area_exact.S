.section .text,"ax",@progbits
.align 2
.global point_is_in_limit_area
.type point_is_in_limit_area, %function
point_is_in_limit_area:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x12003c2a
    .inst 0xf9400109
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb940112c
    .inst 0x321f0188
    .inst 0x71000d1f
    .inst 0x12003c08
    .inst 0x540000c1
    .inst 0x39409d2b
    .inst 0x6b08017f
    .inst 0x54000109
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0x39409d2b
    .inst 0x6b08017f
    .inst 0x54000149
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0x79488528
    .inst 0x3940a12b
    .inst 0x4b0b0108
    .inst 0x6b20211f
    .inst 0x5400014a
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0x7948852b
    .inst 0x3940a12d
    .inst 0x4b0d016d
    .inst 0x6b0801bf
    .inst 0x5400010a
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0x3940a528
    .inst 0x6b0a011f
    .inst 0x54000229
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0x340002ec
    .inst 0x3940e12c
    .inst 0x3400026c
    .inst 0x79405d2c
    .inst 0x6b0a019f
    .inst 0x54000202
    .inst 0x79405929
    .inst 0x52800020
    .inst 0x6b08013f
    .inst 0x540001a8
    .inst 0x4b090169
    .inst 0x6b08013f
    .inst 0x5400012a
    .inst 0x14000009
    .inst 0x79488928
    .inst 0x3940a929
    .inst 0x4b090108
    .inst 0x6b21211f
    .inst 0x5400006a
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0x2a1f03e0
    .inst 0xd65f03c0
    .inst 0x3940d12c
    .inst 0x0b0c058c
    .inst 0x6b4c051f
    .inst 0x540000c3
    .inst 0x3940d52c
    .inst 0x0b0c058c
    .inst 0x4b4c056c
    .inst 0x6b08019f
    .inst 0x54fffc4a
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x53
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x53
    .inst 0x370003ac
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0xdb
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0xdb
    .inst 0x3700034c
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x163
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x163
    .inst 0x370002ec
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x1eb
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x1eb
    .inst 0x3700028c
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x273
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x273
    .inst 0x3700022c
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x2fb
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x2fb
    .inst 0x370001cc
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x383
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x383
    .inst 0x3700016c
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x40b
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x40b
    .inst 0x3700010c
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x493
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x493
    .inst 0x370000ac
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x51b
    .inst 0x3940018c
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x51b
    .inst 0x7100059f
    .inst 0x54fff861
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3f20
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3f20
    .inst 0x12003c22
    .inst 0x2a0803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800020
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size point_is_in_limit_area, .-point_is_in_limit_area

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
