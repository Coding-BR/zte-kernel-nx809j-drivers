.section .text,"ax",@progbits
.align 2
.global aw22xxx_cfg_recover_update_wait
.type aw22xxx_cfg_recover_update_wait, %function
aw22xxx_cfg_recover_update_wait:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0xf90007e8
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9430262
    .inst 0x121f7848
    .inst 0x7100111f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, lamp_effect
    .inst 0x54000061
    .inst 0xb9000102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, lamp_effect
    .inst 0x14000002
    .inst 0xb9400102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, lamp_effect
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x13f8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x13f8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9430262
    .inst 0x121f7848
    .inst 0x7100091f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fan_effect
    .inst 0x54000061
    .inst 0xb9000102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, fan_effect
    .inst 0x14000002
    .inst 0xb9400102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, fan_effect
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xb7f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xb7f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cfgarray_count
    .inst 0xb9430262
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfgarray_count
    .inst 0x6b08005f
    .inst 0x540002c2
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_cfg_name
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x18ba
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x18ba
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_cfg_name
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0xf8627902
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002b6
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_cfg_name
    .inst 0xb9430274
    .inst 0xf8747ac0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strlen
    .inst 0xf100141f
    .inst 0x540001c2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x33b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x33b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000067
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1571
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1571
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000061
    .inst 0x394bbe68
    .inst 0x7100091f
    .inst 0x54000121
    .inst 0x71000a9f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_init_flg
    .inst 0x54000121
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x390d227f
    .inst 0x36000149
    .inst 0x52800054
    .inst 0x1400000e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x6c2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x6c2
    .inst 0x14000024
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x5280002a
    .inst 0x390d226a
    .inst 0x370000e9
    .inst 0x52800029
    .inst 0xaa1303e0
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x97ffec88
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_init_cfg_update_array
    .inst 0xf94002b6
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_cfg_name
    .inst 0xb9430274
    .inst 0xf8745ac1
    .inst 0xf9400662
    .inst 0x910003e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware
    .inst 0x35000260
    .inst 0xf94003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_cfg_name
    .inst 0xb9430269
    .inst 0xf8697902
    .inst 0xb50001f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x647
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x647
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x14000027
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1359
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1359
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400002c
    .inst 0xf9400283
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x31e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x31e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400288
    .inst 0xb5000628
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0xb942f268
    .inst 0x7100311f
    .inst 0x54000c88
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_imax_code
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_imax_code
    .inst 0xaa1303e0
    .inst 0x38686928
    .inst 0x528001e9
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x71003d1f
    .inst 0x1a893114
    .inst 0x97ffecc3
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800161
    .inst 0x2a1403e2
    .inst 0x97ffecbf
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x850
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x850
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb942fa68
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xdda
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xdda
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xc6a
    .inst 0x528085a2
    .inst 0x11000503
    .inst 0xb902fa63
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000801
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9417bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa1f03fa
    .inst 0x2a1f03f6
    .inst 0x910c3275
    .inst 0x52800057
    .inst 0x52801578
    .inst 0x52800219
    .inst 0x14000009
    .inst 0x39400502
    .inst 0xaa1303e0
    .inst 0x97ffec98
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x93407efa
    .inst 0xf9400288
    .inst 0x11000af7
    .inst 0xeb1a011f
    .inst 0x54fff849
    .inst 0xf9400688
    .inst 0x8b1a0108
    .inst 0x39400101
    .inst 0x7103fc3f
    .inst 0x54000041
    .inst 0x39400516
    .inst 0x394c1269
    .inst 0x7100053f
    .inst 0x54000200
    .inst 0x710006df
    .inst 0x540001c1
    .inst 0x51004029
    .inst 0x71006d3f
    .inst 0x54fffd62
    .inst 0x12001d28
    .inst 0x1b187d08
    .inst 0x53097d08
    .inst 0x0b08050a
    .inst 0xb8685aa8
    .inst 0x4b0a0129
    .inst 0x531d1129
    .inst 0x4b090329
    .inst 0x1ac92502
    .inst 0x17ffffe2
    .inst 0x39400502
    .inst 0xaa1303e0
    .inst 0x97ffec78
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x35fffc16
    .inst 0xf9400688
    .inst 0x8b1a0108
    .inst 0x39400109
    .inst 0x7100093f
    .inst 0x54fffb61
    .inst 0x39400508
    .inst 0x3607fb28
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x17ffffd4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd42aa240
.size aw22xxx_cfg_recover_update_wait, .-aw22xxx_cfg_recover_update_wait
