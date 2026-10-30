.section .text,"ax",@progbits
.align 2
.global aw_check_dsp_reg_num_v1
.type aw_check_dsp_reg_num_v1, %function
    .word 0x8203344a
aw_check_dsp_reg_num_v1:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0x2a0103f3
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x199c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x199c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3717
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3717
    .inst 0x52801722
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7101927f
    .inst 0x540007a2
    .inst 0x52800a88
    .inst 0x52841d19
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3717
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3717
    .inst 0x9ba85277
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x48f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x48f
    .inst 0xaa1603e1
    .inst 0x528017a2
    .inst 0xb94056e8
    .inst 0x8b080298
    .inst 0x8b190303
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9402ae8
    .inst 0xb960f309
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1e3a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1e3a
    .inst 0xb960ef14
    .inst 0xaa1603e1
    .inst 0x51003108
    .inst 0x52801942
    .inst 0x2a1303e3
    .inst 0x1ac90915
    .inst 0x2a1403e4
    .inst 0xb9005ee9
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x6b15029f
    .inst 0x54000221
    .inst 0xb8796b08
    .inst 0xb84282e9
    .inst 0x2a1f03e0
    .inst 0xb84542ea
    .inst 0xb80602e8
    .inst 0x51003128
    .inst 0x11003149
    .inst 0xb80502e8
    .inst 0x290ad2e9
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2d6b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2d6b
    .inst 0xaa1603e1
    .inst 0x528019a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x4c7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x4c7
    .inst 0xaa1603e1
    .inst 0x528019c2
    .inst 0x2a1303e3
    .inst 0x2a1403e4
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000a0
    .inst 0x17ffffeb
    .inst 0xd42aa240
.size aw_check_dsp_reg_num_v1, .-aw_check_dsp_reg_num_v1
