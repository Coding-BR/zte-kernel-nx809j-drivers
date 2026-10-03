.section .text,"ax",@progbits
.align 2
.global gpio_keys_show_disabled_switches
.type gpio_keys_show_disabled_switches, %function
    .inst 0xae84bcd4
gpio_keys_show_disabled_switches:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9404c00
    .inst 0xaa0203e1
    .inst 0x528000a2
    .inst 0x52800023
    .inst 0x97fffeb8
    .reloc .-4, R_AARCH64_CALL26, gpio_keys_attr_show_helper
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_show_disabled_switches, .-gpio_keys_show_disabled_switches
