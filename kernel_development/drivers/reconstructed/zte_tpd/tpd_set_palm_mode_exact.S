.section .text,"ax",@progbits
.align 2
.global tpd_set_palm_mode
.type tpd_set_palm_mode, %function
.word 0x6af8b499
tpd_set_palm_mode:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf946dc08
    .inst 0x2a0103e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_palm_mode_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_palm_mode_fmt
    .inst 0xb905e501
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_palm_mode_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_palm_mode_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_set_palm_mode, .-tpd_set_palm_mode

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_set_palm_mode_fmt:
.asciz "\0016[info ] %s: palm_mode is %d"
.L_tpd_set_palm_mode_name:
.asciz "tpd_set_palm_mode"

.section .note.GNU-stack,"",@progbits
