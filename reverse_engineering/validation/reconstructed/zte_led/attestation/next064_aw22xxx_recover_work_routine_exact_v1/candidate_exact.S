.section .text,"ax",@progbits
.align 2
.global aw22xxx_recover_work_routine
.type aw22xxx_recover_work_routine, %function
    .word 0xa607748c
aw22xxx_recover_work_routine:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc4d
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc4d
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0xd1094014
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xb64
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xb64
    .inst 0xaa1503e1
    .inst 0xf81f83a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x97ffefd4
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x910033e2
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x390033ff
    .inst 0x97fff01b
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394033e8
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x121e7902
    .inst 0x390033e2
    .inst 0x97ffefc9
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x390043ff
    .inst 0x97fff010
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394043e8
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x121f7902
    .inst 0x390043e2
    .inst 0x97ffefbe
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd10033a2
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x381f43bf
    .inst 0x97ffeffe
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x385f43a8
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x121f7902
    .inst 0x381f43a2
    .inst 0x97ffefac
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x7b1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x7b1
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x97ffefa0
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x52800022
    .inst 0x97ffef9c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800181
    .inst 0x2a1f03e2
    .inst 0x97ffef98
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x528000a1
    .inst 0x52800022
    .inst 0x97ffef94
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x52800022
    .inst 0x97ffef90
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800121
    .inst 0x52800222
    .inst 0x97ffef8c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x52800062
    .inst 0x97ffef88
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x528000a1
    .inst 0x52800822
    .inst 0x97ffef84
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x52801900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x114c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x114c
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, lamp_effect
    .inst 0xaa1403e0
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, lamp_effect
    .inst 0xb900b268
    .inst 0x97fffb72
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_cfg_recover_update_wait
    .inst 0x52801900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fan_effect
    .inst 0xaa1403e0
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, fan_effect
    .inst 0xb900b268
    .inst 0x97fffb6b
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_cfg_recover_update_wait
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540000e1
    .inst 0xa9444ff4
    .inst 0xf9401bf5
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_recover_work_routine, .-aw22xxx_recover_work_routine
