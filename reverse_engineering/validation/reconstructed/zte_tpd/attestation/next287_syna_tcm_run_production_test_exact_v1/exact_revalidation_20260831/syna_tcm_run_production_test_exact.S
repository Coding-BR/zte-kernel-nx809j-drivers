.section .text,"ax",@progbits
.align 2
.global syna_tcm_run_production_test
.type syna_tcm_run_production_test, %function
    .word 0x0b6a0563
syna_tcm_run_production_test:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0xb40005a0
    .inst 0xaa0203f3
    .inst 0x39402402
    .inst 0xaa0003f4
    .inst 0x7100045f
    .inst 0x540005e1
    .inst 0x2a0303f5
    .inst 0x350000a3
    .inst 0xf9402688
    .inst 0x39405108
    .inst 0x36000888
    .inst 0x2a1f03f5
    .inst 0xf941ce88
    .inst 0x390013e1
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800541
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x2a1503e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f80400
    .inst 0xb40000d3
    .inst 0x91052281
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_copy
    .inst 0x37f804a0
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000641
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_invalid_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_invalid_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffef
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_mode_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_mode_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe8
    .inst 0x394013e2
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_production_fail_fmt
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_production_fail_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x52800543
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000008
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_copy_fail_fmt
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_copy_fail_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffd5
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_name
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_name
    .inst 0xb9420e95
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_run_production_test_info_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_run_production_test_info_fmt
    .inst 0x2a0103f6
    .inst 0xaa0803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1603e1
    .inst 0x17ffffb5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_run_production_test, .-syna_tcm_run_production_test

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_run_production_test_invalid_fmt:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_run_production_test_name:
    .asciz "syna_tcm_run_production_test"
.L_syna_tcm_run_production_test_mode_fmt:
    .asciz "\0013[error] %s: Device is not in application fw mode, mode: %x\n"
.L_syna_tcm_run_production_test_production_fail_fmt:
    .asciz "\0013[error] %s: Fail to run production test PID%02X (command 0x%02X)\n"
.L_syna_tcm_run_production_test_copy_fail_fmt:
    .asciz "\0013[error] %s: Fail to copy testing data\n"
.L_syna_tcm_run_production_test_info_fmt:
    .asciz "\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
.section .note.GNU-stack,"",@progbits
