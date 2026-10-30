.section .text,"ax",@progbits
.align 2
.global aw9620x_set_brightness
.type aw9620x_set_brightness, %function
    .word 0xb35420b3
aw9620x_set_brightness:
    .inst 0xd65f03c0
.size aw9620x_set_brightness, .-aw9620x_set_brightness
