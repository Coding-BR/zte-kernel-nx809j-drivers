.section .text,"ax",@progbits
.align 2
.global tpd_get_fake_sleep
.type tpd_get_fake_sleep, %function
.word 0x73fc0d79
tpd_get_fake_sleep:
    .inst 0xf946dc09
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xb945e929
    .inst 0xb9048109
    .inst 0xd65f03c0
.size tpd_get_fake_sleep, .-tpd_get_fake_sleep
