.section .text,"ax",@progbits
.align 2
.global aw86320_play_mode
.type aw86320_play_mode, %function
aw86320_play_mode:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x72001c3f
    .inst 0xaa0003f3
    .inst 0x540002a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x101
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x101
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf20
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf20
    .inst 0x52802462
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52800361
    .inst 0x5281c1c2
    .inst 0x94000078
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x528004a1
    .inst 0x2a1f03e2
    .inst 0x94000074
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x52938100
    .inst 0x72a01880
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __const_udelay
    .inst 0x14000012
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7c7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7c7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf20
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf20
    .inst 0x52802522
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394d1a68
    .inst 0x7100051f
    .inst 0x54000041
    .inst 0x39000668
    .inst 0x394d1668
    .inst 0x7100051f
    .inst 0x54000061
    .inst 0x52800048
    .inst 0x39000668
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw86320_play_mode, .-aw86320_play_mode
