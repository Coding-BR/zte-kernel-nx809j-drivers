
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e3c <gpio_keys_gpio_isr>:
     e3c: d503233f     	paciasp
     e40: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e44: a9014ff4     	stp	x20, x19, [sp, #0x10]
     e48: 910003fd     	mov	x29, sp
     e4c: b940bc28     	ldr	w8, [x1, #0xbc]
     e50: aa0103f3     	mov	x19, x1
     e54: 6b00011f     	cmp	w8, w0
     e58: 54000080     	b.eq	0xe68 <gpio_keys_gpio_isr+0x2c>
     e5c: b940c268     	ldr	w8, [x19, #0xc0]
     e60: 6b00011f     	cmp	w8, w0
     e64: 54000401     	b.ne	0xee4 <gpio_keys_gpio_isr+0xa8>
     e68: f9400274     	ldr	x20, [x19]
     e6c: b9401e88     	ldr	w8, [x20, #0x1c]
     e70: 340001e8     	cbz	w8, 0xeac <gpio_keys_gpio_isr+0x70>
     e74: f9400668     	ldr	x8, [x19, #0x8]
     e78: f9414900     	ldr	x0, [x8, #0x290]
     e7c: 94000000     	bl	0xe7c <gpio_keys_gpio_isr+0x40>
		0000000000000e7c:  R_AARCH64_CALL26	pm_stay_awake
     e80: 39442a68     	ldrb	w8, [x19, #0x10a]
     e84: 7100051f     	cmp	w8, #0x1
     e88: 54000121     	b.ne	0xeac <gpio_keys_gpio_isr+0x70>
     e8c: b9401a88     	ldr	w8, [x20, #0x18]
     e90: 7100051f     	cmp	w8, #0x1
     e94: 540000c8     	b.hi	0xeac <gpio_keys_gpio_isr+0x70>
     e98: f9400660     	ldr	x0, [x19, #0x8]
     e9c: b9400282     	ldr	w2, [x20]
     ea0: 52800021     	mov	w1, #0x1                // =1
     ea4: 52800023     	mov	w3, #0x1                // =1
     ea8: 94000000     	bl	0xea8 <gpio_keys_gpio_isr+0x6c>
		0000000000000ea8:  R_AARCH64_CALL26	input_event
     eac: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000eac:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     eb0: b940ba60     	ldr	w0, [x19, #0xb8]
     eb4: f9400114     	ldr	x20, [x8]
		0000000000000eb4:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     eb8: 94000000     	bl	0xeb8 <gpio_keys_gpio_isr+0x7c>
		0000000000000eb8:  R_AARCH64_CALL26	__msecs_to_jiffies
     ebc: aa0003e3     	mov	x3, x0
     ec0: 91014262     	add	x2, x19, #0x50
     ec4: 52800400     	mov	w0, #0x20               // =32
     ec8: aa1403e1     	mov	x1, x20
     ecc: 94000000     	bl	0xecc <gpio_keys_gpio_isr+0x90>
		0000000000000ecc:  R_AARCH64_CALL26	mod_delayed_work_on
     ed0: 52800020     	mov	w0, #0x1                // =1
     ed4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     ed8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     edc: d50323bf     	autiasp
     ee0: d65f03c0     	ret
     ee4: d4210000     	brk	#0x800
