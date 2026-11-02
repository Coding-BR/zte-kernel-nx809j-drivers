.section .text,"ax",@progbits
.align 2
.global ufp_get_lcdstate
.type ufp_get_lcdstate, %function
    .word 0x6fbb3035
ufp_get_lcdstate:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, current_lcd_state
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0xd65f03c0
.size ufp_get_lcdstate, .-ufp_get_lcdstate
