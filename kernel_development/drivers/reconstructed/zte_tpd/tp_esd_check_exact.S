.section .text,"ax",@progbits
.align 2
.global tp_esd_check
.type tp_esd_check, %function
    .word 0x2fad8a96
tp_esd_check:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9474c08
    .inst 0xb40001e8
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xb85fc110
    .inst 0x72874531
    .inst 0x72b01031
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0x12000000
    .inst 0xd65f03c0
    .inst 0x120003e0
    .inst 0xd65f03c0
.size tp_esd_check, .-tp_esd_check
.section .note.GNU-stack,"",@progbits
