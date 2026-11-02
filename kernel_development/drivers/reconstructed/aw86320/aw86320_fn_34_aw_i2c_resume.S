.section .text,"ax",@progbits
.align 2
.global aw_i2c_resume
.type aw_i2c_resume, %function
    .word 0x2a703c0b
aw_i2c_resume:
    .inst 0x2a1f03e0
    .inst 0xd65f03c0
.size aw_i2c_resume, .-aw_i2c_resume
