.section .text,"ax",@progbits
.align 2
.global get_screen_off_awake
.type get_screen_off_awake, %function
.word 0xf4e9d97c
get_screen_off_awake:
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
    adrp x8, tpd_cdev
    .inst 0xaa0103f5
    .inst 0xaa0203f4
    ldr x22, [x8, :lo12:tpd_cdev]
    .inst 0xaa0303f3
    .inst 0xf947eec8
    .inst 0xb4000128
    .inst 0xaa1603e0
    .inst 0xb85fc110
    .inst 0x7281af31
    .inst 0x72ae7f91
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb94486c2
    adrp x0, .L_gsoa_log
    add x0, x0, :lo12:.L_gsoa_log
    adrp x1, .L_gsoa_name
    add x1, x1, :lo12:.L_gsoa_name
    bl _printk
    .inst 0xb94486c3
    adrp x2, .L_gsoa_fmt
    add x2, x2, :lo12:.L_gsoa_fmt
    .inst 0x910023e0
    .inst 0x52800141
    bl snprintf
    .inst 0x93407c04
    .inst 0x910023e3
    .inst 0xaa1403e1
    .inst 0xaa1503e0
    .inst 0xaa1303e2
    bl simple_read_from_buffer
    .inst 0x17ffffd4
    bl __stack_chk_fail
.size get_screen_off_awake, .-get_screen_off_awake

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_gsoa_log:
    .asciz "\0015tpd: %s val:%d.\n"
.L_gsoa_name:
    .asciz "get_screen_off_awake"
.L_gsoa_fmt:
    .asciz "%u\n"
