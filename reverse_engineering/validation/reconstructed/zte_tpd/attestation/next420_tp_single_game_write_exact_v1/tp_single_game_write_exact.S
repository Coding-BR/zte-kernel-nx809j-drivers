.section .text,"ax",@progbits
.align 2
.globl tp_single_game_write
.type tp_single_game_write, %function
.inst 0xc3d43b4d
tp_single_game_write:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0xaa0103e0
    .inst 0xf9438908
    .inst 0x910013e3
    .inst 0xaa0203e1
    .inst 0x52800142
    .inst 0xf90007e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint_from_user
    .inst 0x340001a0
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540003a1
    .inst 0xaa1303e0
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_game_write_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_game_write_log
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_game_write_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_game_write_name
    .inst 0x7100011f
    .inst 0x528000a8
    .inst 0x1a8803e2
    .inst 0xb90007e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9477288
    .inst 0xb4fffd48
    .inst 0xb94007e1
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x72969331
    .inst 0x72ad5f11
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x17ffffe0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size tp_single_game_write, .-tp_single_game_write

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_game_write_log:
.asciz "\0015tpd: %s val = %d\n"
.L_game_write_name:
.asciz "tp_single_game_write"

.section .note.GNU-stack,"",@progbits
