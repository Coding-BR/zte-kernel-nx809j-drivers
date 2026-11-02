.section .text,"ax",@progbits
.align 2
.global soc_to_dri_pack_recv
.type soc_to_dri_pack_recv, %function
    .word 0x237e1327
soc_to_dri_pack_recv:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9037bfd
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa0303f5
    .inst 0x2a0203f4
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0xaa0103f6
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0xf81f83a8
    .inst 0x5280d644
    .inst 0xf9401808
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0xaa0803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0xb40002b6
    .inst 0x34000294
    .inst 0xf9401668
    .inst 0xa9017fff
    .inst 0x52800058
    .inst 0xf90007ff
    .inst 0x52800037
    .inst 0x910023e1
    .inst 0x79400509
    .inst 0xf90013f6
    .inst 0x52800042
    .inst 0xf9400d00
    .inst 0x79001bf8
    .inst 0x790013e9
    .inst 0xf9000bf5
    .inst 0x790033e9
    .inst 0x790037f7
    .inst 0x79003bf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x37f801c0
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001521
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa9437bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x335a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x335a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0x5280d764
    .inst 0x528000a5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xa9017fff
    .inst 0x910023e1
    .inst 0xf90007ff
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf90013f6
    .inst 0xf9400d00
    .inst 0x79001bf8
    .inst 0x790013e9
    .inst 0xf9000bf5
    .inst 0x790033e9
    .inst 0x790037f7
    .inst 0x79003bf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fffb20
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x335a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x335a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0x5280d764
    .inst 0x52800085
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xa9017fff
    .inst 0x910023e1
    .inst 0xf90007ff
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf90013f6
    .inst 0xf9400d00
    .inst 0x79001bf8
    .inst 0x790013e9
    .inst 0xf9000bf5
    .inst 0x790033e9
    .inst 0x790037f7
    .inst 0x79003bf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff7c0
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x335a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x335a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0x5280d764
    .inst 0x52800065
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xa9017fff
    .inst 0x910023e1
    .inst 0xf90007ff
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf90013f6
    .inst 0xf9400d00
    .inst 0x79001bf8
    .inst 0x790013e9
    .inst 0xf9000bf5
    .inst 0x790033e9
    .inst 0x790037f7
    .inst 0x79003bf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff460
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x335a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x335a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0x5280d764
    .inst 0x52800045
    .inst 0x52800057
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xa9017fff
    .inst 0x52800038
    .inst 0xf90007ff
    .inst 0x910023e1
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf90013f6
    .inst 0xf9400d00
    .inst 0x79001bf7
    .inst 0x790013e9
    .inst 0xf9000bf5
    .inst 0x790033e9
    .inst 0x790037f8
    .inst 0x79003bf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36fff0c0
    .inst 0xf9401a61
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x335a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x335a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0x5280d764
    .inst 0x52800025
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401668
    .inst 0xa9017fff
    .inst 0x910023e1
    .inst 0xf90007ff
    .inst 0x52800042
    .inst 0x79400509
    .inst 0xf90013f6
    .inst 0xf9400d00
    .inst 0x79001bf7
    .inst 0x790013e9
    .inst 0xf9000bf5
    .inst 0x790033e9
    .inst 0x790037f8
    .inst 0x79003bf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x36ffed60
    .inst 0x2a0003f4
    .inst 0xf9401a61
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x203a
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x203a
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x335a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x335a
    .inst 0xaa1503e0
    .inst 0xaa1603e3
    .inst 0x5280d764
    .inst 0x2a1f03e5
    .inst 0x2a1403e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a61
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2ad1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2ad1
    .inst 0xaa1503e0
    .inst 0xaa1603e3
    .inst 0x5280d864
    .inst 0x2a1403e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x17ffff54
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size soc_to_dri_pack_recv, .-soc_to_dri_pack_recv
