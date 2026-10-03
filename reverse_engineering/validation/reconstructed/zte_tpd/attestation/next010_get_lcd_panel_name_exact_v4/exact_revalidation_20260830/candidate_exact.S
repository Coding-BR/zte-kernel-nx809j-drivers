.section .text,"ax",@progbits
.align 2
.global get_lcd_panel_name
.type get_lcd_panel_name, %function
    .word 0x51b8bc5f
get_lcd_panel_name:
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_unknown_lcd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_unknown_lcd
    .inst 0xd65f03c0
.size get_lcd_panel_name, .-get_lcd_panel_name

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_unknown_lcd:
    .asciz "Unknown_lcd"

.section .note.GNU-stack,"",@progbits
