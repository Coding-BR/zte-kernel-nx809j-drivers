.section .text,"ax",@progbits
.align 2
.inst 0xae84bcd4
.global aw22xxx_rgb_show
.type aw22xxx_rgb_show, %function
aw22xxx_rgb_show:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bf7
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xf9404c15
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x9ea
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x9ea
    .inst 0xaa0203f3
    .inst 0xaa0203e0
    .inst 0x52820001
    .inst 0xb942fea4
    .inst 0xaa1403e2
    .inst 0x2a1f03e3
    .inst 0x52820016
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c17
    .inst 0xb94302a4
    .inst 0xaa1403e2
    .inst 0x52800023
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb94306a4
    .inst 0xaa1403e2
    .inst 0x52800043
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb9430aa4
    .inst 0xaa1403e2
    .inst 0x52800063
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb9430ea4
    .inst 0xaa1403e2
    .inst 0x52800083
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb94312a4
    .inst 0xaa1403e2
    .inst 0x528000a3
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb94316a4
    .inst 0xaa1403e2
    .inst 0x528000c3
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb9431aa4
    .inst 0xaa1403e2
    .inst 0x528000e3
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb9431ea4
    .inst 0xaa1403e2
    .inst 0x52800103
    .inst 0xcb1702c1
    .inst 0x8b170260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2e0
    .inst 0xa9434ff4
    .inst 0xf9400bf7
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_rgb_show, .-aw22xxx_rgb_show
.section .note.GNU-stack,"",@progbits
