.section .text,"ax",@progbits
.align 2
.global ufp_single_tap_work
.type ufp_single_tap_work, %function
    .word 0xa607748c
ufp_single_tap_work:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x8
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, ufp_tp_ops+0x8
    .inst 0xd65f03c0
.size ufp_single_tap_work, .-ufp_single_tap_work
