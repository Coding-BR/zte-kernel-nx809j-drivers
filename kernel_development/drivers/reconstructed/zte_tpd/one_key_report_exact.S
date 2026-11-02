.section .text,"ax",@progbits
.align 2
.global one_key_report
.type one_key_report, %function
    .word 0xeb35dc7c
one_key_report:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xf9001bf3
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x34000400
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400109
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x79403d2a
    .inst 0x79404528
    .inst 0x4b08014b
    .inst 0x0b0a010a
    .inst 0x6b01017f
    .inst 0x7a41b144
    .inst 0x540003ad
    .inst 0x79404129
    .inst 0x4b08012a
    .inst 0x6b02015f
    .inst 0x5400032a
    .inst 0x0b080128
    .inst 0x6b02011f
    .inst 0x540002cd
    .inst 0x7100287f
    .inst 0x54000682
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report.one_key_finger
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, one_key_report.one_key_finger
    .inst 0x38634909
    .inst 0x35000209
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report.one_key_down
    .inst 0x3940012a
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, one_key_report.one_key_down
    .inst 0x370001aa
    .inst 0x5280002a
    .inst 0x3823490a
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report_down_str
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, one_key_report_down_str
    .inst 0x3900012a
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, one_key_report.one_key_down
    .inst 0x14000016
    .inst 0x7100247f
    .inst 0x540004a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report.one_key_finger
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, one_key_report.one_key_finger
    .inst 0x38634909
    .inst 0x35000169
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000361
    .inst 0xa9427bfd
    .inst 0xf9401bf3
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x3823491f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report.one_key_down
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report_up_str
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, one_key_report_up_str
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, one_key_report.one_key_down
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_finger_id
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, one_key_finger_id
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0xf8635908
    .inst 0x910003e2
    .inst 0x52800041
    .inst 0xf9000bff
    .inst 0xa90023f3
    .inst 0xf9400128
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, ufp_tp_ops
    .inst 0x91004100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_uevent_env
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, one_key_report_log_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, one_key_report_log_fmt
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd42aa240
.size one_key_report, .-one_key_report

.section .bss,"aw",@nobits
.align 0
    .global one_key_report.one_key_finger
one_key_report.one_key_finger:
    .zero 10
    .global one_key_report.one_key_down
one_key_report.one_key_down:
    .zero 1

.section .rodata,"a",@progbits
.align 3
.global one_key_finger_id
one_key_finger_id:
    .xword one_key_finger_id_0, one_key_finger_id_1
    .xword one_key_finger_id_2, one_key_finger_id_3
    .xword one_key_finger_id_4, one_key_finger_id_5
    .xword one_key_finger_id_6, one_key_finger_id_7
    .xword one_key_finger_id_8, one_key_finger_id_9

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
one_key_finger_id_0:
    .asciz "finger_id=0"
one_key_finger_id_1:
    .asciz "finger_id=1"
one_key_finger_id_2:
    .asciz "finger_id=2"
one_key_finger_id_3:
    .asciz "finger_id=3"
one_key_finger_id_4:
    .asciz "finger_id=4"
one_key_finger_id_5:
    .asciz "finger_id=5"
one_key_finger_id_6:
    .asciz "finger_id=6"
one_key_finger_id_7:
    .asciz "finger_id=7"
one_key_finger_id_8:
    .asciz "finger_id=8"
one_key_finger_id_9:
    .asciz "finger_id=9"
one_key_report_down_str:
    .asciz "fp_gesture_down=true"
one_key_report_up_str:
    .asciz "fp_gesture_up=true"
one_key_report_log_fmt:
    .asciz "\0016tpd_ufp_info: %s\n"
