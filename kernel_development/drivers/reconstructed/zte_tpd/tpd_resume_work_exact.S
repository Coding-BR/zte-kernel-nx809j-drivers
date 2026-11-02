.section .text,"ax",@progbits
.align 2
.global tpd_resume_work
.type tpd_resume_work, %function
    .word 0xa607748c
tpd_resume_work:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9470668
    .inst 0xb4000148
    .inst 0xf946ee60
    .inst 0xb85fc110
    .inst 0x729c8c91
    .inst 0x72b80d31
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb904aa7f
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_resume_work, .-tpd_resume_work
.section .note.GNU-stack,"",@progbits
