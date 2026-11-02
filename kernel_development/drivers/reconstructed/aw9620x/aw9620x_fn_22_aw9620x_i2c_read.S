.section .text,"ax",@progbits
.align 2
.global aw9620x_i2c_read
.type aw9620x_i2c_read, %function
aw9620x_i2c_read:
    .inst 0xd503233f
    .inst 0xd10283ff
    .inst 0xa9047bfd
    .inst 0xa9056ffc
    .inst 0xa90667fa
    .inst 0xa9075ff8
    .inst 0xa90857f6
    .inst 0xa9094ff4
    .inst 0x910103fd
    .inst 0xf90007e2
    .inst 0xd5384108
    .inst 0x53087c29
    .inst 0xf9438908
    .inst 0x910043fa
    .inst 0x52800033
    .inst 0x2a0103f5
    .inst 0xaa0003f4
    .inst 0x528000b6
    .inst 0xb27f035b
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x5280005c
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x189d
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x189d
    .inst 0x72a00093
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x25c4
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x25c4
    .inst 0xf81f83a8
    .inst 0xb80123ff
    .inst 0x390043e9
    .inst 0x390047e1
    .inst 0xf9401688
    .inst 0xa9027fff
    .inst 0x910063e1
    .inst 0xf9000fff
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf9001bfb
    .inst 0xf9400d00
    .inst 0x79003bfc
    .inst 0x790033e9
    .inst 0xf90013fa
    .inst 0x790053e9
    .inst 0xb802a3f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36f80240
    .inst 0xf9401a81
    .inst 0x2a0003e6
    .inst 0x12003ea5
    .inst 0xaa1703e0
    .inst 0xaa1803e2
    .inst 0xaa1903e3
    .inst 0x528047a4
    .inst 0x2a1603e7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x510006d6
    .inst 0x310006df
    .inst 0x54fffc41
    .inst 0x14000015
    .inst 0x37380296
    .inst 0xb84123e8
    .inst 0xf94007e9
    .inst 0x2a1f03e0
    .inst 0x5ac00908
    .inst 0xb9000128
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540002a1
    .inst 0xa9494ff4
    .inst 0xa94857f6
    .inst 0xa9475ff8
    .inst 0xa94667fa
    .inst 0xa9456ffc
    .inst 0xa9447bfd
    .inst 0x910283ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a81
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x38b1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x38b1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x25c4
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x25c4
    .inst 0x52804884
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x17ffffe8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_i2c_read, .-aw9620x_i2c_read
