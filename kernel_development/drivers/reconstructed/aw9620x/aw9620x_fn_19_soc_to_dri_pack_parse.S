.section .text,"ax",@progbits
.align 2
.global soc_to_dri_pack_parse
.type soc_to_dri_pack_parse, %function
    .word 0xa28de83e
soc_to_dri_pack_parse:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9047bfd
    .inst 0xf9002bf9
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x910103fd
    .inst 0xd5384108
    .inst 0x2a0303f5
    .inst 0x2a0203f6
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0x52800309
    .inst 0x11003037
    .inst 0xf81f83a8
    .inst 0x781f43a9
    .inst 0xd503201f
    .inst 0xaa1703e0
    .inst 0x5281b801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9401a61
    .inst 0xb50002b4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x28f6
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x28f6
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34f0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34f0
    .inst 0x5280db44
    .inst 0x1400007c
    .inst 0xd5384118
    .inst 0xf9402b19
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_codetag_base+0x28
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_codetag_base+0x28
    .inst 0xaa1703e0
    .inst 0x5281b801
    .inst 0xf9002b08
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9002b19
    .inst 0xf9401a61
    .inst 0xb4fffdb4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34f0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34f0
    .inst 0x5280dbc4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xd10033a3
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x2a1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, soc_to_dri_pack_recv
    .inst 0x350009c0
    .inst 0xf1000aff
    .inst 0x54000de3
    .inst 0x79400288
    .inst 0x5ac00908
    .inst 0x53107d05
    .inst 0x927f7ae8
    .inst 0xf100091f
    .inst 0x79000285
    .inst 0x54000d00
    .inst 0xf100091f
    .inst 0x54000cc0
    .inst 0x79400688
    .inst 0xf1002aff
    .inst 0x5ac00908
    .inst 0x53107d06
    .inst 0x79000686
    .inst 0x54000c03
    .inst 0x927f7ae8
    .inst 0xf100291f
    .inst 0x54000ba0
    .inst 0x927f7ae8
    .inst 0xf100291f
    .inst 0x54000b40
    .inst 0x79401688
    .inst 0xf10012ff
    .inst 0x5ac00908
    .inst 0x53107d07
    .inst 0x79001687
    .inst 0x54000a83
    .inst 0x927e76e8
    .inst 0xf100111f
    .inst 0x54000a20
    .inst 0x927e76e8
    .inst 0xf100111f
    .inst 0x540009c0
    .inst 0xb9400688
    .inst 0xf10042ff
    .inst 0x5ac00908
    .inst 0xb9000688
    .inst 0x54000923
    .inst 0xb9400e97
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x39402289
    .inst 0x3940268a
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x17f2
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x17f2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34f0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34f0
    .inst 0x5280df04
    .inst 0xb9001be7
    .inst 0xb90013ea
    .inst 0xb9000be9
    .inst 0xb90003e8
    .inst 0xb90023f7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x39402288
    .inst 0x6b36011f
    .inst 0x540003c1
    .inst 0x350003b7
    .inst 0x39402688
    .inst 0x6b35011f
    .inst 0x54000341
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2ccd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2ccd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34f0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34f0
    .inst 0x5280df64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x2a1f03e0
    .inst 0x14000017
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2717
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2717
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34f0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34f0
    .inst 0x5280dce4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x1400000a
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x613
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x613
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x34f0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x34f0
    .inst 0x5280dfa4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000141
    .inst 0xa9484ff4
    .inst 0xf9402bf9
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa9447bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd4200020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size soc_to_dri_pack_parse, .-soc_to_dri_pack_parse
