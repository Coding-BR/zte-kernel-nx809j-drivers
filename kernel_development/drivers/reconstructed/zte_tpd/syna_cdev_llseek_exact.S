.section .text,"ax",@progbits
.align 2
.global syna_cdev_llseek
.type syna_cdev_llseek, %function
    .word 0xd527a0de
syna_cdev_llseek:
    .inst 0x928002a0
    .inst 0xd65f03c0
.size syna_cdev_llseek, .-syna_cdev_llseek
