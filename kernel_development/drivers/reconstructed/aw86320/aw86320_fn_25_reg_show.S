.section .text,"ax",@progbits
.align 2
.global reg_show
.type reg_show, %function
    .word 0xf4e9d97c
reg_show:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0xd11483ff
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0xaa0103f5
    .inst 0xf9438908
    .inst 0x910013e0
    .inst 0x2a1f03e1
    .inst 0x5280a282
    .inst 0xaa0303f3
    .inst 0x910013fa
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base
    .inst 0xf9400117
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x790003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf9400268
    .inst 0xb4000208
    .inst 0xaa1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000601
    .inst 0x911483ff
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9416ffc
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a1f03f8
    .inst 0xaa1f03f6
    .inst 0x5282001b
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xac7
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xac7
    .inst 0x910003e2
    .inst 0xaa1703e0
    .inst 0x2a1803e1
    .inst 0x97fff868
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0xf11456df
    .inst 0x54000362
    .inst 0x794003e4
    .inst 0xcb160361
    .inst 0x8b160340
    .inst 0xaa1903e2
    .inst 0x2a1803e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x11000718
    .inst 0x8b20c2d6
    .inst 0x7100e71f
    .inst 0x54fffe21
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xcbb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xcbb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xd7f
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xd7f
    .inst 0x910013e4
    .inst 0x52807442
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e3
    .inst 0xaa1503e0
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0xaa1603e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0x17ffffce
    .inst 0xd42aa240
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size reg_show, .-reg_show
