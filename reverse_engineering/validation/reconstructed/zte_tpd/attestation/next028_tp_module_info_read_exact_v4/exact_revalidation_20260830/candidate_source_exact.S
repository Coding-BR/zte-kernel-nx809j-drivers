.section .text,"ax",@progbits
.align 2
.global tp_module_info_read
.type tp_module_info_read, %function
.inst 0xf4e9d97c
tp_module_info_read:
    .inst 0xd503233f
    .inst 0xd10483ff
    .inst 0xa90d7bfd
    .inst 0xf90073fc
    .inst 0xa90f5ff8
    .inst 0xa91057f6
    .inst 0xa9114ff4
    .inst 0x910343fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9400068
    .inst 0xb4000068
    .inst 0xaa1f03e0
    .inst 0x1400008b
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0103f5
    .inst 0xaa0203f4
    .inst 0xf9400116
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa0303f3
    .inst 0xa90bffff
    .inst 0xa90affff
    .inst 0xf94712c8
    .inst 0xa909ffff
    .inst 0xa908ffff
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xf90003ff
    .inst 0xb4000128
    .inst 0xaa1603e0
    .inst 0xb85fc110
    .inst 0x7281af31
    .inst 0x72ae7f91
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb94cfec4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_tp_module
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_tp_module
    .inst 0x910003e0
    .inst 0x913502c3
    .inst 0x52801901
    .inst 0x910003f7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x7103201f
    .inst 0x54000e48
    .inst 0x2a0003f8
    .inst 0x52801908
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_ic_type
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_ic_type
    .inst 0xcb180101
    .inst 0x8b1802e0
    .inst 0x913462c3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xb94d0ec3
    .inst 0x8b20c317
    .inst 0x34000163
    .inst 0xf10322ff
    .inst 0x54000ca8
    .inst 0x52801908
    .inst 0x910003e9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_i2c
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_i2c
    .inst 0xcb170101
    .inst 0x8b170120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb94d16c3
    .inst 0x34000163
    .inst 0xf10322ff
    .inst 0x54000b28
    .inst 0x52801908
    .inst 0x910003e9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_spi
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_spi
    .inst 0xcb170101
    .inst 0x8b170120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xf10322ff
    .inst 0x540009e8
    .inst 0x52801908
    .inst 0xb94d02c3
    .inst 0x910003e9
    .inst 0xcb170101
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_firmware
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_firmware
    .inst 0x8b170120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xb94d06c3
    .inst 0x8b20c2f7
    .inst 0x34000163
    .inst 0xf10322ff
    .inst 0x54000848
    .inst 0x52801908
    .inst 0x910003e9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_config
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_config
    .inst 0xcb170101
    .inst 0x8b170120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0xb94d0ac3
    .inst 0x34000163
    .inst 0xf10322ff
    .inst 0x540006c8
    .inst 0x52801908
    .inst 0x910003e9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_display
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_display
    .inst 0xcb170101
    .inst 0x8b170120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0x3975a2c8
    .inst 0x34000188
    .inst 0xf10322ff
    .inst 0x54000548
    .inst 0x52801908
    .inst 0x910003e9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_chip
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_chip
    .inst 0xcb170101
    .inst 0x8b170120
    .inst 0x9135a2c3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0x397642c8
    .inst 0x34000188
    .inst 0xf10322ff
    .inst 0x540003a8
    .inst 0x52801908
    .inst 0x910003e9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tp_module_info_read_fw_status
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tp_module_info_read_fw_status
    .inst 0xcb170101
    .inst 0x8b170120
    .inst 0x913642c3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c2f7
    .inst 0x910003e3
    .inst 0xaa1503e0
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0xaa1703e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000141
    .inst 0xa9514ff4
    .inst 0xf94073fc
    .inst 0xa95057f6
    .inst 0xa94f5ff8
    .inst 0xa94d7bfd
    .inst 0x910483ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd42aa240
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size tp_module_info_read, .-tp_module_info_read

.section .rodata.str1.1,"aMS",@progbits,1
.L_tp_module_info_read_tp_module:
.asciz "TP module: %s(0x%x)\n"
.L_tp_module_info_read_ic_type:
.asciz "IC type : %s\n"
.L_tp_module_info_read_i2c:
.asciz "I2C address: 0x%x\n"
.L_tp_module_info_read_spi:
.asciz "Spi num: %d\n"
.L_tp_module_info_read_firmware:
.asciz "Firmware version : %d\n"
.L_tp_module_info_read_config:
.asciz "Config version:0x%x\n"
.L_tp_module_info_read_display:
.asciz "Display version:0x%x\n"
.L_tp_module_info_read_chip:
.asciz "Chip hard version:%s\n"
.L_tp_module_info_read_fw_status:
.asciz "fw update status:%s\n"
