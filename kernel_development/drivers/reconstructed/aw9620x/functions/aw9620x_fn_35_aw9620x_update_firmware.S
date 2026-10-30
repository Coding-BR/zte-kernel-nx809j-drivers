.section .text,"ax",@progbits
.align 2
.global aw9620x_update_firmware
.type aw9620x_update_firmware, %function
aw9620x_update_firmware:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0103f3
    .inst 0xb9405435
    .inst 0xf9401801
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xc02
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xc02
    .inst 0x528194c4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb9406664
    .inst 0x52841d08
    .inst 0x39401e81
    .inst 0x8b080268
    .inst 0xaa1403e0
    .inst 0xb9028684
    .inst 0x8b150102
    .inst 0xb9405263
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw9620x_fw_update
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw9620x_update_firmware, .-aw9620x_update_firmware
