
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004d0 <gpio_keys_irq_isr>:
     4d0: b940bc28     	ldr	w8, [x1, #0xbc]
     4d4: 6b00011f     	cmp	w8, w0
     4d8: 54000861     	b.ne	0x5e4 <gpio_keys_irq_isr+0x114>
     4dc: d503233f     	paciasp
     4e0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     4e4: a90157f6     	stp	x22, x21, [sp, #0x10]
     4e8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     4ec: 910003fd     	mov	x29, sp
     4f0: f9400435     	ldr	x21, [x1, #0x8]
     4f4: 91041020     	add	x0, x1, #0x104
     4f8: aa0103f3     	mov	x19, x1
     4fc: 94000000     	bl	0x4fc <gpio_keys_irq_isr+0x2c>
		00000000000004fc:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     500: 39442668     	ldrb	w8, [x19, #0x109]
     504: aa0003f4     	mov	x20, x0
     508: 36000088     	tbz	w8, #0x0, 0x518 <gpio_keys_irq_isr+0x48>
     50c: b9404a60     	ldr	w0, [x19, #0x48]
     510: 35000320     	cbnz	w0, 0x574 <gpio_keys_irq_isr+0xa4>
     514: 1400002b     	b	0x5c0 <gpio_keys_irq_isr+0xf0>
     518: f9400268     	ldr	x8, [x19]
     51c: b9401d08     	ldr	w8, [x8, #0x1c]
     520: 340000c8     	cbz	w8, 0x538 <gpio_keys_irq_isr+0x68>
     524: f9400668     	ldr	x8, [x19, #0x8]
     528: 2a1f03e1     	mov	w1, wzr
     52c: 2a1f03e2     	mov	w2, wzr
     530: f9414900     	ldr	x0, [x8, #0x290]
     534: 94000000     	bl	0x534 <gpio_keys_irq_isr+0x64>
		0000000000000534:  R_AARCH64_CALL26	pm_wakeup_dev_event
     538: f9400e68     	ldr	x8, [x19, #0x18]
     53c: aa1503e0     	mov	x0, x21
     540: 52800021     	mov	w1, #0x1                // =1
     544: 52800023     	mov	w3, #0x1                // =1
     548: 52800036     	mov	w22, #0x1               // =1
     54c: 79400102     	ldrh	w2, [x8]
     550: 94000000     	bl	0x550 <gpio_keys_irq_isr+0x80>
		0000000000000550:  R_AARCH64_CALL26	input_event
     554: aa1503e0     	mov	x0, x21
     558: 2a1f03e1     	mov	w1, wzr
     55c: 2a1f03e2     	mov	w2, wzr
     560: 2a1f03e3     	mov	w3, wzr
     564: 94000000     	bl	0x564 <gpio_keys_irq_isr+0x94>
		0000000000000564:  R_AARCH64_CALL26	input_event
     568: b9404a60     	ldr	w0, [x19, #0x48]
     56c: 34000140     	cbz	w0, 0x594 <gpio_keys_irq_isr+0xc4>
     570: 39042676     	strb	w22, [x19, #0x109]
     574: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000574:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
     578: f9400115     	ldr	x21, [x8]
		0000000000000578:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
     57c: 94000000     	bl	0x57c <gpio_keys_irq_isr+0xac>
		000000000000057c:  R_AARCH64_CALL26	__msecs_to_jiffies
     580: aa0003e8     	mov	x8, x0
     584: 91008260     	add	x0, x19, #0x20
     588: 8b150101     	add	x1, x8, x21
     58c: 94000000     	bl	0x58c <gpio_keys_irq_isr+0xbc>
		000000000000058c:  R_AARCH64_CALL26	mod_timer
     590: 1400000c     	b	0x5c0 <gpio_keys_irq_isr+0xf0>
     594: f9400e68     	ldr	x8, [x19, #0x18]
     598: aa1503e0     	mov	x0, x21
     59c: 52800021     	mov	w1, #0x1                // =1
     5a0: 2a1f03e3     	mov	w3, wzr
     5a4: 79400102     	ldrh	w2, [x8]
     5a8: 94000000     	bl	0x5a8 <gpio_keys_irq_isr+0xd8>
		00000000000005a8:  R_AARCH64_CALL26	input_event
     5ac: aa1503e0     	mov	x0, x21
     5b0: 2a1f03e1     	mov	w1, wzr
     5b4: 2a1f03e2     	mov	w2, wzr
     5b8: 2a1f03e3     	mov	w3, wzr
     5bc: 94000000     	bl	0x5bc <gpio_keys_irq_isr+0xec>
		00000000000005bc:  R_AARCH64_CALL26	input_event
     5c0: 91041260     	add	x0, x19, #0x104
     5c4: aa1403e1     	mov	x1, x20
     5c8: 94000000     	bl	0x5c8 <gpio_keys_irq_isr+0xf8>
		00000000000005c8:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     5cc: 52800020     	mov	w0, #0x1                // =1
     5d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     5d4: a94157f6     	ldp	x22, x21, [sp, #0x10]
     5d8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     5dc: d50323bf     	autiasp
     5e0: d65f03c0     	ret
     5e4: d4210000     	brk	#0x800
