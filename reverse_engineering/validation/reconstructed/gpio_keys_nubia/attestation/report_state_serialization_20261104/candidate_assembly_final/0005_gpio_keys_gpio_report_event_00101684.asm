
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001edc <gpio_keys_gpio_report_event>:
    1edc: d503233f     	paciasp
    1ee0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1ee4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1ee8: 910003fd     	mov	x29, sp
    1eec: 90000014     	adrp	x20, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	.data
    1ef0: 91000294     	add	x20, x20, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	.data
    1ef4: aa0003f3     	mov	x19, x0
    1ef8: aa1403e0     	mov	x0, x20
    1efc: 94000000     	bl	0x1efc <gpio_keys_gpio_report_event+0x20>
		0000000000001efc:  R_AARCH64_CALL26	mutex_lock
    1f00: aa1303e0     	mov	x0, x19
    1f04: 94000000     	bl	0x1f04 <gpio_keys_gpio_report_event+0x28>
		0000000000001f04:  R_AARCH64_CALL26	gpio_keys_gpio_report_event_stock_body
    1f08: aa1403e0     	mov	x0, x20
    1f0c: 94000000     	bl	0x1f0c <gpio_keys_gpio_report_event+0x30>
		0000000000001f0c:  R_AARCH64_CALL26	mutex_unlock
    1f10: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1f14: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1f18: d50323bf     	autiasp
    1f1c: d65f03c0     	ret
