.section .text,"ax",@progbits
.align 2
.global gpio_keys_gpio_isr
.type gpio_keys_gpio_isr, %function
    .inst 0xd2f00be1
gpio_keys_gpio_isr:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xb940bc28
    .inst 0xaa0103f3
    .inst 0x6b00011f
    .inst 0x54000080
    .inst 0xb940c268
    .inst 0x6b00011f
    .inst 0x54000401
    .inst 0xf9400274
    .inst 0xb9401e88
    .inst 0x340001e8
    .inst 0xf9400668
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, pm_stay_awake
    .inst 0x39442a68
    .inst 0x7100051f
    .inst 0x54000121
    .inst 0xb9401a88
    .inst 0x7100051f
    .inst 0x540000c8
    .inst 0xf9400660
    .inst 0xb9400282
    .inst 0x52800021
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0xb940ba60
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xaa0003e3
    .inst 0x91014262
    .inst 0x52800400
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mod_delayed_work_on
    .inst 0x52800020
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd4210000
.size gpio_keys_gpio_isr, .-gpio_keys_gpio_isr
