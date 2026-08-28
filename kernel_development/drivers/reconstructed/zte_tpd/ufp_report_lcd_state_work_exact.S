.section .text,"ax",@progbits
.align 2
.global ufp_report_lcd_state_work
.type ufp_report_lcd_state_work, %function
    .word 0xa607748c
ufp_report_lcd_state_work:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_report_lcd_state
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ufp_report_lcd_state_work, .-ufp_report_lcd_state_work
