.section .text,"ax",@progbits
.align 2
.global tpd_get_stability_level
.type tpd_get_stability_level, %function
    .word 0x73fc0d79
tpd_get_stability_level:
    .inst 0xf946dc09
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xb9460529
    .inst 0xb9046d09
    .inst 0xd65f03c0
.size tpd_get_stability_level, .-tpd_get_stability_level
