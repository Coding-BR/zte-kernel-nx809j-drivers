.section .text,"ax",@progbits
.align 2
.globl display_rotation_show
.type display_rotation_show, %function
.inst 0xf4e9d97c
display_rotation_show:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9037bfd
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa1f03e0
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9400068
    .inst 0xf801e3ff
    .inst 0xa9017fff
    .inst 0xf90007ff
    .inst 0xb4000188
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000421
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9437bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_rotation_name
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_rotation_name
    .inst 0xf9400116
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_rotation_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_rotation_log
    .inst 0xaa0103f3
    .inst 0xaa0903e1
    .inst 0xaa0203f4
    .inst 0xb94012c8
    .inst 0xaa0303f5
    .inst 0x2a0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94012c3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_rotation_format
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_rotation_format
    .inst 0x910023e0
    .inst 0x528003c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c04
    .inst 0x910023e3
    .inst 0xaa1403e1
    .inst 0xaa1303e0
    .inst 0xaa1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0x17ffffdc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size display_rotation_show, .-display_rotation_show

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_rotation_log:
.asciz "\0015tpd: %s val:%d.\n"
.L_rotation_name:
.asciz "display_rotation_show"
.L_rotation_format:
.asciz "display rotation: %d\n"

.section .note.GNU-stack,"",@progbits
