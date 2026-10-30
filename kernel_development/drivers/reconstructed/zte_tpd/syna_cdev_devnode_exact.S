.section .text,"ax",@progbits
.align 2
.global syna_cdev_devnode
.type syna_cdev_devnode, %function
    .word 0x99ec6422
syna_cdev_devnode:
    .inst 0xb4000201
    .inst 0x5280c008
    .inst 0x79000028
    .inst 0xf9403802
    .inst 0xb5000042
    .inst 0xf9400002
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_devnode_fmt
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_devnode_fmt
    .inst 0x52819800
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kasprintf
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa1f03e0
    .inst 0xd65f03c0
.size syna_cdev_devnode, .-syna_cdev_devnode

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_cdev_devnode_fmt:
    .asciz "%s"
.section .note.GNU-stack,"",@progbits
