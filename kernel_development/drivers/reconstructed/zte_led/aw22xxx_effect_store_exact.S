.section .text,"ax",@progbits
.align 2
.inst 0x95c41a97
.global aw22xxx_effect_store
.type aw22xxx_effect_store, %function
aw22xxx_effect_store:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9027bfd
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910083fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x542
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x542
    .inst 0xf9438929
    .inst 0x910033e2
    .inst 0xaa0303f3
    .inst 0xf81f83a9
    .inst 0xf9404c16
    .inst 0xaa0803e0
    .inst 0xb9000fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100041f
    .inst 0x54000e61
    .inst 0x910a82c0
    .inst 0xd10042d4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb9400fe3
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, init_flag
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cfg_cur_state
    .inst 0x51002068
    .inst 0x7100091f
    .inst 0x54000788
    .inst 0x39400308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, init_flag
    .inst 0x7100051f
    .inst 0x54000721
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x5d0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x5d0
    .inst 0xaa1503e1
    .inst 0x52810ae2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800088
    .inst 0x52800080
    .inst 0xb902f2c8
    .inst 0x9400008a
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_get_fwname
    .inst 0xaa1403e0
    .inst 0x94000107
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_cfg_update_wait_from_dyn_name
    .inst 0xb942f2c0
    .inst 0x94000146
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_set_cfg_run_state
    .inst 0xb94002e3
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf40
    .inst 0xaa1503e1
    .inst 0x52810b82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94002e8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x35000328
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
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x390043ff
    .inst 0x97fff7d3
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394043e8
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x121f7902
    .inst 0x390043e2
    .inst 0x97fff781
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x6218
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x6218
    .inst 0x3900031f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, init_flag
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x16af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x16af
    .inst 0xb942f2c3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x52810c42
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400fe3
    .inst 0x71000c7f
    .inst 0xb902f2c3
    .inst 0x540001c8
    .inst 0x7100047f
    .inst 0x54000180
    .inst 0x39400308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, init_flag
    .inst 0x37000148
    .inst 0x52800028
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1040
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1040
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x52810d22
    .inst 0x39000308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, init_flag
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb942f2c3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1942
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1942
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x52810d82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb942f2c0
    .inst 0x94000045
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_get_fwname
    .inst 0x52800028
    .inst 0xaa1403e0
    .inst 0xb9000fe8
    .inst 0x940000c0
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_cfg_update_wait_from_dyn_name
    .inst 0xb942f2c0
    .inst 0x35000080
    .inst 0x52800c80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xb942f2c0
    .inst 0x940000fb
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_set_cfg_run_state
    .inst 0xb94002e3
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf40
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x52811122
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94002e8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x34000308
    .inst 0x910a82c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x508
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x508
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe56
    .inst 0x52810a02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000441
    .inst 0xaa1303e0
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa9427bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
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
    .inst 0x97fff770
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x385f43a8
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x121f7902
    .inst 0x381f43a2
    .inst 0x97fff71e
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x6218
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x6218
    .inst 0x17ffffd1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_effect_store, .-aw22xxx_effect_store
.section .note.GNU-stack,"",@progbits
