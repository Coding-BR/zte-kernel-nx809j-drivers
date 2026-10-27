.section .text,"ax",@progbits
.align 2
.global aw9620x_cycle_write_firmware
.type aw9620x_cycle_write_firmware, %function
aw9620x_cycle_write_firmware:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0xf9401808
    .inst 0x2a0203f4
    .inst 0xaa0003f3
    .inst 0xf81f83a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0xaa0803e1
    .inst 0x528102a4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x72000688
    .inst 0x54000061
    .inst 0x2a1f03f5
    .inst 0x1400000d
    .inst 0x52800089
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x4b080135
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x154a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x154a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x52810324
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x0b1402b6
    .inst 0x528820a9
    .inst 0xf9401a61
    .inst 0x53067ec8
    .inst 0x72a08209
    .inst 0x110022d7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3842
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3842
    .inst 0x9ba97d08
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x52810444
    .inst 0x2a1603e5
    .inst 0xb90003f7
    .inst 0xd360fd06
    .inst 0x5281f808
    .inst 0x1b08d8d5
    .inst 0xf9000be6
    .inst 0x2a1503e7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xd503201f
    .inst 0xaa1703e0
    .inst 0x5281b801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xb4002794
    .inst 0xeb1702ff
    .inst 0x54002503
    .inst 0x52840018
    .inst 0xaa1403e0
    .inst 0x52800021
    .inst 0xaa1703e2
    .inst 0x72a20018
    .inst 0x5280003b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x713f02df
    .inst 0x54000ee3
    .inst 0xf10022e8
    .inst 0xaa1f03fa
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x9a8833e8
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0xf81f03a8
    .inst 0xf9400be8
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2732
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2732
    .inst 0x7100051f
    .inst 0x1a9f8508
    .inst 0xf9000fe8
    .inst 0xb4002177
    .inst 0x53187f66
    .inst 0xf10006ff
    .inst 0x39000286
    .inst 0x540020e0
    .inst 0x53107f68
    .inst 0xf1000aff
    .inst 0x39000688
    .inst 0x54002060
    .inst 0x53087f68
    .inst 0xf10012ff
    .inst 0x39000a88
    .inst 0x54001fe3
    .inst 0x39000e9b
    .inst 0x54001fa0
    .inst 0x53187f08
    .inst 0xf10016ff
    .inst 0x39001288
    .inst 0x54001f20
    .inst 0x53107f08
    .inst 0xf1001eff
    .inst 0x39001688
    .inst 0x54001ea3
    .inst 0x53087f08
    .inst 0x39001a88
    .inst 0x54001e40
    .inst 0xf9401a61
    .inst 0x53105f67
    .inst 0x53083f68
    .inst 0x12001f69
    .inst 0xaa1c03e0
    .inst 0xaa1903e2
    .inst 0xaa1603e3
    .inst 0x52810784
    .inst 0x2a1a03e5
    .inst 0x39001e98
    .inst 0xb9000be9
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a61
    .inst 0x39401286
    .inst 0xaa1c03e0
    .inst 0x39401687
    .inst 0x39401a88
    .inst 0xaa1903e2
    .inst 0x39401e89
    .inst 0xaa1603e3
    .inst 0x52810784
    .inst 0x2a1a03e5
    .inst 0xb90003e8
    .inst 0xb9000be9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a61
    .inst 0xaa1c03e0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1cd1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1cd1
    .inst 0xaa1603e3
    .inst 0x528107e4
    .inst 0x5281f805
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf85f03a8
    .inst 0xf13efd1f
    .inst 0x540019c9
    .inst 0x5281f809
    .inst 0xf85f83a8
    .inst 0x91002280
    .inst 0x9b092341
    .inst 0x5281f802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x52800168
    .inst 0xd1000d09
    .inst 0xeb0902ff
    .inst 0x54001869
    .inst 0xeb0802ff
    .inst 0x54001829
    .inst 0x8b080289
    .inst 0x8b08028a
    .inst 0x3940012b
    .inst 0x385fd14c
    .inst 0x385ff12d
    .inst 0x381fd14b
    .inst 0xd1002d0a
    .inst 0x385fe12b
    .inst 0x91001108
    .inst 0xf13ef15f
    .inst 0x3900012c
    .inst 0x381fe12d
    .inst 0x381ff12b
    .inst 0x54fffdc3
    .inst 0xf1000b5f
    .inst 0x540012e0
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x52800042
    .inst 0xaa1403e3
    .inst 0x5281f904
    .inst 0x97fffec8
    .reloc .-4, R_AARCH64_CALL26, aw9620x_send_once_cmd
    .inst 0x350013a0
    .inst 0xf9400fe8
    .inst 0x9100075a
    .inst 0x113f0318
    .inst 0x1100077b
    .inst 0xeb08035f
    .inst 0x54fff321
    .inst 0x350001b5
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x2a1f03e0
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb40012d7
    .inst 0x53187f66
    .inst 0xf10006ff
    .inst 0x39000286
    .inst 0x54001240
    .inst 0x53107f68
    .inst 0xf1000aff
    .inst 0x39000688
    .inst 0x540011c0
    .inst 0x53087f68
    .inst 0xf10012ff
    .inst 0x39000a88
    .inst 0x54001143
    .inst 0x39000e9b
    .inst 0x54001100
    .inst 0x53187f08
    .inst 0xf10016ff
    .inst 0x39001288
    .inst 0x54001080
    .inst 0x53107f08
    .inst 0xf1001eff
    .inst 0x39001688
    .inst 0x54001003
    .inst 0x53087f08
    .inst 0x39001a88
    .inst 0x54000fa0
    .inst 0xf9401a61
    .inst 0x53105f67
    .inst 0x53083f68
    .inst 0x12001f69
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3ad7
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3ad7
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0xaa1603e0
    .inst 0xaa1a03e2
    .inst 0xaa1b03e3
    .inst 0x52810ca4
    .inst 0x2a1503e5
    .inst 0x39001e98
    .inst 0xb9000be9
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a61
    .inst 0x39401286
    .inst 0xaa1603e0
    .inst 0x39401687
    .inst 0x39401a88
    .inst 0xaa1a03e2
    .inst 0x39401e89
    .inst 0xaa1b03e3
    .inst 0x52810ca4
    .inst 0x2a1503e5
    .inst 0xb90003e8
    .inst 0xb9000be9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf10022e8
    .inst 0x9a8833e1
    .inst 0xeb15003f
    .inst 0x54000c43
    .inst 0xf9400be9
    .inst 0x91002280
    .inst 0xaa1503e2
    .inst 0x53144d28
    .inst 0x4b091908
    .inst 0xf85f83a9
    .inst 0x8b080121
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x52800168
    .inst 0xd1000d09
    .inst 0xeb0902ff
    .inst 0x540009a9
    .inst 0xeb0802ff
    .inst 0x54000969
    .inst 0x8b080289
    .inst 0x8b08028a
    .inst 0x3940012b
    .inst 0x385fd14c
    .inst 0x385ff12d
    .inst 0x381fd14b
    .inst 0xd1001d0a
    .inst 0x385fe12b
    .inst 0x91001108
    .inst 0xeb15015f
    .inst 0x3900012c
    .inst 0x381fe12d
    .inst 0x381ff12b
    .inst 0x54fffdc3
    .inst 0x5287f008
    .inst 0x0b150309
    .inst 0x72a20008
    .inst 0x32001908
    .inst 0x6b08013f
    .inst 0x54000228
    .inst 0x110022a4
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x52800042
    .inst 0xaa1403e3
    .inst 0x97fffe4e
    .reloc .-4, R_AARCH64_CALL26, aw9620x_send_once_cmd
    .inst 0x34fff1c0
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x39a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x39a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x52810ec4
    .inst 0x14000022
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x8a8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x8a8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x52810de4
    .inst 0x2a1803e5
    .inst 0x2a1503e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x14000017
    .inst 0xf9401a61
    .inst 0x5287f005
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x8a8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x8a8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x528108e4
    .inst 0x72a20005
    .inst 0x5281f806
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x1400000a
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x39a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x39a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x528109a4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x12800000
    .inst 0x17ffff62
    .inst 0xd4200020
    .inst 0xf85f03a1
    .inst 0x52800220
    .inst 0x5281f802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x528001e0
    .inst 0xaa1703e1
    .inst 0xaa1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x52800220
    .inst 0xaa1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0xd5384118
    .inst 0xf9402b1a
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_codetag_base+0x50
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_codetag_base+0x50
    .inst 0xaa1703e0
    .inst 0x5281b801
    .inst 0xf9002b08
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9002b1a
    .inst 0xb5ffd8d4
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1566
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1566
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1143
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1143
    .inst 0x528104c4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17ffff40
.size aw9620x_cycle_write_firmware, .-aw9620x_cycle_write_firmware
