.section .text,"ax",@progbits
.align 2
.global uf_touch_report
.type uf_touch_report, %function
    .word 0xeb35dc7c
uf_touch_report:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9027bfd
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x340006a0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400109
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x79403d2a
    .inst 0x79404528
    .inst 0x4b08014b
    .inst 0x0b0a010a
    .inst 0x6b01017f
    .inst 0x7a41b144
    .inst 0x5400064d
    .inst 0x79404129
    .inst 0x4b08012a
    .inst 0x6b02015f
    .inst 0x540005ca
    .inst 0x0b080128
    .inst 0x6b02011f
    .inst 0x5400056d
    .inst 0x7100287f
    .inst 0x54000a62
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report.fp_finger
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report.fp_finger
    .inst 0xb8635928
    .inst 0x350004a8
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report.area_meet_down
    .inst 0x39400148
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, uf_touch_report.area_meet_down
    .inst 0x37000448
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0x5280002b
    .inst 0xb823592b
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0x3900014b
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, uf_touch_report.area_meet_down
    .inst 0xb4000568
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_down_str
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_down_str
    .inst 0xf90003e9
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, current_lcd_state
    .inst 0xb9400129
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x71000d3f
    .inst 0x540007e2
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_tppower_to_str
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_tppower_to_str
    .inst 0x91004100
    .inst 0xf8697949
    .inst 0x910003e2
    .inst 0x52800041
    .inst 0xa900ffe9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0xf94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_log_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_log_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_down_str
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_down_str
    .inst 0x1400002e
    .inst 0x7100247f
    .inst 0x540005e8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report.fp_finger
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report.fp_finger
    .inst 0xb8635928
    .inst 0x35000148
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540004a1
    .inst 0xa9427bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0xb823593f
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report.area_meet_down
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0x3900013f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, uf_touch_report.area_meet_down
    .inst 0xb50000a8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_missing_pdev_str
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_missing_pdev_str
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffee
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_up_str
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_up_str
    .inst 0xf90003e9
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, current_lcd_state
    .inst 0xb9400129
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x71000d3f
    .inst 0x54000222
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_tppower_to_str
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_tppower_to_str
    .inst 0x91004100
    .inst 0xf8697949
    .inst 0x910003e2
    .inst 0x52800041
    .inst 0xa900ffe9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0xf94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_log_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_log_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, uf_touch_report_up_str
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, uf_touch_report_up_str
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffd8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd42aa240
.size uf_touch_report, .-uf_touch_report

.section .bss,"aw",@nobits
.align 3
.global uf_touch_report.fp_finger
uf_touch_report.fp_finger:
    .zero 40
.global uf_touch_report.area_meet_down
uf_touch_report.area_meet_down:
    .zero 1

.section .rodata,"a",@progbits
.align 3
.global uf_touch_report_tppower_to_str
.hidden uf_touch_report_tppower_to_str
uf_touch_report_tppower_to_str:
    .xword uf_touch_report_power_2, uf_touch_report_power_1
    .xword uf_touch_report_power_3
.size uf_touch_report_tppower_to_str, .-uf_touch_report_tppower_to_str

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
uf_touch_report_power_2:
    .asciz "TP_POWER_STATUS=2"
uf_touch_report_power_1:
    .asciz "TP_POWER_STATUS=1"
uf_touch_report_power_3:
    .asciz "TP_POWER_STATUS=3"
uf_touch_report_down_str:
    .asciz "areameet_down=true"
uf_touch_report_up_str:
    .asciz "areameet_up=true"
uf_touch_report_missing_pdev_str:
    .byte 0x01
    .asciz "3tpd_ufp_err: uevent pdev is null!\n\n"
uf_touch_report_log_fmt:
    .byte 0x01
    .asciz "6tpd_ufp_info: %s,lcd state=%s\n"
