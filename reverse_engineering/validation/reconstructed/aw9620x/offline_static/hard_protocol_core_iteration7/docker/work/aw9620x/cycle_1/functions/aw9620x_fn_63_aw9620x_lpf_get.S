.section .text,"ax",@progbits
.align 2
.global aw9620x_lpf_get
.type aw9620x_lpf_get, %function
    .word 0xae84bcd4
aw9620x_lpf_get:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0x2a1f03f5
    .inst 0xf9438908
    .inst 0xaa1f03f3
    .inst 0x52800a98
    .inst 0x52834f19
    .inst 0x5282001a
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34e5
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34e5
    .inst 0xf90007e8
    .inst 0xf9404c08
    .inst 0xb90007ff
    .inst 0xd100e116
    .inst 0x1b1866a1
    .inst 0x910013e2
    .inst 0xaa1603e0
    .inst 0x97ffe8a5
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007e8
    .inst 0xcb130341
    .inst 0x8b130280
    .inst 0xaa1703e2
    .inst 0x2a1503e3
    .inst 0x110ffd09
    .inst 0x7100011f
    .inst 0x1a88b128
    .inst 0x130a7d04
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x110006b5
    .inst 0x8b20c273
    .inst 0x710022bf
    .inst 0x54fffde1
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000141
    .inst 0xaa1303e0
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9417bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_lpf_get, .-aw9620x_lpf_get
