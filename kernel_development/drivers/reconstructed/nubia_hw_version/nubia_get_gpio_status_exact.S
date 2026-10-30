.section .text,"ax",@progbits
.align 2
.global nubia_get_gpio_status
.type nubia_get_gpio_status, %function
nubia_get_gpio_status:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x2a0003f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_input
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_bss_base+0x18
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x540000a0
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x12001c01
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17fffff5
.size nubia_get_gpio_status, .-nubia_get_gpio_status
