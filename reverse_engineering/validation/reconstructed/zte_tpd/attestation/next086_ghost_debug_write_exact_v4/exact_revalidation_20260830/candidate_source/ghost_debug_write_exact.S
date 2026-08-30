.section .text,"ax",@progbits
.align 2
.global ghost_debug_write
.type ghost_debug_write, %function
.word 0xc3d43b4d
ghost_debug_write:
    .inst 0xd503233f
    .inst 0xd103c3ff
    .inst 0xa90b7bfd
    .inst 0xf90063f7
    .inst 0xa90d57f6
    .inst 0xa90e4ff4
    .inst 0x9102c3fd
    .inst 0xd5384108
    .inst 0x910103f6
    .inst 0xf9438908
    .inst 0xf101905f
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400115
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x52800c88
    .inst 0xb900a3ff
    .inst 0x9a883053
    .inst 0xa9057edf
    .inst 0xa9087fff
    .inst 0xa9077fff
    .inst 0xa9067fff
    .inst 0xa9057fff
    .inst 0xa9047fff
    .inst 0xb9000fff
    .inst 0xa9037fff
    .inst 0xa9027fff
    .inst 0xf9000fff
    .inst 0xb4000161
    .inst 0xaa0103f4
    .inst 0x910103e0
    .inst 0xaa1303e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x910103e0
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0x97fff31a
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0xb5000860
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3e1d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3e1d
    .inst 0x910043e0
    .inst 0xf9000bf6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb40003c0
    .inst 0x2a1f03f6
    .inst 0x910063f7
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3e1d
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3e1d
    .inst 0x910033e2
    .inst 0x52800141
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x350000c0
    .inst 0x71004edf
    .inst 0x54000708
    .inst 0xb9400fe8
    .inst 0x78365ae8
    .inst 0x110006d6
    .inst 0x910043e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb4000060
    .inst 0x71002adf
    .inst 0x54fffe43
    .inst 0x794047eb
    .inst 0x79404bea
    .inst 0x79404fe9
    .inst 0x794053e8
    .inst 0x394083ec
    .inst 0x39407bed
    .inst 0x394073ee
    .inst 0x39406bef
    .inst 0x394063f0
    .inst 0x1400000a
    .inst 0x2a1f03e8
    .inst 0x2a1f03e9
    .inst 0x2a1f03ea
    .inst 0x2a1f03eb
    .inst 0x2a1f03ec
    .inst 0x2a1f03ed
    .inst 0x2a1f03ee
    .inst 0x2a1f03ef
    .inst 0x2a1f03f0
    .inst 0x391246b0
    .inst 0x39124aaf
    .inst 0x39124eae
    .inst 0x391252ad
    .inst 0x391256ac
    .inst 0xb9049aab
    .inst 0xb9049eaa
    .inst 0xb904a2a9
    .inst 0xb904a6a8
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540001e1
    .inst 0xaa1303e0
    .inst 0xa94e4ff4
    .inst 0xf94063f7
    .inst 0xa94d57f6
    .inst 0xa94b7bfd
    .inst 0x9103c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x696
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x696
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002b3
    .inst 0x17ffffef
    .inst 0xd4200020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size ghost_debug_write, .-ghost_debug_write

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_ghost_write_rodata:
    .include "ghost_debug_write_rodata.inc"
