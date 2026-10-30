.section .text,"ax",@progbits
.align 2
.global aw9620x_reg_write_val_to_flash
.type aw9620x_reg_write_val_to_flash, %function
aw9620x_reg_write_val_to_flash:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bf7
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x2a0103f5
    .inst 0xf9401801
    .inst 0xaa0303f6
    .inst 0x2a0203f4
    .inst 0xaa0003f3
    .inst 0x529e0237
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x234c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x234c
    .inst 0x528094e4
    .inst 0x72a78017
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x394002d6
    .inst 0x321906e2
    .inst 0xaa1303e0
    .inst 0x529fe401
    .inst 0x97ffff07
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x350004c0
    .inst 0xaa1303e0
    .inst 0x52890401
    .inst 0x528000c2
    .inst 0x97ffff02
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x35000460
    .inst 0x350000f6
    .inst 0x528f2aa2
    .inst 0xaa1303e0
    .inst 0x5288f281
    .inst 0x72ab4c62
    .inst 0x97fffefb
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x35000600
    .inst 0xaa1303e0
    .inst 0x2a1503e1
    .inst 0x2a1403e2
    .inst 0x94000b42
    .reloc .-4, R_AARCH64_CALL26, aw9620x_reg_write_to_flash_once
    .inst 0x35000320
    .inst 0xaa1303e0
    .inst 0x52890401
    .inst 0x52800082
    .inst 0x97fffef1
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x350003a0
    .inst 0x529e0222
    .inst 0xaa1303e0
    .inst 0x529fe401
    .inst 0x72a78002
    .inst 0x97fffeeb
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x34000660
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x17d8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x17d8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x234c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x234c
    .inst 0x528097c4
    .inst 0x14000028
    .inst 0x528088c4
    .inst 0x14000016
    .inst 0x528089a4
    .inst 0x14000014
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xfd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xfd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x234c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x234c
    .inst 0x52809624
    .inst 0x1400001b
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2b26
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2b26
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x234c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x234c
    .inst 0x52809704
    .inst 0x14000012
    .inst 0x52808aa4
    .inst 0xf9401a61
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x17d8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x17d8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3800
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3800
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a61
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2069
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2069
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x234c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x234c
    .inst 0xaa1403e0
    .inst 0x52809564
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0xa9434ff4
    .inst 0xf9400bf7
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw9620x_reg_write_val_to_flash, .-aw9620x_reg_write_val_to_flash
