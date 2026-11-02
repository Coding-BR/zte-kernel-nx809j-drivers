.section .text,"ax",@progbits
.align 2
.global syna_pal_mem_free_0
.type syna_pal_mem_free_0, %function
syna_pal_mem_free_0:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40000e0
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_pal_mem_free_0_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_pal_mem_free_0_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_pal_mem_free_0_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_pal_mem_free_0_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff7
.size syna_pal_mem_free_0, .-syna_pal_mem_free_0

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_pal_mem_free_0_fmt:
    .asciz "\0013[error] %s: Invalid managed device\n"
.L_syna_pal_mem_free_0_name:
    .asciz "syna_pal_mem_free"
.section .note.GNU-stack,"",@progbits
