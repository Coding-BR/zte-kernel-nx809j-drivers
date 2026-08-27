.section .text,"ax",@progbits
.align 2
.global tpd_enable_wakegesture
.type tpd_enable_wakegesture, %function
tpd_enable_wakegesture:
    .inst 0xf946dc08
    .inst 0xb9457d09
    .inst 0x7100053f
    .inst 0x54000081
    .inst 0x2a1f03e0
    .inst 0xb905c501
    .inst 0xd65f03c0
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_enable_wakegesture_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_enable_wakegesture_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_enable_wakegesture_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_enable_wakegesture_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0x2a1f03e0
    .inst 0xd65f03c0
.size tpd_enable_wakegesture, .-tpd_enable_wakegesture

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_enable_wakegesture_fmt:
    .asciz "\0013[error] %s: error, change set in suspend!"
.L_tpd_enable_wakegesture_name:
    .asciz "tpd_enable_wakegesture"
.section .note.GNU-stack,"",@progbits
