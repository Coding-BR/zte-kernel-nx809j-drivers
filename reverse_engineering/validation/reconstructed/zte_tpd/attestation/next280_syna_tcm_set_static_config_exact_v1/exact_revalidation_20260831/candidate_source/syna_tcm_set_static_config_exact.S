.section .text,"ax",@progbits
.align 2
.global syna_tcm_set_static_config
.type syna_tcm_set_static_config, %function
    .word 0x135bb445
syna_tcm_set_static_config:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xb4000460
    .inst 0x2a0203f3
    .inst 0x39402402
    .inst 0x7100045f
    .inst 0x540004c1
    .inst 0x2a0303f5
    .inst 0xaa0103f4
    .inst 0x350000a3
    .inst 0xf9402408
    .inst 0x39405108
    .inst 0x36000728
    .inst 0x2a1f03f5
    .inst 0x79416803
    .inst 0x6b13007f
    .inst 0x54000461
    .inst 0xf941cc08
    .inst 0x52800441
    .inst 0xaa1403e2
    .inst 0x2a1303e3
    .inst 0xaa1f03e4
    .inst 0x2a1503e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f803a0
    .inst 0x2a1f03e0
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_invalid
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_invalid
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17fffff5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_mode
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_mode
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffee
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_size
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_size
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_name
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_fail
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_fail
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x52800442
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffdc
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_info
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_info
    .inst 0xb9420c15
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_static_config_name
    .inst 0xaa0003f6
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1603e0
    .inst 0x17ffffc0
.size syna_tcm_set_static_config, .-syna_tcm_set_static_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_set_static_config_invalid:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_set_static_config_name:
    .asciz "syna_tcm_set_static_config"
.L_syna_tcm_set_static_config_mode:
    .asciz "\0013[error] %s: Device is not in application fw mode, mode: %x\n"
.L_syna_tcm_set_static_config_size:
    .asciz "\0013[error] %s: Invalid static config size, given: %d (actual: %d)\n"
.L_syna_tcm_set_static_config_fail:
    .asciz "\0013[error] %s: Fail to send command 0x%02x\n"
.L_syna_tcm_set_static_config_info:
    .asciz "\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
.section .note.GNU-stack,"",@progbits
