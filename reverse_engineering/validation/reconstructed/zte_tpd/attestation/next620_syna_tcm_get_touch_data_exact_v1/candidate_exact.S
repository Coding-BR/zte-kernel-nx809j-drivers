.section .text,"ax",@progbits
.align 2
.global syna_tcm_get_touch_data
.type syna_tcm_get_touch_data, %function
.word 0xfd344c7d
syna_tcm_get_touch_data:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x51008468
    .inst 0x3100851f
    .inst 0x54000529
    .inst 0xb4000600
    .inst 0x0b020068
    .inst 0x6b010d1f
    .inst 0x54000089
    .inst 0x2a1f03e0
    .inst 0xb900009f
    .inst 0x1400001f
    .inst 0x2a0203e9
    .inst 0x1200084b
    .inst 0x52800108
    .inst 0xd343fd2c
    .inst 0x4b0b0109
    .inst 0x52801fea
    .inst 0x6b03013f
    .inst 0x386c680d
    .inst 0x1a833129
    .inst 0x4b09010e
    .inst 0x1acb25ad
    .inst 0x1ace254e
    .inst 0x6b09006b
    .inst 0x0a0e01a9
    .inst 0x540001c0
    .inst 0x1100058c
    .inst 0x7100217f
    .inst 0x386c480f
    .inst 0x1100058c
    .inst 0x1a88316d
    .inst 0x4b0d010e
    .inst 0x1ace254e
    .inst 0x0a0f01ce
    .inst 0x4b0b006f
    .inst 0x6b0d016b
    .inst 0x1acf21ce
    .inst 0x2a0901c9
    .inst 0x54fffea1
    .inst 0x2a1f03e0
    .inst 0xb9000089
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2398
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2398
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa6a
    .inst 0x2a0303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17fffff6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5f4a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5f4a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffef
.size syna_tcm_get_touch_data, .-syna_tcm_get_touch_data

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
