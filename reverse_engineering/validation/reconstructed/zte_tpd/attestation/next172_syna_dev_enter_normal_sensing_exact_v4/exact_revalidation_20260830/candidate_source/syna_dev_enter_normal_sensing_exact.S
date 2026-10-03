.section .text,"ax",@progbits
.align 2
.global syna_dev_enter_normal_sensing
.type syna_dev_enter_normal_sensing, %function
syna_dev_enter_normal_sensing:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf9413808
    .inst 0xaa0003f3
    .inst 0xf9400000
    .inst 0xb940b909
    .inst 0x340000a9
    .inst 0x3942f108
    .inst 0x36000068
    .inst 0x2a1f03f4
    .inst 0x14000002
    .inst 0xb9420c14
    .inst 0x2a1f03e1
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_sleep
    .inst 0x37f80200
    .inst 0x39560668
    .inst 0x7100051f
    .inst 0x54000101
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_enable_lowpwr_gesture
    .inst 0x37f80160
    .inst 0x52800c80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x2a1f03e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_dev_enter_normal_sensing_sleep
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_dev_enter_normal_sensing_sleep
    .inst 0x14000003
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_dev_enter_normal_sensing_gesture
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_dev_enter_normal_sensing_gesture
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_dev_enter_normal_sensing_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_dev_enter_normal_sensing_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17fffff1
.size syna_dev_enter_normal_sensing, .-syna_dev_enter_normal_sensing

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_dev_enter_normal_sensing_sleep:
    .asciz "\0013[error] %s: Fail to exit deep sleep\n"
.L_syna_dev_enter_normal_sensing_gesture:
    .asciz "\0013[error] %s: Fail to disable low power gesture mode\n"
.L_syna_dev_enter_normal_sensing_name:
    .asciz "syna_dev_enter_normal_sensing"
.section .note.GNU-stack,"",@progbits
