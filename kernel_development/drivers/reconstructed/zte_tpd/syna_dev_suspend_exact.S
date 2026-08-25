.section .text,"ax",@progbits
.align 2
.global syna_dev_suspend
.type syna_dev_suspend, %function
.word 0x2a703c0b
syna_dev_suspend:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xf9404c13
    .inst 0xb9457e68
    .inst 0x7100051f
    .inst 0x540000e0
    .inst 0x2a1f03e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction_name
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction_name
    .inst 0xf9413a75
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lprepare_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lprepare_format
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb945c668
    .inst 0xb945b269
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lgesture_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lgesture_format
    .inst 0xaa1403e1
    .inst 0x2a080128
    .inst 0x7100011f
    .inst 0x1a9f07e2
    .inst 0x39160662
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb40003d3
    .inst 0xf9413a68
    .inst 0xf9400260
    .inst 0xb940b909
    .inst 0x340000a9
    .inst 0x3942f108
    .inst 0x36000068
    .inst 0x2a1f03e2
    .inst 0x14000002
    .inst 0xb9420c02
    .inst 0x39560668
    .inst 0x7100051f
    .inst 0x54000101
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x940003c4
    .inst 0x36f802a0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lgesture_failure_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lgesture_failure_format
    .inst 0x14000008
    .inst 0x39560268
    .inst 0x37000248
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_sleep
    .inst 0x36f801a0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lsleep_failure_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lsleep_failure_format
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lenter_lowpwr_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lenter_lowpwr_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lpower_failure_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lpower_failure_format
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800080
    .inst 0x17ffffc6
    .inst 0x52800c80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x52800048
    .inst 0xaa1303e0
    .inst 0xb9057e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_free_input_events
    .inst 0xf9400260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_clear_command_processing
    .inst 0x39560668
    .inst 0x37000188
    .inst 0xf94022a8
    .inst 0xb4000148
    .inst 0x910022a0
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb9457e62
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lsuspended_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lsuspended_format
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction_name
    .inst 0xb905e27f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa8
.size syna_dev_suspend, .-syna_dev_suspend

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.Lfunction_name:
    .asciz "syna_dev_suspend"
.Lprepare_format:
    .asciz "\0016[info ] %s: Prepare to suspend device\n"
.Lgesture_format:
    .asciz "\0016[info ] %s: gesture mode is %d\n"
.Lgesture_failure_format:
    .asciz "\0013[error] %s: Fail to disable low power gesture mode\n"
.Lsleep_failure_format:
    .asciz "\0013[error] %s: Fail to enter deep sleep\n"
.Lenter_lowpwr_name:
    .asciz "syna_dev_enter_lowpwr_sensing"
.Lpower_failure_format:
    .asciz "\0013[error] %s: Fail to enter power suspended mode\n"
.Lsuspended_format:
    .asciz "\0016[info ] %s: Device suspended (pwr_state:%d)\n"
