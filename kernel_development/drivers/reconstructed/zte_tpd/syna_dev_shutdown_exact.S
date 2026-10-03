.section .text,"ax",@progbits
.align 2
.global syna_dev_shutdown
.type syna_dev_shutdown, %function
    .word 0x24a11bb9
syna_dev_shutdown:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x97ffffaf
    .reloc .-4, R_AARCH64_CALL26, syna_dev_remove
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_dev_shutdown, .-syna_dev_shutdown
