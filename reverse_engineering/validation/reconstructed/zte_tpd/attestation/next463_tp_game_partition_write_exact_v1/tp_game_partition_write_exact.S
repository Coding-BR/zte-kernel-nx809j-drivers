.section .text,"ax",@progbits
.align 2
.global tp_game_partition_write
.type tp_game_partition_write, %function
.word 0xc3d43b4d
tp_game_partition_write:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157fc
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xd11043ff
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0xaa0103f5
    .inst 0xf9438908
    adrp x0, .L_tgpw_first_log
    add x0, x0, :lo12:.L_tgpw_first_log
    adrp x1, .L_tgpw_name
    add x1, x1, :lo12:.L_tgpw_name
    .inst 0x52808002
    .inst 0xf81f83a8
    adrp x8, tpd_cdev
    .inst 0xaa1303e3
    ldr x20, [x8, :lo12:tpd_cdev]
    bl _printk
    .inst 0xf110067f
    .inst 0x54000083
    adrp x0, .L_tgpw_large_log
    add x0, x0, :lo12:.L_tgpw_large_log
    .inst 0x14000027
    .inst 0x910023e0
    .inst 0x2a1f03e1
    .inst 0x52808002
    bl memset
    .inst 0x910023e0
    .inst 0xaa1303e1
    .inst 0x2a1f03e2
    bl __check_object_size
    .inst 0x910023e0
    .inst 0xaa1503e1
    .inst 0xaa1303e2
    bl _inline_copy_from_user
    .inst 0xb5000300
    .inst 0xf947aa88
    .inst 0x910023e1
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x728bf651
    .inst 0x72ac9e51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    adrp x2, .L_tgpw_received_format
    add x2, x2, :lo12:.L_tgpw_received_format
    .inst 0x91010680
    .inst 0x910023e3
    .inst 0x52808001
    bl snprintf
    adrp x0, .L_tgpw_received_log
    add x0, x0, :lo12:.L_tgpw_received_log
    adrp x1, .L_tgpw_name
    add x1, x1, :lo12:.L_tgpw_name
    .inst 0x91010682
    bl _printk
    .inst 0x14000007
    adrp x0, .L_tgpw_copy_fail_log
    add x0, x0, :lo12:.L_tgpw_copy_fail_log
    adrp x1, .L_tgpw_name
    add x1, x1, :lo12:.L_tgpw_name
    bl _printk
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000101
    .inst 0xaa1303e0
    .inst 0x911043ff
    .inst 0xa9424ff4
    .inst 0xa94157fc
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    bl __stack_chk_fail
.size tp_game_partition_write, .-tp_game_partition_write

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tgpw_first_log:
    .asciz "\0015tpd: %s:%lu, %zu.\n"
.L_tgpw_name:
    .asciz "tp_game_partition_write"
.L_tgpw_large_log:
    .asciz "\0015tpd: %s:Input data too large.\n"
.L_tgpw_copy_fail_log:
    .asciz "\0015tpd: %s:Failed to copy data from user space.\n"
.L_tgpw_received_log:
    .asciz "\0015tpd: %s:Received data: %s.\n"
.L_tgpw_received_format:
    .asciz "%s\n"
