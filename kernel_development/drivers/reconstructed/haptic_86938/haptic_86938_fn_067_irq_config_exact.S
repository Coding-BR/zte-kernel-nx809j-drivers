.section .text,"ax",@progbits
.align 2
.global irq_config
.type irq_config, %function
irq_config:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xb9405028
    .inst 0xaa0103f3
    .inst 0xaa0003f4
    .inst 0x37f803e8
    .inst 0x39405668
    .inst 0x370003a8
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9408508
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb9405260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x2a0003e1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, irq_handle
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, irq_handle
    .inst 0x90000005
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b19
    .inst 0x910000a5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b19
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x52840044
    .inst 0xaa1303e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_request_threaded_irq
    .inst 0x350001c0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1e6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1e6a
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_info
    .inst 0x39405668
    .inst 0x2a1f03e0
    .inst 0x32000108
    .inst 0x39005668
    .inst 0x17fffff4
    .inst 0xb9405268
    .inst 0x2a0003f3
    .inst 0x2a0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2702
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2702
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x283
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x283
    .inst 0x5280d9c2
    .inst 0x2a1303e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffe3
.size irq_config, .-irq_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
