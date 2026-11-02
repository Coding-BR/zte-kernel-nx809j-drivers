.section .text,"ax",@progbits
.align 2
.global gpio_keys_store_GamekeyStatus
.type gpio_keys_store_GamekeyStatus, %function
    .inst 0x95c41a97
gpio_keys_store_GamekeyStatus:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_store_GamekeyStatus_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_store_GamekeyStatus_log
    .inst 0xaa0303f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_store_GamekeyStatus, .-gpio_keys_store_GamekeyStatus
