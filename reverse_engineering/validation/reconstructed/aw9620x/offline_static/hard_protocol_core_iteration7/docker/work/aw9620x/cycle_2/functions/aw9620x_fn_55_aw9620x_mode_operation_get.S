.section .text,"ax",@progbits
.align 2
.global aw9620x_mode_operation_get
.type aw9620x_mode_operation_get, %function
    .word 0xae84bcd4
aw9620x_mode_operation_get:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0x910013e2
    .inst 0xf9438908
    .inst 0x52834281
    .inst 0xf90007e8
    .inst 0xf9404c14
    .inst 0xb90007ff
    .inst 0xd100e280
    .inst 0x97ffeaea
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb85d8283
    .inst 0xb94007e4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3673
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3673
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000e1
    .inst 0x93407c00
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_mode_operation_get, .-aw9620x_mode_operation_get
