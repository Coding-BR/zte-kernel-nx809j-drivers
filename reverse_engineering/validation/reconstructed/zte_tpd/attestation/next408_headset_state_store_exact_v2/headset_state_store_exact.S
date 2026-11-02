.section .text,"ax",@progbits
.align 2
.globl headset_state_store
.type headset_state_store, %function
.inst 0xc3d43b4d
headset_state_store:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0103f5
    .inst 0x910023e0
    .inst 0xf9438908
    .inst 0xf100245f
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
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
    .inst 0xaa1503e1
    .inst 0xaa1303e2
    .inst 0x9400002a
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0x350000c0
    .inst 0x910023e0
    .inst 0x910013e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x340001c0
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540003a1
    .inst 0xaa1303e0
    .inst 0xa9444ff4
    .inst 0xf9401bf5
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_headset_store_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_headset_store_log
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_headset_store_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_headset_store_name
    .inst 0x7100011f
    .inst 0x1a9f07e2
    .inst 0xb90007e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9473a88
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
.size headset_state_store, .-headset_state_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_headset_store_log:
.asciz "\0015headset_state: %s val %d.\n"
.L_headset_store_name:
.asciz "headset_state_store"

.section .note.GNU-stack,"",@progbits
