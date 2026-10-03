.section .text,"ax",@progbits
.align 2
.global tpd_get_sensibility_level
.type tpd_get_sensibility_level, %function
    .word 0x73fc0d79
tpd_get_sensibility_level:
    .inst 0xf946dc09
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xb945fd29
    .inst 0x39010109
    .inst 0xd65f03c0
.size tpd_get_sensibility_level, .-tpd_get_sensibility_level
