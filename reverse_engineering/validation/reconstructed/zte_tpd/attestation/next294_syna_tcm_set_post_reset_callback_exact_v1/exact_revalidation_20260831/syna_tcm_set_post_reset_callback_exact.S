.section .text,"ax",@progbits
.align 2
.global syna_tcm_set_post_reset_callback
.type syna_tcm_set_post_reset_callback, %function
.word 0xef5efc68
syna_tcm_set_post_reset_callback:
    .inst 0xb40000c0
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xf911f101
    .inst 0xf911ed02
    .inst 0xd65f03c0
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_post_reset_callback_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_post_reset_callback_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_post_reset_callback_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_post_reset_callback_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_tcm_set_post_reset_callback, .-syna_tcm_set_post_reset_callback

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_set_post_reset_callback_fmt:
.asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_set_post_reset_callback_name:
.asciz "syna_tcm_set_post_reset_callback"

.section .note.GNU-stack,"",@progbits
