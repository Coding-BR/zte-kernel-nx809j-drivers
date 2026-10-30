.section .text,"ax",@progbits
.align 2
.global gpio_keys_suspend
.type gpio_keys_suspend, %function
    .inst 0x2a703c0b
gpio_keys_suspend:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bf7
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xf9404c14
    .inst 0x79421808
    .inst 0xf9400693
    .inst 0x360005e8
    .inst 0xf940a408
    .inst 0xb40005a8
    .inst 0xf9400288
    .inst 0xb9400908
    .inst 0x7100051f
    .inst 0x5400076b
    .inst 0xaa1f03f5
    .inst 0xaa1f03f3
    .inst 0x52800036
    .inst 0x14000008
    .inst 0xf9400288
    .inst 0x39054af6
    .inst 0x91000673
    .inst 0x910442b5
    .inst 0xb9800908
    .inst 0xeb08027f
    .inst 0x5400060a
    .inst 0x8b150297
    .inst 0xf94026e8
    .inst 0xb9401d08
    .inst 0x34fffec8
    .inst 0xb94106e0
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_wake
    .inst 0x350005e0
    .inst 0x8b150288
    .inst 0xb9414901
    .inst 0x34fffde1
    .inst 0xb94106e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_type
    .inst 0x34fffd80
    .inst 0x8b150296
    .inst 0x2a0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x41a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x41a
    .inst 0xf9402ac8
    .inst 0xb9414ac2
    .inst 0xb94106c3
    .inst 0x2a1303e4
    .inst 0xf9414908
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0xb94106c0
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_wake
    .inst 0x14000024
    .inst 0x9107e260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb9422a68
    .inst 0x340001a8
    .inst 0xf9416668
    .inst 0xf9400108
    .inst 0xf9401108
    .inst 0xb4000128
    .inst 0xf9414a60
    .inst 0xb85fc110
    .inst 0x72971911
    .inst 0x72ad9031
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x9107e260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1f03e0
    .inst 0xa9434ff4
    .inst 0xf9400bf7
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x8b150289
    .inst 0x2a0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x19e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x19e
    .inst 0xf9402928
    .inst 0xb9410522
    .inst 0x2a1303e3
    .inst 0xf9414908
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x2a1303e0
    .inst 0xb5000195
    .inst 0x17ffffee
    .inst 0x8b150297
    .inst 0x2a1f03e1
    .inst 0xb85f42e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_wake
    .inst 0x2a0003e3
    .inst 0x2a1603e0
    .inst 0x35000303
    .inst 0xf10442b5
    .inst 0x39010a7f
    .inst 0x54fffc80
    .inst 0x8b150293
    .inst 0xf8538268
    .inst 0xb9401d08
    .inst 0x34ffff48
    .inst 0xb9403a68
    .inst 0x2a0003f6
    .inst 0x34fffe08
    .inst 0x8b150297
    .inst 0x52800061
    .inst 0xb85f42e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_set_irq_type
    .inst 0x34fffd60
    .inst 0xf85402e8
    .inst 0x2a0003e3
    .inst 0xb85f42e2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x23d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x23d
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_warn
    .inst 0x17ffffe3
    .inst 0xf85402e8
    .inst 0xb85f42e2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5a0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5a0
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_warn
    .inst 0x2a1603e0
    .inst 0x17ffffe2
.size gpio_keys_suspend, .-gpio_keys_suspend

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
.Lgpio_keys_suspend_rodata_start:
.space 0x64
.global gpio_keys_attr_show_bitmap_fmt
gpio_keys_attr_show_bitmap_fmt:
.asciz "%*pbl"
.space 0x11d - (. - .Lgpio_keys_suspend_rodata_start)
.global gpio_keys_show_GamekeyStatus_log
gpio_keys_show_GamekeyStatus_log:
.byte 1
.asciz "3[gpio-keys_nubia] show GamekeyStatus, state:%d"
.space 0x19e - (. - .Lgpio_keys_suspend_rodata_start)
.global gpio_keys_attr_show_helper_message
gpio_keys_attr_show_helper_message:
.asciz "failed to configure IRQ %d as wakeup source: %d\n"
.global gpio_keys_show_GamekeyStatus_fmt
gpio_keys_show_GamekeyStatus_fmt:
.asciz "%d\n"
.space 0x23d - (. - .Lgpio_keys_suspend_rodata_start)
.asciz "failed to restore interrupt trigger for IRQ %d: %d\n"
.space 0x340 - (. - .Lgpio_keys_suspend_rodata_start)
.global gpio_keys_attr_store_helper_log
gpio_keys_attr_store_helper_log:
.byte 1
.asciz "3[gpio-keys_nubia] gpio_keys_attr_store_helper, n_events:%d, type:%d"
.space 0x41a - (. - .Lgpio_keys_suspend_rodata_start)
.asciz "failed to set wakeup trigger %08x for IRQ %d: %d\n"
.space 0x5a0 - (. - .Lgpio_keys_suspend_rodata_start)
.asciz "failed to disable IRQ %d as wake source: %d\n"
.space 0x606 - (. - .Lgpio_keys_suspend_rodata_start)
.global gpio_keys_attr_show_helper_log
gpio_keys_attr_show_helper_log:
.byte 1
.asciz "3[gpio-keys_nubia] gpio_keys_attr_show_helper, n_events:%d, type:%d"
