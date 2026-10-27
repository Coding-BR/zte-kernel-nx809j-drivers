.section .text,"ax",@progbits
.align 2
.global aw9620x_reg_get
.type aw9620x_reg_get, %function
    .word 0xae84bcd4
aw9620x_reg_get:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xf90013fb
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0xaa1f03f9
    .inst 0xf9438908
    .inst 0xaa1f03f3
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_base+0x618
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_base+0x618
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1437
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1437
    .inst 0xf90007e8
    .inst 0x5282001b
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1667
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1667
    .inst 0xf9404c08
    .inst 0xb90007ff
    .inst 0xd100e116
    .inst 0x1400000b
    .inst 0xb94007e4
    .inst 0xcb130361
    .inst 0x8b130280
    .inst 0xaa1703e2
    .inst 0x2a1803e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c273
    .inst 0x91001339
    .inst 0xf10c433f
    .inst 0x54000220
    .inst 0x38796b48
    .inst 0x3607ff88
    .inst 0x8b190348
    .inst 0x910013e2
    .inst 0xaa1603e0
    .inst 0x79400518
    .inst 0x2a1803e1
    .inst 0x97ffe743
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x36fffdc0
    .inst 0xcb130361
    .inst 0x8b130280
    .inst 0xaa1503e2
    .inst 0x12800003
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c273
    .inst 0x17ffffe7
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000161
    .inst 0xaa1303e0
    .inst 0xa9464ff4
    .inst 0xf94013fb
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_reg_get, .-aw9620x_reg_get
