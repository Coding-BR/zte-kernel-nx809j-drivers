.section .text,"ax",@progbits
.align 2
.global dri_to_soc_pack_send
.type dri_to_soc_pack_send, %function
    .word 0x41c5951c
dri_to_soc_pack_send:
    .inst 0xd503233f
    .inst 0xd10203ff
    .inst 0xa9027bfd
    .inst 0xa9036ffc
    .inst 0xa90467fa
    .inst 0xa9055ff8
    .inst 0xa90657f6
    .inst 0xa9074ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0403f6
    .inst 0x2a0303f5
    .inst 0xf9438908
    .inst 0x2a0203f8
    .inst 0x2a0103f9
    .inst 0xaa0003f3
    .inst 0xf81f83a8
    .inst 0xd503201f
    .inst 0x2a1503e8
    .inst 0x5281b801
    .inst 0x92403d17
    .inst 0x91003ae0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9401a61
    .inst 0xb5000334
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x28f6
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x28f6
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280cc84
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x1400006c
    .inst 0x2a1503e9
    .inst 0xd538411a
    .inst 0xf9402b5b
    .inst 0x92403d37
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_codetag_base
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_codetag_base
    .inst 0x91003ae0
    .inst 0x5281b801
    .inst 0xf9002b48
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9002b5b
    .inst 0xf9401a61
    .inst 0xb4fffd34
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0xaa1b03e0
    .inst 0xaa1c03e2
    .inst 0x5280cd04
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x110032a8
    .inst 0x52800109
    .inst 0xf9401a61
    .inst 0x53087d0a
    .inst 0x72a04009
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base
    .inst 0xaa1b03e0
    .inst 0xaa1c03e2
    .inst 0x5280c964
    .inst 0xb9000289
    .inst 0x12003eba
    .inst 0x3900128a
    .inst 0x39001688
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12001f08
    .inst 0x0b390108
    .inst 0x0b1a011b
    .inst 0x3400015a
    .inst 0x2a1503e9
    .inst 0xaa1f03e8
    .inst 0x92403d29
    .inst 0xb8686aca
    .inst 0x91001108
    .inst 0xeb09011f
    .inst 0x5ac0094a
    .inst 0x0b1b015b
    .inst 0x54ffff63
    .inst 0xf9401a61
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x26f5
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x26f5
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base
    .inst 0xaa1c03e0
    .inst 0x5280ca84
    .inst 0x2a1b03e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x4b1b03e8
    .inst 0xf9401a61
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3769
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3769
    .inst 0x53187d09
    .inst 0x53107d0a
    .inst 0x39002688
    .inst 0x53087d08
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0xaa1c03e0
    .inst 0x5280d0e4
    .inst 0x39002288
    .inst 0x53087ea8
    .inst 0x2a1a03e5
    .inst 0x39001a89
    .inst 0x39001e8a
    .inst 0x39002a99
    .inst 0x39002e98
    .inst 0x39003288
    .inst 0x39003695
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x3400049a
    .inst 0x92403ea2
    .inst 0xeb0202ff
    .inst 0x54001663
    .inst 0x91003a80
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xf9401668
    .inst 0xf90007ff
    .inst 0x11003ab5
    .inst 0x910023e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79001bf5
    .inst 0xf9000bf4
    .inst 0x790013e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x37f80380
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001361
    .inst 0xa9474ff4
    .inst 0xa94657f6
    .inst 0xa9455ff8
    .inst 0xa94467fa
    .inst 0xa9436ffc
    .inst 0xa9427bfd
    .inst 0x910203ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1489
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1489
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280d184
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17ffffda
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22f8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22f8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280d364
    .inst 0x528000a5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xf90007ff
    .inst 0x910023e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79001bf5
    .inst 0xf9000bf4
    .inst 0x790013e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fffa00
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22f8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22f8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280d364
    .inst 0x52800085
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xf90007ff
    .inst 0x910023e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79001bf5
    .inst 0xf9000bf4
    .inst 0x790013e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff740
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22f8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22f8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280d364
    .inst 0x52800065
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xf90007ff
    .inst 0x910023e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79001bf5
    .inst 0xf9000bf4
    .inst 0x790013e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff480
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22f8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22f8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280d364
    .inst 0x52800045
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xf90007ff
    .inst 0x910023e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79001bf5
    .inst 0xf9000bf4
    .inst 0x790013e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff1c0
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22f8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22f8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x5280d364
    .inst 0x52800025
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xf90007ff
    .inst 0x910023e1
    .inst 0x52800022
    .inst 0x79400509
    .inst 0xf9400d00
    .inst 0x79001bf5
    .inst 0xf9000bf4
    .inst 0x790013e9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36ffef00
    .inst 0x2a0003f5
    .inst 0xf9401a61
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe8
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22f8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22f8
    .inst 0xaa1603e3
    .inst 0x5280d364
    .inst 0x2a1f03e5
    .inst 0x2a1503e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x131a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x131a
    .inst 0xaa1603e3
    .inst 0x5280d484
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17fffef5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x52800220
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size dri_to_soc_pack_send, .-dri_to_soc_pack_send
