.section .text,"ax",@progbits
.align 2
.global gpio_keys_gpio_report_event
.type gpio_keys_gpio_report_event, %function
gpio_keys_gpio_report_event:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0xa9404c17
    .inst 0xaa0003f5
    .inst 0xb940c808
    .inst 0xb9401af8
    .inst 0x7100071f
    .inst 0x1a9f8714
    .inst 0x37f802c8
    .inst 0xb940c6a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0x2a0003f6
    .inst 0xb940caa0
    .inst 0x710002df
    .inst 0x1a9f17f9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0x7100001f
    .inst 0x1a9f17e8
    .inst 0x710002df
    .inst 0x4a080329
    .inst 0x36000529
    .inst 0x1a9f17ea
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nb_key_is_need_report.stat_rec
    .inst 0xb940012b
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nb_key_is_need_report.stat_rec
    .inst 0x2a0a0508
    .inst 0x6b08017f
    .inst 0x54000240
    .inst 0xb9000128
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nb_key_is_need_report.stat_rec
    .inst 0xa94122a0
    .inst 0x79400116
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_value_cansleep
    .inst 0x71003edf
    .inst 0x54000061
    .inst 0x7100171f
    .inst 0x54000220
    .inst 0x37f80260
    .inst 0x71000f1f
    .inst 0x540003e1
    .inst 0x35000580
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x7100001f
    .inst 0x1a9f17e8
    .inst 0x14000010
    .inst 0xf9414a68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a1
    .inst 0x2a0003e2
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x17fffff0
    .inst 0x1a9f17e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x53d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x53d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2f5
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe9
    .inst 0x2a0003e8
    .inst 0xf9400ea9
    .inst 0xaa1303e0
    .inst 0x2a1403e1
    .inst 0x2a0803e3
    .inst 0x2a0803f5
    .inst 0x79400122
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xb94002e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x488
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x488
    .inst 0x2a1403e1
    .inst 0x2a1503e3
    .inst 0x1400000b
    .inst 0xb94002e2
    .inst 0xb9402ee3
    .inst 0xaa1303e0
    .inst 0x52800061
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xb94002e2
    .inst 0xb9402ee3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24
    .inst 0x52800061
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffca
.size gpio_keys_gpio_report_event, .-gpio_keys_gpio_report_event

.section .bss,"aw",@nobits
.align 2
.space 4
.local nb_key_is_need_report.stat_rec
nb_key_is_need_report.stat_rec:
.space 4

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
.Lreport_rodata_start:
.space 0x24
.byte 1
.asciz "3[gpio-keys_nubia] GPIO_KEY, type:%d, input:code=%d, value=%d\n"
.space 0x2a1 - (. - .Lreport_rodata_start)
.asciz "failed to get gpio state: %d\n"
.space 0x2f5 - (. - .Lreport_rodata_start)
.asciz "nb_key_is_need_report"
.space 0x488 - (. - .Lreport_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] GPIO_KEY, type:%d, input:code=%d, state=%d\n"
.space 0x53d - (. - .Lreport_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] %s Key Open/Close half, gpios-state:%d."
