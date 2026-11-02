.section .text,"ax",@progbits
.align 2
.globl get_rotation_limit_level
.type get_rotation_limit_level, %function
.inst 0xf4e9d97c
get_rotation_limit_level:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa1f03e0
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9400068
    .inst 0x790023ff
    .inst 0xf90007ff
    .inst 0xb4000188
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000521
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0103f5
    .inst 0xaa0203f4
    .inst 0xf9400116
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa0303f3
    .inst 0xf94746c8
    .inst 0xb4000128
    .inst 0xaa1603e0
    .inst 0xb85fc110
    .inst 0x7281af31
    .inst 0x72ae7f91
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb9400ec2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_rotation_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_rotation_log
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_rotation_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_rotation_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400ec3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_rotation_format
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_rotation_format
    .inst 0x910023e0
    .inst 0x52800141
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c04
    .inst 0x910023e3
    .inst 0xaa1403e1
    .inst 0xaa1503e0
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0x17ffffd4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size get_rotation_limit_level, .-get_rotation_limit_level

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_rotation_log:
.asciz "\0015tpd: %s val:%d.\n"
.L_rotation_name:
.asciz "get_rotation_limit_level"
.L_rotation_format:
.asciz "%u\n"

.section .note.GNU-stack,"",@progbits
