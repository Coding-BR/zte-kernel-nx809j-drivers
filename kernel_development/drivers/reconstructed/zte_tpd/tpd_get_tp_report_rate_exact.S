.section .text,"ax",@progbits
.align 2
.global tpd_get_tp_report_rate
.type tpd_get_tp_report_rate, %function
.word 0x73fc0d79
tpd_get_tp_report_rate:
    .inst 0xf946dc09
    .inst 0xaa0003e8
    .inst 0x2a1f03e0
    .inst 0xb945f929
    .inst 0xb9046509
    .inst 0xd65f03c0
.size tpd_get_tp_report_rate, .-tpd_get_tp_report_rate
