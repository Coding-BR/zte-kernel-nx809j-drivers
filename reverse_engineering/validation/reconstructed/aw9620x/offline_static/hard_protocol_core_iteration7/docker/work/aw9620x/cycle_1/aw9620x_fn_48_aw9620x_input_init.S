.section .text,"ax",@progbits
.align 2
.global aw9620x_input_init
.type aw9620x_input_init, %function
aw9620x_input_init:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xf9401800
    .inst 0xaa0103f5
    .inst 0x52803001
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9010260
    .inst 0xb4000f60
    .inst 0xaa1f03f4
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x45b
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x45b
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe5d
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe5d
    .inst 0x5280021b
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1788
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1788
    .inst 0x5280003c
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1450
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1450
    .inst 0x14000009
    .inst 0x381f011f
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf81f811f
    .inst 0x9100c37b
    .inst 0x91000694
    .inst 0xf106437f
    .inst 0x54000ac0
    .inst 0xf9410268
    .inst 0xb9400a63
    .inst 0x528003c1
    .inst 0xaa1603e2
    .inst 0x2a1403e4
    .inst 0x8b1b0100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xb81f411f
    .inst 0xb9401a68
    .inst 0xf9410269
    .inst 0x1ad4250a
    .inst 0x8b1b0128
    .inst 0x3607fd4a
    .inst 0x381f011c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_allocate_device
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf81f8100
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf85f8109
    .inst 0xb4000809
    .inst 0xf9000128
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf85f8108
    .inst 0xf9401509
    .inst 0xb27f0129
    .inst 0xf9001509
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf85f8108
    .inst 0xf9401509
    .inst 0xb2400129
    .inst 0xf9001509
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf85f8108
    .inst 0xf9401909
    .inst 0xb2450129
    .inst 0xf9001909
    .inst 0xb9400a68
    .inst 0x7100051f
    .inst 0x54000360
    .inst 0x34000208
    .inst 0xf9410268
    .inst 0x52800321
    .inst 0x12800002
    .inst 0x52800c83
    .inst 0x2a1f03e4
    .inst 0x2a1f03e5
    .inst 0x8b1b0108
    .inst 0xf85f8100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_set_abs_params
    .inst 0xf9410268
    .inst 0x8b1b0108
    .inst 0xf85f8100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_register_device
    .inst 0x34fff800
    .inst 0x14000039
    .inst 0xf9410268
    .inst 0xaa1703e0
    .inst 0xaa1a03e2
    .inst 0xaa1903e3
    .inst 0x52814744
    .inst 0x8b1b0108
    .inst 0xf85f8108
    .inst 0xf9401d09
    .inst 0xb27f0129
    .inst 0x1400000a
    .inst 0xf9410268
    .inst 0xaa1703e0
    .inst 0xaa1803e2
    .inst 0xaa1903e3
    .inst 0x528147c4
    .inst 0x8b1b0108
    .inst 0xf85f8108
    .inst 0xf9401d09
    .inst 0xb27e0129
    .inst 0xf9001d09
    .inst 0xf9401a61
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17ffffdb
    .inst 0x2a1f03e0
    .inst 0x14000018
    .inst 0x390002b4
    .inst 0x7100437f
    .inst 0x54000280
    .inst 0x52800115
    .inst 0x14000004
    .inst 0xf1000694
    .inst 0x9100c2b5
    .inst 0x540001e0
    .inst 0xf9410268
    .inst 0xf8756900
    .inst 0xb4ffff60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0x17fffff9
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1566
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1566
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1788
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1788
    .inst 0x52814424
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9416ffc
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3bfb
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3bfb
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1788
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1788
    .inst 0x52814884
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x7100437f
    .inst 0x54fffda0
    .inst 0x17ffffd9
.size aw9620x_input_init, .-aw9620x_input_init
