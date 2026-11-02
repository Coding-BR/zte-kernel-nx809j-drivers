.section .text,"ax",@progbits
.align 2
.global syna_tcm_sleep
.type syna_tcm_sleep, %function
    .word 0xdad41fc4
syna_tcm_sleep:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xb40003e0
    .inst 0x2a0203f3
    .inst 0x350000a2
    .inst 0xf9402408
    .inst 0x39405108
    .inst 0x36000568
    .inst 0x2a1f03f3
    .inst 0x7200003f
    .inst 0x52800588
    .inst 0xf941cc09
    .inst 0x1a881514
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0x2a1403e1
    .inst 0xaa1f03e4
    .inst 0x2a1303e5
    .inst 0xb85fc130
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304520
    .inst 0xd63f0120
    .inst 0x2a1f03e8
    .inst 0x37f801c0
    .inst 0x2a0803e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xf9c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xf9c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e08
    .inst 0x17fffff4
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb060
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb060
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xf9c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xf9c
    .inst 0x12001e82
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e8
    .inst 0x17ffffea
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa8d0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa8d0
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xf9c
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xf9c
    .inst 0xb9420c13
    .inst 0xaa0003f4
    .inst 0xaa0803e0
    .inst 0x2a0103f5
    .inst 0xaa0903e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1503e1
    .inst 0xaa1403e0
    .inst 0x17ffffcb
.size syna_tcm_sleep, .-syna_tcm_sleep

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
