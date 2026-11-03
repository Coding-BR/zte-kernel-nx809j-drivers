.section .text,"ax",@progbits
.align 2
.global aw_i2c_probe_stock_exact
.type aw_i2c_probe_stock_exact, %function
    .word 0x0c5e2bbf
aw_i2c_probe_stock_exact:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa0003f6
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9418415
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1115
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1115
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400ec0
    .inst 0xf9400808
    .inst 0xf9401108
    .inst 0xb85fc110
    .inst 0x729d62d1
    .inst 0x72af9851
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x360002c0
    .inst 0x910082d4
    .inst 0x5280df01
    .inst 0x5281b802
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb50002a0
    .inst 0x12800160
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54006861
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1c6f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1c6f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800080
    .inst 0x17ffffee
    .inst 0xaa0003f3
    .inst 0xf9019014
    .inst 0xf9019416
    .inst 0xf9005ec0
    .inst 0xb5001dd5
    .inst 0x12800008
    .inst 0xb9005e68
    .inst 0xb9005268
    .inst 0xb9405e61
    .inst 0x37f800e1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2941
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2941
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_gpio_request_one
    .inst 0x350022a0
    .inst 0xb9405261
    .inst 0x37f800e1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2c36
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2c36
    .inst 0xaa1403e0
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_gpio_request_one
    .inst 0x350022e0
    .inst 0x2a1f03f6
    .inst 0x2a1f03f9
    .inst 0x52800408
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1688
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1688
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x910013fc
    .inst 0x391bce68
    .inst 0x1400000f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x94a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x94a
    .inst 0xaa1703e1
    .inst 0x52804262
    .inst 0xaa1a03e3
    .inst 0x2a1903e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x710012df
    .inst 0x110006d6
    .inst 0x540047e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb54
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb54
    .inst 0xaa1703e1
    .inst 0x52802e22
    .inst 0xaa1803e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9405e60
    .inst 0x37f80220
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_raw_value_cansleep
    .inst 0x52807d00
    .inst 0x5280fa01
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xb9405e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_raw_value_cansleep
    .inst 0x5283e800
    .inst 0x52842681
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x14000007
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x97e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x97e
    .inst 0xaa1703e1
    .inst 0x52802f02
    .inst 0xaa1803e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9419668
    .inst 0x52a0002a
    .inst 0x910023e1
    .inst 0x52800042
    .inst 0x79000bff
    .inst 0x79400509
    .inst 0xf90013fc
    .inst 0xf9400d00
    .inst 0xb800a3ea
    .inst 0x910003ea
    .inst 0x790013e9
    .inst 0x790033e9
    .inst 0x320083e9
    .inst 0x390003ff
    .inst 0x79001fff
    .inst 0xf9000bea
    .inst 0xb801a3e9
    .inst 0x79003fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x2a0003fb
    .inst 0x36f80120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x905
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x905
    .inst 0xaa1703e1
    .inst 0x52800ca2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaaa
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaaa
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000031
    .inst 0x71000b7f
    .inst 0x540004e1
    .inst 0x394013fb
    .inst 0x721e137f
    .inst 0x54000361
    .inst 0xf9419668
    .inst 0x52800ae9
    .inst 0x52a0002a
    .inst 0x390003e9
    .inst 0x910023e1
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf90013fc
    .inst 0xf9400d00
    .inst 0xb800a3ea
    .inst 0x910003ea
    .inst 0x790013e9
    .inst 0x790033e9
    .inst 0x52800029
    .inst 0x72a00049
    .inst 0x79001fff
    .inst 0xf9000bea
    .inst 0xb801a3e9
    .inst 0x79003fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x2a0003fb
    .inst 0x37fffbc0
    .inst 0x71000b7f
    .inst 0x54000181
    .inst 0x79400be8
    .inst 0x5ac0051b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb8a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb8a
    .inst 0xaa1703e1
    .inst 0x528037a2
    .inst 0xaa1a03e3
    .inst 0x2a1b03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1b03f9
    .inst 0x14000017
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x162e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x162e
    .inst 0xaa1703e1
    .inst 0x52800d02
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaaa
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaaa
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000bb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb8a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb8a
    .inst 0xaa1703e1
    .inst 0x528037a2
    .inst 0xaa1a03e3
    .inst 0x2a1903e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2832
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2832
    .inst 0xaa1703e1
    .inst 0x528037e2
    .inst 0xaa1a03e3
    .inst 0x2a1b03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x528e2de8
    .inst 0x6b08033f
    .inst 0x540001cd
    .inst 0x52924be8
    .inst 0x6b08033f
    .inst 0x5400028c
    .inst 0x528e2fe8
    .inst 0x6b08033f
    .inst 0x5400044c
    .inst 0x528e2e08
    .inst 0x6b08033f
    .inst 0x54001c80
    .inst 0x528e2e28
    .inst 0x6b08033f
    .inst 0x54ffed61
    .inst 0x140000f7
    .inst 0x71001b3f
    .inst 0x5400024d
    .inst 0x71025b3f
    .inst 0x540004ac
    .inst 0x71001f3f
    .inst 0x54001f80
    .inst 0x7102573f
    .inst 0x54ffec41
    .inst 0x140000e2
    .inst 0x52924fe8
    .inst 0x6b08033f
    .inst 0x540002cc
    .inst 0x52924c08
    .inst 0x6b08033f
    .inst 0x54001120
    .inst 0x52924e08
    .inst 0x6b08033f
    .inst 0x54ffeb01
    .inst 0x14000107
    .inst 0x7100133f
    .inst 0x54001640
    .inst 0x7100173f
    .inst 0x540017a0
    .inst 0x71001b3f
    .inst 0x54ffea21
    .inst 0x14000093
    .inst 0x528e3008
    .inst 0x6b08033f
    .inst 0x540010a0
    .inst 0x52924a08
    .inst 0x6b08033f
    .inst 0x54ffe941
    .inst 0x14000103
    .inst 0x52925008
    .inst 0x6b08033f
    .inst 0x54002140
    .inst 0x52927008
    .inst 0x6b08033f
    .inst 0x54ffe861
    .inst 0x140000e7
    .inst 0x71025f3f
    .inst 0x54001200
    .inst 0x528e2a08
    .inst 0x6b08033f
    .inst 0x54ffe7a1
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7d9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7d9
    .inst 0x3900127f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803d02
    .inst 0x14000100
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1202
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1202
    .inst 0xaa1503e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0xb9005e60
    .inst 0x36f80260
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x184c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x184c
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x120d
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x120d
    .inst 0xaa1503e1
    .inst 0x52802a02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x222a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x222a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0xaa1503e1
    .inst 0x52821f42
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800015
    .inst 0x14000139
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x559
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x559
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x120d
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x120d
    .inst 0x52802a62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24f2
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24f2
    .inst 0xaa1503e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0xb9005260
    .inst 0x36f803c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1f84
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1f84
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x120d
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x120d
    .inst 0x52802ac2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400001e
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2250
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2250
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0x528220c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000116
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2c3d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2c3d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0x52822522
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000109
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2803
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2803
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x120d
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x120d
    .inst 0x52802b02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a28
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a28
    .inst 0x91118262
    .inst 0xaa1503e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u8_array
    .inst 0x36ffd800
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xfdb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xfdb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x120d
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x120d
    .inst 0x52802b62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeb7
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1fab
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1fab
    .inst 0x39005a7f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52804022
    .inst 0x14000096
    .inst 0x52800029
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x927
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x927
    .inst 0x39001269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803ee2
    .inst 0x1400008b
    .inst 0x528000c8
    .inst 0x52800029
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a0
    .inst 0xb9004a68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x39005a69
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x39001269
    .inst 0x52803c62
    .inst 0x1400007e
    .inst 0x528012e8
    .inst 0x52800029
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xd2f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xd2f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803962
    .inst 0xb9004a68
    .inst 0x39005a69
    .inst 0x3900127f
    .inst 0x14000071
    .inst 0x52800088
    .inst 0x52800029
    .inst 0x3900127f
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a2d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a2d
    .inst 0x39005a69
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803ae2
    .inst 0x14000064
    .inst 0x528000a8
    .inst 0x39005a7f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24fb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24fb
    .inst 0xb9004a68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x3900127f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803a22
    .inst 0x14000058
    .inst 0x52800029
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x153a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x153a
    .inst 0x39001269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803da2
    .inst 0x1400004d
    .inst 0x528012a8
    .inst 0x39005a7f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2b95
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2b95
    .inst 0xb9004a68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x3900127f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x528038a2
    .inst 0x14000041
    .inst 0x52800029
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1cb1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1cb1
    .inst 0x39001269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803e42
    .inst 0x14000036
    .inst 0x528000e8
    .inst 0x52800029
    .inst 0x39005a7f
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1873
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1873
    .inst 0x39001269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803ba2
    .inst 0x14000029
    .inst 0x52800809
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3cb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3cb
    .inst 0x391bce69
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52804202
    .inst 0x1400001e
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1af6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1af6
    .inst 0x39005a7f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x528040c2
    .inst 0x14000014
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1cd4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1cd4
    .inst 0x39005a7f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52803f82
    .inst 0x1400000a
    .inst 0xb9004a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1fce
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1fce
    .inst 0x39005a7f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1353
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1353
    .inst 0x52804162
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52801548
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x52800023
    .inst 0x390023e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x52817700
    .inst 0x5281b581
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xb9404a68
    .inst 0x7100011f
    .inst 0x5400022c
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x121b
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x121b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xca3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xca3
    .inst 0xaa1503e1
    .inst 0x528043e2
    .inst 0xaa1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x583
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x583
    .inst 0xaa1503e1
    .inst 0x52804402
    .inst 0xaa1603e3
    .inst 0x14000023
    .inst 0x52927009
    .inst 0x6b09011f
    .inst 0x54000321
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw8693x_func_list
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw8693x_func_list
    .inst 0xaa1303e0
    .inst 0xf9401109
    .inst 0xf902e668
    .inst 0xb85fc130
    .inst 0x729e3e11
    .inst 0x72aa2591
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304520
    .inst 0xd63f0120
    .inst 0x36f80520
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xac3
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xac3
    .inst 0x2a0003e4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0xaa0803e0
    .inst 0x52822962
    .inst 0x2a0403f5
    .inst 0x14000012
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x996
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x996
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x121b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x121b
    .inst 0x52804802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x26d9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x26d9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0x52822882
    .inst 0x128002a4
    .inst 0x128002b5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9405260
    .inst 0x37f80040
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0xb9405e60
    .inst 0x37f80040
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0xaa1403e0
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1503e0
    .inst 0x17fffda6
    .inst 0xf942e668
    .inst 0xaa1403e0
    .inst 0xaa1303e1
    .inst 0xaa1503e2
    .inst 0xf9407108
    .inst 0xb85fc110
    .inst 0x729a6551
    .inst 0x72a5cef1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1403e0
    .inst 0xaa1303e1
    .inst 0x9400015e
    .reloc .-4, R_AARCH64_CALL26, irq_config
    .inst 0x35000420
    .inst 0xaa1303e0
    .inst 0x9400019b
    .reloc .-4, R_AARCH64_CALL26, vibrator_init
    .inst 0xaa1303e0
    .inst 0x94000201
    .reloc .-4, R_AARCH64_CALL26, haptic_init
    .inst 0x52800141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xfd8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xfd8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1136
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1136
    .inst 0x72a000c1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, alloc_workqueue
    .inst 0xf9022660
    .inst 0xb50003c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xcf1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xcf1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0x52822da2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f5
    .inst 0x17ffffce
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7ae
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7ae
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0x528227a2
    .inst 0x17ffffc3
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x52f
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x52f
    .inst 0x2a0003e4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0xaa0803e0
    .inst 0x52822b22
    .inst 0x2a0403f5
    .inst 0x17ffffba
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9400508
    .inst 0xb85fc110
    .inst 0x729e3e11
    .inst 0x72aa2591
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1303e0
    .inst 0x9400026b
    .reloc .-4, R_AARCH64_CALL26, ram_work_init
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1ac7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1ac7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab6
    .inst 0x52822e42
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd503201f
    .inst 0x5287d000
    .inst 0x52819801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_large_noprof
    .inst 0xf9030660
    .inst 0xb4001480
    .inst 0xd503201f
    .inst 0x52819800
    .inst 0x52800041
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, get_free_pages_noprof
    .inst 0xf9030a60
    .inst 0xb40015c0
    .inst 0xd378dc08
    .inst 0xd2c01009
    .inst 0x8b882128
    .inst 0xd346fd08
    .inst 0x927acd08
    .inst 0x140000b7
    .inst 0xb25f7be9
    .inst 0xf2b80009
    .inst 0x8b090108
    .inst 0x52880009
    .inst 0xf829311f
    .inst 0xf9430a68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, richtap_misc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, richtap_misc
    .inst 0x91100109
    .inst 0xf9000509
    .inst 0xf9430a69
    .inst 0x9120012a
    .inst 0xf902050a
    .inst 0xf9430a68
    .inst 0x9130010a
    .inst 0xf904052a
    .inst 0xf9430a69
    .inst 0x9140052a
    .inst 0xf906050a
    .inst 0x5282800a
    .inst 0xf9430a68
    .inst 0x8b0a010a
    .inst 0xf908052a
    .inst 0x5283000a
    .inst 0xf9430a69
    .inst 0x8b0a012a
    .inst 0xf90a050a
    .inst 0x5283800a
    .inst 0xf9430a68
    .inst 0x8b0a010a
    .inst 0xf90c052a
    .inst 0xf9430a69
    .inst 0x9140092a
    .inst 0xf90e050a
    .inst 0x5284800a
    .inst 0xf9430a68
    .inst 0x8b0a010a
    .inst 0xf910052a
    .inst 0x5285000a
    .inst 0xf9430a69
    .inst 0x8b0a012a
    .inst 0xf912050a
    .inst 0x5285800a
    .inst 0xf9430a68
    .inst 0x8b0a010a
    .inst 0xf914052a
    .inst 0xf9430a69
    .inst 0x91400d2a
    .inst 0xf916050a
    .inst 0x5286800a
    .inst 0xf9430a68
    .inst 0x8b0a010a
    .inst 0xf918052a
    .inst 0x5287000a
    .inst 0xf9430a69
    .inst 0x8b0a012a
    .inst 0xf91a050a
    .inst 0x5287800a
    .inst 0xf9430a68
    .inst 0x8b0a010a
    .inst 0xf91c052a
    .inst 0xf9430a69
    .inst 0xf91e0509
    .inst 0xf9430a68
    .inst 0xf9400509
    .inst 0x3900051f
    .inst 0x52800028
    .inst 0xf940052a
    .inst 0x39000528
    .inst 0x52800049
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x52800069
    .inst 0xf940056a
    .inst 0x39000569
    .inst 0x52800089
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x528000a9
    .inst 0xf940056a
    .inst 0x39000569
    .inst 0x528000c9
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x528000e9
    .inst 0xf940056a
    .inst 0x39000569
    .inst 0x52800109
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x52800129
    .inst 0xf940056a
    .inst 0x39000569
    .inst 0x52800149
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x52800169
    .inst 0xf940056a
    .inst 0x39000569
    .inst 0x52800189
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x528001a9
    .inst 0xf940056a
    .inst 0x39000569
    .inst 0x528001c9
    .inst 0xf940054b
    .inst 0x39000549
    .inst 0x528001e9
    .inst 0x39000569
    .inst 0xb26b7be9
    .inst 0x790c3268
    .inst 0x91194268
    .inst 0xf9032669
    .inst 0xf9032a68
    .inst 0xf9032e68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, richtap_rtp_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, richtap_rtp_work
    .inst 0xf9033268
    .inst 0x9119c268
    .inst 0xf9033669
    .inst 0xf9033a68
    .inst 0xf9033e68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, richtap_stop_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, richtap_stop_work
    .inst 0xf9034268
    .inst 0x9118c268
    .inst 0xf9031669
    .inst 0xf9031a68
    .inst 0xf9031e68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tiktap_work_routine
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tiktap_work_routine
    .inst 0xf9032268
    .inst 0xb906be7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, misc_register
    .inst 0x2a1f03e0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_aw_haptic
    .inst 0xf9000113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_aw_haptic
    .inst 0x17fffcba
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd5384115
    .inst 0xf9402ab6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x28
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x28
    .inst 0x5287d000
    .inst 0x52819801
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_large_noprof
    .inst 0xf9002ab6
    .inst 0xf9030660
    .inst 0xb5ffebc0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1c97
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1c97
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x14000012
    .inst 0xd5384115
    .inst 0xf9402ab6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x50
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x50
    .inst 0x52819800
    .inst 0x52800041
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, get_free_pages_noprof
    .inst 0xf9002ab6
    .inst 0xf9030a60
    .inst 0xb5ffea80
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x182d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x182d
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0xf9430660
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb9405260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x2a0003e1
    .inst 0xaa1403e0
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_free_irq
    .inst 0x2a1f03f5
    .inst 0x17fffedf
    .inst 0xb25f7be9
    .inst 0xf2b80009
    .inst 0x8b090108
    .inst 0xf9800111
    .inst 0xc85f7d09
    .inst 0xb2720129
    .inst 0xc80a7d09
    .inst 0x35ffffaa
    .inst 0x17ffff47
.size aw_i2c_probe_stock_exact, .-aw_i2c_probe_stock_exact

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"

.include "haptic_86938_probe_alloc_tags.inc"
