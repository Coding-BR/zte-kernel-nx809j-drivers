.section .text,"ax",@progbits
.align 2
.global syna_spi_probe
.type syna_spi_probe, %function
    .inst 0xba1082a1
syna_spi_probe:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_aeb1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_aeb1
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76b0
    .inst 0xf81f83a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9417674
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xa8
    .inst 0x12800008
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7b79
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7b79
    .inst 0xaa1f03e2
    .inst 0xaa1403e0
    .inst 0xb90023ff
    .inst 0xa9017fff
    .inst 0xb90002a8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000120
    .inst 0xb9400808
    .inst 0x340000e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7b79
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7b79
    .inst 0xaa1403e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0xb90002a0
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa8
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xb0
    .inst 0x52840108
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9904
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9904
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xf90002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0xb0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000180
    .inst 0xb9400808
    .inst 0x34000148
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9904
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9904
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0xb98013e8
    .inst 0xf90002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0xb0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xac
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8a4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8a4
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xac
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8a4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8a4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xac
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xac
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x150
    .inst 0x52800028
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5288
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5288
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb9000328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x150
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5288
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5288
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x150
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x150
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x154
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9217
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9217
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x154
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9217
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9217
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x154
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x154
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x100
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_410f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_410f
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb90002bf
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_410f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_410f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x100
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x108
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5cb9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5cb9
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xf900035f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x108
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000120
    .inst 0xb9400808
    .inst 0x340000e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5cb9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5cb9
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x108
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x108
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_string
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0x12800008
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6fb3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6fb3
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb9000128
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000140
    .inst 0xb9400808
    .inst 0x34000108
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6fb3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6fb3
    .inst 0xaa1403e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0xb9000100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x120
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_210c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_210c
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_210c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_210c
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x120
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x120
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x124
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9918
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9918
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x124
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9918
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9918
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x124
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x124
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_876a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_876a
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x128
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_876a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_876a
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x128
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x128
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x130
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_33c4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_33c4
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xf90002ff
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x130
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000120
    .inst 0xb9400808
    .inst 0x340000e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_33c4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_33c4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x130
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x130
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_string
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0x12800008
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5ccc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5ccc
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb9000128
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000140
    .inst 0xb9400808
    .inst 0x34000108
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5ccc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5ccc
    .inst 0xaa1403e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0xb9000100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x148
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_a01c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_a01c
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x148
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_a01c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_a01c
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x148
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x148
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x14c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_c1bc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_c1bc
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x14c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_c1bc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_c1bc
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x14c
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x14c
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xf4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_822f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_822f
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900037f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xf4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_822f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_822f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xf4
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xf4
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xf0
    .inst 0x12800008
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_e80
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_e80
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb9000388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xf0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000120
    .inst 0xb9400808
    .inst 0x340000e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_e80
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_e80
    .inst 0xaa1403e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0xb9000380
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xf0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_642d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_642d
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_642d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_642d
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xfc
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xfc
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1a36
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1a36
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1a36
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1a36
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xf8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xf8
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xa0
    .inst 0x12800008
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8b9b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8b9b
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb90002c8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000120
    .inst 0xb9400808
    .inst 0x340000e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8b9b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8b9b
    .inst 0xaa1403e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0xb90002c0
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_2c68
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_2c68
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_2c68
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_2c68
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xa4
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xa4
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x64
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_b46f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_b46f
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_b46f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_b46f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x64
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x64
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_3992
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_3992
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_3992
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_3992
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x68
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x68
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x60
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7b8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7b8c
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7b8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7b8c
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x60
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x60
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8780
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8780
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb40001e0
    .inst 0xb9400808
    .inst 0x340001a8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8780
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8780
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52800043
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f800a0
    .inst 0x294227e8
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x14
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x14
    .inst 0x29002548
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_46c7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_46c7
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000220
    .inst 0xb9400808
    .inst 0x340001e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6b60
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6b60
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52800063
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f800e0
    .inst 0xf9400be8
    .inst 0xb9401be9
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x170
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x170
    .inst 0xf9000148
    .inst 0xb9000949
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1ec
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1ec
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1ec
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1ec
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x158
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x158
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_bb6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_bb6e
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_bb6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_bb6e
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x15c
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x15c
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7b9f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7b9f
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb40001e0
    .inst 0xb9400808
    .inst 0x340001a8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7b9f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7b9f
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52800043
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f800a0
    .inst 0x294227e8
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x160
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x160
    .inst 0x29002548
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6fc6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6fc6
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6fc6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6fc6
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x168
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x168
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76bf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76bf
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xb4000160
    .inst 0xb9400808
    .inst 0x34000128
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76bf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76bf
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x16c
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x16c
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_aecd
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_aecd
    .inst 0xb9412306
    .inst 0xb9412707
    .inst 0x29428f02
    .inst 0x295f1305
    .inst 0xb9414b08
    .inst 0xb9414f09
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_4dc8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_4dc8
    .inst 0xaa1403e1
    .inst 0xb9000be9
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9415b02
    .inst 0xb9416303
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_8248
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_8248
    .inst 0xb9416704
    .inst 0xb9416b05
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9417302
    .inst 0xb9417703
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_c1dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_c1dd
    .inst 0xb9417b04
    .inst 0xb9416f05
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_ts_check_dt
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, p_device
    .inst 0xa9006313
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xf9003913
    .inst 0xf9005118
    .inst 0xb9412b09
    .inst 0x340005c9
    .inst 0xb94002aa
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x3400068a
    .inst 0x7100053f
    .inst 0x540002e1
    .inst 0xf94002e1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x130
    .inst 0xb4001de1
    .inst 0x39400029
    .inst 0x34001da9
    .inst 0x39400029
    .inst 0x34000669
    .inst 0xf9403900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_get
    .inst 0xb13ffc1f
    .inst 0x54000603
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_b4bb
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_b4bb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_87bd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_87bd
    .inst 0xaa0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x138
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_700a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_700a
    .inst 0xf9000113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x138
    .inst 0x140000e0
    .inst 0x540004ab
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x7100041f
    .inst 0x5400042b
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x150
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_request_power_resources.str_vdd_gpio
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_request_power_resources.str_vdd_gpio
    .inst 0x52800021
    .inst 0x7100011f
    .inst 0x1a9f17e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_spi_get_gpio
    .inst 0x36f80320
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0x2a0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6447
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6447
    .inst 0xb9400102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x1400003f
    .inst 0xf94002e9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x130
    .inst 0xb4fffa49
    .inst 0x39400129
    .inst 0x34fffa09
    .inst 0x52800029
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x128
    .inst 0xb9000149
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x128
    .inst 0x17ffffcc
    .inst 0xf940034a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x108
    .inst 0xb4fff98a
    .inst 0x3940014a
    .inst 0x34fff94a
    .inst 0x5280002a
    .inst 0xb90002aa
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x17ffffc7
    .inst 0xaa1f03e0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x138
    .inst 0xf9000100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x138
    .inst 0xb94002a8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x7100051f
    .inst 0x54000301
    .inst 0xf9400341
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x108
    .inst 0xb4001681
    .inst 0x39400028
    .inst 0x34001648
    .inst 0x39400028
    .inst 0x34000508
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xf9403900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_get
    .inst 0xb13ffc1f
    .inst 0x54000483
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_b4bb
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_b4bb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_87bd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_87bd
    .inst 0xaa0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x110
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_2c82
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_2c82
    .inst 0xf9000113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x110
    .inst 0x140000a1
    .inst 0x5400032b
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x7100041f
    .inst 0x540002ab
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x150
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_request_power_resources.str_avdd_gpio
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_request_power_resources.str_avdd_gpio
    .inst 0x52800021
    .inst 0x7100011f
    .inst 0x1a9f17e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_spi_get_gpio
    .inst 0x36f801a0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0x2a0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_39af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_39af
    .inst 0xb9400102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1a4f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1a4f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400008f
    .inst 0xaa1f03e0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x110
    .inst 0xf9000100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x110
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if
    .inst 0xb40011f3
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x60
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0x60
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_pal_mutex_alloc.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_pal_mutex_alloc.__key
    .inst 0x910042e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xb94002e8
    .inst 0x52800109
    .inst 0x390eb269
    .inst 0x71000d1f
    .inst 0x54000048
    .inst 0xb903b268
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, spi_setup
    .inst 0x37f81000
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x18
    .inst 0x5281b801
    .inst 0x52800102
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x18
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xb4002480
    .inst 0xb94002c8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa0
    .inst 0x52807fc9
    .inst 0xb9000009
    .inst 0x7100051f
    .inst 0xf901e260
    .inst 0x5400012b
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xa4
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_request_bus_resources.str_switch_gpio
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_request_bus_resources.str_switch_gpio
    .inst 0xb9400122
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa4
    .inst 0x2a0803e0
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_spi_get_gpio
    .inst 0x37f80e40
    .inst 0xb9400380
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xf0
    .inst 0x7100041f
    .inst 0x540000eb
    .inst 0xb9400362
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xf4
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_request_reset_resources.str_rst_gpio
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_request_reset_resources.str_rst_gpio
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_spi_get_gpio
    .inst 0x37f80e20
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xa8
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xa8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_pal_mutex_alloc.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_pal_mutex_alloc.__key
    .inst 0x910062e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xb94002e0
    .inst 0x7100041f
    .inst 0x5400088b
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_request_attn_resources.str_attn_gpio
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_request_attn_resources.str_attn_gpio
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_spi_get_gpio
    .inst 0x2a0003e8
    .inst 0x2a1f03e0
    .inst 0x36f82468
    .inst 0xb94002e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7c34
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7c34
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_4e59
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_4e59
    .inst 0x2a0803f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_c18a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_c18a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9404ae0
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0xb94002c0
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa0
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, rx_buf
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0xb40000e1
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4001868
    .inst 0xf9403900
    .inst 0xb4001820
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tx_buf
    .inst 0x2a1303e8
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0xb4000101
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb40017e8
    .inst 0xf9403900
    .inst 0xb40017a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1303e8
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, xfer
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0xb4000101
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4001768
    .inst 0xf9403900
    .inst 0xb4001720
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1303e8
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x128
    .inst 0xb9400129
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x128
    .inst 0x7100053f
    .inst 0x54000f61
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x138
    .inst 0xf9400120
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x138
    .inst 0xb4000fe0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x1400007c
    .inst 0x2a1f03e0
    .inst 0x140000e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_215e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_215e
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_7bf1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_7bf1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1a4f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1a4f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128000b3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_989e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_989e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140000d6
    .inst 0x128002b3
    .inst 0x140000b2
    .inst 0x2a0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5d0b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5d0b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_39de
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_39de
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140000ab
    .inst 0xb94002c2
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0xa0
    .inst 0x2a0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_39fd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_39fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_39de
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_39de
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140000a3
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0xa0
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_hw_if+0xa0
    .inst 0x2a0003f3
    .inst 0xb94052c2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_1a82
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_1a82
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_2cb3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_2cb3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_98d1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_98d1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94002c0
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, rx_buf
    .inst 0x2a1303e0
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0xb4000101
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000aa8
    .inst 0xf9403900
    .inst 0xb4000a60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1303e0
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tx_buf
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0xb4000101
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000a28
    .inst 0xf9403900
    .inst 0xb40009e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1303e0
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, xfer
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0xb4000101
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb40009a8
    .inst 0xf9403900
    .inst 0xb4000960
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1303e0
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x128
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x128
    .inst 0x7100051f
    .inst 0x540000e1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x138
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x138
    .inst 0xb4000188
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000008
    .inst 0x5400010b
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x7100051f
    .inst 0x5400008b
    .inst 0x2a0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x2a1303e0
    .inst 0xb94002a8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x7100051f
    .inst 0x540000e1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x110
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x110
    .inst 0xb4000fa8
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000079
    .inst 0x54000f2b
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x7100051f
    .inst 0x54000eab
    .inst 0x2a0803e0
    .inst 0x14000071
    .inst 0x540000eb
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0xb9400120
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x7100041f
    .inst 0x5400006b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x2a1303e8
    .inst 0xb94002a9
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x7100053f
    .inst 0x540000e1
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x110
    .inst 0xf9400120
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x110
    .inst 0xb4000160
    .inst 0x2a0803f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000062
    .inst 0x540000eb
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0xb9400120
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x7100041f
    .inst 0x5400006b
    .inst 0x2a0803f3
    .inst 0x1400005a
    .inst 0x2a0803e0
    .inst 0x1400005a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffaa
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffae
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffb2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff3c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff40
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff44
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x18
    .inst 0xd5384117
    .inst 0xf9402af8
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x18
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x1e0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x1e0
    .inst 0x5281b801
    .inst 0x52800102
    .inst 0xf9002ae8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9002af8
    .inst 0xb5ffdbc0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_6476
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_6476
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_39de
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_39de
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800173
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_5c88
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_5c88
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_probe_rodata_str_76b0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x128
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x128
    .inst 0x7100051f
    .inst 0x540000c1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x138
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x138
    .inst 0xb4000120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000007
    .inst 0x540000cb
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x140
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x140
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0xb94002a8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x100
    .inst 0x7100051f
    .inst 0x540000c1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x110
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_spi_hw_if+0x110
    .inst 0xb4000120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000007
    .inst 0x540000cb
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_hw_if+0x118
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_hw_if+0x118
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x2a1303e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000141
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_spi_probe, .-syna_spi_probe
.section .bss,"aw",@nobits
.org 0x8bc
.org 0x8bc
.local syna_spi_request_power_resources.str_vdd_gpio
.type syna_spi_request_power_resources.str_vdd_gpio, %object
syna_spi_request_power_resources.str_vdd_gpio:
.zero 32
.size syna_spi_request_power_resources.str_vdd_gpio, 32
.org 0x8dc
.local syna_spi_request_power_resources.str_avdd_gpio
.type syna_spi_request_power_resources.str_avdd_gpio, %object
syna_spi_request_power_resources.str_avdd_gpio:
.zero 32
.size syna_spi_request_power_resources.str_avdd_gpio, 32
.org 0x8fc
.local syna_spi_request_bus_resources.str_switch_gpio
.type syna_spi_request_bus_resources.str_switch_gpio, %object
syna_spi_request_bus_resources.str_switch_gpio:
.zero 32
.size syna_spi_request_bus_resources.str_switch_gpio, 32
.org 0x91c
.local syna_pal_mutex_alloc.__key
.type syna_pal_mutex_alloc.__key, %object
syna_pal_mutex_alloc.__key:
.zero 1
.size syna_pal_mutex_alloc.__key, 1
.org 0x91d
.local syna_spi_request_reset_resources.str_rst_gpio
.type syna_spi_request_reset_resources.str_rst_gpio, %object
syna_spi_request_reset_resources.str_rst_gpio:
.zero 32
.size syna_spi_request_reset_resources.str_rst_gpio, 32
.org 0x93d
.local syna_spi_request_attn_resources.str_attn_gpio
.type syna_spi_request_attn_resources.str_attn_gpio, %object
syna_spi_request_attn_resources.str_attn_gpio:
.zero 32
.size syna_spi_request_attn_resources.str_attn_gpio, 32
.section .codetag.alloc_tags,"aw",@progbits
.org 0x1e0
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x1ec
.L_syna_spi_probe_rodata_str_1ec:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x2d, 0x74, 0x69, 0x6d, 0x65, 0x6f, 0x75, 0x74, 0x2d, 0x6d, 0x73, 0x00
.org 0x8a4
.L_syna_spi_probe_rodata_str_8a4:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x69, 0x72, 0x71, 0x2d, 0x6f, 0x6e, 0x2d, 0x73, 0x74, 0x61, 0x74, 0x65, 0x00
.org 0xe80
.L_syna_spi_probe_rodata_str_e80:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x72, 0x65, 0x73, 0x65, 0x74, 0x2d, 0x67, 0x70, 0x69, 0x6f, 0x00
.org 0x1a36
.L_syna_spi_probe_rodata_str_1a36:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x72, 0x65, 0x73, 0x65, 0x74, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0x1a4f
.L_syna_spi_probe_rodata_str_1a4f:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x5f, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x00
.org 0x1a82
.L_syna_spi_probe_rodata_str_1a82:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x47, 0x50, 0x49, 0x4f, 0x20, 0x25, 0x64, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x0a, 0x00
.org 0x210c
.L_syna_spi_probe_rodata_str_210c:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x64, 0x64, 0x2d, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x2d, 0x6f, 0x6e, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0x215e
.L_syna_spi_probe_rodata_str_215e:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x67, 0x65, 0x74, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x69, 0x6f, 0x2c, 0x20, 0x6e, 0x6f, 0x20, 0x67, 0x69, 0x76, 0x65, 0x6e, 0x20, 0x6e, 0x61, 0x6d, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x76, 0x69, 0x6f, 0x0a, 0x00
.org 0x2c68
.L_syna_spi_probe_rodata_str_2c68:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x69, 0x6f, 0x2d, 0x73, 0x77, 0x69, 0x74, 0x63, 0x68, 0x2d, 0x73, 0x74, 0x61, 0x74, 0x65, 0x00
.org 0x2c82
.L_syna_spi_probe_rodata_str_2c82:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x64, 0x64, 0x0a, 0x00
.org 0x2cb3
.L_syna_spi_probe_rodata_str_2cb3:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x72, 0x65, 0x73, 0x65, 0x74, 0x5f, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x00
.org 0x33c4
.L_syna_spi_probe_rodata_str_33c4:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x61, 0x76, 0x64, 0x64, 0x2d, 0x6e, 0x61, 0x6d, 0x65, 0x00
.org 0x3992
.L_syna_spi_probe_rodata_str_3992:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x73, 0x70, 0x69, 0x2d, 0x62, 0x6c, 0x6f, 0x63, 0x6b, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x75, 0x73, 0x00
.org 0x39af
.L_syna_spi_probe_rodata_str_39af:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x47, 0x50, 0x49, 0x4f, 0x20, 0x25, 0x64, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x64, 0x64, 0x0a, 0x00
.org 0x39de
.L_syna_spi_probe_rodata_str_39de:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x62, 0x75, 0x73, 0x5f, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x00
.org 0x39fd
.L_syna_spi_probe_rodata_str_39fd:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x47, 0x50, 0x49, 0x4f, 0x20, 0x25, 0x64, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x69, 0x6f, 0x20, 0x73, 0x77, 0x69, 0x74, 0x63, 0x68, 0x0a, 0x00
.org 0x410f
.L_syna_spi_probe_rodata_str_410f:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x64, 0x64, 0x2d, 0x63, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x00
.org 0x46c7
.L_syna_spi_probe_rodata_str_46c7:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x66, 0x6c, 0x61, 0x73, 0x68, 0x2d, 0x61, 0x63, 0x63, 0x65, 0x73, 0x73, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x75, 0x73, 0x00
.org 0x4dc8
.L_syna_spi_probe_rodata_str_4dc8:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4c, 0x6f, 0x61, 0x64, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x64, 0x74, 0x3a, 0x20, 0x63, 0x68, 0x75, 0x6e, 0x6b, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x28, 0x25, 0x64, 0x20, 0x25, 0x64, 0x29, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x20, 0x28, 0x25, 0x64, 0x20, 0x25, 0x64, 0x29, 0x20, 0x76, 0x64, 0x64, 0x20, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x28, 0x25, 0x64, 0x20, 0x25, 0x64, 0x29, 0x20, 0x76, 0x69, 0x6f, 0x20, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x28, 0x25, 0x64, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00
.org 0x4e59
.L_syna_spi_probe_rodata_str_4e59:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x61, 0x74, 0x74, 0x6e, 0x5f, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x00
.org 0x5288
.L_syna_spi_probe_rodata_str_5288:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x2d, 0x6f, 0x6e, 0x2d, 0x73, 0x74, 0x61, 0x74, 0x65, 0x00
.org 0x5c88
.L_syna_spi_probe_rodata_str_5c88:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x62, 0x75, 0x73, 0x0a, 0x00
.org 0x5cb9
.L_syna_spi_probe_rodata_str_5cb9:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x64, 0x64, 0x2d, 0x6e, 0x61, 0x6d, 0x65, 0x00
.org 0x5ccc
.L_syna_spi_probe_rodata_str_5ccc:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x69, 0x6f, 0x2d, 0x67, 0x70, 0x69, 0x6f, 0x00
.org 0x5d0b
.L_syna_spi_probe_rodata_str_5d0b:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x73, 0x65, 0x74, 0x20, 0x75, 0x70, 0x20, 0x53, 0x50, 0x49, 0x20, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x63, 0x6f, 0x6c, 0x20, 0x64, 0x72, 0x69, 0x76, 0x65, 0x72, 0x0a, 0x00
.org 0x642d
.L_syna_spi_probe_rodata_str_642d:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x72, 0x65, 0x73, 0x65, 0x74, 0x2d, 0x61, 0x63, 0x74, 0x69, 0x76, 0x65, 0x2d, 0x6d, 0x73, 0x00
.org 0x6447
.L_syna_spi_probe_rodata_str_6447:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x47, 0x50, 0x49, 0x4f, 0x20, 0x25, 0x64, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x69, 0x6f, 0x0a, 0x00
.org 0x6476
.L_syna_spi_probe_rodata_str_6476:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x63, 0x74, 0x72, 0x6c, 0x5f, 0x64, 0x61, 0x74, 0x61, 0x0a, 0x00
.org 0x6b60
.L_syna_spi_probe_rodata_str_6b60:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x66, 0x6c, 0x61, 0x73, 0x68, 0x2d, 0x61, 0x63, 0x63, 0x65, 0x73, 0x73, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x75, 0x73, 0x79, 0x00
.org 0x6fb3
.L_syna_spi_probe_rodata_str_6fb3:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x64, 0x64, 0x2d, 0x67, 0x70, 0x69, 0x6f, 0x00
.org 0x6fc6
.L_syna_spi_probe_rodata_str_6fc6:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x2d, 0x72, 0x65, 0x74, 0x72, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0x700a
.L_syna_spi_probe_rodata_str_700a:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x75, 0x72, 0x65, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x69, 0x6f, 0x0a, 0x00
.org 0x76b0
.L_syna_spi_probe_rodata_str_76b0:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x70, 0x72, 0x6f, 0x62, 0x65, 0x00
.org 0x76bf
.L_syna_spi_probe_rodata_str_76bf:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x66, 0x77, 0x2d, 0x73, 0x77, 0x69, 0x74, 0x63, 0x68, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0x7b79
.L_syna_spi_probe_rodata_str_7b79:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x69, 0x72, 0x71, 0x2d, 0x67, 0x70, 0x69, 0x6f, 0x00
.org 0x7b8c
.L_syna_spi_probe_rodata_str_7b8c:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x73, 0x70, 0x69, 0x2d, 0x6d, 0x6f, 0x64, 0x65, 0x00
.org 0x7b9f
.L_syna_spi_probe_rodata_str_7b9f:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x2d, 0x74, 0x75, 0x72, 0x6e, 0x61, 0x72, 0x6f, 0x75, 0x6e, 0x64, 0x2d, 0x75, 0x73, 0x00
.org 0x7bf1
.L_syna_spi_probe_rodata_str_7bf1:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x67, 0x65, 0x74, 0x20, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x76, 0x64, 0x64, 0x2c, 0x20, 0x6e, 0x6f, 0x20, 0x67, 0x69, 0x76, 0x65, 0x6e, 0x20, 0x6e, 0x61, 0x6d, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x76, 0x64, 0x64, 0x0a, 0x00
.org 0x7c34
.L_syna_spi_probe_rodata_str_7c34:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x47, 0x50, 0x49, 0x4f, 0x20, 0x25, 0x64, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x61, 0x74, 0x74, 0x65, 0x6e, 0x74, 0x69, 0x6f, 0x6e, 0x0a, 0x00
.org 0x822f
.L_syna_spi_probe_rodata_str_822f:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x72, 0x65, 0x73, 0x65, 0x74, 0x2d, 0x6f, 0x6e, 0x2d, 0x73, 0x74, 0x61, 0x74, 0x65, 0x00
.org 0x8248
.L_syna_spi_probe_rodata_str_8248:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4c, 0x6f, 0x61, 0x64, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x64, 0x74, 0x3a, 0x20, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x20, 0x74, 0x69, 0x6d, 0x65, 0x6f, 0x75, 0x74, 0x28, 0x25, 0x64, 0x29, 0x20, 0x74, 0x75, 0x72, 0x6e, 0x61, 0x72, 0x6f, 0x75, 0x6e, 0x64, 0x20, 0x74, 0x69, 0x6d, 0x65, 0x28, 0x25, 0x64, 0x20, 0x25, 0x64, 0x29, 0x20, 0x72, 0x65, 0x74, 0x72, 0x79, 0x20, 0x74, 0x69, 0x6d, 0x65, 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00
.org 0x876a
.L_syna_spi_probe_rodata_str_876a:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x69, 0x6f, 0x2d, 0x63, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x00
.org 0x8780
.L_syna_spi_probe_rodata_str_8780:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x63, 0x68, 0x75, 0x6e, 0x6b, 0x73, 0x00
.org 0x87bd
.L_syna_spi_probe_rodata_str_87bd:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x67, 0x65, 0x74, 0x5f, 0x72, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x00
.org 0x8b9b
.L_syna_spi_probe_rodata_str_8b9b:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x69, 0x6f, 0x2d, 0x73, 0x77, 0x69, 0x74, 0x63, 0x68, 0x2d, 0x67, 0x70, 0x69, 0x6f, 0x00
.org 0x9217
.L_syna_spi_probe_rodata_str_9217:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0x989e
.L_syna_spi_probe_rodata_str_989e:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x0a, 0x00
.org 0x98d1
.L_syna_spi_probe_rodata_str_98d1:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x72, 0x65, 0x73, 0x65, 0x74, 0x0a, 0x00
.org 0x9904
.L_syna_spi_probe_rodata_str_9904:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x69, 0x72, 0x71, 0x2d, 0x66, 0x6c, 0x61, 0x67, 0x73, 0x00
.org 0x9918
.L_syna_spi_probe_rodata_str_9918:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x64, 0x64, 0x2d, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x2d, 0x6f, 0x66, 0x66, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0x9fae
.L_syna_spi_probe_rodata_str_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0xa01c
.L_syna_spi_probe_rodata_str_a01c:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x69, 0x6f, 0x2d, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x2d, 0x6f, 0x6e, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0xad32
.L_syna_spi_probe_rodata_str_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
.org 0xad58
.L_syna_spi_probe_rodata_str_ad58:
.byte 0x28, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x75, 0x74, 0x65, 0x78, 0x20, 0x2a, 0x29, 0x70, 0x74, 0x72, 0x00
.org 0xaeb1
.L_syna_spi_probe_rodata_str_aeb1:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x73, 0x70, 0x69, 0x20, 0x64, 0x72, 0x69, 0x76, 0x65, 0x72, 0x20, 0x69, 0x6e, 0x00
.org 0xaecd
.L_syna_spi_probe_rodata_str_aecd:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x70, 0x61, 0x72, 0x73, 0x65, 0x5f, 0x64, 0x74, 0x00
.org 0xb46f
.L_syna_spi_probe_rodata_str_b46f:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x73, 0x70, 0x69, 0x2d, 0x62, 0x79, 0x74, 0x65, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x75, 0x73, 0x00
.org 0xb4bb
.L_syna_spi_probe_rodata_str_b4bb:
.byte 0x01, 0x34, 0x5b, 0x77, 0x61, 0x72, 0x6e, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x52, 0x65, 0x67, 0x75, 0x6c, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x69, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x72, 0x65, 0x61, 0x64, 0x79, 0x0a, 0x00
.org 0xbb6e
.L_syna_spi_probe_rodata_str_bb6e:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x63, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x2d, 0x70, 0x6f, 0x6c, 0x6c, 0x69, 0x6e, 0x67, 0x2d, 0x6d, 0x73, 0x00
.org 0xc18a
.L_syna_spi_probe_rodata_str_c18a:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x61, 0x74, 0x74, 0x6e, 0x0a, 0x00
.org 0xc1bc
.L_syna_spi_probe_rodata_str_c1bc:
.byte 0x73, 0x79, 0x6e, 0x61, 0x70, 0x74, 0x69, 0x63, 0x73, 0x2c, 0x76, 0x69, 0x6f, 0x2d, 0x70, 0x6f, 0x77, 0x65, 0x72, 0x2d, 0x6f, 0x66, 0x66, 0x2d, 0x64, 0x65, 0x6c, 0x61, 0x79, 0x2d, 0x6d, 0x73, 0x00
.org 0xc1dd
.L_syna_spi_probe_rodata_str_c1dd:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x4c, 0x6f, 0x61, 0x64, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x64, 0x74, 0x3a, 0x20, 0x66, 0x6c, 0x61, 0x73, 0x68, 0x20, 0x65, 0x72, 0x61, 0x73, 0x65, 0x28, 0x25, 0x64, 0x29, 0x20, 0x66, 0x6c, 0x61, 0x73, 0x68, 0x20, 0x77, 0x72, 0x69, 0x74, 0x65, 0x28, 0x25, 0x64, 0x29, 0x20, 0x66, 0x6c, 0x61, 0x73, 0x68, 0x20, 0x72, 0x65, 0x61, 0x64, 0x28, 0x25, 0x64, 0x29, 0x20, 0x66, 0x77, 0x20, 0x73, 0x77, 0x69, 0x74, 0x63, 0x68, 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00
