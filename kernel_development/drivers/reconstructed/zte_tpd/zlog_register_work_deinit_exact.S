.section .text,"ax",@progbits
.align 2
.global zlog_register_work_deinit
.type zlog_register_work_deinit, %function
    .word 0xe5c47d60
zlog_register_work_deinit:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_zlog_register_work_deinit_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_zlog_register_work_deinit_fmt
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_zlog_register_work_deinit_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_zlog_register_work_deinit_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91294260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xf945f660
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf905f67f
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zlog_register_work_deinit, .-zlog_register_work_deinit

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_zlog_register_work_deinit_fmt:
    .asciz "\0015tpd: %s enter"
.L_zlog_register_work_deinit_name:
    .asciz "zlog_register_work_deinit"
.section .note.GNU-stack,"",@progbits
