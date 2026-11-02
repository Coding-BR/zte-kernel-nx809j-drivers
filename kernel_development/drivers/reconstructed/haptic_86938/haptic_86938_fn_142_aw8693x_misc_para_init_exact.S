.section .text,"ax",@progbits
.align 2
.global aw8693x_misc_para_init
.type aw8693x_misc_para_init, %function
    .word 0x847a0830
aw8693x_misc_para_init:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x910043e2
    .inst 0x528008e1
    .inst 0xf9438908
    .inst 0x52800023
    .inst 0xaa0003f3
    .inst 0x910043f5
    .inst 0xf81f83a8
    .inst 0xf9419408
    .inst 0xf9000bff
    .inst 0x39400909
    .inst 0x39004809
    .inst 0x39400908
    .inst 0x390043e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xb9446a68
    .inst 0x5280f8c9
    .inst 0x5280e22a
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x528000e1
    .inst 0x711c211f
    .inst 0xb944c668
    .inst 0x52800023
    .inst 0x1a893149
    .inst 0x1b087d28
    .inst 0x5282eb29
    .inst 0x72ba36e9
    .inst 0x9ba97d08
    .inst 0x52800fe9
    .inst 0xd36ffd08
    .inst 0x7101fd1f
    .inst 0x1a893108
    .inst 0x39518e69
    .inst 0x39126e68
    .inst 0xb9003269
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_r_bytes
    .inst 0x394043e8
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52800141
    .inst 0x52800103
    .inst 0xb9003668
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_r_bytes
    .inst 0x394043e8
    .inst 0xf9400be9
    .inst 0xaa1303e0
    .inst 0x39530663
    .inst 0x528008c1
    .inst 0x12800022
    .inst 0xb9004668
    .inst 0xf801e269
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x39530e68
    .inst 0xaa1303e0
    .inst 0x52800301
    .inst 0x12801002
    .inst 0x53196103
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x39527e63
    .inst 0xaa1303e0
    .inst 0x52800381
    .inst 0x128001e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x91127662
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x52800648
    .inst 0xaa1303e0
    .inst 0x52800901
    .inst 0x12801002
    .inst 0x2a1f03e3
    .inst 0x390033e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_haptic_hv
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_haptic_hv
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_protection_enabled
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_protection_enabled
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_protect_config
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_protect_config
    .inst 0xaa1403e1
    .inst 0x52805cc2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x528017e8
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x52800941
    .inst 0x52800023
    .inst 0x390023e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x52800961
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_enter
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_enter
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_vbat_ref_config
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_vbat_ref_config
    .inst 0xaa1403e1
    .inst 0x528041a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x528009a1
    .inst 0x12800e02
    .inst 0x52800803
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x5281c388
    .inst 0x5284a829
    .inst 0x910033e2
    .inst 0x72b00068
    .inst 0xaa1303e0
    .inst 0x52800bc1
    .inst 0xb90013e8
    .inst 0x52800fa8
    .inst 0x52800023
    .inst 0x79002be9
    .inst 0x528000b4
    .inst 0x390033e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x39530a63
    .inst 0xaa1303e0
    .inst 0x52800ac1
    .inst 0x12800062
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52800de1
    .inst 0x52800043
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xb27f02a2
    .inst 0xaa1303e0
    .inst 0x52800e41
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xb24006a2
    .inst 0xaa1303e0
    .inst 0x52800ee1
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xb27e02a2
    .inst 0xaa1303e0
    .inst 0x52800fa1
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xaa1402a2
    .inst 0xaa1303e0
    .inst 0x52800d61
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x52800bc1
    .inst 0x52800023
    .inst 0x390033ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
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
.size aw8693x_misc_para_init, .-aw8693x_misc_para_init
