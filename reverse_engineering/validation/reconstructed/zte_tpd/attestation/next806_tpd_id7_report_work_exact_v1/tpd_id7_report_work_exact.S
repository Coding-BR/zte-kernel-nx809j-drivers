.section .text,"ax",@progbits
.align 2
.global tpd_id7_report_work
.type tpd_id7_report_work, %function
    .word 0xa607748c
tpd_id7_report_work:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x438
    .inst 0x528000e1
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, point_report_info+0x438
    .inst 0x940000ae
    .reloc .-4, R_AARCH64_CALL26, edge_long_press_up
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_id7_report_work, .-tpd_id7_report_work
