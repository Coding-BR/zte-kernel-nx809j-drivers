.section .text,"ax",@progbits
.align 2
.global syna_tcm_testing_0002_check_config_id
.type syna_tcm_testing_0002_check_config_id, %function
syna_tcm_testing_0002_check_config_id:
    .inst 0x2a1f03e8
    .inst 0xb4000360
    .inst 0xaa0103e3
    .inst 0xb4000321
    .inst 0x37f80122
    .inst 0x2a1f03e8
    .inst 0x3868c809
    .inst 0x3868c86a
    .inst 0x6b0a013f
    .inst 0x540000c1
    .inst 0x11000508
    .inst 0x6b02011f
    .inst 0x54ffff4d
    .inst 0x52800020
    .inst 0xd65f03c0
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lconfig_mismatch
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lconfig_mismatch
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lconfig_function
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lconfig_function
    .inst 0xaa0003e2
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e8
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0x2a0803e0
    .inst 0xd65f03c0
.size syna_tcm_testing_0002_check_config_id, .-syna_tcm_testing_0002_check_config_id

.section .rodata.str1.1,"aMS",@progbits,1
.Lconfig_mismatch:
    .asciz "\0013[error] %s: Config ID mismatched, FW: %s (limit: %s)\n"
.Lconfig_function:
    .asciz "syna_tcm_testing_0002_check_config_id"
