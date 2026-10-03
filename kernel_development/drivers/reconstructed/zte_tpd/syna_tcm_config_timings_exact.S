.section .text,"ax",@progbits
.align 2
.inst 0x4b2750f2
.global syna_tcm_config_timings
.type syna_tcm_config_timings, %function
syna_tcm_config_timings:
    .inst 0xb5000081
    .inst 0x529fffe8
    .inst 0x6b08007f
    .inst 0x54000580
    .inst 0xb4000101
    .inst 0x361000e3
    .inst 0xb9400828
    .inst 0x34000048
    .inst 0xb9021008
    .inst 0xb9400c22
    .inst 0x34000042
    .inst 0xb9021402
    .inst 0x360000e3
    .inst 0xb4000081
    .inst 0xb9400028
    .inst 0x7100011f
    .inst 0x1a880042
    .inst 0x34000042
    .inst 0xb9020802
    .inst 0x360800e3
    .inst 0xb4000081
    .inst 0xb9400428
    .inst 0x7100011f
    .inst 0x1a880042
    .inst 0x34000042
    .inst 0xb9020c02
    .inst 0xb40000a1
    .inst 0x36180083
    .inst 0xb9401022
    .inst 0x34000042
    .inst 0xb9021802
    .inst 0x364000e3
    .inst 0xb4000081
    .inst 0xb9402028
    .inst 0x7100011f
    .inst 0x1a880042
    .inst 0x34000042
    .inst 0xb901e802
    .inst 0x364800e3
    .inst 0xb4000081
    .inst 0xb9402428
    .inst 0x7100011f
    .inst 0x1a880042
    .inst 0x34000042
    .inst 0xb901ec02
    .inst 0x2a1f03e0
    .inst 0xd65f03c0
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xafa7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xafa7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3b1c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3b1c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_tcm_config_timings, .-syna_tcm_config_timings

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
