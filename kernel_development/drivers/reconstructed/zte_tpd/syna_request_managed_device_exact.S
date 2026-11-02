.section .text,"ax",@progbits
.align 2
.global syna_request_managed_device
.type syna_request_managed_device, %function
.word 0x1ff8a78c
syna_request_managed_device:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, p_device
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000068
    .inst 0xf9403900
    .inst 0xd65f03c0
    .inst 0xaa1f03e0
    .inst 0xd65f03c0
.size syna_request_managed_device, .-syna_request_managed_device

// Section anchor required by the stock .bss-relative ADRP/LDR pair.
.section .bss,"aw",@nobits
.org 0x890
