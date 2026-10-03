.section .text,"ax",@progbits
.align 2
.global point_report_reset
.type point_report_reset, %function
point_report_reset:
    .inst 0x7100241f
    .inst 0x54000688
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x52801108
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info
    .inst 0x9ba82414
    .inst 0x39415288
    .inst 0x7100051f
    .inst 0x540000c0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x2a0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_point_report_reset_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_point_report_reset_name
    .inst 0xf9400115
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_point_report_reset_info
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_point_report_reset_info
    .inst 0x2a1303e2
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x913242a0
    .inst 0x3901529f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9404280
    .inst 0x52800061
    .inst 0x528005e2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9404280
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_mt_report_slot_state
    .inst 0xf9404280
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x913242a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x52807d00
    .inst 0x52808981
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x17ffffda
    .inst 0xd4200020
.size point_report_reset, .-point_report_reset

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_point_report_reset_name:
    .asciz "point_report_reset"
.L_point_report_reset_info:
    .asciz "\0015tpd: %s:tpd touch up id: %d\n"
.section .note.GNU-stack,"",@progbits
