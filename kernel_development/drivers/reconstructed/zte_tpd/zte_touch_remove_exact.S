.section .text,"ax",@progbits
.align 2
.global zte_touch_remove
.type zte_touch_remove, %function
    .word 0x24a11bb9
zte_touch_remove:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_zte_touch_remove_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_zte_touch_remove_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_zte_touch_remove_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_zte_touch_remove_name
    .inst 0x52816ae2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94001291
    .reloc .-4, R_AARCH64_CALL26, zte_touch_deinit
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zte_touch_remove, .-zte_touch_remove

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_zte_touch_remove_fmt:
    .asciz "\0015tpd: end %s, %d\n"
.L_zte_touch_remove_name:
    .asciz "zte_touch_remove"

.section .note.GNU-stack,"",@progbits
