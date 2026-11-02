.section .text,"ax",@progbits
.align 2
.global aw9620x_irq
.type aw9620x_irq, %function
    .word 0xd2f00be1
aw9620x_irq:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xaa0103e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw9620x_irq_handle_func
    .inst 0x52800020
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw9620x_irq, .-aw9620x_irq
