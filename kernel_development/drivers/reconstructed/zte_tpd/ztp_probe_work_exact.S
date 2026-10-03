.section .text,"ax",@progbits
.align 2
.global ztp_probe_work
.type ztp_probe_work, %function
    .word 0xa607748c
ztp_probe_work:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_ztp_probe_work_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_ztp_probe_work_fmt
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_module_init
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ztp_probe_work, .-ztp_probe_work

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_ztp_probe_work_fmt:
    .asciz "\0015tpd: ztp_probe_work in"

.section .note.GNU-stack,"",@progbits
