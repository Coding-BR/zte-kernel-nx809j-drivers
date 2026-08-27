.section .text,"ax",@progbits
.align 2
.global gpio_keys_show_GamekeyStatus
.type gpio_keys_show_GamekeyStatus, %function
    .inst 0xae84bcd4
gpio_keys_show_GamekeyStatus:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf9404c09
    .inst 0xaa0203f3
    .inst 0xf9400128
    .inst 0xb9400908
    .inst 0x7100051f
    .inst 0x5400034b
    .inst 0x91044134
    .inst 0x14000004
    .inst 0xf1000508
    .inst 0x91044294
    .inst 0x540002a0
    .inst 0xf8538289
    .inst 0xb4ffff89
    .inst 0xf855028a
    .inst 0x7940014a
    .inst 0x71003d5f
    .inst 0x54ffff01
    .inst 0xb9401929
    .inst 0x7100153f
    .inst 0x54fffea1
    .inst 0xf8548280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_value_cansleep
    .inst 0xb9400288
    .inst 0x2a0003f4
    .inst 0x2a0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0x7100029f
    .inst 0x7a400804
    .inst 0x1a9f07f4
    .inst 0x14000002
    .inst 0x12800014
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_show_GamekeyStatus_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_show_GamekeyStatus_log
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_show_GamekeyStatus_fmt
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_show_GamekeyStatus_fmt
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c00
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_show_GamekeyStatus, .-gpio_keys_show_GamekeyStatus
