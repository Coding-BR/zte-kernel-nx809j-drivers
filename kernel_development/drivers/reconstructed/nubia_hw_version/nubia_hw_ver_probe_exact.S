.section .text,"ax",@progbits
.align 2
.global nubia_hw_ver_probe
.type nubia_hw_ver_probe, %function
    .word 0xc7f8c87c
nubia_hw_ver_probe:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_bss_base+0x18
    .inst 0xf9417c16
    .inst 0xaa0003f3
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54001360
    .inst 0xb40013d3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x37f81380
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f
    .inst 0x2a0003f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_request
    .inst 0x37f81400
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x50
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x50
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x37f80300
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x178
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x178
    .inst 0x2a0003f7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_request
    .inst 0x37f81800
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x3e8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x3e8
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, pcb_gpio3
    .inst 0xb90002a0
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, pcb_gpio3
    .inst 0x37f80200
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x216
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x216
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_request
    .inst 0x36f801e0
    .inst 0xb94002a1
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, pcb_gpio3
    .inst 0x2a0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0xfa
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0xfa
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000009
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54001620
    .inst 0x2a1f03f7
    .inst 0x14000004
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54002120
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x1b9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x1b9
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x37f80f60
    .inst 0x2a0003f5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x3fe
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x3fe
    .inst 0xaa1603e0
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x37f80f40
    .inst 0x2a0003f6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0xf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0xf
    .inst 0x2a1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_request
    .inst 0x37f810e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x3d6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x3d6
    .inst 0x2a1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_request
    .inst 0x37f81100
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, nubia_gpio_ctrl
    .inst 0x350009a0
    .inst 0x2a1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_input
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54001140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio1_v
    .inst 0x39000100
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x2a1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_input
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x540010a0
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, pcb_gpio3
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio2_v
    .inst 0xb9400358
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, pcb_gpio3
    .inst 0x39000360
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x2a1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_input
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000fc0
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio3_v
    .inst 0x39000300
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio3_v
    .inst 0x2a1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_input
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000f20
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio1_v
    .inst 0x39000100
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio1_v
    .inst 0x2a1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_input
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000e80
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio2_v
    .inst 0x39000380
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio2_v
    .inst 0x52800280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9405668
    .inst 0xb4000ec8
    .inst 0xf9400901
    .inst 0xb4000f41
    .inst 0xf9400100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, pinctrl_select_state
    .inst 0x34000f80
    .inst 0x12800240
    .inst 0x14000029
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x570
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x570
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb5ffec93
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x270
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x270
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000020
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000081
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x297
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x297
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x38
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x38
    .inst 0x14000015
    .inst 0x2a0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x1f2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x1f2
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff5c
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5a9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5a9
    .inst 0x14000006
    .inst 0xb9400328
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x54000081
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x475
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x475
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x559
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x559
    .inst 0x91004260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x12804080
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9416ffc
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x1f2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x1f2
    .inst 0x2a1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff75
    .inst 0x2a0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0xfa
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0xfa
    .inst 0x2a1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff74
    .inst 0x2a0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0xfa
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0xfa
    .inst 0x2a1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff3c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x18b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x18b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff4d
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x12001c01
    .inst 0x2a0003f8
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1803e0
    .inst 0x17ffff70
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x12001c01
    .inst 0x2a0003f8
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1803e0
    .inst 0x17ffff75
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x12001c01
    .inst 0x2a0003f8
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1803e0
    .inst 0x17ffff7c
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x12001c01
    .inst 0x2a0003fc
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1c03e0
    .inst 0x17ffff81
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x5f9
    .inst 0x12001c01
    .inst 0x2a0003fc
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1c03e0
    .inst 0x17ffff86
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x40c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x40c
    .inst 0x91004260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x12800240
    .inst 0x17ffffb5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x249
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x249
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800240
    .inst 0x17ffffb0
    .inst 0x2a1403e0
    .inst 0x9400006c
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio1_v
    .inst 0x39400268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x0b000108
    .inst 0x2a1703e0
    .inst 0x39000268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x94000066
    .inst 0x39400368
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x0b000108
    .inst 0xb9400340
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, pcb_gpio3
    .inst 0x39000368
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x94000061
    .inst 0x39400308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio3_v
    .inst 0xb9400329
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x0b000108
    .inst 0x7100053f
    .inst 0x39000308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio3_v
    .inst 0x540000e1
    .inst 0x39400261
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x39400362
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x382
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x382
    .inst 0x12001d03
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39400269
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x39800368
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x7100053f
    .inst 0x540001cc
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio1_v
    .inst 0x340002c9
    .inst 0x7100053f
    .inst 0x54000461
    .inst 0x71000d1f
    .inst 0x54000422
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x340
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x340
    .inst 0x14000018
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x11f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x11f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffef5
    .inst 0x7100093f
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio1_v
    .inst 0x540001a0
    .inst 0x71000d3f
    .inst 0x540002a1
    .inst 0x71000d1f
    .inst 0x54000261
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0xd8
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0xd8
    .inst 0x1400000b
    .inst 0x71000d1f
    .inst 0x540001c2
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x310
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x310
    .inst 0x14000005
    .inst 0x71000d1f
    .inst 0x54000122
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x328
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x328
    .inst 0xf8687928
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0xe8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0xe8
    .inst 0x91003101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000004
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x280
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1503e0
    .inst 0x94000026
    .inst 0x39400268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio1_v
    .inst 0x0b000108
    .inst 0x2a1603e0
    .inst 0x39000268
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio1_v
    .inst 0x94000021
    .inst 0x39400388
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio2_v
    .inst 0xb9400329
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x0b000108
    .inst 0x7100053f
    .inst 0x39000388
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio2_v
    .inst 0x54000060
    .inst 0x2a1f03e0
    .inst 0x17ffff5b
    .inst 0x39400261
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio1_v
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x500
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x500
    .inst 0x12001d02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff9
.size nubia_hw_ver_probe, .-nubia_hw_ver_probe
