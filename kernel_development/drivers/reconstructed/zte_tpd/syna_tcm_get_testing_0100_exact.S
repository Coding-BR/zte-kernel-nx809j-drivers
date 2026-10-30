.section .text,"ax",@progbits
.align 2
.global syna_tcm_get_testing_0100
.type syna_tcm_get_testing_0100, %function
    .word 0x2b399469
syna_tcm_get_testing_0100:
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, test_0100
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, test_0100
    .inst 0xd65f03c0
.size syna_tcm_get_testing_0100, .-syna_tcm_get_testing_0100
