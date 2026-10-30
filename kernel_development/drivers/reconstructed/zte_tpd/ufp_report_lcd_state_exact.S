.section .text,"ax",@progbits
.align 2
.global ufp_report_lcd_state
.type ufp_report_lcd_state, %function
    .word 0xe5c47d60
ufp_report_lcd_state:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xf9001bf3
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0xb50000b3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_report_lcd_state_missing_pdev_str
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_report_lcd_state_missing_pdev_str
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400000c
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_report_lcd_state_aod_str
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_report_lcd_state_aod_str
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_report_lcd_state_event_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_report_lcd_state_event_fmt
    .inst 0xa900ffe8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91004260
    .inst 0x910023e2
    .inst 0x52800041
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0x35000160
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000121
    .inst 0xa9427bfd
    .inst 0xf9401bf3
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_report_lcd_state_send_failed_str
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_report_lcd_state_send_failed_str
    .inst 0x17ffffe7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size ufp_report_lcd_state, .-ufp_report_lcd_state

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
ufp_report_lcd_state_missing_pdev_str:
    .byte 0x01
    .asciz "3tpd_ufp_err: uevent pdev is null!\n\n"
ufp_report_lcd_state_aod_str:
    .asciz "aod=true"
ufp_report_lcd_state_event_fmt:
    .byte 0x01
    .asciz "6tpd_ufp_info: uevent:aod=true\n\n"
ufp_report_lcd_state_send_failed_str:
    .byte 0x01
    .asciz "3tpd_ufp_err: lcd state uevent send failed!\n\n"
