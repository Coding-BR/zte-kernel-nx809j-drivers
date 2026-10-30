.section .text,"ax",@progbits
.align 2
.global aw9620x_irq_init
.type aw9620x_irq_init, %function
aw9620x_irq_init:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9037bfd
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0xf9438908
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0x52815584
    .inst 0xf81f83a8
    .inst 0xf9401801
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0xf801e3ff
    .inst 0xa9017fff
    .inst 0xf90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb9400a63
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xcf3
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xcf3
    .inst 0x910023e0
    .inst 0x528003c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xb9400e68
    .inst 0xf9401a61
    .inst 0x37f807c8
    .inst 0xb9400a65
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x806
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x806
    .inst 0xaa1503e0
    .inst 0xaa1603e3
    .inst 0x52815644
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb9400e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0xf9401a61
    .inst 0xb9400a65
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x104f
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x104f
    .inst 0xb9001e60
    .inst 0xaa1503e0
    .inst 0xaa1603e3
    .inst 0x52815684
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a60
    .inst 0xb9400e61
    .inst 0x910023e3
    .inst 0x52800062
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_gpio_request_one
    .inst 0xf9401a61
    .inst 0xb9400a65
    .inst 0x2a0003f4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x106a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x106a
    .inst 0xaa1503e0
    .inst 0xaa1603e3
    .inst 0x52815724
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf9401a68
    .inst 0x35000434
    .inst 0xb9401e61
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_irq
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_irq
    .inst 0x90000005
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x310e
    .inst 0x910000a5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x310e
    .inst 0xaa0803e0
    .inst 0xaa1f03e2
    .inst 0x52840044
    .inst 0xaa1303e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_request_threaded_irq
    .inst 0xf9401a61
    .inst 0x35000400
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x36b3
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x36b3
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0x528159a4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x2a1f03f4
    .inst 0x14000021
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1f50
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1f50
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0x52815a44
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800014
    .inst 0x14000024
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x330d
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x330d
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0xaa0803e1
    .inst 0x52815784
    .inst 0x2a1403e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x1400000b
    .inst 0xb9401e65
    .inst 0x2a0003e6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2d45
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2d45
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0x52815924
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800014
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x108f
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x108f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3c24
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3c24
    .inst 0x52815ac4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb9401e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, disable_irq
    .inst 0x52800028
    .inst 0x39001668
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000101
    .inst 0x2a1403e0
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9437bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_irq_init, .-aw9620x_irq_init
