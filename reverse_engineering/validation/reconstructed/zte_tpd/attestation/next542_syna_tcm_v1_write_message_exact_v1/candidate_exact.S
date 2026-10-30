.section .text,"ax",@progbits
.align 2
.inst 0x24203a8e
.global syna_tcm_v1_write_message
.type syna_tcm_v1_write_message, %function
syna_tcm_v1_write_message:
    .inst 0xd503233f
    .inst 0xd10283ff
    .inst 0xa9047bfd
    .inst 0xa9056ffc
    .inst 0xa90667fa
    .inst 0xa9075ff8
    .inst 0xa90857f6
    .inst 0xa9094ff4
    .inst 0x910103fd
    .inst 0xf81e83a2
    .inst 0xb9001fe1
    .inst 0xb4002360
    .inst 0xf9402408
    .inst 0xaa0003f3
    .inst 0xb4002368
    .inst 0x2a0503f7
    .inst 0xaa0403f6
    .inst 0x2a0303f8
    .inst 0xb4000064
    .inst 0x52801fe8
    .inst 0x390002c8
    .inst 0x910c6260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x910d2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x52800028
    .inst 0xb901f668
    .inst 0xb901fa68
    .inst 0xb9401fe8
    .inst 0xb902227f
    .inst 0x3907f268
    .inst 0x340002b7
    .inst 0xf9402674
    .inst 0xb40024d4
    .inst 0xf9401e88
    .inst 0xb4000268
    .inst 0x91014260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401e88
    .inst 0xaa1403e0
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003f4
    .inst 0x91014260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x14000004
    .inst 0x2a1f03ee
    .inst 0x14000004
    .inst 0x2a1f03f4
    .inst 0x7100029f
    .inst 0x1a9fd7ee
    .inst 0x394e0268
    .inst 0x7100051f
    .inst 0x540003c1
    .inst 0xb9401fe8
    .inst 0x529fe00a
    .inst 0x12001f0b
    .inst 0x2a2803e8
    .inst 0x92401d09
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x4618
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x4618
    .inst 0x78697909
    .inst 0x0a29014a
    .inst 0x4a092309
    .inst 0x4a4a216a
    .inst 0x786a590a
    .inst 0x4a0a0129
    .inst 0x53083d29
    .inst 0x78695914
    .inst 0x4a0a2289
    .inst 0x34000158
    .inst 0xf85e83ab
    .inst 0x2a1803ea
    .inst 0x3840156c
    .inst 0x12181d2d
    .inst 0x7100054a
    .inst 0x4a4d218c
    .inst 0x786c5914
    .inst 0x4a092289
    .inst 0x54ffff41
    .inst 0x53083d35
    .inst 0x11001708
    .inst 0x14000004
    .inst 0x2a1f03f5
    .inst 0x2a1f03f4
    .inst 0x11000f08
    .inst 0xf9402669
    .inst 0xb9403a6a
    .inst 0x3940552b
    .inst 0x7100015f
    .inst 0x1a8a010a
    .inst 0x7100057f
    .inst 0x54000161
    .inst 0x2a1f03f9
    .inst 0x340001ea
    .inst 0xb940192b
    .inst 0x2a1903e9
    .inst 0x340001ab
    .inst 0x1acb0949
    .inst 0x1b0b7d39
    .inst 0x350000b9
    .inst 0x2a1f03e9
    .inst 0x14000008
    .inst 0x2a0a03f9
    .inst 0x34ffffb9
    .inst 0x0b190108
    .inst 0x51000508
    .inst 0x1ad90909
    .inst 0x14000002
    .inst 0x2a1903e9
    .inst 0x394b2262
    .inst 0x7100053f
    .inst 0x29013bf7
    .inst 0x1a9f853a
    .inst 0xf9000bf6
    .inst 0x350016e2
    .inst 0x910a6260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394b2268
    .inst 0x12001e89
    .inst 0x2a1903ea
    .inst 0x2a1f03f6
    .inst 0x2a1f03fb
    .inst 0xaa0a03f4
    .inst 0x11000508
    .inst 0x2a1803f7
    .inst 0x2a1a03ea
    .inst 0x390b2268
    .inst 0x2a152128
    .inst 0xb81e43b8
    .inst 0xb90023e8
    .inst 0xf81f03b4
    .inst 0x14000008
    .inst 0xb85fc3aa
    .inst 0xf85f03b4
    .inst 0x0b1c02d6
    .inst 0x4b1c02f7
    .inst 0x2a1503fb
    .inst 0x6b0a02bf
    .inst 0x54001e22
    .inst 0x7100037f
    .inst 0x12800048
    .inst 0x11000775
    .inst 0x5a9f0108
    .inst 0x6b1902ff
    .inst 0x0b190108
    .inst 0x1a97811c
    .inst 0x6b0a02bf
    .inst 0x1a9f17f8
    .inst 0x54000221
    .inst 0xf9402668
    .inst 0x39405509
    .inst 0x360001c9
    .inst 0xb9401d09
    .inst 0x6b09039f
    .inst 0x54000149
    .inst 0xb9401908
    .inst 0x34000068
    .inst 0x1ac80b89
    .inst 0x1b087d28
    .inst 0x5100051c
    .inst 0x6b17039f
    .inst 0x1a9f17f8
    .inst 0x1a8a054a
    .inst 0x14000002
    .inst 0x52800038
    .inst 0xb9429262
    .inst 0xf9414660
    .inst 0xb81fc3aa
    .inst 0x6b19005f
    .inst 0x540002a2
    .inst 0xb85e43ba
    .inst 0xb40000e0
    .inst 0xaa0003f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000d60
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf85f03b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0x7100073f
    .inst 0x5400130b
    .inst 0xb40012e0
    .inst 0xaa1403e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9014660
    .inst 0xb4001380
    .inst 0xaa1403e2
    .inst 0xb9029279
    .inst 0x14000002
    .inst 0xb85e43ba
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf9414668
    .inst 0xb902967f
    .inst 0x3400029b
    .inst 0xf85e83a9
    .inst 0xab364121
    .inst 0x52800029
    .inst 0x39000109
    .inst 0x540015a0
    .inst 0xf9414668
    .inst 0x91000500
    .inst 0xb4001540
    .inst 0xb9429268
    .inst 0x4b160342
    .inst 0x6b02039f
    .inst 0x51000503
    .inst 0x54000ee8
    .inst 0x6b03039f
    .inst 0x54000ea8
    .inst 0x2a1c03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x52800028
    .inst 0x14000018
    .inst 0xb9401fe9
    .inst 0x39000109
    .inst 0xf9414668
    .inst 0x3900051a
    .inst 0x53087f48
    .inst 0xf9414669
    .inst 0x39000928
    .inst 0x340001fa
    .inst 0xf85e83a8
    .inst 0xb40012a8
    .inst 0xf9414668
    .inst 0x91000d00
    .inst 0xb4001240
    .inst 0xb9429268
    .inst 0x6b1a039f
    .inst 0x51000d03
    .inst 0x540010e8
    .inst 0x6b03039f
    .inst 0x540010a8
    .inst 0xf85e83a1
    .inst 0x2a1c03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x52800068
    .inst 0x394e0269
    .inst 0xf9414661
    .inst 0x0b1c0114
    .inst 0x0a090309
    .inst 0x7100053f
    .inst 0x54000181
    .inst 0xab364028
    .inst 0x54000ec0
    .inst 0xb9429269
    .inst 0x4b160123
    .inst 0x7100047f
    .inst 0x54000d69
    .inst 0xb94023e9
    .inst 0x11000ad6
    .inst 0x11000a94
    .inst 0x79000109
    .inst 0xf9414661
    .inst 0xf9402660
    .inst 0xb40005e0
    .inst 0xf9401408
    .inst 0xb4000628
    .inst 0x2a1403e2
    .inst 0xb85fc110
    .inst 0x728403f1
    .inst 0x72a51491
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003fa
    .inst 0x37f805a0
    .inst 0x3707eef8
    .inst 0xb9421260
    .inst 0x7100041f
    .inst 0x54ffee8b
    .inst 0xb9421668
    .inst 0x7100051f
    .inst 0x54ffee2b
    .inst 0x6b00011f
    .inst 0x52800042
    .inst 0x1a808101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x17ffff6c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff93
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb5b3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb5b3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x52e6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x52e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e1a
    .inst 0x140000ac
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff45
    .inst 0x12801e1a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x14000004
    .inst 0x12801e9a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a8d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a8d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7b15
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7b15
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3a90
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3a90
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x57a7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x57a7
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400003c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf20
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf20
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e14
    .inst 0x17fffeea
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x14000028
    .inst 0xf100001f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x9a880120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf901467f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1903e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x13d1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x13d1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x57a7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x57a7
    .inst 0xf9014a7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e5a
    .inst 0x14000018
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x52800042
    .inst 0x52800044
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc2f2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc2f2
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x2a1a03e2
    .inst 0x2a1c03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc2b5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc2b5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x57a7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x57a7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002ba
    .inst 0x394b2262
    .inst 0x7100045f
    .inst 0x54000c21
    .inst 0x2a1f03e8
    .inst 0xf9400bf6
    .inst 0xb9400ff8
    .inst 0x910a6260
    .inst 0x390b2268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910d2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x37f8067a
    .inst 0xb9400bf7
    .inst 0x2a1f03f4
    .inst 0x14000007
    .inst 0xb941fa68
    .inst 0x7100051f
    .inst 0x54000541
    .inst 0xb9420a68
    .inst 0x6b08029f
    .inst 0x540004e2
    .inst 0x34000117
    .inst 0x710006ff
    .inst 0x2a1703f5
    .inst 0x540002eb
    .inst 0x2a1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1703f5
    .inst 0x14000013
    .inst 0xf9402660
    .inst 0xb9420a61
    .inst 0xf9401808
    .inst 0x53027c35
    .inst 0xb4000128
    .inst 0xb85fc110
    .inst 0x72934f71
    .inst 0x72a1f311
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x14000006
    .inst 0x2a0103e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xaa0003e1
    .inst 0x91088260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, wait_for_completion_timeout
    .inst 0xb941fa68
    .inst 0x7100091f
    .inst 0x54000180
    .inst 0xb941fa68
    .inst 0x0b1402b4
    .inst 0x7100051f
    .inst 0x54fffb41
    .inst 0xaa1303e0
    .inst 0xaa1f03e1
    .inst 0x940000a9
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_read_message
    .inst 0x36fffac0
    .inst 0x17ffffd8
    .inst 0xb941fa68
    .inst 0x350006a8
    .inst 0x2a1f03fa
    .inst 0xb4000076
    .inst 0x3947fa68
    .inst 0x390002c8
    .inst 0x3907f27f
    .inst 0x34000278
    .inst 0xf9402674
    .inst 0xb40004f4
    .inst 0xf9401e88
    .inst 0xb40001e8
    .inst 0x91014260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401e88
    .inst 0xaa1403e0
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x91014260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910c6260
    .inst 0xb901fa7f
    .inst 0xb901f67f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1a03e0
    .inst 0xa9494ff4
    .inst 0xa94857f6
    .inst 0xa9475ff8
    .inst 0xa94667fa
    .inst 0xa9456ffc
    .inst 0xa9447bfd
    .inst 0x910283ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394b2268
    .inst 0x51000508
    .inst 0x17ffff9a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf20
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf20
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe5
    .inst 0xb9420a63
    .inst 0x6b03029f
    .inst 0x54000162
    .inst 0xb9401fe8
    .inst 0x3947f662
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5764
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5764
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x52e6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x52e6
    .inst 0x12001d03
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e3a
    .inst 0x17ffffc1
    .inst 0xb9401fe8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5300
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5300
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x52e6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x52e6
    .inst 0x12001d02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e7a
    .inst 0x17ffffb8
.size syna_tcm_v1_write_message, .-syna_tcm_v1_write_message

.section .rodata,"a",@progbits
.align 3
.zero 0x4618
    .short 0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7
    .short 0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef
    .short 0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6
    .short 0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de
    .short 0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485
    .short 0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d
    .short 0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4
    .short 0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc
    .short 0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823
    .short 0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b
    .short 0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12
    .short 0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a
    .short 0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41
    .short 0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49
    .short 0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70
    .short 0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78
    .short 0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f
    .short 0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067
    .short 0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e
    .short 0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256
    .short 0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d
    .short 0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405
    .short 0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c
    .short 0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634
    .short 0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab
    .short 0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3
    .short 0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a
    .short 0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92
    .short 0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9
    .short 0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1
    .short 0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8
    .short 0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0
.zero 0x268

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
