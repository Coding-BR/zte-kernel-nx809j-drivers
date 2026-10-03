.section .text,"ax",@progbits
.align 2
.global tpd_set_screen_off_awake
.type tpd_set_screen_off_awake, %function
.word 0x6af8b499
tpd_set_screen_off_awake:
    .inst 0xf946dc08
    .inst 0xb9457d09
    .inst 0xb905f501
    .inst 0x7100053f
    .inst 0x540000c1
    .inst 0xb905f101
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, is_screen_off_awake_mode
    .inst 0x2a1f03e0
    .inst 0xb9000101
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, is_screen_off_awake_mode
    .inst 0xd65f03c0
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_screen_off_awake_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_screen_off_awake_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_screen_off_awake_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_screen_off_awake_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0x2a1f03e0
    .inst 0xd65f03c0
.size tpd_set_screen_off_awake, .-tpd_set_screen_off_awake

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_set_screen_off_awake_fmt:
.asciz "\0013[error] %s: error, change set in suspend!"
.L_tpd_set_screen_off_awake_name:
.asciz "tpd_set_screen_off_awake"

.section .note.GNU-stack,"",@progbits
