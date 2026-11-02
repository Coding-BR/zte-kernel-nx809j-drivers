.section .text,"ax",@progbits
.align 2
.global syna_pal_mem_cpy_0
.type syna_pal_mem_cpy_0, %function
syna_pal_mem_cpy_0:
    .inst 0xb40000e0
    .inst 0xb40000c2
    .inst 0x2a0103e3
    .inst 0x71003c3f
    .inst 0x54000089
    .inst 0xa9402049
    .inst 0xa9002009
    .inst 0xd65f03c0
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_pal_mem_cpy_0_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_pal_mem_cpy_0_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_pal_mem_cpy_0_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_pal_mem_cpy_0_name
    .inst 0x52800202
    .inst 0x52800204
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_pal_mem_cpy_0, .-syna_pal_mem_cpy_0

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_pal_mem_cpy_0_fmt:
    .asciz "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
.L_syna_pal_mem_cpy_0_name:
    .asciz "syna_pal_mem_cpy"
.section .note.GNU-stack,"",@progbits
