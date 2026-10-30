.section .text,"ax",@progbits
.align 2
.global aw9620x_awrw_set
.type aw9620x_awrw_set, %function
    .word 0x95c41a97
aw9620x_awrw_set:
    .inst 0xd503233f
    .inst 0xd102c3ff
    .inst 0xa9057bfd
    .inst 0xa9066ffc
    .inst 0xa90767fa
    .inst 0xa9085ff8
    .inst 0xa90957f6
    .inst 0xa90a4ff4
    .inst 0x910143fd
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0xaa0303f3
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xc60
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xc60
    .inst 0x910093e2
    .inst 0x910083e3
    .inst 0x910073e4
    .inst 0xf81f83a8
    .inst 0x910063e5
    .inst 0xf9404c19
    .inst 0xaa1403e0
    .inst 0xa901ffff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0xf85f8321
    .inst 0x7100101f
    .inst 0x54000aa1
    .inst 0x294417e6
    .inst 0x29431fe8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x11e5
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x11e5
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2a9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2a9b
    .inst 0x528169e4
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb94027e8
    .inst 0x7100091f
    .inst 0x54001702
    .inst 0x3908e328
    .inst 0xf9412321
    .inst 0xb94023e8
    .inst 0x3908e728
    .inst 0xb9401fe9
    .inst 0x3908eb29
    .inst 0x12001d29
    .inst 0xb9401bea
    .inst 0x12001d4b
    .inst 0x3908ef2a
    .inst 0x1b097d69
    .inst 0x0b280128
    .inst 0xb9023f28
    .inst 0xb40000a1
    .inst 0xf85f8320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xb9423f28
    .inst 0xf901233f
    .inst 0xf85f8320
    .inst 0x2a0803f5
    .inst 0x5281b802
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9012320
    .inst 0xb4001500
    .inst 0x3948e329
    .inst 0xaa0003e8
    .inst 0xd100e320
    .inst 0x7100053f
    .inst 0x54000800
    .inst 0x35000609
    .inst 0xb9423f22
    .inst 0xaa1403e1
    .inst 0x940000c1
    .reloc .-4, R_AARCH64_CALL26, aw9620x_awrw_data_analysis
    .inst 0x350014e0
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2634
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2634
    .inst 0x528000b7
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1e2c
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1e2c
    .inst 0xf85f0328
    .inst 0xf9412329
    .inst 0x9100a3e1
    .inst 0xb9423f2a
    .inst 0xf90017ff
    .inst 0x52800022
    .inst 0x7940050b
    .inst 0xf9400d00
    .inst 0xf9001be9
    .inst 0x79005bea
    .inst 0x790053eb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36f80bc0
    .inst 0xf85f8321
    .inst 0x2a0003e5
    .inst 0xaa1403e0
    .inst 0xaa1503e2
    .inst 0xaa1603e3
    .inst 0x52805144
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x72001eff
    .inst 0x510006f7
    .inst 0x54fffcc1
    .inst 0x1400008d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34b2
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34b2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2a9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2a9b
    .inst 0x52816944
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001181
    .inst 0xaa1303e0
    .inst 0xa94a4ff4
    .inst 0xa94957f6
    .inst 0xa9485ff8
    .inst 0xa94767fa
    .inst 0xa9466ffc
    .inst 0xa9457bfd
    .inst 0x9102c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x3948e736
    .inst 0x3948eb37
    .inst 0xaa1403e1
    .inst 0x3948ef38
    .inst 0xf9000be8
    .inst 0x2a1603e2
    .inst 0x9400007f
    .reloc .-4, R_AARCH64_CALL26, aw9620x_awrw_data_analysis
    .inst 0x35000940
    .inst 0x9bb77f14
    .inst 0x92401edb
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x528000bc
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c08
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c08
    .inst 0x5280003a
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x394c
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x394c
    .inst 0xf85f0328
    .inst 0xf9412329
    .inst 0x9100a3e1
    .inst 0x3948e72a
    .inst 0x3948eb2b
    .inst 0x52800042
    .inst 0x3948ef2c
    .inst 0xa9037fff
    .inst 0xf90017ff
    .inst 0x7940050d
    .inst 0xf9001be9
    .inst 0x8b0a0129
    .inst 0x79005bea
    .inst 0x1b0b7d8a
    .inst 0xf90023e9
    .inst 0xf9400d00
    .inst 0x790053ed
    .inst 0x790073ed
    .inst 0x790077fa
    .inst 0x79007bea
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36f802e0
    .inst 0xf85f8321
    .inst 0x2a0003e5
    .inst 0xaa1603e0
    .inst 0xaa1703e2
    .inst 0xaa1803e3
    .inst 0x52805484
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x72001f9f
    .inst 0x5100079c
    .inst 0x54fffba1
    .inst 0x14000009
    .inst 0x373807d7
    .inst 0xf9412321
    .inst 0xb4fff701
    .inst 0xf85f8320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf901233f
    .inst 0x17ffffb4
    .inst 0x363ff67c
    .inst 0xf85f8321
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xb5e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xb5e
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x394c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x394c
    .inst 0x52805564
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xeb1b02a8
    .inst 0x9a8833e1
    .inst 0xeb14003f
    .inst 0x540006e3
    .inst 0xf9400be8
    .inst 0x52801fe1
    .inst 0xaa1403e2
    .inst 0x8b1b0100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf85f8321
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34cc
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34cc
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2a9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2a9b
    .inst 0x52816f24
    .inst 0x17ffff97
    .inst 0xf85f8321
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x22a9
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x22a9
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2a9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2a9b
    .inst 0x52816a44
    .inst 0x17ffff8e
    .inst 0xf85f8321
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3637
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3637
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2a9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2a9b
    .inst 0x52816d24
    .inst 0x17ffff85
    .inst 0xf85f8321
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3298
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3298
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2a9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2a9b
    .inst 0x52816e04
    .inst 0x14000009
    .inst 0xf85f8321
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xb5e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xb5e
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1e2c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1e2c
    .inst 0x52805224
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9412321
    .inst 0xb5fff761
    .inst 0x17ffff71
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x528001e0
    .inst 0xaa1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size aw9620x_awrw_set, .-aw9620x_awrw_set
