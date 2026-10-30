.section .text,"ax",@progbits
.align 2
.global aw_i2c_probe
.type aw_i2c_probe, %function
    .word 0x0c5e2bbf
aw_i2c_probe:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9017bfd
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0xf9438908
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4b5
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4b5
    .inst 0xf90007e8
    .inst 0xf9418416
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf32
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400e80
    .inst 0xf9400808
    .inst 0xf9401108
    .inst 0xb85fc110
    .inst 0x729d62d1
    .inst 0x72af9851
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x36000280
    .inst 0x91008295
    .inst 0x52806f01
    .inst 0x5281b802
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb50002e0
    .inst 0x12800160
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54002a41
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa9417bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x3de
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x3de
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4b5
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4b5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800080
    .inst 0x17ffffec
    .inst 0xa91e5015
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xd5c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xd5c
    .inst 0xf9005e80
    .inst 0xaa0003f7
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x2a0003e4
    .inst 0xaa1703f3
    .inst 0xb9001ae0
    .inst 0x37f803e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1048
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1048
    .inst 0x2a0403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_request
    .inst 0xb9401a64
    .inst 0x2a0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x251
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x251
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52804dc2
    .inst 0x2a1703e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x36f80557
    .inst 0xb9401a64
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x344
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x344
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52804e02
    .inst 0x2a1703e5
    .inst 0x2a1703f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a8
    .inst 0xb9001a68
    .inst 0x1400000c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x21b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x21b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52804d22
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a8
    .inst 0xb9001a68
    .inst 0x12804094
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x73a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x73a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4b5
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4b5
    .inst 0x52808942
    .inst 0x2a1403e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9401a60
    .inst 0x37f80080
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x128002a8
    .inst 0xb9001a68
    .inst 0x2a1403e0
    .inst 0x17ffffa7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x603
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x603
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52804e82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9401a60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_output_raw
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xd01
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xd01
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x2a0003e4
    .inst 0xb9000660
    .inst 0x36f80180
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x954
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x954
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52804f82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a8
    .inst 0xb9000668
    .inst 0x17ffffd1
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xddb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xddb
    .inst 0xaa1803e1
    .inst 0x52805002
    .inst 0xaa1703e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd2800a08
    .inst 0x52803849
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb2a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb2a
    .inst 0xf2c07fe8
    .inst 0xaa1803e1
    .inst 0x528050c2
    .inst 0xaa1703e3
    .inst 0x52807fe4
    .inst 0x52800a05
    .inst 0x52803846
    .inst 0xf9000668
    .inst 0x79002a69
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x153
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x153
    .inst 0xaa1603e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xf100001f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf43
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf43
    .inst 0x1a9f07e4
    .inst 0xaa1803e1
    .inst 0x52805122
    .inst 0xaa1703e3
    .inst 0x390d1664
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xca8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xca8
    .inst 0xaa1603e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xf100001f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb64
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb64
    .inst 0x1a9f07e4
    .inst 0xaa1803e1
    .inst 0x52805182
    .inst 0xaa1703e3
    .inst 0x390d1a64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xbbe
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xbbe
    .inst 0x910d2262
    .inst 0xaa1603e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x36f80120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xed1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xed1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52805202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x76d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x76d
    .inst 0x910d3262
    .inst 0xaa1603e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x36f80120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x987
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x987
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa9c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa9c
    .inst 0x52805262
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb943b681
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, irq_handle
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, irq_handle
    .inst 0x90000005
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x910000a5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0xaa1503e0
    .inst 0xaa1f03e2
    .inst 0x52840044
    .inst 0xaa1303e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_request_threaded_irq
    .inst 0x340000a0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x664
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x664
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x52955542
    .inst 0x79000bff
    .inst 0x97fffdd0
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x52817700
    .inst 0x5281b581
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x97fffe36
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x36f802c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x55d
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x55d
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf7a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf7a
    .inst 0x2a0003e4
    .inst 0xaa0803e0
    .inst 0xaa1403e1
    .inst 0x528019a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xe0a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xe0a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x840
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x840
    .inst 0xaa1403e1
    .inst 0x52801bc2
    .inst 0x12800084
    .inst 0x12800094
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000002
    .inst 0x2a0003f4
    .inst 0x79400be4
    .inst 0x528c04e8
    .inst 0x6b08009f
    .inst 0x540006c1
    .inst 0xd28eec29
    .inst 0x79000668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_data_base+0x110
    .inst 0xf2a6c709
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x191
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x191
    .inst 0xf2c64669
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0xf2e00609
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x840
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x840
    .inst 0x52801c62
    .inst 0xf9000109
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_data_base+0x110
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1403e4
    .inst 0x37f80654
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base
    .inst 0xf9000113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x940000f5
    .reloc .-4, R_AARCH64_CALL26, create_pump_proc_entry
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x333
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x333
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base+0x8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_bss_base+0x8
    .inst 0x9107c260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xaa1303e0
    .inst 0x9400017d
    .reloc .-4, R_AARCH64_CALL26, aw86320_misc_para_init
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x12800602
    .inst 0x52800203
    .inst 0x940008bb
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write_bits
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x97fffcff
    .reloc .-4, R_AARCH64_CALL26, aw86320_play_mode
    .inst 0xaa1303e0
    .inst 0x940001a3
    .reloc .-4, R_AARCH64_CALL26, aw86320_interrupt_setup
    .inst 0xaa1303e0
    .inst 0x9400028d
    .reloc .-4, R_AARCH64_CALL26, ram_work_init
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa50
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa50
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4b5
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4b5
    .inst 0x52808d82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x940002a0
    .reloc .-4, R_AARCH64_CALL26, enableMicroPump
    .inst 0x2a1f03e0
    .inst 0x17fffec8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x529
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x529
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x840
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x840
    .inst 0x52801cc2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x128002a4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4fd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4b5
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4b5
    .inst 0x52808b42
    .inst 0x2a0403f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9401a60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_output_raw
    .inst 0xb9401a60
    .inst 0x36ffe020
    .inst 0x17ffff03
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw_i2c_probe, .-aw_i2c_probe
