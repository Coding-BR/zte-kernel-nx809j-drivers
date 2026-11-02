.section .text,"ax",@progbits
.align 2
.global change_tp_state
.type change_tp_state, %function
    .word 0xf4d9b23e
change_tp_state:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x2a0003f3
    .inst 0xf94002b4
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x91330280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, current_lcd_state
    .inst 0x71000e7f
    .inst 0xb94002c8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x54000a08
    .inst 0x71000d1f
    .inst 0x540009c2
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0xe78
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0xe78
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0xe60
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0xe60
    .inst 0xf8735922
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbfef
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbfef
    .inst 0xf8685941
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94002c8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x7100091f
    .inst 0x54000120
    .inst 0x7100051f
    .inst 0x54000280
    .inst 0x35000668
    .inst 0x71000e7f
    .inst 0x54000120
    .inst 0x7100067f
    .inst 0x54000380
    .inst 0x1400002b
    .inst 0x34000473
    .inst 0x71000a7f
    .inst 0x540001e0
    .inst 0x71000e7f
    .inst 0x540004c1
    .inst 0x52800028
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x8
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops+0x8
    .inst 0xb90002c8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb900013f
    .inst 0xb900793f
    .inst 0x14000013
    .inst 0x7100067f
    .inst 0x54000180
    .inst 0x71000a7f
    .inst 0x54000341
    .inst 0xb90002df
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x52800400
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9425901
    .inst 0x91270102
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x8
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, ufp_tp_ops+0x8
    .inst 0x1400000a
    .inst 0x52800048
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x8
    .inst 0xb90002c8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb900013f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, ufp_tp_ops+0x8
    .inst 0xf9425901
    .inst 0x91268102
    .inst 0x52800400
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x91330280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x806c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x806c
    .inst 0x1400000b
    .inst 0xb90002df
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x52800400
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9425901
    .inst 0x91270102
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1838
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1838
    .inst 0xb900011f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, ufp_tp_ops+0x8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffeb
    .inst 0xd42aa240
.size change_tp_state, .-change_tp_state

.section .rodata,"a",@progbits
.align 3
    .zero 0xe60
    .xword .L_change_screen_on, .L_change_screen_off, .L_change_screen_doze
    .xword .L_change_exit_lp, .L_change_enter_lp, .L_change_on, .L_change_off

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
.L_change_screen_on:
    .asciz "screen_on"
.L_change_screen_off:
    .asciz "screen_off"
.L_change_screen_doze:
    .asciz "screen_in_doze"
.L_change_exit_lp:
    .asciz "lcd_exit_lp"
.L_change_enter_lp:
    .asciz "lcd_enter_lp"
.L_change_on:
    .asciz "lcd_on"
.L_change_off:
    .asciz "lcd_off"
