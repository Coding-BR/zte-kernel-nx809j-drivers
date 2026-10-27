.section .text,"ax",@progbits
.align 2
.global aw_check_soc_app_num_v1
.type aw_check_soc_app_num_v1, %function
    .word 0x8203344a
aw_check_soc_app_num_v1:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
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
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c42
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c42
    .inst 0x52801c62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7101927f
    .inst 0x540007c2
    .inst 0x52800a88
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c42
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c42
    .inst 0x9ba85278
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x48f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x48f
    .inst 0xaa1703e1
    .inst 0x52801ce2
    .inst 0xb9405708
    .inst 0x8b080295
    .inst 0x52841d08
    .inst 0x8b0802b4
    .inst 0xaa1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb960eaa8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x531
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x531
    .inst 0xaa1703e1
    .inst 0x52801e42
    .inst 0x2a1303e3
    .inst 0xb9006708
    .inst 0xb9402b08
    .inst 0xb960f2b5
    .inst 0x51003116
    .inst 0x2a1503e4
    .inst 0x2a1603e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x6b1602bf
    .inst 0x54000201
    .inst 0xb8058315
    .inst 0xb8428308
    .inst 0xb845430a
    .inst 0xb9400689
    .inst 0x2a1f03e0
    .inst 0x51003108
    .inst 0xb8060309
    .inst 0x11003149
    .inst 0x290a2708
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c42
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c42
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1bb8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1bb8
    .inst 0xaa1403e1
    .inst 0x52801ea2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x19bc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x19bc
    .inst 0xaa1403e1
    .inst 0x52801ec2
    .inst 0x2a1303e3
    .inst 0x2a1503e4
    .inst 0x2a1603e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000c0
    .inst 0x17ffffea
    .inst 0xd42aa240
.size aw_check_soc_app_num_v1, .-aw_check_soc_app_num_v1
