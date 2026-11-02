.section .text,"ax",@progbits
.align 2
.global aw9620x_parasitic_data_get
.type aw9620x_parasitic_data_get, %function
    .word 0xae84bcd4
aw9620x_parasitic_data_get:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0xaa1f03f3
    .inst 0xf9438908
    .inst 0x2a1f03f5
    .inst 0x52834917
    .inst 0x5284e216
    .inst 0x52820019
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2808
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2808
    .inst 0xf90007e8
    .inst 0xf9404c18
    .inst 0xb90007ff
    .inst 0xd100e31a
    .inst 0x910013e2
    .inst 0xaa1a03e0
    .inst 0x2a1703e1
    .inst 0x97ffe6a6
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007fc
    .inst 0xf85f8301
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1f2b
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1f2b
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2f3b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2f3b
    .inst 0x5281f024
    .inst 0x2a1503e5
    .inst 0x2a1703e6
    .inst 0x2a1c03e7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x53187f88
    .inst 0x7216039f
    .inst 0x5289ab0a
    .inst 0x5284d58b
    .inst 0x53105f89
    .inst 0x528014ac
    .inst 0x1a8a016a
    .inst 0x5280294b
    .inst 0xcb130321
    .inst 0x1a8b018b
    .inst 0x1b0a7d08
    .inst 0x8b130280
    .inst 0x1b0b2128
    .inst 0x5282eb29
    .inst 0xaa1b03e2
    .inst 0x72ba36e9
    .inst 0x2a1503e3
    .inst 0x9ba97d09
    .inst 0xd36dfd24
    .inst 0x1b16a085
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x110006b5
    .inst 0x8b20c273
    .inst 0x110152f7
    .inst 0x710022bf
    .inst 0x54fffac1
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000161
    .inst 0xaa1303e0
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_parasitic_data_get, .-aw9620x_parasitic_data_get
