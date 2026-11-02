.section .text,"ax",@progbits
.align 2
.inst 0xae84bcd4
.global aw22xxx_para_show
.type aw22xxx_para_show, %function
aw22xxx_para_show:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b4
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x34000668
    .inst 0x528b8539
    .inst 0x528e147a
    .inst 0xaa0203f3
    .inst 0xaa1f03f8
    .inst 0xaa1f03f6
    .inst 0x72b851f9
    .inst 0x72a147ba
    .inst 0x5282001b
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x5
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_bss_base+0x5
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x198d
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x198d
    .inst 0x52800334
    .inst 0x1400000f
    .inst 0xf130d2ff
    .inst 0x54000588
    .inst 0x38786b83
    .inst 0xcb160361
    .inst 0x8b160260
    .inst 0xaa1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b4
    .inst 0x91000718
    .inst 0x8b20c2d6
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x1b147d08
    .inst 0xeb08031f
    .inst 0x540001e2
    .inst 0x12003f08
    .inst 0xd343ff17
    .inst 0x1b197d08
    .inst 0x6b1a011f
    .inst 0x54fffdc8
    .inst 0xcb160361
    .inst 0x8b160260
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc4a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc4a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xf130d6ff
    .inst 0x54000282
    .inst 0x8b20c2d6
    .inst 0x17ffffe7
    .inst 0x52820008
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc4a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc4a
    .inst 0xcb160101
    .inst 0x8b160260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2c0
    .inst 0x14000002
    .inst 0xaa1f03e0
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9416ffc
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd42aa240
.size aw22xxx_para_show, .-aw22xxx_para_show
.section .note.GNU-stack,"",@progbits
