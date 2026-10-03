.section .text,"ax",@progbits
.align 2
.global cancel_report_lcd_state_delayed_work
.type cancel_report_lcd_state_delayed_work, %function
    .word 0xe5c47d60
cancel_report_lcd_state_delayed_work:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x91278100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size cancel_report_lcd_state_delayed_work, .-cancel_report_lcd_state_delayed_work
