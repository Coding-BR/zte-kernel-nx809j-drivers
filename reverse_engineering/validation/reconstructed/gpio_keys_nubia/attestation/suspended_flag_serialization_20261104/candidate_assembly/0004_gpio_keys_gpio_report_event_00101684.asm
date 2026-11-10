
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001fe8 <gpio_keys_gpio_report_event>:
    1fe8: d503233f     	paciasp
    1fec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1ff0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1ff4: 910003fd     	mov	x29, sp
    1ff8: 90000014     	adrp	x20, 0x1000 <gpio_keys_irq_isr+0x18>
		0000000000001ff8:  R_AARCH64_ADR_PREL_PG_HI21	.data
    1ffc: 91000294     	add	x20, x20, #0x0
		0000000000001ffc:  R_AARCH64_ADD_ABS_LO12_NC	.data
    2000: aa0003f3     	mov	x19, x0
    2004: aa1403e0     	mov	x0, x20
    2008: 94000000     	bl	0x2008 <gpio_keys_gpio_report_event+0x20>
		0000000000002008:  R_AARCH64_CALL26	mutex_lock
    200c: aa1303e0     	mov	x0, x19
    2010: 94000000     	bl	0x2010 <gpio_keys_gpio_report_event+0x28>
		0000000000002010:  R_AARCH64_CALL26	gpio_keys_gpio_report_event_stock_body
    2014: aa1403e0     	mov	x0, x20
    2018: 94000000     	bl	0x2018 <gpio_keys_gpio_report_event+0x30>
		0000000000002018:  R_AARCH64_CALL26	mutex_unlock
    201c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2020: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2024: d50323bf     	autiasp
    2028: d65f03c0     	ret
