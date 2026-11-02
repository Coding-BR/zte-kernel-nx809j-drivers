.section .text,"ax",@progbits
.align 2
.global ghost_check_reset
.type ghost_check_reset, %function
    .word 0xe5c47d60
ghost_check_reset:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x5c
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info+0x5c
    .inst 0xb900011f
    .inst 0xb900891f
    .inst 0xb901111f
    .inst 0xb901991f
    .inst 0xb902211f
    .inst 0xb902a91f
    .inst 0xb903311f
    .inst 0xb903b91f
    .inst 0xb904411f
    .inst 0xb904c91f
    .inst 0xd65f03c0
.size ghost_check_reset, .-ghost_check_reset
