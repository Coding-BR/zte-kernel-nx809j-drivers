.section .text,"ax",@progbits
.align 2
.global aw9620x_send_stop_cmd
.type aw9620x_send_stop_cmd, %function
aw9620x_send_stop_cmd:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xf90013fb
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xf38
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xf38
    .inst 0xf90007e8
    .inst 0x5280f8e4
    .inst 0xf9401801
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1303e0
    .inst 0x52888881
    .inst 0x52a00022
    .inst 0x97fff0f3
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x529e0229
    .inst 0x5281fdc8
    .inst 0xaa1303e0
    .inst 0x72a78009
    .inst 0x529fe401
    .inst 0x2a080122
    .inst 0x97fff0ec
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x5288e881
    .inst 0xb90007ff
    .inst 0x97fff9a3
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007e8
    .inst 0xaa1303e0
    .inst 0x5288e881
    .inst 0x12005d02
    .inst 0x97fff0e2
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x529e0222
    .inst 0xaa1303e0
    .inst 0x529fe401
    .inst 0x72a78002
    .inst 0x97fff0dd
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x52888881
    .inst 0x2a1f03e2
    .inst 0x97fff0d9
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x52800320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3012
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3012
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3896
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3896
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x52800158
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x257b
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x257b
    .inst 0xb90007ff
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x52888201
    .inst 0x97fff985
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007fa
    .inst 0xf9401a61
    .inst 0x2a0003fb
    .inst 0xaa1403e0
    .inst 0xaa1503e2
    .inst 0xaa1603e3
    .inst 0x5280eb84
    .inst 0x2a1a03e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x3500037b
    .inst 0xf9401a61
    .inst 0x7100075f
    .inst 0x54000580
    .inst 0xaa1703e0
    .inst 0xaa1903e2
    .inst 0xaa1603e3
    .inst 0x5280ecc4
    .inst 0x2a1a03e5
    .inst 0x2a1803e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x52807d00
    .inst 0x52807e41
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x51000718
    .inst 0x3100071f
    .inst 0x54fffc41
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3506
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3506
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3896
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3896
    .inst 0x5280ed84
    .inst 0x14000009
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2994
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2994
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3896
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3896
    .inst 0x5280ebc4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x72e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x72e
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xf38
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xf38
    .inst 0x5280fa84
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1cee
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1cee
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3896
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3896
    .inst 0x5280ec64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000141
    .inst 0xa9464ff4
    .inst 0xf94013fb
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_send_stop_cmd, .-aw9620x_send_stop_cmd
