.section .text,"ax",@progbits
.align 2
.space 0x38
.inst 0xae84bcd4
.global aw22xxx_reg_show
.type aw22xxx_reg_show, %function
aw22xxx_reg_show:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0x910003e2
    .inst 0xf9438908
    .inst 0x52801fe1
    .inst 0xf90007e8
    .inst 0xf9404c08
    .inst 0x390013ff
    .inst 0x390003ff
    .inst 0xd1004115
    .inst 0xaa1503e0
    .inst 0x97fff973
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0xaa1f03f6
    .inst 0xaa1f03f4
    .inst 0x52820019
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_reg_access
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_reg_access
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe31
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe31
    .inst 0x14000004
    .inst 0x910006d6
    .inst 0xf10402df
    .inst 0x540002e0
    .inst 0x394003e8
    .inst 0x35000068
    .inst 0x38766b48
    .inst 0x3607ff48
    .inst 0x910013e2
    .inst 0xaa1503e0
    .inst 0x2a1603e1
    .inst 0x97fff960
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394013e4
    .inst 0xcb140338
    .inst 0x8b140260
    .inst 0xaa1803e1
    .inst 0xaa1703e2
    .inst 0x2a1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xeb20c31f
    .inst 0x540000a9
    .inst 0x8b140260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strlen
    .inst 0x8b140014
    .inst 0x17ffffe9
    .inst 0x928001b4
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000141
    .inst 0xaa1403e0
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
.size aw22xxx_reg_show, .-aw22xxx_reg_show
.section .note.GNU-stack,"",@progbits
