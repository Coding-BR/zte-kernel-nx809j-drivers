.section .text,"ax",@progbits
.align 2
.global set_lcd_reset_processing
.type set_lcd_reset_processing, %function
.word 0xa2fce979
set_lcd_reset_processing:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x12000001
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x39006100
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_set_lcd_reset_processing_format
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_set_lcd_reset_processing_format
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size set_lcd_reset_processing, .-set_lcd_reset_processing

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
.L_set_lcd_reset_processing_format:
    .asciz "\0015tpd: cdev->ignore_tp_irq is %d.\n"
