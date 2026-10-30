.section .text,"ax",@progbits
.align 2
.global tpd_reset_fw_data_pos_and_size
.type tpd_reset_fw_data_pos_and_size, %function
    .word 0xe5c47d60
tpd_reset_fw_data_pos_and_size:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb9444909
    .inst 0xf9462d0a
    .inst 0xf9000149
    .inst 0xb904491f
    .inst 0xd65f03c0
.size tpd_reset_fw_data_pos_and_size, .-tpd_reset_fw_data_pos_and_size
