
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f60 <gpio_keys_irq_timer>:
     f60: d503233f     	paciasp
     f64: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     f68: f9000bf5     	str	x21, [sp, #0x10]
     f6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     f70: 910003fd     	mov	x29, sp
     f74: aa0003f3     	mov	x19, x0
     f78: f85e8015     	ldur	x21, [x0, #-0x18]
     f7c: 91039000     	add	x0, x0, #0xe4
     f80: 94000000     	bl	0xf80 <gpio_keys_irq_timer+0x20>
		0000000000000f80:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     f84: 3943a668     	ldrb	w8, [x19, #0xe9]
     f88: aa0003f4     	mov	x20, x0
     f8c: 7100051f     	cmp	w8, #0x1
     f90: 540001a1     	b.ne	0xfc4 <gpio_keys_irq_timer+0x64>
     f94: f85f8268     	ldur	x8, [x19, #-0x8]
     f98: aa1503e0     	mov	x0, x21
     f9c: 52800021     	mov	w1, #0x1                // =1
     fa0: 2a1f03e3     	mov	w3, wzr
     fa4: 79400102     	ldrh	w2, [x8]
     fa8: 94000000     	bl	0xfa8 <gpio_keys_irq_timer+0x48>
		0000000000000fa8:  R_AARCH64_CALL26	input_event
     fac: aa1503e0     	mov	x0, x21
     fb0: 2a1f03e1     	mov	w1, wzr
     fb4: 2a1f03e2     	mov	w2, wzr
     fb8: 2a1f03e3     	mov	w3, wzr
     fbc: 94000000     	bl	0xfbc <gpio_keys_irq_timer+0x5c>
		0000000000000fbc:  R_AARCH64_CALL26	input_event
     fc0: 3903a67f     	strb	wzr, [x19, #0xe9]
     fc4: 91039260     	add	x0, x19, #0xe4
     fc8: aa1403e1     	mov	x1, x20
     fcc: 94000000     	bl	0xfcc <gpio_keys_irq_timer+0x6c>
		0000000000000fcc:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     fd0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     fd4: f9400bf5     	ldr	x21, [sp, #0x10]
     fd8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     fdc: d50323bf     	autiasp
     fe0: d65f03c0     	ret
