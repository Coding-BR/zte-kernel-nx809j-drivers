.section .text,"ax",@progbits
.align 2
.global gpio_keys_store_disabled_keys
.type gpio_keys_store_disabled_keys, %function
    .inst 0x95c41a97
gpio_keys_store_disabled_keys:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xf9404c00
    .inst 0xaa0203e1
    .inst 0x52800022
    .inst 0xaa0303f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_keys_attr_store_helper
    .inst 0xf100001f
    .inst 0x9a800260
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_store_disabled_keys, .-gpio_keys_store_disabled_keys
