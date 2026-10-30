.section .text,"ax",@progbits
.align 2
.global aw_i2c_suspend
.type aw_i2c_suspend, %function
    .word 0x2a703c0b
aw_i2c_suspend:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9404c00
    .inst 0x97fff3ab
    .reloc .-4, R_AARCH64_CALL26, aw86320_play_stop
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw_i2c_suspend, .-aw_i2c_suspend
