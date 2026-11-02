.section .text,"ax",@progbits
.align 2
.global nubia_get_hw_pcb_version
.type nubia_get_hw_pcb_version, %function
    .word 0xcf0d7fba
nubia_get_hw_pcb_version:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio1_v
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio2_v
    .inst 0x39800108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x7100053f
    .inst 0x5400012c
    .inst 0x34000249
    .inst 0x7100053f
    .inst 0x54000501
    .inst 0x71000d1f
    .inst 0x540004c2
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x340
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x340
    .inst 0x14000014
    .inst 0x7100093f
    .inst 0x540001c0
    .inst 0x71000d3f
    .inst 0x540003e1
    .inst 0x71000d1f
    .inst 0x540003a1
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0xd8
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0xd8
    .inst 0xb50001a0
    .inst 0x14000020
    .inst 0x71000d1f
    .inst 0x540002e2
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x310
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x310
    .inst 0x14000005
    .inst 0x71000d1f
    .inst 0x54000242
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x328
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x328
    .inst 0xf8687933
    .inst 0xb40002a0
    .inst 0xaa0003f4
    .inst 0x91003260
    .inst 0x52800181
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strnlen
    .inst 0xf100341f
    .inst 0x54000262
    .inst 0xf100301f
    .inst 0x540002a0
    .inst 0x91003261
    .inst 0x91000402
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x14000008
    .inst 0xb40000e0
    .inst 0x528dedc8
    .inst 0x528dcea9
    .inst 0x72a00ee8
    .inst 0x72adcd69
    .inst 0xb8003008
    .inst 0xb9000009
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x91000402
    .inst 0x52800040
    .inst 0x52800181
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x91000402
    .inst 0x52800080
    .inst 0x52800181
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size nubia_get_hw_pcb_version, .-nubia_get_hw_pcb_version
