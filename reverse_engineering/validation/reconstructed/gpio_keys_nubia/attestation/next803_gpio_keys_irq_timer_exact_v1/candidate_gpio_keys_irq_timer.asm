
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000448 <gpio_keys_irq_timer>:
     448: d503233f     	paciasp
     44c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     450: f9000bf5     	str	x21, [sp, #0x10]
     454: a9024ff4     	stp	x20, x19, [sp, #0x20]
     458: 910003fd     	mov	x29, sp
     45c: aa0003f3     	mov	x19, x0
     460: f85e8015     	ldur	x21, [x0, #-0x18]
     464: 91039000     	add	x0, x0, #0xe4
     468: 94000000     	bl	0x468 <gpio_keys_irq_timer+0x20>
		0000000000000468:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     46c: 3943a668     	ldrb	w8, [x19, #0xe9]
     470: aa0003f4     	mov	x20, x0
     474: 7100051f     	cmp	w8, #0x1
     478: 540001a1     	b.ne	0x4ac <gpio_keys_irq_timer+0x64>
     47c: f85f8268     	ldur	x8, [x19, #-0x8]
     480: aa1503e0     	mov	x0, x21
     484: 52800021     	mov	w1, #0x1                // =1
     488: 2a1f03e3     	mov	w3, wzr
     48c: 79400102     	ldrh	w2, [x8]
     490: 94000000     	bl	0x490 <gpio_keys_irq_timer+0x48>
		0000000000000490:  R_AARCH64_CALL26	input_event
     494: aa1503e0     	mov	x0, x21
     498: 2a1f03e1     	mov	w1, wzr
     49c: 2a1f03e2     	mov	w2, wzr
     4a0: 2a1f03e3     	mov	w3, wzr
     4a4: 94000000     	bl	0x4a4 <gpio_keys_irq_timer+0x5c>
		00000000000004a4:  R_AARCH64_CALL26	input_event
     4a8: 3903a67f     	strb	wzr, [x19, #0xe9]
     4ac: 91039260     	add	x0, x19, #0xe4
     4b0: aa1403e1     	mov	x1, x20
     4b4: 94000000     	bl	0x4b4 <gpio_keys_irq_timer+0x6c>
		00000000000004b4:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     4b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     4bc: f9400bf5     	ldr	x21, [sp, #0x10]
     4c0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     4c4: d50323bf     	autiasp
     4c8: d65f03c0     	ret
