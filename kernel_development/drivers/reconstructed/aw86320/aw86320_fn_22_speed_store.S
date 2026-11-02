.section .text,"ax",@progbits
.align 2
.global speed_store
.type speed_store, %function
    .word 0xc3d43b4d
speed_store:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0103f4
    .inst 0x910023e0
    .inst 0xf9438908
    .inst 0xf100245f
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base
    .inst 0xf9400115
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x52800128
    .inst 0xb90007ff
    .inst 0x9a883053
    .inst 0x2a1f03e2
    .inst 0x790023ff
    .inst 0xaa1303e1
    .inst 0xf90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x910023e0
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0x97ffff70
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0x340001c0
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000921
    .inst 0xaa1303e0
    .inst 0xa9444ff4
    .inst 0xf9401bf5
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x928
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x928
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x327
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x327
    .inst 0x910023e4
    .inst 0x52806762
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400be8
    .inst 0x528d2d0a
    .inst 0x79401be9
    .inst 0x72ad0cea
    .inst 0x6b0a011f
    .inst 0x7a4a0920
    .inst 0x54000320
    .inst 0xb9400be8
    .inst 0x528d2da9
    .inst 0x394033ea
    .inst 0x72a14c89
    .inst 0x4a090108
    .inst 0x2a0a0108
    .inst 0x340002a8
    .inst 0xb9400be8
    .inst 0x528ded89
    .inst 0x394033ea
    .inst 0x72a14ee9
    .inst 0x4a090108
    .inst 0x2a0a0108
    .inst 0x34000228
    .inst 0x910023e0
    .inst 0x910013e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x35fffa20
    .inst 0xb94007e4
    .inst 0x52800b48
    .inst 0x7101689f
    .inst 0x1a883085
    .inst 0x1400000a
    .inst 0x52800a05
    .inst 0x52800a04
    .inst 0x14000006
    .inst 0x528008c5
    .inst 0x528008c4
    .inst 0x14000003
    .inst 0x52800785
    .inst 0x52800784
    .inst 0xb90007e5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1d5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1d5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x327
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x327
    .inst 0x52806a22
    .inst 0xb9000aa5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94012a8
    .inst 0x7100051f
    .inst 0x54fff70b
    .inst 0x294102a1
    .inst 0x79402aa2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw86320_play_atsin0
    .inst 0x17ffffb4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size speed_store, .-speed_store
