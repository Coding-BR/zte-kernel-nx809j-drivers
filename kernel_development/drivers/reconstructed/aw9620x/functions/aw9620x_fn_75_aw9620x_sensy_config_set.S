.section .text,"ax",@progbits
.align 2
.global aw9620x_sensy_config_set
.type aw9620x_sensy_config_set, %function
    .word 0x95c41a97
aw9620x_sensy_config_set:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c15
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x340001a0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540007a1
    .inst 0xaa1303e0
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf85f82a1
    .inst 0xb94007e5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2d32
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2d32
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1983
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1983
    .inst 0x5281fc44
    .inst 0xd100e2b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_bss_base+0x40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_bss_base+0x40
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb94007e8
    .inst 0x71000d1f
    .inst 0x54000160
    .inst 0x7100091f
    .inst 0x540001e0
    .inst 0x7100051f
    .inst 0x540002e1
    .inst 0xaa1403e0
    .inst 0x5283a401
    .inst 0x528001a2
    .inst 0x97ffdcf6
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x52800028
    .inst 0x1400000c
    .inst 0xaa1403e0
    .inst 0x5283a401
    .inst 0x52800162
    .inst 0x97ffdcf0
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x52800068
    .inst 0x14000006
    .inst 0xaa1403e0
    .inst 0x5283a401
    .inst 0x52800182
    .inst 0x97ffdcea
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x52800048
    .inst 0x3909a2a8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_bss_base+0x40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_bss_base+0x40
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x17ffffca
    .inst 0xf85f82a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3be8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3be8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1983
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1983
    .inst 0x5281fde4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17fffff3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_sensy_config_set, .-aw9620x_sensy_config_set
