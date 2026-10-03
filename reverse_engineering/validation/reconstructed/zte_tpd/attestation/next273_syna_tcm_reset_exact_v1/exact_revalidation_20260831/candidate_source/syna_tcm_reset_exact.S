.section .text,"ax",@progbits
.align 2
.word 0x627e4777
.global syna_tcm_reset
.type syna_tcm_reset, %function
syna_tcm_reset:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xb40006a0
    .inst 0xaa0003f3
    .inst 0x340000a1
    .inst 0xb941ee68
    .inst 0x6b01011f
    .inst 0x1a818105
    .inst 0x14000005
    .inst 0xf9402668
    .inst 0x39405108
    .inst 0x360008a8
    .inst 0x2a1f03e5
    .inst 0xf941ce68
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0xaa1f03e4
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f80480
    .inst 0x39420669
    .inst 0xf941da68
    .inst 0x39002669
    .inst 0xb4000128
    .inst 0xaa1303e0
    .inst 0xb85fc110
    .inst 0x728ca131
    .inst 0x72baaf51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf951f268
    .inst 0xb4000148
    .inst 0xf951ee60
    .inst 0xb85fc110
    .inst 0x729c8c91
    .inst 0x72b80d31
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f802c0
    .inst 0x2a1f03e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_invalid_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_invalid_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17fffff6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_fail_fmt
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_fail_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x52800082
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000008
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_post_fmt
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_post_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffe4
    .inst 0xb941ee74
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_info_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_info_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_reset_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_reset_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1403e1
    .inst 0x35fff5d4
    .inst 0x17ffffb4
.size syna_tcm_reset, .-syna_tcm_reset

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_reset_invalid_fmt:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_reset_name:
    .asciz "syna_tcm_reset"
.L_syna_tcm_reset_fail_fmt:
    .asciz "\0013[error] %s: Fail to send command 0x%02x\n"
.L_syna_tcm_reset_post_fmt:
    .asciz "\0013[error] %s: Fail to perform the post reset operation\n"
.L_syna_tcm_reset_info_fmt:
    .asciz "\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
.section .note.GNU-stack,"",@progbits
