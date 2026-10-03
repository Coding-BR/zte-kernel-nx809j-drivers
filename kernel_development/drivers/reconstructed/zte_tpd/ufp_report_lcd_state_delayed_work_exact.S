.section .text,"ax",@progbits
.align 2
.global ufp_report_lcd_state_delayed_work
.type ufp_report_lcd_state_delayed_work, %function
    .word 0x105d2ee9
ufp_report_lcd_state_delayed_work:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9425a93
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xaa0003e3
    .inst 0x91278282
    .inst 0x52800400
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mod_delayed_work_on
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ufp_report_lcd_state_delayed_work, .-ufp_report_lcd_state_delayed_work
.section .note.GNU-stack,"",@progbits
