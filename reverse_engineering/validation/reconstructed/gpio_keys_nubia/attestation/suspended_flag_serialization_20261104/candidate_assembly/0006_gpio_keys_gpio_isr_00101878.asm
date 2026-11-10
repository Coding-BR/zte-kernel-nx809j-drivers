
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ea0 <gpio_keys_gpio_isr>:
     ea0: d503233f     	paciasp
     ea4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ea8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     eac: 910003fd     	mov	x29, sp
     eb0: b940bc28     	ldr	w8, [x1, #0xbc]
     eb4: aa0103f3     	mov	x19, x1
     eb8: 6b00011f     	cmp	w8, w0
     ebc: 54000080     	b.eq	0xecc <gpio_keys_gpio_isr+0x2c>
     ec0: b940c268     	ldr	w8, [x19, #0xc0]
     ec4: 6b00011f     	cmp	w8, w0
     ec8: 54000401     	b.ne	0xf48 <gpio_keys_gpio_isr+0xa8>
     ecc: f9400274     	ldr	x20, [x19]
     ed0: b9401e88     	ldr	w8, [x20, #0x1c]
     ed4: 340001e8     	cbz	w8, 0xf10 <gpio_keys_gpio_isr+0x70>
     ed8: f9400668     	ldr	x8, [x19, #0x8]
     edc: f9414900     	ldr	x0, [x8, #0x290]
     ee0: 94000000     	bl	0xee0 <gpio_keys_gpio_isr+0x40>
		0000000000000ee0:  R_AARCH64_CALL26	pm_stay_awake
     ee4: 1400001a     	b	0xf4c <gpio_keys_gpio_isr+0xac>
     ee8: 7100051f     	cmp	w8, #0x1
     eec: 54000121     	b.ne	0xf10 <gpio_keys_gpio_isr+0x70>
     ef0: b9401a88     	ldr	w8, [x20, #0x18]
     ef4: 7100051f     	cmp	w8, #0x1
     ef8: 540000c8     	b.hi	0xf10 <gpio_keys_gpio_isr+0x70>
     efc: f9400660     	ldr	x0, [x19, #0x8]
     f00: b9400282     	ldr	w2, [x20]
     f04: 52800021     	mov	w1, #0x1                // =1
     f08: 52800023     	mov	w3, #0x1                // =1
     f0c: 94000000     	bl	0xf0c <gpio_keys_gpio_isr+0x6c>
		0000000000000f0c:  R_AARCH64_CALL26	input_event
     f10: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f10:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     f14: b940ba60     	ldr	w0, [x19, #0xb8]
     f18: f9400114     	ldr	x20, [x8]
		0000000000000f18:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     f1c: 94000000     	bl	0xf1c <gpio_keys_gpio_isr+0x7c>
		0000000000000f1c:  R_AARCH64_CALL26	__msecs_to_jiffies
     f20: aa0003e3     	mov	x3, x0
     f24: 91014262     	add	x2, x19, #0x50
     f28: 52800400     	mov	w0, #0x20               // =32
     f2c: aa1403e1     	mov	x1, x20
     f30: 94000000     	bl	0xf30 <gpio_keys_gpio_isr+0x90>
		0000000000000f30:  R_AARCH64_CALL26	mod_delayed_work_on
     f34: 52800020     	mov	w0, #0x1                // =1
     f38: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     f3c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     f40: d50323bf     	autiasp
     f44: d65f03c0     	ret
     f48: d4210000     	brk	#0x800
     f4c: 91042a60     	add	x0, x19, #0x10a
     f50: 94000000     	bl	0xf50 <gpio_keys_gpio_isr+0xb0>
		0000000000000f50:  R_AARCH64_CALL26	gpio_keys_suspended_read_serialized
     f54: 2a0003e8     	mov	w8, w0
     f58: 17ffffe4     	b	0xee8 <gpio_keys_gpio_isr+0x48>
