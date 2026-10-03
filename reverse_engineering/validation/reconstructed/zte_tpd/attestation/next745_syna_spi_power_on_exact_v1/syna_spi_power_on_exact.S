.section .text,"ax",@progbits
.align 2
.global syna_spi_power_on
.type syna_spi_power_on, %function
    .inst 0x5f30282b
syna_spi_power_on:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_c0ad
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_c0ad
    .inst 0x7200003f
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_bad6
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_bad6
    .inst 0x2a0103f4
    .inst 0xaa0003f3
    .inst 0x9a881122
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_2764
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_2764
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x360001f4
    .inst 0xb9412a68
    .inst 0x7100051f
    .inst 0x5400026b
    .inst 0x54000281
    .inst 0xf9409e60
    .inst 0xb13ffc1f
    .inst 0x54000c23
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_6fe1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_6fe1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f4
    .inst 0x14000074
    .inst 0xb9410268
    .inst 0x7100051f
    .inst 0x5400054b
    .inst 0x54000381
    .inst 0xf9408a60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, regulator_disable
    .inst 0x14000022
    .inst 0x2a1f03f4
    .inst 0x1400000d
    .inst 0xb9414260
    .inst 0x7100041f
    .inst 0x540000ab
    .inst 0xb9415274
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_raw_value
    .inst 0x2a1f03f4
    .inst 0xb9414a60
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xb9410268
    .inst 0x7100051f
    .inst 0x54000aab
    .inst 0x54000721
    .inst 0xf9408a60
    .inst 0xb13ffc1f
    .inst 0x54000883
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_9257
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_9257
    .inst 0x14000046
    .inst 0xb9411a60
    .inst 0x7100041f
    .inst 0x540000eb
    .inst 0xb9415268
    .inst 0x7100011f
    .inst 0x1a9f17f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_raw_value
    .inst 0xb9412660
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xb9412a68
    .inst 0x7100051f
    .inst 0x5400024b
    .inst 0x54000081
    .inst 0xf9409e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, regulator_disable
    .inst 0x1400000a
    .inst 0xb9414260
    .inst 0x7100041f
    .inst 0x540000eb
    .inst 0xb9415268
    .inst 0x7100011f
    .inst 0x1a9f17f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_raw_value
    .inst 0xb9414e60
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xb940f260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_output_raw
    .inst 0x5284e200
    .inst 0x52855f01
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_8c0b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_8c0b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_7bed
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_7bed
    .inst 0x1400001e
    .inst 0xb9411a60
    .inst 0x7100041f
    .inst 0x540002ab
    .inst 0xb9415275
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_raw_value
    .inst 0x14000010
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, regulator_enable
    .inst 0x2a0003f4
    .inst 0x36fff6c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_ebd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_ebd
    .inst 0x14000006
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, regulator_enable
    .inst 0x2a0003f4
    .inst 0x36f800e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_8791
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_8791
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400000c
    .inst 0xb9412260
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_5d08
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_5d08
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_4e3a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_4e3a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_power_on_rodata_str_52a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1403e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_spi_power_on, .-syna_spi_power_on
.section .rodata.str1.1,"aMS",@progbits,1
.org 0xebd
.L_syna_spi_power_on_rodata_str_ebd:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x76, 0x69, 0x6f, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x0a, 0x00
.org 0x2764
.L_syna_spi_power_on_rodata_str_2764:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x50, 0x72, 0x65, 0x70, 0x61, 0x72, 0x65, 0x20, 0x74, 0x6f, 0x20, 0x25, 0x73, 0x20, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x20, 0x2e, 0x2e, 0x2e, 0x0a, 0x00
.org 0x4e3a
.L_syna_spi_power_on_rodata_str_4e3a:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x44, 0x65, 0x76, 0x69, 0x63, 0x65, 0x20, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x20, 0x25, 0x73, 0x0a, 0x00
.org 0x52a1
.L_syna_spi_power_on_rodata_str_52a1:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x5f, 0x6f, 0x6e, 0x00
.org 0x5d08
.L_syna_spi_power_on_rodata_str_5d08:
.byte 0x4f, 0x6e, 0x00
.org 0x6fe1
.L_syna_spi_power_on_rodata_str_6fe1:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x69, 0x6f, 0x0a, 0x00
.org 0x7bed
.L_syna_spi_power_on_rodata_str_7bed:
.byte 0x4f, 0x66, 0x66, 0x00
.org 0x8791
.L_syna_spi_power_on_rodata_str_8791:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x76, 0x64, 0x64, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x0a, 0x00
.org 0x8c0b
.L_syna_spi_power_on_rodata_str_8c0b:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x20, 0x64, 0x6f, 0x77, 0x6e, 0x20, 0x73, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x73, 0x00
.org 0x9257
.L_syna_spi_power_on_rodata_str_9257:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x64, 0x64, 0x0a, 0x00
.org 0xbad6
.L_syna_spi_power_on_rodata_str_bad6:
.byte 0x65, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x00
.org 0xc0ad
.L_syna_spi_power_on_rodata_str_c0ad:
.byte 0x64, 0x69, 0x73, 0x61, 0x62, 0x6c, 0x65, 0x00
