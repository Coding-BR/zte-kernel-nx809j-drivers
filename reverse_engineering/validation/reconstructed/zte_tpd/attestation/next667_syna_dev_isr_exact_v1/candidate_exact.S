.section .text,"ax",@progbits
.align 2
.global syna_dev_isr
.type syna_dev_isr, %function
    .word 0xd2f00be1
syna_dev_isr:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0103f3
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0xb9457c28
    .inst 0xf9413834
    .inst 0x390013ff
    .inst 0x7100051f
    .inst 0x54000100
    .inst 0x3955e268
    .inst 0x7100051f
    .inst 0x540000a1
    .inst 0x91156260
    .inst 0x528015e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, wait_for_completion_timeout
    .inst 0x340003a0
    .inst 0xb940aa80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0xb940ae88
    .inst 0x6b08001f
    .inst 0x54000121
    .inst 0xd5384108
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0xb9470908
    .inst 0x910aa262
    .inst 0xb902f268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37f80180
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000201
    .inst 0x52800020
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4554
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4554
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1f6b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1f6b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9747
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9747
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_dev_isr, .-syna_dev_isr

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "syna_dev_isr_exact.inc"
