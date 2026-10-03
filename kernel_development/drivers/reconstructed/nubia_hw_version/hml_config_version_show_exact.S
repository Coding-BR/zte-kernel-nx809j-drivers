.section .text,"ax",@progbits
.align 2
.global hml_config_version_show
.type hml_config_version_show, %function
    .word 0x4e31a072
hml_config_version_show:
    .inst 0xb4000122
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio3_v
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio3_v
    .inst 0xf100091f
    .inst 0x540000e8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x394
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x394
    .inst 0xb8687923
    .inst 0x14000004
    .inst 0xaa1f03e0
    .inst 0xd65f03c0
    .inst 0x12800003
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_bss_base+0x18
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000180
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x4dc
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x4dc
    .inst 0xaa0203e0
    .inst 0x528000a1
    .inst 0xaa0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c00
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x1c7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x1c7
    .inst 0x2a0303e1
    .inst 0xaa0203f3
    .inst 0x2a0303f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1403e3
    .inst 0xaa1303e2
    .inst 0x17ffffed
.size hml_config_version_show, .-hml_config_version_show
