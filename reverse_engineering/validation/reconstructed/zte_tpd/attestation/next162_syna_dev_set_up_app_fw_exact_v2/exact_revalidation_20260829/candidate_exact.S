.section .text,"ax",@progbits
.align 2
.global syna_dev_set_up_app_fw
.type syna_dev_set_up_app_fw, %function
.word 0xae20471c
syna_dev_set_up_app_fw:
    .inst 0xb4000420
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf9413808
    .inst 0xf9400013
    .inst 0xb102a11f
    .inst 0x540000e0
    .inst 0xb940b909
    .inst 0x340000a9
    .inst 0x3942f108
    .inst 0x36000068
    .inst 0x2a1f03f4
    .inst 0x14000002
    .inst 0xb9420e74
    .inst 0x39402662
    .inst 0x7100045f
    .inst 0x54000221
    .inst 0x9102c261
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_app_info
    .inst 0x37f80260
    .inst 0xaa1303e0
    .inst 0x2a1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_preserve_touch_report_config
    .inst 0x37f80240
    .inst 0x2a1f03e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x128002a0
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lmode_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lmode_format
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a0
    .inst 0x17fffff4
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lget_info_format
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lget_info_format
    .inst 0x14000003
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lpreserve_format
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lpreserve_format
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffe8
.size syna_dev_set_up_app_fw, .-syna_dev_set_up_app_fw

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.Lmode_format:
    .asciz "\0015[info ] %s: Application firmware not running, current mode: %02x\n"
.Lfunction_name:
    .asciz "syna_dev_set_up_app_fw"
.Lget_info_format:
    .asciz "\0013[error] %s: Fail to get application info\n"
.Lpreserve_format:
    .asciz "\0013[error] %s: Fail to preserve touch report config\n"
