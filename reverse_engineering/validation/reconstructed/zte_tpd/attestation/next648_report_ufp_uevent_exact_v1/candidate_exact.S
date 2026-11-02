.section .text,"ax",@progbits
.align 2
.global report_ufp_uevent
.type report_ufp_uevent, %function
    .word 0x454a91cb
report_ufp_uevent:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xa9034ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, report_ufp_uevent_area_meet_down_base+0x5f8
    .inst 0xf9400133
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, report_ufp_uevent_area_meet_down_base+0x5f8
    .inst 0x34000040
    .inst 0x360001e9
    .inst 0x7100001f
    .inst 0x1a8913e9
    .inst 0x7100053f
    .inst 0x540002e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001121
    .inst 0xa9434ff4
    .inst 0xa9427bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x52800029
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, current_lcd_state
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, report_ufp_uevent_area_meet_down_base+0x5f8
    .inst 0xb9400268
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x35000208
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0xb5000908
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x68e3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x68e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000058
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, report_ufp_uevent_area_meet_down_base+0x5f8
    .inst 0xf9400129
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0xb5000189
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x68e3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x68e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400001d
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0xf9400288
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0xb5000a28
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x68e3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x68e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000065
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xac76
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xac76
    .inst 0xf90003e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, current_lcd_state
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x71000d1f
    .inst 0x54000c62
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, report_ufp_uevent_tppower_to_str
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, report_ufp_uevent_tppower_to_str
    .inst 0x91004120
    .inst 0xf8687948
    .inst 0x910003e2
    .inst 0x52800041
    .inst 0xa900ffe8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0xf94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x691b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x691b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xac76
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xac76
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0xa0
    .inst 0xb9445a69
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa0
    .inst 0x340002a9
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0xa2
    .inst 0x34000108
    .inst 0x39400288
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa2
    .inst 0x370000c8
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x80
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops+0x80
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, complete
    .inst 0x3900827f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0xa1
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa1
    .inst 0x7100053f
    .inst 0x54fff6c1
    .inst 0x39400289
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa2
    .inst 0x3707f689
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x617f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x617f
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffaf
    .inst 0x34fff5c8
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x80
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops+0x80
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, complete
    .inst 0x3900827f
    .inst 0x17ffffa8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc031
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc031
    .inst 0xf90003e9
    .inst 0xb9400269
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x71000d3f
    .inst 0x54000602
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, report_ufp_uevent_tppower_to_str
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, report_ufp_uevent_tppower_to_str
    .inst 0x91004100
    .inst 0xf8697949
    .inst 0x910003e2
    .inst 0x52800041
    .inst 0xa900ffe9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0xf94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x691b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x691b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc031
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc031
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0xa1
    .inst 0x52800029
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa1
    .inst 0x17ffff90
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3dec
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3dec
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_report_gesture_uevent
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3f6a
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3f6a
    .inst 0xf90003e8
    .inst 0xb9400268
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, current_lcd_state
    .inst 0x71000d1f
    .inst 0x540002a2
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, report_ufp_uevent_tppower_to_str
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, report_ufp_uevent_tppower_to_str
    .inst 0x910003e2
    .inst 0xf8687928
    .inst 0xf9400289
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0x52800041
    .inst 0x91004120
    .inst 0xa900ffe8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0xf94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x691b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x691b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3f6a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3f6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0xa0
    .inst 0x52800029
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, ufp_tp_ops+0xa0
    .inst 0x17ffff74
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd42aa240
.size report_ufp_uevent, .-report_ufp_uevent

.section .bss,"aw",@nobits
.align 1
.globl report_ufp_uevent_area_meet_down_base
.type report_ufp_uevent_area_meet_down_base, %object
.zero 0x100
report_ufp_uevent_area_meet_down_base:
    .zero 0x5f9

.section .rodata,"a",@progbits
.org 0xe98
.globl report_ufp_uevent_tppower_to_str
.hidden report_ufp_uevent_tppower_to_str
.type report_ufp_uevent_tppower_to_str, %object
report_ufp_uevent_tppower_to_str:
    .xword .rodata.str1.1+0xce3
    .xword .rodata.str1.1+0x4512
    .xword .rodata.str1.1+0x6c2
.size report_ufp_uevent_tppower_to_str, .-report_ufp_uevent_tppower_to_str

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "report_ufp_uevent_exact.inc"
