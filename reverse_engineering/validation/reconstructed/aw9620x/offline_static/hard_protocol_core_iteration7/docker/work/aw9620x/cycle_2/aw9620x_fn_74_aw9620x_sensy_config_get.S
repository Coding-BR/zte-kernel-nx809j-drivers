.section .text,"ax",@progbits
.align 2
.global aw9620x_sensy_config_get
.type aw9620x_sensy_config_get, %function
    .word 0xae84bcd4
aw9620x_sensy_config_get:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9404c08
    .inst 0xaa0203e0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe59
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe59
    .inst 0x52820001
    .inst 0x3949a103
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c00
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw9620x_sensy_config_get, .-aw9620x_sensy_config_get
