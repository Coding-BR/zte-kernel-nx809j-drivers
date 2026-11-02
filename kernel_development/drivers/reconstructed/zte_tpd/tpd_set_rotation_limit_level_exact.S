.section .text,"ax",@progbits
.align 2
.global tpd_set_rotation_limit_level
.type tpd_set_rotation_limit_level, %function
    .word 0x6af8b499
tpd_set_rotation_limit_level:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0003f4
    .inst 0xf946dc13
    .inst 0x2a0103f5
    adrp x0, .L_tpd_rotation_enter
    add x0, x0, :lo12:.L_tpd_rotation_enter
    adrp x1, .L_tpd_rotation_name
    add x1, x1, :lo12:.L_tpd_rotation_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb4000313
    .inst 0xf9413a69
    .inst 0xf9400268
    .inst 0xb940b92a
    .inst 0x340000aa
    .inst 0x3942f129
    .inst 0x36000069
    .inst 0x2a1f03e2
    .inst 0x14000002
    .inst 0xb9420d02
    .inst 0xb9457e68
    .inst 0x71000ebf
    .inst 0x52800069
    .inst 0x1a89b2a9
    .inst 0x7100051f
    .inst 0xb9060e69
    .inst 0x540001c1
    .inst 0xb9401281
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_display_rotation
    .inst 0x340000a0
    adrp x0, .L_tpd_rotation_write_error
    add x0, x0, :lo12:.L_tpd_rotation_write_error
    .inst 0x14000009
    .inst 0x128002a0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    adrp x0, .L_tpd_rotation_suspend_error
    add x0, x0, :lo12:.L_tpd_rotation_suspend_error
    adrp x1, .L_tpd_rotation_name
    add x1, x1, :lo12:.L_tpd_rotation_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0x17fffff5
.size tpd_set_rotation_limit_level, .-tpd_set_rotation_limit_level

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_rotation_enter:
    .asciz "\0016[info ] %s: enter\n"
.L_tpd_rotation_write_error:
    .asciz "\0013[error] %s: Write display rotation failed!"
.L_tpd_rotation_suspend_error:
    .asciz "\0013[error] %s: error, change set in suspend!"
.L_tpd_rotation_name:
    .asciz "tpd_set_rotation_limit_level"
