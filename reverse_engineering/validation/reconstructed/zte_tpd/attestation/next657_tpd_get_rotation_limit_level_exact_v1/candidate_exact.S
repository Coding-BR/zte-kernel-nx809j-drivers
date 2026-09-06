.section .text,"ax",@progbits
.align 2
.global tpd_get_rotation_limit_level
.type tpd_get_rotation_limit_level, %function
    .word 0x73fc0d79
tpd_get_rotation_limit_level:
    .inst 0xf946dc09
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xb9460d29
    .inst 0xb9000d09
    .inst 0xd65f03c0
.size tpd_get_rotation_limit_level, .-tpd_get_rotation_limit_level
