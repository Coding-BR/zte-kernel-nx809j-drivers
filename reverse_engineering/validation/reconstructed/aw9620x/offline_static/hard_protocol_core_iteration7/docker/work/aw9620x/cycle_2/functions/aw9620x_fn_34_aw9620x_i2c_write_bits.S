.section .text,"ax",@progbits
.align 2
.global aw9620x_i2c_write_bits
.type aw9620x_i2c_write_bits, %function
aw9620x_i2c_write_bits:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x2a0203f4
    .inst 0x910013e2
    .inst 0xf9438908
    .inst 0x2a0303f3
    .inst 0x2a0103f5
    .inst 0xaa0003f6
    .inst 0xf90007e8
    .inst 0xb90007ff
    .inst 0x97fff862
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007e8
    .inst 0xaa1603e0
    .inst 0x2a1503e1
    .inst 0x0a140108
    .inst 0x2a130102
    .inst 0x97ffefa0
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000e1
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_i2c_write_bits, .-aw9620x_i2c_write_bits
