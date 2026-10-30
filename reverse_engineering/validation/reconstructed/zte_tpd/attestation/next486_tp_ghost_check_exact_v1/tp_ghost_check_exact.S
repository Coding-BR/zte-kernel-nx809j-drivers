.section .text,"ax",@progbits
.align 2
.global tp_ghost_check
.type tp_ghost_check, %function
    .word 0x2fad8a96
tp_ghost_check:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf94002f5
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xd503201f
    .inst 0x52810000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xaa0003f3
    .inst 0xb40026d3
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x5e
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info+0x5e
    .inst 0xb9448eaa
    .inst 0x79411102
    .inst 0x79400103
    .inst 0x79422101
    .inst 0x79433100
    .inst 0x79444111
    .inst 0x79455110
    .inst 0x7100005f
    .inst 0x7946610f
    .inst 0x7947710e
    .inst 0x1a9f07e9
    .inst 0x7100007f
    .inst 0x7948810c
    .inst 0x1a890529
    .inst 0x7100003f
    .inst 0x79499108
    .inst 0x1a890529
    .inst 0x7100001f
    .inst 0xb9449aad
    .inst 0x1a890529
    .inst 0x7100023f
    .inst 0x1a890529
    .inst 0x7100021f
    .inst 0x1a890529
    .inst 0x710001ff
    .inst 0x1a890529
    .inst 0x710001df
    .inst 0x1a890529
    .inst 0x7100019f
    .inst 0x1a890529
    .inst 0x7100011f
    .inst 0x1a890529
    .inst 0x12001d24
    .inst 0x6b04015f
    .inst 0x1a84c154
    .inst 0x5280926a
    .inst 0x71000a9f
    .inst 0x9a8a954a
    .inst 0x386a6aab
    .inst 0x1b047d6a
    .inst 0x340001cd
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x5c
    .inst 0x79400084
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x5c
    .inst 0x6b0b009f
    .inst 0x540011a2
    .inst 0x340000c3
    .inst 0x12001d24
    .inst 0x7100189f
    .inst 0x54000063
    .inst 0x6b03015f
    .inst 0x540015a3
    .inst 0x710005bf
    .inst 0x54000061
    .inst 0x14000010
    .inst 0x2a1f03e3
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0xe4
    .inst 0x79400084
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0xe4
    .inst 0x6b0b009f
    .inst 0x54000fa2
    .inst 0x34000102
    .inst 0x12001d24
    .inst 0x0b030043
    .inst 0x7100189f
    .inst 0x54000083
    .inst 0x12003c62
    .inst 0x6b02015f
    .inst 0x540010e3
    .inst 0x710009bf
    .inst 0x540001e0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x16c
    .inst 0x79400044
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x16c
    .inst 0x6b0b009f
    .inst 0x54000e62
    .inst 0x34000101
    .inst 0x12001d22
    .inst 0x0b030023
    .inst 0x7100185f
    .inst 0x54000083
    .inst 0x12003c61
    .inst 0x6b01015f
    .inst 0x54001043
    .inst 0x71000dbf
    .inst 0x540001e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x1f4
    .inst 0x79400024
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x1f4
    .inst 0x6b0b009f
    .inst 0x54000ce2
    .inst 0x34000100
    .inst 0x12001d21
    .inst 0x0b030003
    .inst 0x7100183f
    .inst 0x54000083
    .inst 0x12003c60
    .inst 0x6b00015f
    .inst 0x54000ec3
    .inst 0x710011bf
    .inst 0x540001e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x27c
    .inst 0x79400004
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x27c
    .inst 0x6b0b009f
    .inst 0x54000b62
    .inst 0x34000111
    .inst 0x12001d20
    .inst 0x0b030223
    .inst 0x7100181f
    .inst 0x54000083
    .inst 0x12003c71
    .inst 0x6b11015f
    .inst 0x54000d43
    .inst 0x710015bf
    .inst 0x540001e0
    .inst 0x90000011
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x304
    .inst 0x79400224
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x304
    .inst 0x6b0b009f
    .inst 0x540009e2
    .inst 0x34000110
    .inst 0x12001d31
    .inst 0x0b030203
    .inst 0x71001a3f
    .inst 0x54000083
    .inst 0x12003c70
    .inst 0x6b10015f
    .inst 0x54000bc3
    .inst 0x710019bf
    .inst 0x540001e0
    .inst 0x90000010
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x38c
    .inst 0x79400204
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x38c
    .inst 0x6b0b009f
    .inst 0x54000862
    .inst 0x3400010f
    .inst 0x12001d30
    .inst 0x0b0301e3
    .inst 0x71001a1f
    .inst 0x54000083
    .inst 0x12003c6f
    .inst 0x6b0f015f
    .inst 0x54000a43
    .inst 0x71001dbf
    .inst 0x540001e0
    .inst 0x9000000f
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x414
    .inst 0x794001e4
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x414
    .inst 0x6b0b009f
    .inst 0x540006e2
    .inst 0x3400010e
    .inst 0x12001d2f
    .inst 0x0b0301c3
    .inst 0x710019ff
    .inst 0x54000083
    .inst 0x12003c6e
    .inst 0x6b0e015f
    .inst 0x540008c3
    .inst 0x710021bf
    .inst 0x540001e0
    .inst 0x9000000e
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x49c
    .inst 0x794001c4
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x49c
    .inst 0x6b0b009f
    .inst 0x54000562
    .inst 0x3400010c
    .inst 0x12001d2e
    .inst 0x0b030183
    .inst 0x710019df
    .inst 0x54000083
    .inst 0x12003c6c
    .inst 0x6b0c015f
    .inst 0x54000743
    .inst 0x710025bf
    .inst 0x540001a0
    .inst 0x9000000c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x524
    .inst 0x79400184
    .reloc .-4, R_AARCH64_LDST16_ABS_LO12_NC, point_report_info+0x524
    .inst 0x6b0b009f
    .inst 0x54000422
    .inst 0x34000108
    .inst 0x12001d29
    .inst 0x7100193f
    .inst 0x540000a3
    .inst 0x0b030108
    .inst 0x12003d03
    .inst 0x6b03015f
    .inst 0x540005a3
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0x2a1f03e0
    .inst 0x1400006b
    .inst 0x52800023
    .inst 0x14000014
    .inst 0x2a1f03e3
    .inst 0x14000012
    .inst 0x52800043
    .inst 0x14000010
    .inst 0x52800063
    .inst 0x1400000e
    .inst 0x52800083
    .inst 0x1400000c
    .inst 0x528000a3
    .inst 0x1400000a
    .inst 0x528000c3
    .inst 0x14000008
    .inst 0x528000e3
    .inst 0x14000006
    .inst 0x52800103
    .inst 0x14000004
    .inst 0x2a0203e3
    .inst 0x14000015
    .inst 0x52800123
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7a58
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7a58
    .inst 0xaa1303e0
    .inst 0x52810001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x14000013
    .inst 0x2a0103e3
    .inst 0x1400000c
    .inst 0x2a0003e3
    .inst 0x1400000a
    .inst 0x2a1103e3
    .inst 0x14000008
    .inst 0x2a1003e3
    .inst 0x14000006
    .inst 0x2a0f03e3
    .inst 0x14000004
    .inst 0x2a0e03e3
    .inst 0x14000002
    .inst 0x2a0c03e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8551
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8551
    .inst 0xaa1303e0
    .inst 0x52810001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x52810018
    .inst 0x2a0003f6
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7a83
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7a83
    .inst 0x4b000308
    .inst 0x8b20c260
    .inst 0x93407d01
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x2a1f03f4
    .inst 0x9280a9f9
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xca8
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xca8
    .inst 0x0b16001b
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbfd7
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbfd7
    .inst 0x14000004
    .inst 0xb1022339
    .inst 0x11000694
    .inst 0x540002e0
    .inst 0x8b19035c
    .inst 0x794b5f88
    .inst 0x34ffff68
    .inst 0x4b1b0308
    .inst 0x8b3bc260
    .inst 0xb9456b84
    .inst 0x93407d01
    .inst 0xb9456f85
    .inst 0xaa1503e2
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b1b001b
    .inst 0xb9457784
    .inst 0xb9457b85
    .inst 0x4b1b0308
    .inst 0x8b3bc260
    .inst 0xaa1603e2
    .inst 0x93407d01
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b1b001b
    .inst 0x17ffffe8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5b1d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5b1d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1829
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1829
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf945f500
    .inst 0xb4000080
    .inst 0x52810001
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x52800200
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_zlog_record_notify
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0x52800020
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9416ffc
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd5384114
    .inst 0xf9402a96
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x140
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x140
    .inst 0x52810000
    .inst 0xf9002a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xaa0003f3
    .inst 0xf9002a96
    .inst 0xb5ffd993
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x74cd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x74cd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff7f
.size tp_ghost_check, .-tp_ghost_check

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tp_ghost_check_rodata:
    .include "tp_ghost_check_rodata.inc"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
    .zero 0x140
.type tp_ghost_check._alloc_tag, %object
tp_ghost_check._alloc_tag:
    .zero 0x8
