.section .text,"ax",@progbits
.align 2
.global set_gpio_mode
.type set_gpio_mode, %function
    .word 0x81e1eabd
set_gpio_mode:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf947ad09
    .inst 0xb4000209
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x2a0003e1
    .inst 0xaa0803e0
    .inst 0xb85fc130
    .inst 0x7287b831
    .inst 0x72bc3ad1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304520
    .inst 0xd63f0120
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x12800080
    .inst 0xd65f03c0
.size set_gpio_mode, .-set_gpio_mode
.section .note.GNU-stack,"",@progbits
