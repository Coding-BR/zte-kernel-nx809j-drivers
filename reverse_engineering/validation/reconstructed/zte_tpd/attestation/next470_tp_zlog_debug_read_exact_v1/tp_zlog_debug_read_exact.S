.section .text,"ax",@progbits
.align 2
.global tp_zlog_debug_read
.type tp_zlog_debug_read, %function
.word 0xf4e9d97c
tp_zlog_debug_read:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9047bfd
    .inst 0x910103fd
    .inst 0xd5384109
    .inst 0xaa1f03e0
    .inst 0xf9438929
    .inst 0xf81f83a9
    .inst 0xf9400069
    .inst 0xf802a3ff
    .inst 0xf80243ff
    .inst 0xf801c3ff
    .inst 0xf80143ff
    .inst 0xf800c3ff
    .inst 0xb50001e9
    adrp x10, .L_tzdr_text
    add x10, x10, :lo12:.L_tzdr_text
    .inst 0xaa0303e8
    .inst 0x528e6ea9
    .inst 0xf940014a
    .inst 0x910003e3
    .inst 0x72a00ca9
    .inst 0xaa0103e0
    .inst 0xaa0203e1
    .inst 0xaa0803e2
    .inst 0x52800164
    .inst 0xb9000be9
    .inst 0xf90003ea
    bl simple_read_from_buffer
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540000a1
    .inst 0xa9447bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    bl __stack_chk_fail
.size tp_zlog_debug_read, .-tp_zlog_debug_read

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tzdr_text:
    .asciz "this no use"
