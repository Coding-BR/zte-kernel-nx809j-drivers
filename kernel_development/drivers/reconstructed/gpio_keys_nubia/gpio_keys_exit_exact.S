.section .exit.text,"ax",@progbits
.align 2
.global cleanup_module
.type cleanup_module, %function
    .inst 0xe5c47d60
cleanup_module:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_device_driver
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_device_driver
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, platform_driver_unregister
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size cleanup_module, .-cleanup_module
