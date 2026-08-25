.section .text,"ax",@progbits
.align 2
.global edge_long_press_up
.type edge_long_press_up, %function
edge_long_press_up:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0x12003c28
    .inst 0x7100251f
    .inst 0x54001248
    .inst 0x2a0103f4
    .inst 0x92403e88
    .inst 0x8b213108
    .inst 0xd37df118
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info
    .inst 0x8b180117
    .inst 0x394152e8
    .inst 0x35000108
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0003f6
    .inst 0xf9400119
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x91324320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x12003e93
    .inst 0xaa1603e0
    .inst 0x52800061
    .inst 0x528005e2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1603e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0xaa1603f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_mt_report_slot_state
    .inst 0x35000293
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0xdb
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0xdb
    .inst 0x37000b68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0xdc
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0xdc
    .inst 0x37000b08
    .inst 0x12003e88
    .inst 0x7100091f
    .inst 0x54000281
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x1eb
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x1eb
    .inst 0x37000a48
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x1ec
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x1ec
    .inst 0x370009e8
    .inst 0x12003e88
    .inst 0x7100111f
    .inst 0x54000281
    .inst 0x1400001c
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x53
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x53
    .inst 0x37000908
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x54
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x54
    .inst 0x370008a8
    .inst 0x12003e88
    .inst 0x7100051f
    .inst 0x54fffca1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x163
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x163
    .inst 0x370007e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x164
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x164
    .inst 0x37000788
    .inst 0x12003e88
    .inst 0x71000d1f
    .inst 0x54fffca1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x273
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x273
    .inst 0x370006c8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x274
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x274
    .inst 0x37000668
    .inst 0x12003e88
    .inst 0x7100151f
    .inst 0x54000140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x2fb
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x2fb
    .inst 0x370005a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x2fc
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x2fc
    .inst 0x37000548
    .inst 0x12003e88
    .inst 0x7100191f
    .inst 0x54000140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x383
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x383
    .inst 0x37000488
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x384
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x384
    .inst 0x37000428
    .inst 0x12003e88
    .inst 0x71001d1f
    .inst 0x54000140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x40b
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x40b
    .inst 0x37000368
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x40c
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x40c
    .inst 0x37000308
    .inst 0x12003e88
    .inst 0x7100211f
    .inst 0x54000140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x493
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x493
    .inst 0x37000248
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x494
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x494
    .inst 0x370001e8
    .inst 0x12003e88
    .inst 0x7100251f
    .inst 0x540000e0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x51b
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x51b
    .inst 0x37000128
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x51c
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x51c
    .inst 0x370000c8
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0x52802942
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x91324320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb27e0308
    .inst 0x390152ff
    .inst 0xf115411f
    .inst 0x54000128
    .inst 0x294012e3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8575
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8575
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5149
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5149
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff79
    .inst 0xd4200020
.size edge_long_press_up, .-edge_long_press_up

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
