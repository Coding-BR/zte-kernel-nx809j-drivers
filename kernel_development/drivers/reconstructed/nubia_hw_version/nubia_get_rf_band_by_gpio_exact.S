.section .text,"ax",@progbits
.align 2
.global nubia_get_rf_band_by_gpio
.type nubia_get_rf_band_by_gpio, %function
    .word 0x2ba39f21
nubia_get_rf_band_by_gpio:
    .inst 0xaa0003e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x3f7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x3f7
    .inst 0xb4000288
    .inst 0x34000261
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio1_v
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio2_v
    .inst 0x2a0103eb
    .inst 0x39400129
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio1_v
    .inst 0x3940014a
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio2_v
    .inst 0x91002100
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x3f7
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x3f7
    .inst 0x14000004
    .inst 0xf100056b
    .inst 0x91005000
    .inst 0x54000100
    .inst 0xb85f800c
    .inst 0x6b09019f
    .inst 0x54ffff61
    .inst 0xb85fc00c
    .inst 0x6b0a019f
    .inst 0x54ffff01
    .inst 0xd65f03c0
    .inst 0xaa0803e0
    .inst 0xd65f03c0
.size nubia_get_rf_band_by_gpio, .-nubia_get_rf_band_by_gpio
