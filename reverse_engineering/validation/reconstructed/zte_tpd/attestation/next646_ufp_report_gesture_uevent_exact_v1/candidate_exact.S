.section .text,"ax",@progbits
.align 2
.global ufp_report_gesture_uevent
.type ufp_report_gesture_uevent, %function
    .word 0xcf0d7fba
ufp_report_gesture_uevent:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xf9001bf3
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x910023e2
    .inst 0xf9438908
    .inst 0x52800041
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0xa900ffe0
    .inst 0x91004100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tp_wakeup
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tp_wakeup
    .inst 0x5280fa01
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, pm_wakeup_ws_event
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3dec
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3dec
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strcmp
    .inst 0x350000c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x8
    .inst 0x52800029
    .inst 0x528012c3
    .inst 0xb9000109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, ufp_tp_ops+0x8
    .inst 0x14000007
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x43ee
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x43ee
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strcmp
    .inst 0x350000e0
    .inst 0xaa1f03e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops+0x10
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops+0x10
    .inst 0x52800400
    .inst 0xf9403441
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mod_delayed_work_on
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa5c5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa5c5
    .inst 0xaa1303e1
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
.size ufp_report_gesture_uevent, .-ufp_report_gesture_uevent

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ufp_report_gesture_uevent_exact.inc"
