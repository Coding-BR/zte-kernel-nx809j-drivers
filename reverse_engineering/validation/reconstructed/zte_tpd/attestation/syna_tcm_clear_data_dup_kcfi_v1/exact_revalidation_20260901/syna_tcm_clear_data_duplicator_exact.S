.section .text,"ax",@progbits
.align 2
.global syna_tcm_clear_data_duplicator
.type syna_tcm_clear_data_duplicator, %function
.word 0xd57a6509
syna_tcm_clear_data_duplicator:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xb4000140
    .inst 0x52827b08
    .inst 0x2a1f03e1
    .inst 0x52820002
    .inst 0x8b080000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_clear_data_duplicator_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_clear_data_duplicator_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_clear_data_duplicator_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_clear_data_duplicator_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17fffff7
.size syna_tcm_clear_data_duplicator, .-syna_tcm_clear_data_duplicator

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_clear_data_duplicator_fmt:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_clear_data_duplicator_name:
    .asciz "syna_tcm_clear_data_duplicator"
.section .note.GNU-stack,"",@progbits
