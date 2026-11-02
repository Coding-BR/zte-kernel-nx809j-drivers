
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000254 <fan_hrtimer_hander>:
     254: d503233f     	paciasp
     258: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     25c: f9000bf3     	str	x19, [sp, #0x10]
     260: 910003fd     	mov	x29, sp
     264: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000264:  R_AARCH64_ADR_PREL_PG_HI21	chip
     268: f9400268     	ldr	x8, [x19]
		0000000000000268:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     26c: f9400508     	ldr	x8, [x8, #0x8]
     270: 39400909     	ldrb	w9, [x8, #0x2]
     274: 7100093f     	cmp	w9, #0x2
     278: 540004e0     	b.eq	0x314 <fan_hrtimer_hander+0xc0>
     27c: 7100053f     	cmp	w9, #0x1
     280: 540000c0     	b.eq	0x298 <fan_hrtimer_hander+0x44>
     284: 2a1f03e0     	mov	w0, wzr
     288: f9400bf3     	ldr	x19, [sp, #0x10]
     28c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     290: d50323bf     	autiasp
     294: d65f03c0     	ret
     298: b900051f     	str	wzr, [x8, #0x4]
     29c: 52800049     	mov	w9, #0x2                // =2
     2a0: 528ca001     	mov	w1, #0x6500             // =25856
     2a4: f9400268     	ldr	x8, [x19]
		00000000000002a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     2a8: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
     2ac: aa1f03e2     	mov	x2, xzr
     2b0: 52800023     	mov	w3, #0x1                // =1
     2b4: f9400508     	ldr	x8, [x8, #0x8]
     2b8: 39000909     	strb	w9, [x8, #0x2]
     2bc: f9400268     	ldr	x8, [x19]
		00000000000002bc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     2c0: f9400508     	ldr	x8, [x8, #0x8]
     2c4: 9100a100     	add	x0, x8, #0x28
     2c8: 94000000     	bl	0x2c8 <fan_hrtimer_hander+0x74>
		00000000000002c8:  R_AARCH64_CALL26	hrtimer_start_range_ns
     2cc: f9400268     	ldr	x8, [x19]
		00000000000002cc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     2d0: f9400508     	ldr	x8, [x8, #0x8]
     2d4: b9401d00     	ldr	w0, [x8, #0x1c]
     2d8: 94000000     	bl	0x2d8 <fan_hrtimer_hander+0x84>
		00000000000002d8:  R_AARCH64_CALL26	enable_irq
     2dc: f9400268     	ldr	x8, [x19]
		00000000000002dc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     2e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92
     2e4: 91000000     	add	x0, x0, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92
     2e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     2ec: 91000021     	add	x1, x1, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     2f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x388
     2f4: 91000042     	add	x2, x2, #0x0
		00000000000002f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x388
     2f8: f9400508     	ldr	x8, [x8, #0x8]
     2fc: 52801043     	mov	w3, #0x82               // =130
     300: 39400104     	ldrb	w4, [x8]
     304: b9400505     	ldr	w5, [x8, #0x4]
     308: 94000000     	bl	0x308 <fan_hrtimer_hander+0xb4>
		0000000000000308:  R_AARCH64_CALL26	_printk
     30c: 52800020     	mov	w0, #0x1                // =1
     310: 17ffffde     	b	0x288 <fan_hrtimer_hander+0x34>
     314: 52800069     	mov	w9, #0x3                // =3
     318: 39000909     	strb	w9, [x8, #0x2]
     31c: f9400268     	ldr	x8, [x19]
		000000000000031c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     320: f9400509     	ldr	x9, [x8, #0x8]
     324: b940052a     	ldr	w10, [x9, #0x4]
     328: b900092a     	str	w10, [x9, #0x8]
     32c: f9400508     	ldr	x8, [x8, #0x8]
     330: b9401d00     	ldr	w0, [x8, #0x1c]
     334: 94000000     	bl	0x334 <fan_hrtimer_hander+0xe0>
		0000000000000334:  R_AARCH64_CALL26	disable_irq_nosync
     338: f9400268     	ldr	x8, [x19]
		0000000000000338:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     33c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eb
     340: 91000000     	add	x0, x0, #0x0
		0000000000000340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eb
     344: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     348: 91000021     	add	x1, x1, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     34c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x388
     350: 91000042     	add	x2, x2, #0x0
		0000000000000350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x388
     354: f9400508     	ldr	x8, [x8, #0x8]
     358: 52801123     	mov	w3, #0x89               // =137
     35c: 39400104     	ldrb	w4, [x8]
     360: b9400505     	ldr	w5, [x8, #0x4]
     364: 94000000     	bl	0x364 <fan_hrtimer_hander+0x110>
		0000000000000364:  R_AARCH64_CALL26	_printk
     368: 17ffffc7     	b	0x284 <fan_hrtimer_hander+0x30>
