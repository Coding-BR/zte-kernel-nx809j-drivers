.section .text,"ax",@progbits
.align 2
.global aw9620x_chip_info_get
.type aw9620x_chip_info_get, %function
    .word 0xae84bcd4
aw9620x_chip_info_get:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9017bfd
    .inst 0xf90013f7
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x99c
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x99c
    .inst 0xf9438908
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2ec4
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2ec4
    .inst 0x52820001
    .inst 0x52820016
    .inst 0xf90007e8
    .inst 0xf9404c15
    .inst 0xaa1303e0
    .inst 0xb90007ff
    .inst 0xb85d02a3
    .inst 0xd100e2b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c17
    .inst 0x910013e2
    .inst 0x529fe001
    .inst 0xaa1403e0
    .inst 0x97ffe652
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007e3
    .inst 0xcb1702c1
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x266d
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x266d
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0x910942a2
    .inst 0xaa1403e0
    .inst 0x52834201
    .inst 0x97ffe647
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94252a3
    .inst 0xcb1702c1
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x212a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x212a
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb9424ea3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3696
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3696
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52888281
    .inst 0x97ffe635
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007e3
    .inst 0xcb1702c1
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x442
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x442
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x385cc2a8
    .inst 0x8b20c2f4
    .inst 0x7100051f
    .inst 0x54000101
    .inst 0x52820008
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1b63
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1b63
    .inst 0xcb140101
    .inst 0x8b140260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c294
    .inst 0x394922a8
    .inst 0x7100051f
    .inst 0x54000241
    .inst 0x52820016
    .inst 0xb9425aa3
    .inst 0xb9425ea4
    .inst 0xb94262a5
    .inst 0xcb1402c1
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xcbb
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xcbb
    .inst 0x8b140260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c294
    .inst 0xb94256a3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2147
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2147
    .inst 0xcb1402c1
    .inst 0x8b140260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c294
    .inst 0xb94266a3
    .inst 0x34000103
    .inst 0x52820008
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ba0
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ba0
    .inst 0xcb140101
    .inst 0x8b140260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c294
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000121
    .inst 0xaa1403e0
    .inst 0xa9444ff4
    .inst 0xf94013f7
    .inst 0xa94357f6
    .inst 0xa9417bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_chip_info_get, .-aw9620x_chip_info_get
