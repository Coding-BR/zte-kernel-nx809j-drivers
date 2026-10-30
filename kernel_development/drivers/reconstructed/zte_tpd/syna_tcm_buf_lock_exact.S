.section .text,"ax",@progbits
.align 2
.global syna_tcm_buf_lock
.type syna_tcm_buf_lock, %function
syna_tcm_buf_lock:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x39410002
    .inst 0xaa0003f3
    .inst 0x35000142
    .inst 0x91004260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39410268
    .inst 0x11000508
    .inst 0x39010268
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_buf_lock_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_buf_lock_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_buf_lock_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_buf_lock_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff2
.size syna_tcm_buf_lock, .-syna_tcm_buf_lock

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_buf_lock_fmt:
    .asciz "\0013[error] %s: Buffer access out-of balance, %d\n"
.L_syna_tcm_buf_lock_name:
    .asciz "syna_tcm_buf_lock"
.section .note.GNU-stack,"",@progbits
