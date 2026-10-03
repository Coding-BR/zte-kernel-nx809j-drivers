.section .text,"ax",@progbits
.align 2
.word 0x627e4777
.global syna_tcm_rezero
.type syna_tcm_rezero, %function
syna_tcm_rezero:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xb40003c0
    .inst 0x39402402
    .inst 0x7100045f
    .inst 0x54000441
    .inst 0x2a0103f3
    .inst 0x350000a1
    .inst 0xf9402408
    .inst 0x39405108
    .inst 0x360005a8
    .inst 0x2a1f03f3
    .inst 0xf941cc08
    .inst 0x528004e1
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0xaa1f03e4
    .inst 0x2a1303e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003e8
    .inst 0x2a1f03e0
    .inst 0x37f80268
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_invalid_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_invalid_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17fffff6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_mode_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_mode_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffef
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_fail_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_fail_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_name
    .inst 0x528004e2
    .inst 0x2a0803f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffe6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_info_fmt
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_info_fmt
    .inst 0xb9420c13
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_rezero_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_rezero_name
    .inst 0xaa0003f4
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1403e0
    .inst 0x17ffffcc
.size syna_tcm_rezero, .-syna_tcm_rezero

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_rezero_invalid_fmt:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_rezero_mode_fmt:
    .asciz "\0013[error] %s: Device is not in application fw mode, mode: %x\n"
.L_syna_tcm_rezero_fail_fmt:
    .asciz "\0013[error] %s: Fail to send command 0x%02x\n"
.L_syna_tcm_rezero_info_fmt:
    .asciz "\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
.L_syna_tcm_rezero_name:
    .asciz "syna_tcm_rezero"
.section .note.GNU-stack,"",@progbits
