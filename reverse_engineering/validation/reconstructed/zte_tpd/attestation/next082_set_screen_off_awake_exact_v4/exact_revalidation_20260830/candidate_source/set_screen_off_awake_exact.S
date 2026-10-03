.section .text,"ax",@progbits
.align 2
.global set_screen_off_awake
.type set_screen_off_awake, %function
.word 0xc3d43b4d
set_screen_off_awake:
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
    adrp x8, tpd_cdev
    ldr x20, [x8, :lo12:tpd_cdev]
    .inst 0xb90007ff
    bl kstrtouint_from_user
    .inst 0x340001a0
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000381
    .inst 0xaa1303e0
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e8
    adrp x0, .L_ssoa_log
    add x0, x0, :lo12:.L_ssoa_log
    adrp x1, .L_ssoa_name
    add x1, x1, :lo12:.L_ssoa_name
    .inst 0x7100011f
    .inst 0x1a9f07e2
    .inst 0xb90007e2
    bl _printk
    .inst 0xf947f288
    .inst 0xb4fffd68
    .inst 0xb94007e1
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x72969331
    .inst 0x72ad5f11
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x17ffffe1
    bl __stack_chk_fail
.size set_screen_off_awake, .-set_screen_off_awake

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_ssoa_log:
    .asciz "\0015tpd: %s val = %d\n"
.L_ssoa_name:
    .asciz "set_screen_off_awake"
