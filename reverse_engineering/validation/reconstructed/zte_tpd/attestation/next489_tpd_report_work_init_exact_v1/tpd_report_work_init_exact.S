.section .text,"ax",@progbits
.align 2
.global tpd_report_work_init
.type tpd_report_work_init, %function
    .word 0x6fbb3035
tpd_report_work_init:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb32
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5b2a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5b2a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x504a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x504a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9e83
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9e83
    .inst 0x72a000c1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, alloc_workqueue
    .inst 0xf9025e80
    .inst 0xb4001180
    .inst 0xb26b7bf5
    .inst 0x91132288
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0xf9026295
    .inst 0x91138280
    .inst 0xf9026688
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9026a88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id0_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id0_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9026e88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x9114c288
    .inst 0xf9029695
    .inst 0x91152280
    .inst 0xf9029a88
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9029e88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id1_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id1_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf902a288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x91166288
    .inst 0xf902ca95
    .inst 0x9116c280
    .inst 0xf902ce88
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf902d288
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id2_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id2_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf902d688
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x91180288
    .inst 0xf902fe95
    .inst 0x91186280
    .inst 0xf9030288
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9030688
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id3_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id3_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9030a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x9119a288
    .inst 0xf9033295
    .inst 0x911a0280
    .inst 0xf9033688
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9033a88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id4_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id4_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9033e88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x911b4288
    .inst 0xf9036695
    .inst 0x911ba280
    .inst 0xf9036a88
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9036e88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id5_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id5_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9037288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x911ce288
    .inst 0xf9039a95
    .inst 0x911d4280
    .inst 0xf9039e88
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf903a288
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id6_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id6_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf903a688
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x911e8288
    .inst 0xf903ce95
    .inst 0x911ee280
    .inst 0xf903d288
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf903d688
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id7_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id7_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf903da88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x91202288
    .inst 0xf9040295
    .inst 0x91208280
    .inst 0xf9040688
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9040a88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id8_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id8_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9040e88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x9121c288
    .inst 0xf9043695
    .inst 0x91222280
    .inst 0xf9043a88
    .inst 0xaa1303e1
    .inst 0x52a00402
    .inst 0xf9043e88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_id9_report_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_id9_report_work
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9044288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x2a1f03e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1edc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1edc
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5b2a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5b2a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800160
    .inst 0x17fffff5
.size tpd_report_work_init, .-tpd_report_work_init

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_report_work_init_rodata:
    .include "tpd_report_work_init_rodata.inc"
