.section .text,"ax",@progbits
.align 2
.global haptic_i2c_read
.type haptic_i2c_read, %function
haptic_i2c_read:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0x5280003a
    .inst 0xaa0203f3
    .inst 0xf9438908
    .inst 0x2a0103f4
    .inst 0xaa0003f5
    .inst 0x2a1f03f6
    .inst 0x52a0003c
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x910003f9
    .inst 0x72a0005a
    .inst 0x910013fb
    .inst 0xf81f83a8
    .inst 0x79000bff
    .inst 0xf940f6a8
    .inst 0x910023e1
    .inst 0x52800042
    .inst 0x390003f4
    .inst 0x79400509
    .inst 0xf90013fb
    .inst 0xf9400d00
    .inst 0xb800a3fc
    .inst 0x79001fff
    .inst 0xf9000bf9
    .inst 0x790013e9
    .inst 0x790033e9
    .inst 0xb801a3fa
    .inst 0x79003fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer
    .inst 0x2a0003f7
    .inst 0x37f80300
    .inst 0x71000aff
    .inst 0x540003c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x8c9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x8c9
    .inst 0xaa1803e1
    .inst 0x52801122
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa3f
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa3f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000b7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x34
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x34
    .inst 0xaa1803e1
    .inst 0x52801322
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x317
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x317
    .inst 0x2a1603e4
    .inst 0x2a1703e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x110006d6
    .inst 0x710016df
    .inst 0x54fffb41
    .inst 0x1400000d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x488
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x488
    .inst 0xaa1803e1
    .inst 0x528010c2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa3f
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa3f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffec
    .inst 0x79400be8
    .inst 0x5ac00908
    .inst 0x53107d08
    .inst 0x79000268
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000161
    .inst 0x2a1703e0
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size haptic_i2c_read, .-haptic_i2c_read
