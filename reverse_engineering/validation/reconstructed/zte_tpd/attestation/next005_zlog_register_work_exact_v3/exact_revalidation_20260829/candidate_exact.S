.section .text,"ax",@progbits
.align 2
.global zlog_register_work
.type zlog_register_work, %function
    .word 0xa607748c
zlog_register_work:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x396fc008
    .inst 0x370000e8
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_zlog_register
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zlog_register_work, .-zlog_register_work
