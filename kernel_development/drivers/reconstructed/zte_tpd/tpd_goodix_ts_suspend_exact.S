.section .text,"ax",@progbits
.align 2
.global tpd_goodix_ts_suspend
.type tpd_goodix_ts_suspend, %function
    .word 0xc069e464
tpd_goodix_ts_suspend:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9400408
    .inst 0x91004100
    .inst 0x97fffa3f
    .reloc .-4, R_AARCH64_CALL26, syna_dev_suspend
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_goodix_ts_suspend, .-tpd_goodix_ts_suspend
