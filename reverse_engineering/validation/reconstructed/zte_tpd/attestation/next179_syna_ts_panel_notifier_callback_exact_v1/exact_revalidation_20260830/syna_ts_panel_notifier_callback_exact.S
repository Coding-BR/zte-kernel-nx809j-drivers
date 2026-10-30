.section .text,"ax",@progbits
.align 2
.global syna_ts_panel_notifier_callback
.type syna_ts_panel_notifier_callback, %function
    .word 0x40116f97
syna_ts_panel_notifier_callback:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xb4000621
    .inst 0xb9400028
    .inst 0x7100091f
    .inst 0x5400028c
    .inst 0x7100051f
    .inst 0x54000360
    .inst 0x7100091f
    .inst 0x54000281
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, panel_enter_low_power
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, panel_enter_low_power
    .inst 0x7100053f
    .inst 0x540000c1
    .inst 0x2a1f03e0
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, panel_enter_low_power
    .inst 0xaa0103f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_notifier_cb
    .inst 0xaa1303e1
    .inst 0x39403028
    .inst 0x7100051f
    .inst 0x540004a0
    .inst 0x52800040
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, change_tp_state
    .inst 0x1400001e
    .inst 0x71000d1f
    .inst 0x54000240
    .inst 0x7100111f
    .inst 0x54000340
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb3bf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb3bf
    .inst 0x2a0803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000015
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, panel_enter_low_power
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, panel_enter_low_power
    .inst 0x7100053f
    .inst 0x54000300
    .inst 0x39403028
    .inst 0x7100051f
    .inst 0x540003c1
    .inst 0x52800060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, change_tp_state
    .inst 0x1400000b
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, panel_enter_low_power
    .inst 0x52800029
    .inst 0x52800020
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, panel_enter_low_power
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_notifier_cb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_report_lcd_state
    .inst 0x14000004
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x32af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x32af
    .inst 0x17fffff9
    .inst 0x2a1f03e0
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, panel_enter_low_power
    .inst 0xaa0103f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_notifier_cb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x45b8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x45b8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e1
    .inst 0x17ffffe1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x197a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x197a
    .inst 0x17ffffed
.size syna_ts_panel_notifier_callback, .-syna_ts_panel_notifier_callback

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
