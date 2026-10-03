.text
.align 2
.globl tpd_touch_press
.type tpd_touch_press, %function
.word 0x73b3656d
tpd_touch_press:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x12003c28
    .inst 0x721f383f
    .inst 0xf940029b
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x12003c4a
    .inst 0x1a9f1508
    .inst 0x721f385f
    .inst 0xb9401369
    .inst 0x1a9f154a
    .inst 0x7100013f
    .inst 0x1a8a0053
    .inst 0x1a880035
    .inst 0x12003c62
    .inst 0xb4001340
    .inst 0x7100285f
    .inst 0x54001302
    .inst 0x2a0303f7
    .inst 0xaa0003f8
    .inst 0x2a0403f9
    .inst 0x92403ee8
    .inst 0x2a0503f6
    .inst 0xb81fc3a2
    .inst 0x8b233108
    .inst 0xd37df11a
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info
    .inst 0x8b1a011c
    .inst 0x39414388
    .inst 0xf9004380
    .inst 0x7100051f
    .inst 0x54000721
    .inst 0x39409768
    .inst 0x34001da8
    .inst 0x39416788
    .inst 0x37001d68
    .inst 0xb9401368
    .inst 0x321f0108
    .inst 0x71000d1f
    .inst 0x54001ce0
    .inst 0x79488768
    .inst 0x12003eab
    .inst 0x53027d09
    .inst 0x6b0b013f
    .inst 0x54000102
    .inst 0x0b08050a
    .inst 0x6b4a097f
    .inst 0x540000a2
    .inst 0x52800028
    .inst 0x39016788
    .inst 0x79488768
    .inst 0x53027d09
    .inst 0xb9401b8a
    .inst 0x6b09015f
    .inst 0x5400008b
    .inst 0x0b080509
    .inst 0x6b49095f
    .inst 0x54001aa9
    .inst 0x39409769
    .inst 0x340032a9
    .inst 0xb9401369
    .inst 0x321f0129
    .inst 0x71000d3f
    .inst 0x54003141
    .inst 0x3940d369
    .inst 0x6b35213f
    .inst 0x54003208
    .inst 0x3940d769
    .inst 0x4b090109
    .inst 0x6b0b013f
    .inst 0x5400318b
    .inst 0x3940db69
    .inst 0x6b33213f
    .inst 0x54003128
    .inst 0x79488b69
    .inst 0x3940df6a
    .inst 0x4b0a0129
    .inst 0x6b33213f
    .inst 0x5400308b
    .inst 0x3940e369
    .inst 0x34003009
    .inst 0x79405f69
    .inst 0x6b33213f
    .inst 0x54002fa2
    .inst 0x79405b69
    .inst 0x6b35213f
    .inst 0x54002ee9
    .inst 0x1400017b
    .inst 0x2a1503e0
    .inst 0x2a1303e1
    .inst 0x940006c4
    .reloc .-4, R_AARCH64_CALL26, point_is_in_limit_area
    .inst 0x36000520
    .inst 0x2a1503e0
    .inst 0x2a1303e1
    .inst 0x940006c0
    .reloc .-4, R_AARCH64_CALL26, point_is_in_limit_area
    .inst 0x37001220
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x39409509
    .inst 0x340011c9
    .inst 0xb9401109
    .inst 0x321f0129
    .inst 0x71000d3f
    .inst 0x54000a21
    .inst 0x3940d10a
    .inst 0x12003ea9
    .inst 0x6b0a013f
    .inst 0x54000aa3
    .inst 0x7948850a
    .inst 0x3940d50b
    .inst 0x4b0b014b
    .inst 0x6b09017f
    .inst 0x54000a0b
    .inst 0x3940d90b
    .inst 0x6b33217f
    .inst 0x540009a8
    .inst 0x7948890b
    .inst 0x3940dd0c
    .inst 0x4b0c016b
    .inst 0x6b33217f
    .inst 0x5400090b
    .inst 0x3940e10b
    .inst 0x34000eeb
    .inst 0x79405d0b
    .inst 0x6b33217f
    .inst 0x54000e82
    .inst 0x79405908
    .inst 0x6b35211f
    .inst 0x54000808
    .inst 0x4b080148
    .inst 0x6b09011f
    .inst 0x54000dca
    .inst 0x1400003c
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x39409509
    .inst 0x34000fa9
    .inst 0xb9401109
    .inst 0x321f0129
    .inst 0x71000d3f
    .inst 0x54000481
    .inst 0x3940d10a
    .inst 0x12003ea9
    .inst 0x6b0a013f
    .inst 0x54fff9c3
    .inst 0x7948850a
    .inst 0x3940d50b
    .inst 0x4b0b014b
    .inst 0x6b09017f
    .inst 0x54fff92b
    .inst 0x3940d90b
    .inst 0x6b33217f
    .inst 0x54fff8c8
    .inst 0x7948890b
    .inst 0x3940dd0c
    .inst 0x4b0c016b
    .inst 0x6b33217f
    .inst 0x54fff82b
    .inst 0x3940e10b
    .inst 0x34000ccb
    .inst 0x79405d0b
    .inst 0x6b33217f
    .inst 0x54000c62
    .inst 0x79405908
    .inst 0x6b35211f
    .inst 0x54fff728
    .inst 0x4b080148
    .inst 0x6b09011f
    .inst 0x54000baa
    .inst 0x17ffffb5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8f37
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8f37
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x37f2
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x37f2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140000b2
    .inst 0x3940d109
    .inst 0x6b35213f
    .inst 0x54fff588
    .inst 0x79488509
    .inst 0x3940d508
    .inst 0x4b080128
    .inst 0x6b35211f
    .inst 0x54fff4eb
    .inst 0x1400004d
    .inst 0x3940d109
    .inst 0x6b35213f
    .inst 0x540000c8
    .inst 0x79488509
    .inst 0x3940d508
    .inst 0x4b080128
    .inst 0x6b35211f
    .inst 0x5400064a
    .inst 0x39415788
    .inst 0x360025a8
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
    .inst 0x54000261
    .inst 0x52800028
    .inst 0x39015b88
    .inst 0x39414788
    .inst 0x37000228
    .inst 0xb27e0348
    .inst 0x12003ea9
    .inst 0xf115411f
    .inst 0xb9000389
    .inst 0x54001328
    .inst 0x12003e68
    .inst 0x39002399
    .inst 0xb9000788
    .inst 0x52800028
    .inst 0x39002796
    .inst 0x39014788
    .inst 0x14000070
    .inst 0x39415788
    .inst 0x360014a8
    .inst 0x39414788
    .inst 0x3607fe28
    .inst 0xb9400388
    .inst 0x4b352108
    .inst 0x7100011f
    .inst 0x5a885508
    .inst 0x7101911f
    .inst 0x5400014c
    .inst 0xb27e0348
    .inst 0xf115411f
    .inst 0x540010a8
    .inst 0xb9400788
    .inst 0x4b332108
    .inst 0x7100011f
    .inst 0x5a885508
    .inst 0x7101951f
    .inst 0x54000bab
    .inst 0x39414788
    .inst 0x36000128
    .inst 0x12003ea8
    .inst 0x12003e69
    .inst 0x39005399
    .inst 0x2901a788
    .inst 0x52800028
    .inst 0x39005796
    .inst 0x39014b88
    .inst 0x14000002
    .inst 0x39014b9f
    .inst 0x39414b88
    .inst 0x52800029
    .inst 0x39014389
    .inst 0x7100051f
    .inst 0x54000361
    .inst 0x39414f88
    .inst 0xb27e0354
    .inst 0x2a1603fa
    .inst 0x36000a48
    .inst 0xf115429f
    .inst 0x54000d28
    .inst 0x29400b81
    .inst 0xaa1803e0
    .inst 0x2a1703e3
    .inst 0x2a1903e4
    .inst 0x2a1a03e5
    .inst 0x94000121
    .reloc .-4, R_AARCH64_CALL26, tpd_touch_report
    .inst 0xaa1803e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x52807d00
    .inst 0x5280bb81
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x39414f88
    .inst 0x36000b28
    .inst 0x29418b81
    .inst 0xaa1803e0
    .inst 0x1400002b
    .inst 0x39409369
    .inst 0x39414f88
    .inst 0x2a1603fa
    .inst 0x34000469
    .inst 0x36000e08
    .inst 0x39415f88
    .inst 0x7100051f
    .inst 0x54000401
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9403389
    .inst 0xcb090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0xb9401b88
    .inst 0x4b352108
    .inst 0x7100011f
    .inst 0x5a885509
    .inst 0x39409368
    .inst 0x7101941f
    .inst 0x54000042
    .inst 0x0b080508
    .inst 0x6b08013f
    .inst 0x540000ec
    .inst 0xb9401f89
    .inst 0x4b332129
    .inst 0x7100013f
    .inst 0x5a895529
    .inst 0x6b08013f
    .inst 0x5400024d
    .inst 0xaa1803e0
    .inst 0x2a1503e1
    .inst 0x2a1303e2
    .inst 0x2a1703e3
    .inst 0x2a1903e4
    .inst 0x2a1a03e5
    .inst 0x940000ef
    .reloc .-4, R_AARCH64_CALL26, tpd_touch_report
    .inst 0x39015f9f
    .inst 0x14000009
    .inst 0x36000c08
    .inst 0xaa1803e0
    .inst 0x2a1503e1
    .inst 0x2a1303e2
    .inst 0x2a1703e3
    .inst 0x2a1903e4
    .inst 0x2a1a03e5
    .inst 0x940000e5
    .reloc .-4, R_AARCH64_CALL26, tpd_touch_report
    .inst 0x12003ea8
    .inst 0x12003e69
    .inst 0x39014b9f
    .inst 0x2904a788
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x52800028
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf115429f
    .inst 0x39014f88
    .inst 0xf9400129
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0x39016b88
    .inst 0xf9003389
    .inst 0xb9448f68
    .inst 0x11000508
    .inst 0xb9048f68
    .inst 0xb9400388
    .inst 0xb9001b88
    .inst 0x540001a8
    .inst 0xb85fc3b6
    .inst 0xb9400788
    .inst 0x2a1603e0
    .inst 0xb9001f88
    .inst 0x94000090
    .reloc .-4, R_AARCH64_CALL26, point_report_reset
    .inst 0x29400f82
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x68ae
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x68ae
    .inst 0x2a1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf115429f
    .inst 0x54fff329
    .inst 0xd4200020
    .inst 0x52800028
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0x39014f88
    .inst 0xf9400129
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0x39016b88
    .inst 0xb85fc3b4
    .inst 0xf9003389
    .inst 0x2a1403e0
    .inst 0xb9448f68
    .inst 0x11000508
    .inst 0xb9048f68
    .inst 0x29402788
    .inst 0x29032788
    .inst 0x9400007a
    .reloc .-4, R_AARCH64_CALL26, point_report_reset
    .inst 0x29418f82
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x68ae
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x68ae
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff95
    .inst 0xb85fc3a1
    .inst 0x52800028
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5110
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5110
    .inst 0x12003ea2
    .inst 0x12003e63
    .inst 0x39015788
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39414788
    .inst 0x3707eaa8
    .inst 0x17ffff44
    .inst 0x52800034
    .inst 0xb85fc3b6
    .inst 0x39014f94
    .inst 0xb9448f68
    .inst 0x2a1603e0
    .inst 0x11000508
    .inst 0xb9048f68
    .inst 0x94000061
    .reloc .-4, R_AARCH64_CALL26, point_report_reset
    .inst 0x12003ea2
    .inst 0x12003e63
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0x29030f82
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb31c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb31c
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0x39015f94
    .inst 0x2a1603e1
    .inst 0x14000014
    .inst 0x52800028
    .inst 0xb85fc3b4
    .inst 0x12003eba
    .inst 0x39014f88
    .inst 0xb9448f68
    .inst 0x2a1403e0
    .inst 0x11000508
    .inst 0xb9048f68
    .inst 0x12003e7b
    .inst 0x29036f9a
    .inst 0x9400004c
    .reloc .-4, R_AARCH64_CALL26, point_report_reset
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9595
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9595
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0x2a1403e1
    .inst 0x2a1a03e2
    .inst 0x2a1603fa
    .inst 0x2a1b03e3
    .inst 0xf9003388
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff8c
    .inst 0x3940d369
    .inst 0x6b35213f
    .inst 0x540000e8
    .inst 0x3940d769
    .inst 0x4b090108
    .inst 0x6b0b011f
    .inst 0x5400006b
    .inst 0x3901639f
    .inst 0x17ffff3d
    .inst 0x39416388
    .inst 0x7100051f
    .inst 0x54000081
    .inst 0xf9403788
    .inst 0x2a0b03f4
    .inst 0x14000009
    .inst 0x12003e68
    .inst 0x52800029
    .inst 0x2a0b03f4
    .inst 0x2906238b
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0x39016389
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9003788
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf9400129
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xcb080120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, jiffies_to_msecs
    .inst 0x710c841f
    .inst 0x54ffe523
    .inst 0xb9403388
    .inst 0x6b140108
    .inst 0x5a885508
    .inst 0x7100551f
    .inst 0x540001eb
    .inst 0x12003e68
    .inst 0x14000013
    .inst 0x52800028
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x960f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x960f
    .inst 0x39015788
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0x12003ea2
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xb85fc3a1
    .inst 0x12003e63
    .inst 0xf9003b88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffec9
    .inst 0xb9403789
    .inst 0x12003e68
    .inst 0x6b080129
    .inst 0x5a895529
    .inst 0x7100553f
    .inst 0x540000cb
    .inst 0x29062394
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf9003788
    .inst 0x17ffff0b
    .inst 0xf9404380
    .inst 0x2a1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_touch_release
    .inst 0x3901639f
    .inst 0x17ffff57
.size tpd_touch_press, .-tpd_touch_press

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.include "tpd_touch_press_rodata.inc"
