.section .text,"ax",@progbits
.align 2
.global aw_get_multi_bin_header_1_0_0
.type aw_get_multi_bin_header_1_0_0, %function
    .word 0x5ed1ea5c
aw_get_multi_bin_header_1_0_0:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe81
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe81
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2486
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2486
    .inst 0x52802c22
    .inst 0xaa0103e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400269
    .inst 0xb9400e6a
    .inst 0x3940fd28
    .inst 0x3940f937
    .inst 0x3940f538
    .inst 0x3940f136
    .inst 0x7100055f
    .inst 0x54000101
    .inst 0xb9400a69
    .inst 0x7101913f
    .inst 0x54000582
    .inst 0x52800a8a
    .inst 0x9baa4d29
    .inst 0x5280078a
    .inst 0xb900552a
    .inst 0x53081d19
    .inst 0xaa1303e0
    .inst 0x2a1903e8
    .inst 0x33101ee8
    .inst 0x33181f08
    .inst 0x2a160114
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw_get_single_bin_header_1_0_0
    .inst 0x34000314
    .inst 0x53103ee8
    .inst 0x53185f09
    .inst 0x2a1f03f5
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe81
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe81
    .inst 0x0b080328
    .inst 0x0b160129
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c5a
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c5a
    .inst 0x0b090118
    .inst 0xaa1603e0
    .inst 0xaa1703e1
    .inst 0x52802d62
    .inst 0x2a1503e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1403e0
    .inst 0x2a1503e1
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw_parse_each_of_multi_bins_1_0_0
    .inst 0x37f800a0
    .inst 0x110006b5
    .inst 0x6b15031f
    .inst 0x54fffe81
    .inst 0x2a1f03e0
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd42aa240
.size aw_get_multi_bin_header_1_0_0, .-aw_get_multi_bin_header_1_0_0
