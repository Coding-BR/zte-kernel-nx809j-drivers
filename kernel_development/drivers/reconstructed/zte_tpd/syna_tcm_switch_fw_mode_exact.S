.section .text,"ax",@progbits
.align 2
.global syna_tcm_switch_fw_mode
.type syna_tcm_switch_fw_mode, %function
    .word 0xdad41fc4
syna_tcm_switch_fw_mode:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xb4000540
    .inst 0x340000a2
    .inst 0xb941e808
    .inst 0x6b02011f
    .inst 0x1a828113
    .inst 0x14000005
    .inst 0xf9402408
    .inst 0x39405108
    .inst 0x36000648
    .inst 0x2a1f03f3
    .inst 0x12001c28
    .inst 0x71002d1f
    .inst 0x54000180
    .inst 0x7100051f
    .inst 0x540003e1
    .inst 0x39402408
    .inst 0x7100051f
    .inst 0x54000140
    .inst 0x350007d3
    .inst 0xf9402408
    .inst 0x39405108
    .inst 0x36000648
    .inst 0x2a1f03f3
    .inst 0x14000039
    .inst 0x39402408
    .inst 0x71002d1f
    .inst 0x54000341
    .inst 0xf941d808
    .inst 0xb4000108
    .inst 0xb85fc110
    .inst 0x728ca131
    .inst 0x72baaf51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a1f03e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x585d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x585d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb00a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb00a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17fffff2
    .inst 0x350009b3
    .inst 0xf9402408
    .inst 0x39405108
    .inst 0x36000828
    .inst 0x2a1f03f3
    .inst 0x14000048
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9b1d
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9b1d
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb00a
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb00a
    .inst 0xb941e813
    .inst 0xaa0003f4
    .inst 0xaa0803e0
    .inst 0x2a0103f5
    .inst 0xaa0903e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1503e1
    .inst 0xaa1403e0
    .inst 0x17ffffc4
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa8d0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa8d0
    .inst 0xb941e813
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2e6b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2e6b
    .inst 0xaa0003f4
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0xf941cc08
    .inst 0x52800281
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0xaa1f03e4
    .inst 0x2a1303e5
    .inst 0xaa0003f4
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x36f80120
    .inst 0x2a0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x885a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x885a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2e6b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2e6b
    .inst 0x52800282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400000f
    .inst 0x39402682
    .inst 0x7100045f
    .inst 0x540000c1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9b77
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9b77
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2e6b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2e6b
    .inst 0x14000031
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3b76
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3b76
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2e6b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2e6b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e33
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa1e2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa1e2
    .inst 0x14000035
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa8d0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa8d0
    .inst 0xb941e813
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x14eb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x14eb
    .inst 0xaa0003f4
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0xf941cc08
    .inst 0x528003e1
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0xaa1f03e4
    .inst 0x2a1303e5
    .inst 0xaa0003f4
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x36f80120
    .inst 0x2a0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x885a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x885a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x14eb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x14eb
    .inst 0x528003e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000013
    .inst 0x39402682
    .inst 0x71002c5f
    .inst 0x54000141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb676
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb676
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x14eb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x14eb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0xf941d808
    .inst 0xb5ffef68
    .inst 0x17ffff81
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x719f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x719f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x14eb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x14eb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e33
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4e97
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4e97
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb00a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb00a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffff75
.size syna_tcm_switch_fw_mode, .-syna_tcm_switch_fw_mode

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
