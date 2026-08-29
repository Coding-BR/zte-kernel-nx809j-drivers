.section .text,"ax",@progbits
.align 2
.word 0x4e31a072
.global nubia_hw_rf_band_show
.type nubia_hw_rf_band_show, %function
nubia_hw_rf_band_show:
    .inst 0xb40001e2
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio1_v
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio1_v
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_rf_gpio2_v
    .inst 0x39800108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_rf_gpio2_v
    .inst 0x7100093f
    .inst 0x540001c0
    .inst 0x7100053f
    .inst 0x54000120
    .inst 0x350002c9
    .inst 0x71000d1f
    .inst 0x54000282
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x358
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x358
    .inst 0x1400000a
    .inst 0xaa1f03e0
    .inst 0xd65f03c0
    .inst 0x350001c8
    .inst 0x528000c8
    .inst 0x14000006
    .inst 0x71000d1f
    .inst 0x54000142
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x370
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x370
    .inst 0xf8687928
    .inst 0x52800289
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x280
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x280
    .inst 0x9b092908
    .inst 0x91002103
    .inst 0x14000003
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3f7
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3f7
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x18
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .bss+0x18
    .inst 0x7100051f
    .inst 0x54000180
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2f2
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2f2
    .inst 0xaa0203e0
    .inst 0x52800181
    .inst 0xaa0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c00
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5d6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5d6
    .inst 0xaa0303e1
    .inst 0xaa0203f3
    .inst 0xaa0303f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e3
    .inst 0xaa1303e2
    .inst 0x17ffffed
.size nubia_hw_rf_band_show, .-nubia_hw_rf_band_show

.section .rodata,"a",@progbits
.align 3
.global nubia_hw_exact_rodata_base
nubia_hw_exact_rodata_base:
.incbin "nubia_hw_rf_band_show_rodata.bin", 0, 0x310
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x310, 8
.reloc .-8, R_AARCH64_ABS64, .rodata
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x318, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0xa8
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x320, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0x18
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x328, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0x30
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x330, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0x60
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x338, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0x48
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x340, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0x90
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x348, 8
.reloc .-8, R_AARCH64_ABS64, .rodata+0xc0
.incbin "nubia_hw_rf_band_show_rodata.bin", 0x350, 0x50

.section .rodata.str1.1,"a",@progbits
.align 1
.global nubia_hw_exact_rodata_str_base
nubia_hw_exact_rodata_str_base:
.incbin "nubia_hw_rf_band_show_strings.bin"

.section .bss,"aw",@nobits
.align 3
.global nubia_hw_exact_bss_base
nubia_hw_exact_bss_base:
.global nubia_pcb_gpio1_v
nubia_pcb_gpio1_v:
.zero 1
.org 0x4
.global nubia_pcb_gpio2_v
nubia_pcb_gpio2_v:
.zero 1
.org 0x8
.global nubia_pcb_gpio3_v
nubia_pcb_gpio3_v:
.zero 1
.org 0xc
.global pcb_gpio3
pcb_gpio3:
.zero 4
.org 0x10
.global nubia_rf_gpio1_v
nubia_rf_gpio1_v:
.zero 1
.org 0x14
.global nubia_rf_gpio2_v
nubia_rf_gpio2_v:
.zero 1
.org 0x18
.global debug_value
debug_value:
.zero 0x4
.org 0x20
.global hw_version_kobj
hw_version_kobj:
.zero 0x8

.section .note.GNU-stack,"",@progbits
