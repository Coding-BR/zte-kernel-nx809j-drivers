.section .text,"ax",@progbits
.align 2
.global aw_get_single_bin_header_1_0_0
.type aw_get_single_bin_header_1_0_0, %function
    .word 0x26d53375
aw_get_single_bin_header_1_0_0:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2ac
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2ac
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1289
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1289
    .inst 0x528021c2
    .inst 0xaa0103e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400a68
    .inst 0x7101911f
    .inst 0x540007e2
    .inst 0x52800a89
    .inst 0x91005274
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2ac
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2ac
    .inst 0x9ba95104
    .inst 0x52800788
    .inst 0xf9400269
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1a26
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1a26
    .inst 0x52802622
    .inst 0xaa0103e3
    .inst 0xb9000088
    .inst 0xb9400128
    .inst 0xb9000488
    .inst 0xb9400528
    .inst 0xb9000888
    .inst 0xb9400928
    .inst 0xb9000c88
    .inst 0xb9400d28
    .inst 0xb9001088
    .inst 0xb9401128
    .inst 0xb9001488
    .inst 0xb9401528
    .inst 0xb9001888
    .inst 0xb9402128
    .inst 0xb9003088
    .inst 0xb9402528
    .inst 0xb9003488
    .inst 0xb9402928
    .inst 0xb9003888
    .inst 0x39406128
    .inst 0x3801cc88
    .inst 0x39406528
    .inst 0x39000488
    .inst 0x39406928
    .inst 0x39000888
    .inst 0x39406d28
    .inst 0x39000c88
    .inst 0x39407128
    .inst 0x39001088
    .inst 0x39407528
    .inst 0x39001488
    .inst 0x39407928
    .inst 0x39001888
    .inst 0x39407d28
    .inst 0x3900209f
    .inst 0x39001c88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400a68
    .inst 0x71018d1f
    .inst 0x54000188
    .inst 0x52800a89
    .inst 0x9ba95109
    .inst 0x11000508
    .inst 0xb9003d3f
    .inst 0xf804413f
    .inst 0xf804c13f
    .inst 0xb9000a68
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd42aa240
.size aw_get_single_bin_header_1_0_0, .-aw_get_single_bin_header_1_0_0
