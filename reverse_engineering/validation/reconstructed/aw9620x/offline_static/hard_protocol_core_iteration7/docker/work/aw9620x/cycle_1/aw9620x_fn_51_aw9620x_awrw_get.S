.section .text,"ax",@progbits
.align 2
.global aw9620x_awrw_get
.type aw9620x_awrw_get, %function
    .word 0xae84bcd4
aw9620x_awrw_get:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xf9404c15
    .inst 0xf94122a8
    .inst 0xb4000628
    .inst 0x3948eaa8
    .inst 0x3948eea9
    .inst 0xaa0203f3
    .inst 0x1b087d28
    .inst 0x340002c8
    .inst 0xaa1f03f7
    .inst 0xaa1f03f6
    .inst 0x52820018
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x102c
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x102c
    .inst 0xf94122a8
    .inst 0x3948e6a9
    .inst 0xcb160301
    .inst 0x8b160260
    .inst 0xaa1403e2
    .inst 0x8b090108
    .inst 0x38776903
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x3948eaa8
    .inst 0x3948eea9
    .inst 0x910006f7
    .inst 0x8b20c2d6
    .inst 0x1b087d28
    .inst 0x6b0802ff
    .inst 0x54fffe43
    .inst 0x14000002
    .inst 0xaa1f03f6
    .inst 0x8b160268
    .inst 0x52820009
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2632
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2632
    .inst 0xd1000500
    .inst 0xcb160121
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xf85f82a8
    .inst 0xf94122a1
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x8b33c2c8
    .inst 0xf90122bf
    .inst 0xd1000500
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf85f82a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2ee6
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2ee6
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x101b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x101b
    .inst 0x52816524
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1f03e0
    .inst 0x17fffff0
.size aw9620x_awrw_get, .-aw9620x_awrw_get
