.section .text,"ax",@progbits
.align 2
.global aw22xxx_fw_loaded
.type aw22xxx_fw_loaded, %function
    .word 0x879dc3f4
aw22xxx_fw_loaded:
    .inst 0xd503233f
    .inst 0xd102c3ff
    .inst 0xa9057bfd
    .inst 0xa9066ffc
    .inst 0xa90767fa
    .inst 0xa9085ff8
    .inst 0xa90957f6
    .inst 0xa90a4ff4
    .inst 0x910143fd
    .inst 0xd5384108
    .inst 0xaa0103f3
    .inst 0xaa0003f7
    .inst 0xf9438908
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0xf81f83a8
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0x390073ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb5000177
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x647
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x647
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_fw_name
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_fw_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x140002d0
    .inst 0xf94002e3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x31e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x31e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_fw_name
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_fw_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa94022e9
    .inst 0xf1000d2e
    .inst 0x540001e3
    .inst 0xd100092d
    .inst 0xf10009bf
    .inst 0x54000582
    .inst 0x2a1f03eb
    .inst 0x5280004a
    .inst 0x5280004c
    .inst 0x1100058c
    .inst 0x386a690d
    .inst 0x93407d8a
    .inst 0x1100058c
    .inst 0xeb0a013f
    .inst 0x0b0d016b
    .inst 0x54ffff68
    .inst 0x14000002
    .inst 0x2a1f03eb
    .inst 0x79400108
    .inst 0x12003d62
    .inst 0x5ac00908
    .inst 0x6b48405f
    .inst 0x54000261
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x964
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x964
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd503201f
    .inst 0xf94002e8
    .inst 0x5281b801
    .inst 0x91004115
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xb50006f4
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1546
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1546
    .inst 0x1400029c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x545
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x545
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x14000297
    .inst 0x529fffaa
    .inst 0x2a1f03eb
    .inst 0x5280004c
    .inst 0x72afffea
    .inst 0x6b0a01df
    .inst 0x5280004a
    .inst 0x54fffa48
    .inst 0x321e73ef
    .inst 0x6b0f01df
    .inst 0x54fff9e8
    .inst 0xd360fdce
    .inst 0xb5fff9ae
    .inst 0x927ff9af
    .inst 0x2a1f03eb
    .inst 0x91000d10
    .inst 0x910009ea
    .inst 0x110009ec
    .inst 0xaa0f03f1
    .inst 0x385ff200
    .inst 0x38402601
    .inst 0xf1000a31
    .inst 0x0b00016b
    .inst 0x0b0101ce
    .inst 0x54ffff61
    .inst 0xeb0f01bf
    .inst 0x0b0b01cb
    .inst 0x54fff7c1
    .inst 0x17ffffc6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_fw_loaded._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_fw_loaded._alloc_tag
    .inst 0xd5384116
    .inst 0xf9402ad8
    .inst 0xf9002ac8
    .inst 0x5281b801
    .inst 0xf94002e8
    .inst 0x91004115
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9002ad8
    .inst 0xb4fff974
    .inst 0xf94006e8
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf91
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf91
    .inst 0xaa1603e1
    .inst 0x39400902
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94006e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x447
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x447
    .inst 0x9100a3e2
    .inst 0xaa1603e1
    .inst 0xf8403109
    .inst 0xf840b108
    .inst 0xa902a3e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94006e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1389
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1389
    .inst 0x9100a3e2
    .inst 0xaa1603e1
    .inst 0xf8413108
    .inst 0xf90017e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf10012bf
    .inst 0x54004dc3
    .inst 0x927ef6a8
    .inst 0xf100111f
    .inst 0x54004d60
    .inst 0xf94006e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x165f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x165f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0xb841b108
    .inst 0x5ac00902
    .inst 0xb9000682
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf10022bf
    .inst 0x54004c03
    .inst 0x927ef6a8
    .inst 0xf100211f
    .inst 0x54004ba0
    .inst 0xf94006e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x12a8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x12a8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x79404508
    .inst 0x5ac00502
    .inst 0xb9000a82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf10032bf
    .inst 0x54004a43
    .inst 0x927ef6a8
    .inst 0xf100311f
    .inst 0x540049e0
    .inst 0xf94006e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1992
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1992
    .inst 0xaa1603e1
    .inst 0x39409102
    .inst 0xb9000e82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94006e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x139f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x139f
    .inst 0xaa1603e1
    .inst 0x79404d08
    .inst 0x5ac00502
    .inst 0xb9000282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400282
    .inst 0xf10042a8
    .inst 0x9a8833e1
    .inst 0xeb02003f
    .inst 0x54004783
    .inst 0xf94006e8
    .inst 0x91004296
    .inst 0xaa1603e0
    .inst 0x9100a101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x52800aa2
    .inst 0x94000235
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910093e2
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x390093ff
    .inst 0x9400026c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394093e8
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x32000102
    .inst 0x390093e2
    .inst 0x9400021f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910093e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390093ff
    .inst 0x9400025d
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394093e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x32000102
    .inst 0x390093e2
    .inst 0x94000210
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xb9400288
    .inst 0x529fffe9
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x0b090108
    .inst 0x53087d02
    .inst 0x94000209
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x39400288
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x51000502
    .inst 0x94000204
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x528000e2
    .inst 0x94000200
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x52827100
    .inst 0x52832c81
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910073e2
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x9400023f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394073e2
    .inst 0x7100145f
    .inst 0x540004e1
    .inst 0x910073e2
    .inst 0xaa1303e0
    .inst 0x528004a1
    .inst 0x94000238
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394073f7
    .inst 0x910073e2
    .inst 0xaa1303e0
    .inst 0x528004c1
    .inst 0x94000233
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0xf10022bf
    .inst 0x54003ca3
    .inst 0x927ef6a8
    .inst 0xf100211f
    .inst 0x54003c40
    .inst 0x394073e8
    .inst 0xb9400a82
    .inst 0x2a0822e3
    .inst 0x6b02007f
    .inst 0x540003e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x144a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x144a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x2a0303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394bba68
    .inst 0x35003908
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x2a1f03e2
    .inst 0x940001d4
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x94000270
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_led_init
    .inst 0x52800048
    .inst 0x390bbe68
    .inst 0x140001af
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xfac
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xfac
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x13b6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x13b6
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400000f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x12c0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x12c0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x927ef6a8
    .inst 0xf100111f
    .inst 0x540036e0
    .inst 0xb9400682
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xdb2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xdb2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x2a1f03e2
    .inst 0x940001b2
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x390083ff
    .inst 0x940001ad
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x52800aa2
    .inst 0x940001a9
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910093e2
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x390093ff
    .inst 0x940001e0
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394093e8
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x32000102
    .inst 0x390093e2
    .inst 0x94000193
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910093e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390093ff
    .inst 0x940001d1
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394093e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x32000102
    .inst 0x390093e2
    .inst 0x94000184
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52801001
    .inst 0x52801d82
    .inst 0x94000180
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x528006a1
    .inst 0x52800522
    .inst 0x9400017c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xf10032bf
    .inst 0x54002ea3
    .inst 0x927ef6a8
    .inst 0xf100311f
    .inst 0x54002e40
    .inst 0xb9400e82
    .inst 0xaa1303e0
    .inst 0x52800701
    .inst 0x94000173
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x2a1f03e2
    .inst 0x9400016f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x2a1f03e2
    .inst 0x9400016b
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x52800062
    .inst 0x94000167
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x52800062
    .inst 0x94000163
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800461
    .inst 0x2a1f03e2
    .inst 0x9400015f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_ver_var
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_ver_var
    .inst 0x7100311f
    .inst 0x540000c3
    .inst 0x5281f400
    .inst 0x52823281
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x14000003
    .inst 0x52800500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x2a1f03e2
    .inst 0x94000150
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x52800802
    .inst 0x9400014c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x2a1f03e2
    .inst 0x94000148
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x52800042
    .inst 0x94000144
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800461
    .inst 0x2a1f03e2
    .inst 0x52800478
    .inst 0x9400013f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5282ee00
    .inst 0x52832c81
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x2a1f03e2
    .inst 0x94000137
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x52800842
    .inst 0x94000133
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x2a1f03e2
    .inst 0x9400012f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x52800042
    .inst 0x9400012b
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800461
    .inst 0x2a1f03e2
    .inst 0x94000127
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5282ee00
    .inst 0x52832c81
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x2a1f03e2
    .inst 0x9400011f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x52800882
    .inst 0x9400011b
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x2a1f03e2
    .inst 0x94000117
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x52800042
    .inst 0x94000113
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800461
    .inst 0x2a1f03e2
    .inst 0x9400010f
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5282ee00
    .inst 0x52832c81
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x2a1f03e2
    .inst 0x94000107
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x2a1f03e2
    .inst 0x94000103
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x52800062
    .inst 0x940000ff
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xb9400288
    .inst 0x35000be8
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x2a1f03e2
    .inst 0x940000f9
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x52800aa2
    .inst 0x940000f5
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910093e2
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x390093ff
    .inst 0x9400012c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394093e8
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x32000102
    .inst 0x390093e2
    .inst 0x940000df
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910093e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390093ff
    .inst 0x9400011d
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394093e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x32000102
    .inst 0x390093e2
    .inst 0x940000d0
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xb9400288
    .inst 0x529fffe9
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x0b090108
    .inst 0x53087d02
    .inst 0x940000c9
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x39400288
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x51000502
    .inst 0x940000c4
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x528000e2
    .inst 0x940000c0
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x52827100
    .inst 0x52832c81
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910083e2
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x940000ff
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394083e2
    .inst 0x7100145f
    .inst 0x54000e61
    .inst 0x910083e2
    .inst 0xaa1303e0
    .inst 0x528004a1
    .inst 0x940000f8
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394083f6
    .inst 0x910083e2
    .inst 0xaa1303e0
    .inst 0x528004c1
    .inst 0x940000f3
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0xf10022bf
    .inst 0x540014a3
    .inst 0x927ef6a8
    .inst 0xf100211f
    .inst 0x54001440
    .inst 0x394083e8
    .inst 0x2a0822c2
    .inst 0xb9400a88
    .inst 0x6b08005f
    .inst 0x54000d61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x144a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x144a
    .inst 0x1400005f
    .inst 0x2a1f03f7
    .inst 0x52801019
    .inst 0xd5384108
    .inst 0xf9000be8
    .inst 0x1400000f
    .inst 0xaa1c03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1303e0
    .inst 0x52800221
    .inst 0x2a1f03e2
    .inst 0x94000094
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x2a1f03e2
    .inst 0x94000090
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xb9400288
    .inst 0x0b170377
    .inst 0x6b0802ff
    .inst 0x54fff202
    .inst 0x53087ee2
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x94000088
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x2a1703e2
    .inst 0x94000084
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800221
    .inst 0x52800022
    .inst 0x94000080
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800601
    .inst 0x52800082
    .inst 0x9400007c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xb9400288
    .inst 0x4b170108
    .inst 0x7102011f
    .inst 0x1a99311b
    .inst 0xd503201f
    .inst 0x1100077a
    .inst 0x52819801
    .inst 0xaa1a03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003fc
    .inst 0xb400053c
    .inst 0xd1000741
    .inst 0xaa1c03e0
    .inst 0xeb1b003f
    .inst 0x38001418
    .inst 0x54000c23
    .inst 0x2a1703e8
    .inst 0x91004109
    .inst 0xeb0902a9
    .inst 0x9a8933e9
    .inst 0xeb1b013f
    .inst 0x54000bc3
    .inst 0x8b0802c1
    .inst 0xaa1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xf9400260
    .inst 0x11000762
    .inst 0xaa1c03e1
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer_buffer_flags
    .inst 0x36fff880
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x983
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x983
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe8b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe8b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbe
    .inst 0xf9400be9
    .inst 0x1100077a
    .inst 0x52819801
    .inst 0xaa1a03e0
    .inst 0xf9402928
    .inst 0xf90007e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_i2c_writes._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_i2c_writes._alloc_tag
    .inst 0xf9002928
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xa940a7e8
    .inst 0xaa0003fc
    .inst 0xf9002928
    .inst 0xb5fffb3c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xb45
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xb45
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe8b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe8b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffac
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xfac
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xfac
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x19a9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x19a9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52800481
    .inst 0x2a1f03e2
    .inst 0x9400003a
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x52800048
    .inst 0x1400000d
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x19a9
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x19a9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x45e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x45e
    .inst 0xaa1503e1
    .inst 0x2a0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x13cc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x13cc
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800068
    .inst 0xaa1403e0
    .inst 0x390bbe68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1303e0
    .inst 0x390bba7f
    .inst 0x940000c4
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_led_init
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1565
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1565
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1377
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000341
    .inst 0xa94a4ff4
    .inst 0xa94957f6
    .inst 0xa9485ff8
    .inst 0xa94767fa
    .inst 0xa9466ffc
    .inst 0xa9457bfd
    .inst 0x9102c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x927ef6a8
    .inst 0xf100111f
    .inst 0x54000160
    .inst 0xb9400682
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xa22
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xa22
    .inst 0x17fffe54
    .inst 0x52800220
    .inst 0xaa1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x52800200
    .inst 0xaa1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0xd4200020
    .inst 0x52800220
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_fw_loaded, .-aw22xxx_fw_loaded
