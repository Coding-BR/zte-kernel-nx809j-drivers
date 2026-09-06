.section .text,"ax",@progbits
.align 2
.global syna_tcm_testing_check_array_data
.type syna_tcm_testing_check_array_data, %function
syna_tcm_testing_check_array_data:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0xb40003e0
    .inst 0xaa0203f4
    .inst 0xb40003a2
    .inst 0xaa0103f6
    .inst 0x710006df
    .inst 0x5400022b
    .inst 0xaa0303f3
    .inst 0xaa0003f5
    .inst 0xaa1f03f7
    .inst 0x92407ad9
    .inst 0x52800038
    .inst 0xeb16027f
    .inst 0x8b1702a0
    .inst 0x2a1703e2
    .inst 0x9a9733e8
    .inst 0x8b080281
    .inst 0x94000017
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_testing_0100_check_data
    .inst 0x910006f7
    .inst 0x0a180018
    .inst 0xeb17033f
    .inst 0x54fffee1
    .inst 0x14000002
    .inst 0x52800038
    .inst 0x12000300
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2205
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2205
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8c2d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8c2d
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f8
    .inst 0x17fffff2
.size syna_tcm_testing_check_array_data, .-syna_tcm_testing_check_array_data

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
