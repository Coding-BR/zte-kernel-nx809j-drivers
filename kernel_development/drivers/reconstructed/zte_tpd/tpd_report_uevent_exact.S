.section .text,"ax",@progbits
.align 2
.global tpd_report_uevent
.type tpd_report_uevent, %function
.word 0xa2fce979
tpd_report_uevent:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xf9001bf3
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x12001c08
    .inst 0xf9400133
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x7100091f
    .inst 0xa900ffff
    .inst 0x54000280
    .inst 0x7100051f
    .inst 0x54000140
    .inst 0x350003e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_single_info
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_single_info
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_single_event
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_single_event
    .inst 0x14000010
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_double_info
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_double_info
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_double_event
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_double_event
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_pen_info
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_pen_info
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_pen_event
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_pen_event
    .inst 0xf90007e8
    .inst 0xf946ea68
    .inst 0x910023e2
    .inst 0x52800041
    .inst 0x91004100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0x14000008
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_unknown_info
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_unknown_info
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_report_uevent_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_report_uevent_name
    .inst 0x12001c02
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9427bfd
    .inst 0xf9401bf3
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size tpd_report_uevent, .-tpd_report_uevent

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_report_uevent_single_info:
    .asciz "\0015tpd: %s single tap gesture"
.L_tpd_report_uevent_name:
    .asciz "tpd_report_uevent"
.L_tpd_report_uevent_single_event:
    .asciz "single_tap=true"
.L_tpd_report_uevent_double_info:
    .asciz "\0015tpd: %s double tap gesture"
.L_tpd_report_uevent_double_event:
    .asciz "double_tap=true"
.L_tpd_report_uevent_pen_info:
    .asciz "\0015tpd: %s pen low batt"
.L_tpd_report_uevent_pen_event:
    .asciz "pen_capacity_low=true"
.L_tpd_report_uevent_unknown_info:
    .asciz "\0015tpd: %s no such gesture key(%d)"
.section .note.GNU-stack,"",@progbits
