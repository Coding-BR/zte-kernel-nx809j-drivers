.section .text,"ax",@progbits
.align 2
.global syna_tcm_buf_alloc_0
.type syna_tcm_buf_alloc_0, %function
syna_tcm_buf_alloc_0:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xb9400814
    .inst 0xaa0003f3
    .inst 0xf9400000
    .inst 0x71003e9f
    .inst 0x54000208
    .inst 0xb40000c0
    .inst 0xaa0003f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40002a0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000300
    .inst 0x52800201
    .inst 0x5281b802
    .inst 0x52800214
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9000260
    .inst 0xb4000300
    .inst 0xb9000a74
    .inst 0x2a1403e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x2a1f03e0
    .inst 0xb9000e7f
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuf_invalid_device
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuf_invalid_device
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuf_mem_free
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuf_mem_free
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5fffd40
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuf_invalid_device
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuf_invalid_device
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuf_mem_alloc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuf_mem_alloc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900027f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuf_alloc_fail
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuf_alloc_fail
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuf_function
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuf_function
    .inst 0x52800202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9000a7f
    .inst 0x12801e40
    .inst 0x17ffffe6
.size syna_tcm_buf_alloc_0, .-syna_tcm_buf_alloc_0

.section .rodata.str1.1,"aMS",@progbits,1
.Lbuf_invalid_device:
    .asciz "\0013[error] %s: Invalid managed device\n"
.Lbuf_mem_free:
    .asciz "syna_pal_mem_free"
.Lbuf_mem_alloc:
    .asciz "syna_pal_mem_alloc"
.Lbuf_alloc_fail:
    .asciz "\0013[error] %s: Fail to allocate memory (size = %d)\n"
.Lbuf_function:
    .asciz "syna_tcm_buf_alloc"
