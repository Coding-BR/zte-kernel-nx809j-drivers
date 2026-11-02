.section .rodata.str1.1,"a",@progbits
.space 0x323
.Lgpio_keys_shutdown_message:
    .asciz "failed to shutdown\n"

.section .text,"ax",@progbits
.align 2
.global gpio_keys_shutdown
.type gpio_keys_shutdown, %function
    .inst 0x24a11bb9
gpio_keys_shutdown:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x91004000
    .inst 0x9400000c
    .inst 0x350000a0
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x323
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x323
    .inst 0x91004260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x17fffff8
.size gpio_keys_shutdown, .-gpio_keys_shutdown
