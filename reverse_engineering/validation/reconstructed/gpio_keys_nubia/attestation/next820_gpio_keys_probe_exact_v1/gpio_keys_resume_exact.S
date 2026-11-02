.section .text,"ax",@progbits
.align 2
.global gpio_keys_resume
.type gpio_keys_resume, %function
    .inst 0x2a703c0b
gpio_keys_resume:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xf9404c15
    .inst 0x79421808
    .inst 0xf94006b6
    .inst 0x36000648
    .inst 0xf940a408
    .inst 0xb4000608
    .inst 0xf94002a8
    .inst 0xb9400908
    .inst 0x7100011f
    .inst 0x5400084d
    .inst 0xaa1f03f6
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_resume_disable_wake_message
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_resume_disable_wake_message
    .inst 0x910412b7
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_resume_restore_trigger_message
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_resume_restore_trigger_message
    .inst 0x1400000b
    .inst 0xb94002e0
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_wake
    .inst 0x35000340
    .inst 0xf94002a8
    .inst 0x910006d6
    .inst 0x910442f7
    .inst 0xb9800909
    .inst 0xeb0902df
    .inst 0x540009ea
    .inst 0xb94002e0
    .inst 0x39013aff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_get_irq_data
    .inst 0xf9400808
    .inst 0x39400508
    .inst 0x3637fea8
    .inst 0xb94046e8
    .inst 0x34fffde8
    .inst 0xb94002e0
    .inst 0x52800061
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_type
    .inst 0x34fffd60
    .inst 0xf854c2e8
    .inst 0x2a0003e3
    .inst 0xb94002e2
    .inst 0xaa1403e1
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_warn
    .inst 0x17ffffe4
    .inst 0xf854c2e8
    .inst 0x2a0003e3
    .inst 0xb94002e2
    .inst 0xaa1303e1
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_warn
    .inst 0x17ffffe1
    .inst 0x9107e2c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb9422ac8
    .inst 0x340005a8
    .inst 0xf94166d7
    .inst 0xf94002e8
    .inst 0xf9400d09
    .inst 0xb4000249
    .inst 0xf9414ac0
    .inst 0xb85fc130
    .inst 0x72878171
    .inst 0x72a54e11
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304520
    .inst 0xd63f0120
    .inst 0x34000100
    .inst 0x2a0003f3
    .inst 0x9107e2c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1303e0
    .inst 0x14000036
    .inst 0xf94006b3
    .inst 0x1400002e
    .inst 0xf94002e8
    .inst 0xb9400909
    .inst 0xf94006f3
    .inst 0x7100053f
    .inst 0x540001eb
    .inst 0xaa1f03f8
    .inst 0x910122f4
    .inst 0x14000006
    .inst 0xb9800909
    .inst 0x91000718
    .inst 0x91044294
    .inst 0xeb09031f
    .inst 0x540000ea
    .inst 0xf9400a89
    .inst 0xb4ffff49
    .inst 0xaa1403e0
    .inst 0x97fffc4e
    .reloc .-4, R_AARCH64_CALL26, gpio_keys_gpio_report_event
    .inst 0xf94002e8
    .inst 0x17fffff6
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x9107e2c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf94002a8
    .inst 0xb9400909
    .inst 0xf94006b3
    .inst 0x7100053f
    .inst 0x540001eb
    .inst 0xaa1f03f6
    .inst 0x910122b4
    .inst 0x14000006
    .inst 0xb9800909
    .inst 0x910006d6
    .inst 0x91044294
    .inst 0xeb0902df
    .inst 0x540000ea
    .inst 0xf9400a89
    .inst 0xb4ffff49
    .inst 0xaa1403e0
    .inst 0x97fffc34
    .reloc .-4, R_AARCH64_CALL26, gpio_keys_gpio_report_event
    .inst 0xf94002a8
    .inst 0x17fffff6
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x2a1f03e0
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_resume, .-gpio_keys_resume
