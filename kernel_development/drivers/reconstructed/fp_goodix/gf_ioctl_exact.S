.section .text,"ax",@progbits
.align 2
.global gf_ioctl
.type gf_ioctl, %function
.word 0x2af6cdbb
gf_ioctl:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x528ce009
    .inst 0x12181c2a
    .inst 0xf9438908
    .inst 0x6b09015f
    .inst 0xf81f83a8
    .inst 0x52800328
    .inst 0xb90007ff
    .inst 0x390003e8
    .inst 0x54001881
    .inst 0xa900ffff
    .inst 0x37f800a1
    .inst 0x531e7c28
    .inst 0x34000248
    .inst 0xd5384109
    .inst 0x14000002
    .inst 0xd5384109
    .inst 0x3941192a
    .inst 0x53107428
    .inst 0x3728008a
    .inst 0xf940012a
    .inst 0xaa0203e9
    .inst 0x36d0006a
    .inst 0xd378dc49
    .inst 0x8a892049
    .inst 0xd2c0100a
    .inst 0xcb080148
    .inst 0xeb09011f
    .inst 0x54000062
    .inst 0x928001a0
    .inst 0x140000b0
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf+0x70
    .inst 0x39400268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, gf+0x70
    .inst 0x34000fc8
    .inst 0x528ce0c8
    .inst 0xaa1f03e0
    .inst 0x6b08003f
    .inst 0x540001cd
    .inst 0x528ce088
    .inst 0x72a80088
    .inst 0x6b08003f
    .inst 0x540005ad
    .inst 0x528ce1a8
    .inst 0x72a80088
    .inst 0x6b08003f
    .inst 0x540009ec
    .inst 0x528ce0a8
    .inst 0x72a80088
    .inst 0x6b08003f
    .inst 0x540013a0
    .inst 0x140000a7
    .inst 0x528ce048
    .inst 0x6b08003f
    .inst 0x5400026d
    .inst 0x528ce0c8
    .inst 0x6b08003f
    .inst 0x540012c0
    .inst 0x528ce068
    .inst 0x6b08003f
    .inst 0x54001a80
    .inst 0x528ce088
    .inst 0x6b08003f
    .inst 0x54001361
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0bba
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0bba
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gf
    .inst 0x940001e1
    .reloc .-4, R_AARCH64_CALL26, gf_disable_irq
    .inst 0x140000aa
    .inst 0x528ce008
    .inst 0x6b08003f
    .inst 0x5400044c
    .inst 0x528ce008
    .inst 0x72b00028
    .inst 0x6b08003f
    .inst 0x54000d80
    .inst 0x528ce168
    .inst 0x72b00028
    .inst 0x6b08003f
    .inst 0x540010e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_04b3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_04b3
    .inst 0x14000099
    .inst 0x528ce128
    .inst 0x6b08003f
    .inst 0x54000a6c
    .inst 0x528ce0e8
    .inst 0x6b08003f
    .inst 0x54001040
    .inst 0x528ce108
    .inst 0x6b08003f
    .inst 0x54000f61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0167
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0167
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39400268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, gf+0x70
    .inst 0x34001e88
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gf_power_off
    .inst 0xaa1f03e0
    .inst 0x3900027f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, gf+0x70
    .inst 0x14000063
    .inst 0x528ce028
    .inst 0x6b08003f
    .inst 0x54000b20
    .inst 0x528ce048
    .inst 0x6b08003f
    .inst 0x54000d01
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0149
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0149
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gf
    .inst 0x528000a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gf_hw_reset
    .inst 0x14000076
    .inst 0x528ce1c8
    .inst 0x72a80088
    .inst 0x6b08003f
    .inst 0x54001040
    .inst 0x528ce128
    .inst 0x72a80108
    .inst 0x6b08003f
    .inst 0x54000e00
    .inst 0x528ce1a8
    .inst 0x72a80108
    .inst 0x6b08003f
    .inst 0x54000a41
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fcc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fcc
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0xaa0203f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910043e0
    .inst 0xaa1303e1
    .inst 0x52800102
    .inst 0x9400025a
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0xb5fff160
    .inst 0x394043e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_018d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_018d
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394047e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0e07
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0e07
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39404be1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_09e4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_09e4
    .inst 0x1400003d
    .inst 0x128ce0c8
    .inst 0x0b080028
    .inst 0x7100051f
    .inst 0x54000508
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0131
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0131
    .inst 0x2a0103f4
    .inst 0xaa0203f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1503e2
    .inst 0x2a1403e1
    .inst 0x17ffff78
    .inst 0x528ce148
    .inst 0x6b08003f
    .inst 0x540007e0
    .inst 0x528ce188
    .inst 0x6b08003f
    .inst 0x54000521
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_00c2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_00c2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gf_cleanup
    .inst 0x14000038
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_00a5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_00a5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0xaa0203f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910003e1
    .inst 0xaa1303e0
    .inst 0x940001fe
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_to_user
    .inst 0x928001a8
    .inst 0xf100001f
    .inst 0x9a8803e0
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_09c7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_09c7
    .inst 0x14000025
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0078
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0078
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x92800240
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540011c1
    .inst 0xa9444ff4
    .inst 0xf9401bf5
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0e21
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0e21
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000015
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_037c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_037c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39400268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, gf+0x70
    .inst 0x7100051f
    .inst 0x54000e20
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gf_power_on
    .inst 0x52800028
    .inst 0xaa1f03e0
    .inst 0x39000268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, gf+0x70
    .inst 0x17ffffe3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_048a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_048a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03e0
    .inst 0x17ffffdc
    .inst 0x910023e0
    .inst 0xaa0203e1
    .inst 0x52800102
    .inst 0x940001f5
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0xb50003e0
    .inst 0xb9400be3
    .inst 0x7100047f
    .inst 0x54000460
    .inst 0x7100147f
    .inst 0x540003e0
    .inst 0x7100087f
    .inst 0x54000421
    .inst 0x52800e93
    .inst 0x14000020
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0468
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0468
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0xaa0203f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e0
    .inst 0xaa1303e1
    .inst 0x52800082
    .inst 0x940001e1
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0xb5000a40
    .inst 0xb94007e0
    .inst 0x9400013f
    .reloc .-4, R_AARCH64_CALL26, nav_event_input
    .inst 0x17ffffe3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0c97
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0c97
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0fc3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0fc3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000123
    .reloc .-4, R_AARCH64_CALL26, gf_enable_irq
    .inst 0x17ffffdc
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_10a9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_10a9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928001a0
    .inst 0x17ffffb4
    .inst 0x52801a93
    .inst 0x14000004
    .inst 0x52800cd3
    .inst 0x14000002
    .inst 0x2a0303f3
    .inst 0xb9400fe4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_023e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_023e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_070a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_070a
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400be8
    .inst 0x7100151f
    .inst 0x54000060
    .inst 0x7100091f
    .inst 0x54000341
    .inst 0xb9400fe8
    .inst 0x7100051f
    .inst 0x54fff861
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf+0x30
    .inst 0x52800021
    .inst 0x2a1303e2
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, gf+0x30
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, gf+0x30
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, gf+0x30
    .inst 0x52800021
    .inst 0x2a1303e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, gf+0x30
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xb9400be8
    .inst 0x7100051f
    .inst 0x54fff561
    .inst 0xb9400fe8
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gf+0x30
    .inst 0x52800021
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, gf+0x30
    .inst 0x2a1303e2
    .inst 0x7100011f
    .inst 0x1a9f07e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9400280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, gf+0x30
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x17ffff9d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_06dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_06dd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff90
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0000
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff0d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fp_goodix_exact_rodata_0dcc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fp_goodix_exact_rodata_0dcc
    .inst 0x17ffffb9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size gf_ioctl, .-gf_ioctl
