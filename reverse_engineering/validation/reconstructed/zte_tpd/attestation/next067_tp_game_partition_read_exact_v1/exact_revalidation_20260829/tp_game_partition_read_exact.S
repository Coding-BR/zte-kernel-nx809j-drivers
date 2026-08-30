.section .text,"ax",@progbits
.align 2
.global tp_game_partition_read
.type tp_game_partition_read, %function
.word 0xf4e9d97c
tp_game_partition_read:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bfc
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xd11043ff
    .inst 0xd5384108
    .inst 0xaa0203f4
    .inst 0xaa0103f5
    .inst 0xf9438908
    .inst 0x910023e0
    .inst 0x2a1f03e1
    .inst 0x52808002
    .inst 0xaa0303f3
    .inst 0xf81f83a8
    bl memset
    .inst 0xf9400268
    .inst 0xb40001c8
    .inst 0xaa1f03e0
.L_tp_game_partition_stack_check:
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540003a1
    .inst 0x911043ff
    .inst 0xa9434ff4
    .inst 0xf9400bfc
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    adrp x8, tpd_cdev
    adrp x0, .L_tp_game_partition_log
    add x0, x0, :lo12:.L_tp_game_partition_log
    ldr x22, [x8, :lo12:tpd_cdev]
    adrp x1, .L_tp_game_partition_name
    add x1, x1, :lo12:.L_tp_game_partition_name
    add x2, x22, #0x41
    bl _printk
    adrp x2, .L_tp_game_partition_format
    add x2, x2, :lo12:.L_tp_game_partition_format
    add x0, sp, #0x8
    add x3, x22, #0x41
    .inst 0x52808001
    bl snprintf
    .inst 0x93407c04
    add x3, sp, #0x8
    .inst 0xaa1403e1
    .inst 0xaa1503e0
    .inst 0xaa1303e2
    bl simple_read_from_buffer
    b .L_tp_game_partition_stack_check
    bl __stack_chk_fail
.size tp_game_partition_read, .-tp_game_partition_read

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tp_game_partition_log:
    .asciz "\0015tpd: %s:game_partition:val %s.\n"
.L_tp_game_partition_name:
    .asciz "tp_game_partition_read"
.L_tp_game_partition_format:
    .asciz "%s\n"
