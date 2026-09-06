
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000eec <gpio_keys_irq_timer>:
     eec: d503233f     	paciasp
     ef0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ef4: f9000bf5     	str	x21, [sp, #0x10]
     ef8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     efc: 910003fd     	mov	x29, sp
     f00: aa0003f3     	mov	x19, x0
     f04: f85e8015     	ldur	x21, [x0, #-0x18]
     f08: 91039000     	add	x0, x0, #0xe4
     f0c: 94000000     	bl	0xf0c <gpio_keys_irq_timer+0x20>
		0000000000000f0c:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     f10: 3943a668     	ldrb	w8, [x19, #0xe9]
     f14: aa0003f4     	mov	x20, x0
     f18: 7100051f     	cmp	w8, #0x1
     f1c: 540001a1     	b.ne	0xf50 <gpio_keys_irq_timer+0x64>
     f20: f85f8268     	ldur	x8, [x19, #-0x8]
     f24: aa1503e0     	mov	x0, x21
     f28: 52800021     	mov	w1, #0x1                // =1
     f2c: 2a1f03e3     	mov	w3, wzr
     f30: 79400102     	ldrh	w2, [x8]
     f34: 94000000     	bl	0xf34 <gpio_keys_irq_timer+0x48>
		0000000000000f34:  R_AARCH64_CALL26	input_event
     f38: aa1503e0     	mov	x0, x21
     f3c: 2a1f03e1     	mov	w1, wzr
     f40: 2a1f03e2     	mov	w2, wzr
     f44: 2a1f03e3     	mov	w3, wzr
     f48: 94000000     	bl	0xf48 <gpio_keys_irq_timer+0x5c>
		0000000000000f48:  R_AARCH64_CALL26	input_event
     f4c: 3903a67f     	strb	wzr, [x19, #0xe9]
     f50: 91039260     	add	x0, x19, #0xe4
     f54: aa1403e1     	mov	x1, x20
     f58: 94000000     	bl	0xf58 <gpio_keys_irq_timer+0x6c>
		0000000000000f58:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     f5c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     f60: f9400bf5     	ldr	x21, [sp, #0x10]
     f64: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     f68: d50323bf     	autiasp
     f6c: d65f03c0     	ret
