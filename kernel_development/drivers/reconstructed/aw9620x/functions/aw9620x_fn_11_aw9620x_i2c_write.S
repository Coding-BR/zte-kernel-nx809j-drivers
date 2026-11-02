.section .text,"ax",@progbits
.align 2
.global aw9620x_i2c_write
.type aw9620x_i2c_write, %function
aw9620x_i2c_write:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9037bfd
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0x53187c49
    .inst 0x53107c4a
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0x2a0203f4
    .inst 0x2a0103f5
    .inst 0xd10043b6
    .inst 0xf81f83a8
    .inst 0x53087c48
    .inst 0x381f23a9
    .inst 0xf9401409
    .inst 0x381f43a8
    .inst 0xd2c000c8
    .inst 0x381f33aa
    .inst 0x53087c2a
    .inst 0xf9400d20
    .inst 0x381f53a2
    .inst 0x52800022
    .inst 0xf9000be8
    .inst 0x79400528
    .inst 0x381f13a1
    .inst 0x910043e1
    .inst 0x381f03aa
    .inst 0x790023e8
    .inst 0xf9000ff6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x37f801c0
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540016e1
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa9437bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a61
    .inst 0x2a0003e7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3796
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3796
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x338e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x338e
    .inst 0x528000a8
    .inst 0x12003ea5
    .inst 0x52804c64
    .inst 0x2a1403e6
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9401668
    .inst 0xf9000bff
    .inst 0x528000d7
    .inst 0x910043e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79002bf7
    .inst 0xf9000ff6
    .inst 0x790023e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fffac0
    .inst 0xf9401a61
    .inst 0x2a0003e7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3796
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3796
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x338e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x338e
    .inst 0x52800088
    .inst 0x12003ea5
    .inst 0x52804c64
    .inst 0x2a1403e6
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9401668
    .inst 0xf9000bff
    .inst 0x910043e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79002bf7
    .inst 0xf9000ff6
    .inst 0x790023e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff720
    .inst 0xf9401a61
    .inst 0x2a0003e7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3796
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3796
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x338e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x338e
    .inst 0x52800068
    .inst 0x12003ea5
    .inst 0x52804c64
    .inst 0x2a1403e6
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x52800058
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9401668
    .inst 0xf9000bff
    .inst 0x910043e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79002bf7
    .inst 0xf9000ff6
    .inst 0x790023e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff360
    .inst 0xf9401a61
    .inst 0x2a0003e7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3796
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3796
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x338e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x338e
    .inst 0x12003ea5
    .inst 0x52804c64
    .inst 0x2a1403e6
    .inst 0xb90003f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9401668
    .inst 0xf9000bff
    .inst 0x910043e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79002bf7
    .inst 0xf9000ff6
    .inst 0x52800037
    .inst 0x790023e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36ffefc0
    .inst 0xf9401a61
    .inst 0x2a0003e7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3796
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3796
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x338e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x338e
    .inst 0x12003ea5
    .inst 0x52804c64
    .inst 0x2a1403e6
    .inst 0xb90003f7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9401668
    .inst 0xf9000bff
    .inst 0x528000c9
    .inst 0x910043e1
    .inst 0x52800022
    .inst 0x7940050a
    .inst 0xf9400d00
    .inst 0x79002be9
    .inst 0xf9000ff6
    .inst 0x790023ea
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36ffec20
    .inst 0xf9401a61
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x338e
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x338e
    .inst 0x2a0003e7
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3796
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3796
    .inst 0x12003ea5
    .inst 0xaa1603e0
    .inst 0xaa1703e3
    .inst 0x52804c64
    .inst 0x2a1403e6
    .inst 0xb90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xf9401a61
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xb5e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xb5e
    .inst 0xaa1603e0
    .inst 0xaa1703e3
    .inst 0x52804d64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x17ffff46
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_i2c_write, .-aw9620x_i2c_write
