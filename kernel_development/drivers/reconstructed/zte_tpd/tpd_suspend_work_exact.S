.section .text,"ax",@progbits
.align 2
.global tpd_suspend_work
.type tpd_suspend_work, %function
    .word 0xa607748c
tpd_suspend_work:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400109
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9470928
    .inst 0xb40001c8
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf946ed20
    .inst 0xb85fc110
    .inst 0x729c8c91
    .inst 0x72b80d31
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_suspend_work, .-tpd_suspend_work
.section .note.GNU-stack,"",@progbits
