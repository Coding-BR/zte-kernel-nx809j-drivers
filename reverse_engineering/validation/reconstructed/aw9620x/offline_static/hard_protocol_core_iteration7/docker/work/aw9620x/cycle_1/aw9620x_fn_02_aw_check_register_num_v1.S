.section .text,"ax",@progbits
.align 2
.global aw_check_register_num_v1
.type aw_check_register_num_v1, %function
    .word 0x8203344a
aw_check_register_num_v1:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bf7
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x2a0103f3
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x199c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x199c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xd16
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xd16
    .inst 0x528012c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7101927f
    .inst 0x54000742
    .inst 0x52800a88
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xd16
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xd16
    .inst 0x9ba85277
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x48f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x48f
    .inst 0xaa1603e1
    .inst 0x52801342
    .inst 0xb94056e8
    .inst 0x8b080294
    .inst 0x52841d08
    .inst 0x8b080283
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2948aae9
    .inst 0xb9402ae8
    .inst 0xb960ea94
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2826
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2826
    .inst 0xaa1603e1
    .inst 0x52801462
    .inst 0x51001108
    .inst 0x0b090149
    .inst 0x2a1303e3
    .inst 0x1ac90915
    .inst 0x2a1403e4
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x6b15029f
    .inst 0x540001c1
    .inst 0xb84282e8
    .inst 0xb84542e9
    .inst 0x2a1f03e0
    .inst 0x51001108
    .inst 0x11001129
    .inst 0xb80502e8
    .inst 0x290ad2e9
    .inst 0xa9434ff4
    .inst 0xf9400bf7
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x36d6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x36d6
    .inst 0xaa1603e1
    .inst 0x528014c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1fce
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1fce
    .inst 0xaa1603e1
    .inst 0x528014e2
    .inst 0x2a1303e3
    .inst 0x2a1403e4
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800080
    .inst 0x17ffffec
    .inst 0xd42aa240
.size aw_check_register_num_v1, .-aw_check_register_num_v1
