.section .text,"ax",@progbits
.align 2
.inst 0xe10dda21
.global syna_tcm_v1_read_message
.type syna_tcm_v1_read_message, %function
syna_tcm_v1_read_message:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0xb4001de0
    .inst 0xf9402408
    .inst 0xaa0003f3
    .inst 0xb4001de8
    .inst 0x394dea68
    .inst 0xaa0103f9
    .inst 0x7100051f
    .inst 0x540000c1
    .inst 0xb941fa68
    .inst 0x7100011f
    .inst 0x1a9f17fa
    .inst 0xb5000099
    .inst 0x14000005
    .inst 0x2a1f03fa
    .inst 0xb4000079
    .inst 0x52801fe8
    .inst 0x39000328
    .inst 0x910d2260
    .inst 0x3907f67f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0262
    .inst 0x35001c82
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0x11000508
    .inst 0x390a0268
    .inst 0x340001ba
    .inst 0xb9437e68
    .inst 0x52800096
    .inst 0x34000168
    .inst 0x394e0269
    .inst 0x394e126a
    .inst 0x7100013f
    .inst 0x528000c9
    .inst 0x0b0a0108
    .inst 0x1a961129
    .inst 0x0b090108
    .inst 0x11000516
    .inst 0x14000002
    .inst 0x52800096
    .inst 0xf9402668
    .inst 0x39405509
    .inst 0x7100053f
    .inst 0x91090269
    .inst 0xf81f83a9
    .inst 0x54000101
    .inst 0xb9401d09
    .inst 0x6b0902df
    .inst 0x540000a9
    .inst 0xb9401908
    .inst 0x34001648
    .inst 0x1ac80ac9
    .inst 0x1b087d36
    .inst 0xb9424a68
    .inst 0x91092275
    .inst 0x6b0802df
    .inst 0x54000309
    .inst 0xf85f83a8
    .inst 0xf9400114
    .inst 0xb40000b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4005f60
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4005fc0
    .inst 0x710002df
    .inst 0x54001aad
    .inst 0x2a1603f4
    .inst 0x5281b802
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf85f83a8
    .inst 0xf9000100
    .inst 0xb4005f80
    .inst 0x2a1f03e1
    .inst 0xaa1403e2
    .inst 0xb9024a76
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xb9024e7f
    .inst 0xf9412262
    .inst 0xb9424a63
    .inst 0xaa1303e0
    .inst 0x2a1603e1
    .inst 0x9400054f
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_read
    .inst 0x37f81520
    .inst 0xf9412278
    .inst 0x79400708
    .inst 0xb9020268
    .inst 0x39400708
    .inst 0x34000048
    .inst 0x3907f668
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x54001641
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb9420268
    .inst 0x34002cc8
    .inst 0x39400709
    .inst 0x71000d3f
    .inst 0x54000601
    .inst 0xb9403e68
    .inst 0x52800809
    .inst 0x7100011f
    .inst 0x1a880134
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4005e20
    .inst 0x321f77e8
    .inst 0x6b08029f
    .inst 0x54005e28
    .inst 0x11000681
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb4005e40
    .inst 0xaa0003f5
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x52800c98
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ce6
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ce6
    .inst 0xf9402660
    .inst 0xb4006840
    .inst 0xf9401008
    .inst 0xb40067e8
    .inst 0xaa1503e1
    .inst 0x2a1403e2
    .inst 0xb85fc110
    .inst 0x728403f1
    .inst 0x72a51491
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f86740
    .inst 0x394006a8
    .inst 0x340000e8
    .inst 0x52807d00
    .inst 0x5280fa01
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x71000718
    .inst 0x54fffd61
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4006700
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x12801e37
    .inst 0x14000482
    .inst 0x710012c9
    .inst 0x6b090109
    .inst 0x1a8933e9
    .inst 0x710012df
    .inst 0x1a88812d
    .inst 0x340025cd
    .inst 0x529fffe9
    .inst 0x6a2d013f
    .inst 0x54005b00
    .inst 0x394e0269
    .inst 0x394e126c
    .inst 0x1100150a
    .inst 0x11001d08
    .inst 0x11000dab
    .inst 0x394a0262
    .inst 0x7100013f
    .inst 0x2a0c0129
    .inst 0x1100058c
    .inst 0x1a8a1108
    .inst 0x1a8d156b
    .inst 0x7200013f
    .inst 0x0b0c0108
    .inst 0x0b0c016b
    .inst 0xf9000bf8
    .inst 0x1a8a1114
    .inst 0x1a8d157b
    .inst 0xb9001bed
    .inst 0x350059a2
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0xb9424a78
    .inst 0x11000696
    .inst 0x11000508
    .inst 0x6b16031f
    .inst 0x390a0268
    .inst 0x540002e2
    .inst 0xf85f83a8
    .inst 0xf9400117
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4006540
    .inst 0x12b00008
    .inst 0x6b08029f
    .inst 0x540067e2
    .inst 0xaa1603e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf85f83a8
    .inst 0xf9000100
    .inst 0xb4006800
    .inst 0xb40071b7
    .inst 0xaa1703e1
    .inst 0xaa1803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40073e0
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xb90002b6
    .inst 0xf9402668
    .inst 0xb9403e69
    .inst 0x3940550a
    .inst 0x7100013f
    .inst 0x1a890289
    .inst 0x7100055f
    .inst 0x540001e1
    .inst 0xb9401beb
    .inst 0x2a1f03f6
    .inst 0x34000809
    .inst 0xb940190a
    .inst 0x2a1603e8
    .inst 0x340007ca
    .inst 0x1aca0928
    .inst 0x1b0a7d16
    .inst 0x35000136
    .inst 0x2a1f03e8
    .inst 0x14000039
    .inst 0x2a1f03f6
    .inst 0x91092275
    .inst 0x17ffff6a
    .inst 0xb9401beb
    .inst 0x2a0903f6
    .inst 0x34ffff36
    .inst 0x0b160288
    .inst 0x51000508
    .inst 0x1ad60908
    .inst 0x1400002f
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
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbbf7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbbf7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e17
    .inst 0x1400042d
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
    .inst 0x17ffff18
    .inst 0x2a0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x70f7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x70f7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbbf7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbbf7
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x540072c1
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x52801fe8
    .inst 0xb902027f
    .inst 0x3907f668
    .inst 0x14000409
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17ffff49
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x14000227
    .inst 0x2a1603e8
    .inst 0xb9420269
    .inst 0x394c4262
    .inst 0x7100051f
    .inst 0xb90007fa
    .inst 0x1a9f8514
    .inst 0x4b0b0129
    .inst 0xf90007f9
    .inst 0x1100113a
    .inst 0x35005062
    .inst 0x910b8260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394c4268
    .inst 0x2a1f03f9
    .inst 0x2a1f03f5
    .inst 0x51000ac9
    .inst 0x52801ffc
    .inst 0x11000508
    .inst 0x293ddba9
    .inst 0x390c4268
    .inst 0x1400000a
    .inst 0xf85f83a8
    .inst 0x52800b4a
    .inst 0x5100077b
    .inst 0xf9400108
    .inst 0x383a490a
    .inst 0x1100075a
    .inst 0x6b1402ff
    .inst 0x2a1703f9
    .inst 0x54000fa2
    .inst 0x6b16037f
    .inst 0x11000737
    .inst 0x1a9b8138
    .inst 0x7100071f
    .inst 0x54fffe60
    .inst 0x6b1402ff
    .inst 0x540001c1
    .inst 0xf9402668
    .inst 0x39405509
    .inst 0x36000169
    .inst 0xb9401d09
    .inst 0x6b09031f
    .inst 0x54000109
    .inst 0xb9401908
    .inst 0x34000068
    .inst 0x1ac80b09
    .inst 0x1b087d28
    .inst 0x51000918
    .inst 0x6b1b031f
    .inst 0x1a940694
    .inst 0xb942da62
    .inst 0xb81f43b4
    .inst 0x11000b16
    .inst 0xf9416a74
    .inst 0x6b16005f
    .inst 0x54000242
    .inst 0xb40000b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000ac0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000b20
    .inst 0x710002df
    .inst 0x54006b6d
    .inst 0xaa1603e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9016a60
    .inst 0xb4006b80
    .inst 0xaa0003f4
    .inst 0xaa1603e2
    .inst 0xb902da76
    .inst 0xaa1403e0
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x110006a8
    .inst 0xb902de7f
    .inst 0x7100151f
    .inst 0x528000a8
    .inst 0x1a95d514
    .inst 0xb9421260
    .inst 0x7100041f
    .inst 0x5400010b
    .inst 0xb9421668
    .inst 0x7100051f
    .inst 0x540000ab
    .inst 0x6b00011f
    .inst 0x52800042
    .inst 0x1a808101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9416a62
    .inst 0xb942da63
    .inst 0xaa1303e0
    .inst 0x2a1603e1
    .inst 0x94000429
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_read
    .inst 0x37f80140
    .inst 0xf9416a68
    .inst 0xb902de76
    .inst 0x3940051c
    .inst 0x71000f9f
    .inst 0x54000280
    .inst 0x110006b5
    .inst 0x710016bf
    .inst 0x54fffd2b
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5def
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5def
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x229d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x229d
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff6
    .inst 0xb85f03b6
    .inst 0x71000f9f
    .inst 0x540063a1
    .inst 0xf9416a68
    .inst 0x2a1403f5
    .inst 0xb1000901
    .inst 0x540000a1
    .inst 0x140002b3
    .inst 0xb85f03b6
    .inst 0xb1000901
    .inst 0x54005600
    .inst 0xf85f83a8
    .inst 0xf9400108
    .inst 0x8b3a4100
    .inst 0xb4005580
    .inst 0xb942da68
    .inst 0x51000902
    .inst 0xb9424a68
    .inst 0x6b02031f
    .inst 0x4b1a0103
    .inst 0x54005408
    .inst 0x6b03031f
    .inst 0x540053c8
    .inst 0x2a1803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb85f43b4
    .inst 0xb85ec3a9
    .inst 0x0b1a031a
    .inst 0x4b18037b
    .inst 0x5280007c
    .inst 0x17ffff8c
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
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5fff520
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x14000304
    .inst 0x2a1f03f4
    .inst 0x2a1f03f7
    .inst 0xb9024e7a
    .inst 0x394c4262
    .inst 0xa940e3f9
    .inst 0xb94007fa
    .inst 0x7100045f
    .inst 0x54003e21
    .inst 0x2a1f03e8
    .inst 0x910b8260
    .inst 0x390c4268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x54003e41
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb9401bed
    .inst 0x350061f4
    .inst 0x394a0262
    .inst 0x350025a2
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0xf9412269
    .inst 0x11000508
    .inst 0x390a0268
    .inst 0x528014a8
    .inst 0x39000128
    .inst 0x3947f668
    .inst 0xf9412269
    .inst 0x39000528
    .inst 0xb9420268
    .inst 0xf9412269
    .inst 0x39000928
    .inst 0xb9420268
    .inst 0xf9412269
    .inst 0x53087d08
    .inst 0x39000d28
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x540023c1
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x394e0268
    .inst 0x7100051f
    .inst 0x540003e1
    .inst 0xb9420268
    .inst 0x340003a8
    .inst 0x394a0262
    .inst 0x35003002
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb942026a
    .inst 0x394a0269
    .inst 0xb9424a6b
    .inst 0x1100154d
    .inst 0x11000528
    .inst 0x6b0d017f
    .inst 0x390a0268
    .inst 0x54000229
    .inst 0xf941226c
    .inst 0x394e126e
    .inst 0x786d498d
    .inst 0x710005df
    .inst 0x7907066d
    .inst 0x540000c1
    .inst 0x11001d4a
    .inst 0x6b0a017f
    .inst 0x54000063
    .inst 0x386a498a
    .inst 0x390e166a
    .inst 0x35003a09
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x52827b08
    .inst 0x3947f676
    .inst 0x8b080274
    .inst 0x8b161288
    .inst 0xf9400508
    .inst 0xb40003a8
    .inst 0x394a0262
    .inst 0x35001f22
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x3947f660
    .inst 0x394a0268
    .inst 0xf941226a
    .inst 0xb9420262
    .inst 0x8b201289
    .inst 0x11000508
    .inst 0x91001141
    .inst 0x390a0268
    .inst 0xa9402d23
    .inst 0xb85fc170
    .inst 0x72988151
    .inst 0x72b3f271
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304560
    .inst 0xd63f0160
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x54001d41
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x3947f676
    .inst 0x710042df
    .inst 0x54000403
    .inst 0xb9420268
    .inst 0x34000828
    .inst 0x39450262
    .inst 0x35002882
    .inst 0x91044260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39450269
    .inst 0xb9420277
    .inst 0xb9410a68
    .inst 0xf9408260
    .inst 0x11000529
    .inst 0x6b17011f
    .inst 0x39050269
    .inst 0x54000702
    .inst 0xb40000c0
    .inst 0xaa0003f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4004700
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4004760
    .inst 0x710002ff
    .inst 0x540033ed
    .inst 0xaa1703e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9008260
    .inst 0xb4004740
    .inst 0xb9010a77
    .inst 0x14000028
    .inst 0xb941fa68
    .inst 0x7100051f
    .inst 0x540057a1
    .inst 0xb9420268
    .inst 0x3907fa76
    .inst 0x34000de8
    .inst 0x39462262
    .inst 0x35003142
    .inst 0x91056260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39462269
    .inst 0xb9420276
    .inst 0xb9415268
    .inst 0xf940a660
    .inst 0x11000529
    .inst 0x6b16011f
    .inst 0x39062269
    .inst 0x54000ce2
    .inst 0xb40000c0
    .inst 0xaa0003f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40050a0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4005100
    .inst 0x710002df
    .inst 0x5400482d
    .inst 0xaa1603e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf900a660
    .inst 0xb40050e0
    .inst 0xb9015276
    .inst 0x14000057
    .inst 0xb9010e7f
    .inst 0xb5005399
    .inst 0x1400029d
    .inst 0xaa0803f7
    .inst 0x2a1f03e1
    .inst 0xaa1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x394a0262
    .inst 0xb9010e7f
    .inst 0x35002082
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0xf9408260
    .inst 0x11000508
    .inst 0x390a0268
    .inst 0xb40021c0
    .inst 0xf9412268
    .inst 0x91001101
    .inst 0xb4002161
    .inst 0xb9410a63
    .inst 0xb9420264
    .inst 0xb9424a68
    .inst 0x6b03009f
    .inst 0x51001102
    .inst 0x54002008
    .inst 0x6b02009f
    .inst 0x54001fc8
    .inst 0xaa0403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x394a0262
    .inst 0xb9420268
    .inst 0x7100045f
    .inst 0xb9010e68
    .inst 0x54002121
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x39450262
    .inst 0x7100045f
    .inst 0x54002141
    .inst 0x2a1f03e8
    .inst 0x91044260
    .inst 0x39050268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x710042df
    .inst 0x540010c1
    .inst 0x394a0262
    .inst 0x35002fc2
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0xb9424a69
    .inst 0xaa1303e0
    .inst 0xf941226a
    .inst 0xb9420263
    .inst 0x11000508
    .inst 0x51001122
    .inst 0x91001141
    .inst 0x390a0268
    .inst 0x97fffcf3
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_parse_idinfo
    .inst 0x37f82ee0
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x54003421
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb941fa68
    .inst 0x7100051f
    .inst 0x54000da1
    .inst 0x3947f268
    .inst 0x7100791f
    .inst 0x54000bac
    .inst 0x7100111f
    .inst 0x54004920
    .inst 0x7100511f
    .inst 0x540048e0
    .inst 0x1400005c
    .inst 0xb901567f
    .inst 0x3947fa62
    .inst 0x35004822
    .inst 0x14000248
    .inst 0xaa0803f6
    .inst 0x2a1f03e1
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x394a0262
    .inst 0xb901567f
    .inst 0x35002382
    .inst 0x91094260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0xf940a660
    .inst 0x11000508
    .inst 0x390a0268
    .inst 0xb4002460
    .inst 0xf9412268
    .inst 0x91001101
    .inst 0xb4002401
    .inst 0xb9415263
    .inst 0xb9420264
    .inst 0xb9424a68
    .inst 0x6b03009f
    .inst 0x51001102
    .inst 0x540022a8
    .inst 0x6b02009f
    .inst 0x54002268
    .inst 0xaa0403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x394a0262
    .inst 0xb9420268
    .inst 0x7100045f
    .inst 0xb9015668
    .inst 0x54002941
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x3947f268
    .inst 0x7100091f
    .inst 0x540000e1
    .inst 0xf940a661
    .inst 0xb9415262
    .inst 0xaa1303e0
    .inst 0xb9415663
    .inst 0x97fffcb0
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_parse_idinfo
    .inst 0x37f83760
    .inst 0x39462262
    .inst 0x7100045f
    .inst 0x54002901
    .inst 0x2a1f03e8
    .inst 0x91056260
    .inst 0x39062268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x3947fa62
    .inst 0x35004142
    .inst 0x14000211
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
    .inst 0x17fffecf
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffedd
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
    .inst 0x17ffff03
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17ffff11
    .inst 0x71007d1f
    .inst 0x54003da0
    .inst 0x7100c51f
    .inst 0x54003d60
    .inst 0x3947c268
    .inst 0x7100051f
    .inst 0x540045c1
    .inst 0xb901fa7f
    .inst 0x91088260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, completion_done
    .inst 0x37000060
    .inst 0x91088260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, complete
    .inst 0x8b365268
    .inst 0xf941f109
    .inst 0xb4003ca9
    .inst 0x39450262
    .inst 0x910f6114
    .inst 0x35002182
    .inst 0x91044260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39450268
    .inst 0xa9402683
    .inst 0xb9410e62
    .inst 0x2a1603e0
    .inst 0xf9408261
    .inst 0x11000508
    .inst 0x39050268
    .inst 0xb85fc130
    .inst 0x72988151
    .inst 0x72b3f271
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304520
    .inst 0xd63f0120
    .inst 0x14000155
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
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ffa080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf85f83a8
    .inst 0xf900011f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2df0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2df0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbbf7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbbf7
    .inst 0xf901267f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x540014a1
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x52801fe8
    .inst 0xb902027f
    .inst 0x12801e57
    .inst 0x3907f668
    .inst 0x140001bb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6bc0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6bc0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6556
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6556
    .inst 0x14000064
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
    .inst 0x17fffe7c
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
    .inst 0x17fffeb8
    .inst 0x12801e17
    .inst 0x14000160
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
    .inst 0x17fffef8
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
    .inst 0x17fffd2f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x142b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x142b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x83b3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x83b3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x540035e1
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x140000f6
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffef2
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
    .inst 0x39450268
    .inst 0x51000508
    .inst 0x17fffef1
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
    .inst 0x17fffd79
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
    .inst 0x394c4268
    .inst 0x51000508
    .inst 0x17fffe0a
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffe09
    .inst 0xaa1703f6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4cd8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4cd8
    .inst 0xaa1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2aa
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2aa
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6556
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6556
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ff9940
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
    .inst 0x12801e37
    .inst 0x14000148
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x12001d02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffe2a
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
    .inst 0x17fffe72
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x1400009a
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
    .inst 0x17fffee0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x14000018
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9a34
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9a34
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc353
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc353
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf85f83a0
    .inst 0x97fff981
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0x14000104
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17ffff56
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf85f83a8
    .inst 0xf900011f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x47bd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x47bd
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5000100
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
    .inst 0xf9400bf8
    .inst 0x140000b8
    .inst 0xf9400bf8
    .inst 0xb40016d7
    .inst 0xaa1703e1
    .inst 0x140000b3
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
    .inst 0x17fffe7e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8c4f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8c4f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x83b3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x83b3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf85f83a0
    .inst 0x97fff951
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0xb5001c39
    .inst 0x140000e2
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffeb1
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
    .inst 0x17fffef0
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
    .inst 0x39462268
    .inst 0x51000508
    .inst 0x17fffeb3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x2a1803e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf83
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf83
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x229d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x229d
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b7
    .inst 0x52800034
    .inst 0x17fffd6b
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffe5a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2d9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2d9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x47bd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x47bd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xf9400bf8
    .inst 0xb50000c0
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
    .inst 0xf85f83a8
    .inst 0xf9400114
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5000ca0
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
    .inst 0x14000062
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
    .inst 0x17fffc5f
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
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ffb8e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900827f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6572
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6572
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x83b3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x83b3
    .inst 0xf900867f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39450262
    .inst 0x7100045f
    .inst 0x540000e1
    .inst 0x2a1f03e8
    .inst 0x91044260
    .inst 0x39050268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb5000ed9
    .inst 0x14000077
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
    .inst 0x39450268
    .inst 0x51000508
    .inst 0x17fffff4
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffc65
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x14000045
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x65b1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x65b1
    .inst 0x1400004f
    .inst 0xb85f43a4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4177
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4177
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x229d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x229d
    .inst 0x2a1c03e2
    .inst 0x2a1903e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e37
    .inst 0x52800034
    .inst 0x17fffd03
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9016a7f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc316
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc316
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x229d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x229d
    .inst 0xf9016e7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e57
    .inst 0x52800034
    .inst 0x17fffcee
    .inst 0xb4000074
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x99f9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x99f9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x229d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x229d
    .inst 0xb90002bf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf85f83a0
    .inst 0x97fff8a3
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0xb9401bed
    .inst 0x12801e57
    .inst 0x39400303
    .inst 0x39400704
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x99ae
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x99ae
    .inst 0x39400b05
    .inst 0x39400f06
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbbf7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbbf7
    .inst 0x2a0d03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000036
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
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ffaf40
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900a67f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900aa7f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3ac0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3ac0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc353
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc353
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91052260
    .inst 0x97fff87b
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0x3947fa62
    .inst 0x34000122
    .inst 0x7100045f
    .inst 0x540005a1
    .inst 0xb901fa7f
    .inst 0x91088260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, completion_done
    .inst 0x37000060
    .inst 0x91088260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, complete
    .inst 0xb4000079
    .inst 0x3947f668
    .inst 0x39000328
    .inst 0x2a1f03f7
    .inst 0x3400019a
    .inst 0xb9403e68
    .inst 0xb9420269
    .inst 0x3947f66b
    .inst 0x5100150a
    .inst 0x6b0a013f
    .inst 0x1a8a312a
    .inst 0x7100011f
    .inst 0x1a8a0128
    .inst 0x7100417f
    .inst 0x1a8833e8
    .inst 0xb9037e68
    .inst 0xb9421260
    .inst 0x7100041f
    .inst 0x5400010b
    .inst 0xb9421668
    .inst 0x7100051f
    .inst 0x540000ab
    .inst 0x6b00011f
    .inst 0x52800042
    .inst 0x1a808101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910d2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1703e0
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x71000c5f
    .inst 0x54000101
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8c80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8c80
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc353
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc353
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb5fffa99
    .inst 0x17ffffd5
    .inst 0x3947f263
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x99b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x99b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc353
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc353
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800008
    .inst 0xb901fa68
    .inst 0x17ffffc4
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
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17fffe4c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa7e7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa7e7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x83b3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x83b3
    .inst 0x52800202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800008
    .inst 0xb901fa68
    .inst 0x17fffdcc
.size syna_tcm_v1_read_message, .-syna_tcm_v1_read_message

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
