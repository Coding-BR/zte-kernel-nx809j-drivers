.text
.align 2
.globl tpd_touch_release
.type tpd_touch_release, %function
.word 0xdb725fb0
tpd_touch_release:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0x12003c34
    .inst 0x71002e9f
    .inst 0x54002b02
    .inst 0xb40006a0
    .inst 0x12003c28
    .inst 0x2a0103f5
    .inst 0x7100291f
    .inst 0x54002a80
    .inst 0x92403eba
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, is_fake_sleep_mode
    .inst 0x8b353348
    .inst 0xf940037c
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, is_screen_off_awake_mode
    .inst 0xd37df119
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info
    .inst 0x8b190113
    .inst 0x39414e68
    .inst 0x7100051f
    .inst 0x54000560
    .inst 0x39409788
    .inst 0x7100051f
    .inst 0x54000181
    .inst 0x39415a68
    .inst 0x37000148
    .inst 0xf9403a68
    .inst 0xb4000108
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf9400129
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xcb080120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0x79407b88
    .inst 0x6b08001f
    .inst 0x54001023
    .inst 0xb9400308
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, is_screen_off_awake_mode
    .inst 0xb94002e9
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, is_fake_sleep_mode
    .inst 0xf9003a7f
    .inst 0x39014e7f
    .inst 0x2a080128
    .inst 0x7900a27f
    .inst 0xb805527f
    .inst 0x7805927f
    .inst 0x340000a8
    .inst 0x29432668
    .inst 0xf940326a
    .inst 0x2907a668
    .inst 0xf900266a
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9416ffc
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8f37
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8f37
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa57b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa57b
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff2
    .inst 0xaa0003f6
    .inst 0x91324380
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xaa1603e0
    .inst 0x52800061
    .inst 0x528005e2
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1603e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_mt_report_slot_state
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf94002c8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9403269
    .inst 0xcb090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0x29448e62
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xac0e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xac0e
    .inst 0x2a1403e1
    .inst 0xf9003e64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94002e8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, is_fake_sleep_mode
    .inst 0x340002c8
    .inst 0xf94002c8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9403269
    .inst 0xcb090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0x7102541f
    .inst 0x54000208
    .inst 0xb9401a68
    .inst 0xb9402669
    .inst 0x6b090108
    .inst 0x5a885508
    .inst 0x7100c51f
    .inst 0x5400014c
    .inst 0xb9401e68
    .inst 0xb9402a69
    .inst 0x6b090108
    .inst 0x5a885508
    .inst 0x7100c51f
    .inst 0x5400008c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3dec
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3dec
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_report_gesture_uevent
    .inst 0xb9400308
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, is_screen_off_awake_mode
    .inst 0xb94002e9
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, is_fake_sleep_mode
    .inst 0x2a080128
    .inst 0x340004c8
    .inst 0xf94002c8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9402669
    .inst 0xcb090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0x7104ac1f
    .inst 0x54000408
    .inst 0xf94002c8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9403269
    .inst 0xcb090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0x7102541f
    .inst 0x54000348
    .inst 0xb9401a68
    .inst 0xb9402669
    .inst 0x6b090109
    .inst 0x5a895529
    .inst 0x7100c53f
    .inst 0x5400028c
    .inst 0xb9401e69
    .inst 0xb9402a6a
    .inst 0x6b0a012a
    .inst 0x5a8a554a
    .inst 0x7100c55f
    .inst 0x540001cc
    .inst 0xb9403e6a
    .inst 0x6b0a0108
    .inst 0x5a885508
    .inst 0x710f9d1f
    .inst 0x5400012c
    .inst 0xb9404268
    .inst 0x6b080128
    .inst 0x5a885508
    .inst 0x710f9d1f
    .inst 0x5400008c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x43ee
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x43ee
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_report_gesture_uevent
    .inst 0x91324380
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf9403e68
    .inst 0x39525789
    .inst 0xeb09011f
    .inst 0x54000062
    .inst 0x39416a68
    .inst 0x360006c8
    .inst 0xb9448f88
    .inst 0x51000508
    .inst 0xb9048f88
    .inst 0x17ffff73
    .inst 0xf9400376
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6daa
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6daa
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x805a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x805a
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9425ec8
    .inst 0xb5000088
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xba3a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xba3a
    .inst 0x14000022
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x53
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x53
    .inst 0x370003a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0xdb
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0xdb
    .inst 0x37000348
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x163
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x163
    .inst 0x370002e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x1eb
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x1eb
    .inst 0x37000288
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x273
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x273
    .inst 0x37000228
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x2fb
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x2fb
    .inst 0x370001c8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x383
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x383
    .inst 0x37000168
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x40b
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x40b
    .inst 0x37000108
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x493
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x493
    .inst 0x370000a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x51b
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, point_report_info+0x51b
    .inst 0x7100051f
    .inst 0x54000601
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa5a4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa5a4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x805a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x805a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff50
    .inst 0x39522388
    .inst 0x37000168
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbfb7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbfb7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9425b81
    .inst 0x52800028
    .inst 0x9124e382
    .inst 0x52800400
    .inst 0x52803e83
    .inst 0x39122388
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0xb9448f88
    .inst 0xaa1303e0
    .inst 0x7100091f
    .inst 0x52809228
    .inst 0x9a88d508
    .inst 0x38686b96
    .inst 0x940000a1
    .reloc .-4, R_AARCH64_CALL26, ghost_check_area
    .inst 0x36000140
    .inst 0xf9403e68
    .inst 0xeb16011f
    .inst 0x54000122
    .inst 0x7940ba68
    .inst 0x7940be69
    .inst 0x1100050a
    .inst 0x11000528
    .inst 0x7900ba6a
    .inst 0x14000005
    .inst 0x7940be68
    .inst 0x14000004
    .inst 0x7940be68
    .inst 0x11000508
    .inst 0x7900be68
    .inst 0x7940ba62
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x95c2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x95c2
    .inst 0x12003d03
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa3
    .inst 0x8b1a1348
    .inst 0x913242c0
    .inst 0xaa1603fb
    .inst 0xd37df117
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb27e02e8
    .inst 0xf115411f
    .inst 0x54000ae8
    .inst 0xb27e0328
    .inst 0xf115411f
    .inst 0x54000a88
    .inst 0xf9404276
    .inst 0x79400279
    .inst 0x52800061
    .inst 0x79400a7a
    .inst 0x39402277
    .inst 0x528005e2
    .inst 0x39402678
    .inst 0xaa1603e0
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1603e0
    .inst 0x2a1f03e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_mt_report_slot_state
    .inst 0xaa1603e0
    .inst 0x52800021
    .inst 0x52802942
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1603e0
    .inst 0x52800061
    .inst 0x528006a2
    .inst 0x2a1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1603e0
    .inst 0x52800061
    .inst 0x528006c2
    .inst 0x2a1a03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x340000d8
    .inst 0xaa1603e0
    .inst 0x52800061
    .inst 0x52800742
    .inst 0x2a1803e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x340000d7
    .inst 0xaa1603e0
    .inst 0x52800061
    .inst 0x52800602
    .inst 0x2a1703e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9404260
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x29401263
    .inst 0x52800028
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x44cf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x44cf
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x805a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x805a
    .inst 0x2a1403e2
    .inst 0x39015268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91324360
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x12003ea8
    .inst 0x7100111f
    .inst 0x5400018c
    .inst 0x7100051f
    .inst 0x540002ed
    .inst 0x7100091f
    .inst 0x540005c0
    .inst 0x71000d1f
    .inst 0x540004c0
    .inst 0x7100111f
    .inst 0x540006a1
    .inst 0xf9425f61
    .inst 0x91198362
    .inst 0x1400002c
    .inst 0x7100191f
    .inst 0x5400024d
    .inst 0x71001d1f
    .inst 0x540004c0
    .inst 0x7100211f
    .inst 0x540003c0
    .inst 0x7100251f
    .inst 0x54000541
    .inst 0xf9425f61
    .inst 0x9121a362
    .inst 0x14000021
    .inst 0xd42aa240
    .inst 0xd4200020
    .inst 0x340001a8
    .inst 0x7100051f
    .inst 0x54000441
    .inst 0xf9425f61
    .inst 0x9114a362
    .inst 0x14000019
    .inst 0x7100151f
    .inst 0x54000120
    .inst 0x7100191f
    .inst 0x54000361
    .inst 0xf9425f61
    .inst 0x911cc362
    .inst 0x14000012
    .inst 0xf9425f61
    .inst 0x91130362
    .inst 0x1400000f
    .inst 0xf9425f61
    .inst 0x911b2362
    .inst 0x1400000c
    .inst 0xf9425f61
    .inst 0x9117e362
    .inst 0x14000009
    .inst 0xf9425f61
    .inst 0x91200362
    .inst 0x14000006
    .inst 0xf9425f61
    .inst 0x91164362
    .inst 0x14000003
    .inst 0xf9425f61
    .inst 0x911e6362
    .inst 0x52800400
    .inst 0x528001a3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, is_fake_sleep_mode
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, is_screen_off_awake_mode
    .inst 0x17fffea4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2af4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2af4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x805a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x805a
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff7
.size tpd_touch_release, .-tpd_touch_release

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.include "tpd_touch_release_rodata.inc"
