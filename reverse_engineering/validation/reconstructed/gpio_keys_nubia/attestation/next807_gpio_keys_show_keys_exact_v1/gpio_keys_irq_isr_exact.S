.section .text,"ax",@progbits
.align 2
.global gpio_keys_irq_isr
.type gpio_keys_irq_isr, %function
    .inst 0xd2f00be1
gpio_keys_irq_isr:
    .inst 0xb940bc28
    .inst 0x6b00011f
    .inst 0x54000861
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xf9400435
    .inst 0x91041020
    .inst 0xaa0103f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _raw_spin_lock_irqsave
    .inst 0x39442668
    .inst 0xaa0003f4
    .inst 0x36000088
    .inst 0xb9404a60
    .inst 0x35000320
    .inst 0x1400002b
    .inst 0xf9400268
    .inst 0xb9401d08
    .inst 0x340000c8
    .inst 0xf9400668
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, pm_wakeup_dev_event
    .inst 0xf9400e68
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0x52800023
    .inst 0x52800036
    .inst 0x79400102
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xb9404a60
    .inst 0x34000140
    .inst 0x39042676
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0xf9400115
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0xaa0003e8
    .inst 0x91008260
    .inst 0x8b150101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mod_timer
    .inst 0x1400000c
    .inst 0xf9400e68
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0x2a1f03e3
    .inst 0x79400102
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0x91041260
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _raw_spin_unlock_irqrestore
    .inst 0x52800020
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd4210000
.size gpio_keys_irq_isr, .-gpio_keys_irq_isr
