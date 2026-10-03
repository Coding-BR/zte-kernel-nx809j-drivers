
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000398 <gpio_keys_gpio_isr>:
     398: d503233f     	paciasp
     39c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     3a4: 910003fd     	mov	x29, sp
     3a8: b940bc28     	ldr	w8, [x1, #0xbc]
     3ac: aa0103f3     	mov	x19, x1
     3b0: 6b00011f     	cmp	w8, w0
     3b4: 54000080     	b.eq	0x3c4 <gpio_keys_gpio_isr+0x2c>
     3b8: b940c268     	ldr	w8, [x19, #0xc0]
     3bc: 6b00011f     	cmp	w8, w0
     3c0: 54000401     	b.ne	0x440 <gpio_keys_gpio_isr+0xa8>
     3c4: f9400274     	ldr	x20, [x19]
     3c8: b9401e88     	ldr	w8, [x20, #0x1c]
     3cc: 340001e8     	cbz	w8, 0x408 <gpio_keys_gpio_isr+0x70>
     3d0: f9400668     	ldr	x8, [x19, #0x8]
     3d4: f9414900     	ldr	x0, [x8, #0x290]
     3d8: 94000000     	bl	0x3d8 <gpio_keys_gpio_isr+0x40>
		00000000000003d8:  R_AARCH64_CALL26	pm_stay_awake
     3dc: 39442a68     	ldrb	w8, [x19, #0x10a]
     3e0: 7100051f     	cmp	w8, #0x1
     3e4: 54000121     	b.ne	0x408 <gpio_keys_gpio_isr+0x70>
     3e8: b9401a88     	ldr	w8, [x20, #0x18]
     3ec: 7100051f     	cmp	w8, #0x1
     3f0: 540000c8     	b.hi	0x408 <gpio_keys_gpio_isr+0x70>
     3f4: f9400660     	ldr	x0, [x19, #0x8]
     3f8: b9400282     	ldr	w2, [x20]
     3fc: 52800021     	mov	w1, #0x1                // =1
     400: 52800023     	mov	w3, #0x1                // =1
     404: 94000000     	bl	0x404 <gpio_keys_gpio_isr+0x6c>
		0000000000000404:  R_AARCH64_CALL26	input_event
     408: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     40c: b940ba60     	ldr	w0, [x19, #0xb8]
     410: f9400114     	ldr	x20, [x8]
		0000000000000410:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     414: 94000000     	bl	0x414 <gpio_keys_gpio_isr+0x7c>
		0000000000000414:  R_AARCH64_CALL26	__msecs_to_jiffies
     418: aa0003e3     	mov	x3, x0
     41c: 91014262     	add	x2, x19, #0x50
     420: 52800400     	mov	w0, #0x20               // =32
     424: aa1403e1     	mov	x1, x20
     428: 94000000     	bl	0x428 <gpio_keys_gpio_isr+0x90>
		0000000000000428:  R_AARCH64_CALL26	mod_delayed_work_on
     42c: 52800020     	mov	w0, #0x1                // =1
     430: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     434: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     438: d50323bf     	autiasp
     43c: d65f03c0     	ret
     440: d4210000     	brk	#0x800
