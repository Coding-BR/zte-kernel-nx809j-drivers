.section .text,"ax",@progbits
.align 2
.global tpd_get_screen_off_awake
.type tpd_get_screen_off_awake, %function
.word 0x73fc0d79
tpd_get_screen_off_awake:
    .inst 0xf946dc09
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xb945f129
    .inst 0xb9048509
    .inst 0xd65f03c0
.size tpd_get_screen_off_awake, .-tpd_get_screen_off_awake
