.section .text,"ax",@progbits
.align 2
.global gpio_keys_irq_timer
.type gpio_keys_irq_timer, %function
    .inst 0x4697fdf1
gpio_keys_irq_timer:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xf85e8015
    .inst 0x91039000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _raw_spin_lock_irqsave
    .inst 0x3943a668
    .inst 0xaa0003f4
    .inst 0x7100051f
    .inst 0x540001a1
    .inst 0xf85f8268
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
    .inst 0x3903a67f
    .inst 0x91039260
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _raw_spin_unlock_irqrestore
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_irq_timer, .-gpio_keys_irq_timer
