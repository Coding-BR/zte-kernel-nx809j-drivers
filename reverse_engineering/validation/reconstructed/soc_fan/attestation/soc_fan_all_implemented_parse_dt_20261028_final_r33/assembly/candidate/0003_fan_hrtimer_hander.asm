
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000570 <fan_hrtimer_hander>:
     570: d503233f     	paciasp
     574: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     578: f9000bf3     	str	x19, [sp, #0x10]
     57c: 910003fd     	mov	x29, sp
     580: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	chip
     584: f9400268     	ldr	x8, [x19]
		0000000000000584:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     588: f9400508     	ldr	x8, [x8, #0x8]
     58c: 39400909     	ldrb	w9, [x8, #0x2]
     590: 7100093f     	cmp	w9, #0x2
     594: 540004e0     	b.eq	0x630 <fan_hrtimer_hander+0xc0>
     598: 7100053f     	cmp	w9, #0x1
     59c: 540000c0     	b.eq	0x5b4 <fan_hrtimer_hander+0x44>
     5a0: 2a1f03e0     	mov	w0, wzr
     5a4: f9400bf3     	ldr	x19, [sp, #0x10]
     5a8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     5ac: d50323bf     	autiasp
     5b0: d65f03c0     	ret
     5b4: b900051f     	str	wzr, [x8, #0x4]
     5b8: 52800049     	mov	w9, #0x2                // =2
     5bc: 528ca001     	mov	w1, #0x6500             // =25856
     5c0: f9400268     	ldr	x8, [x19]
		00000000000005c0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5c4: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
     5c8: aa1f03e2     	mov	x2, xzr
     5cc: 52800023     	mov	w3, #0x1                // =1
     5d0: f9400508     	ldr	x8, [x8, #0x8]
     5d4: 39000909     	strb	w9, [x8, #0x2]
     5d8: f9400268     	ldr	x8, [x19]
		00000000000005d8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5dc: f9400508     	ldr	x8, [x8, #0x8]
     5e0: 9100a100     	add	x0, x8, #0x28
     5e4: 94000000     	bl	0x5e4 <fan_hrtimer_hander+0x74>
		00000000000005e4:  R_AARCH64_CALL26	hrtimer_start_range_ns
     5e8: f9400268     	ldr	x8, [x19]
		00000000000005e8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5ec: f9400508     	ldr	x8, [x8, #0x8]
     5f0: b9401d00     	ldr	w0, [x8, #0x1c]
     5f4: 94000000     	bl	0x5f4 <fan_hrtimer_hander+0x84>
		00000000000005f4:  R_AARCH64_CALL26	enable_irq
     5f8: f9400268     	ldr	x8, [x19]
		00000000000005f8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92
     600: 91000000     	add	x0, x0, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92
     604: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     608: 91000021     	add	x1, x1, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     60c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000060c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x581
     610: 91000042     	add	x2, x2, #0x0
		0000000000000610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x581
     614: f9400508     	ldr	x8, [x8, #0x8]
     618: 52801043     	mov	w3, #0x82               // =130
     61c: 39400104     	ldrb	w4, [x8]
     620: b9400505     	ldr	w5, [x8, #0x4]
     624: 94000000     	bl	0x624 <fan_hrtimer_hander+0xb4>
		0000000000000624:  R_AARCH64_CALL26	_printk
     628: 52800020     	mov	w0, #0x1                // =1
     62c: 17ffffde     	b	0x5a4 <fan_hrtimer_hander+0x34>
     630: 52800069     	mov	w9, #0x3                // =3
     634: 39000909     	strb	w9, [x8, #0x2]
     638: f9400268     	ldr	x8, [x19]
		0000000000000638:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     63c: f9400509     	ldr	x9, [x8, #0x8]
     640: b940052a     	ldr	w10, [x9, #0x4]
     644: b900092a     	str	w10, [x9, #0x8]
     648: f9400508     	ldr	x8, [x8, #0x8]
     64c: b9401d00     	ldr	w0, [x8, #0x1c]
     650: 94000000     	bl	0x650 <fan_hrtimer_hander+0xe0>
		0000000000000650:  R_AARCH64_CALL26	disable_irq_nosync
     654: f9400268     	ldr	x8, [x19]
		0000000000000654:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     658: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a0
     65c: 91000000     	add	x0, x0, #0x0
		000000000000065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a0
     660: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     664: 91000021     	add	x1, x1, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     668: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x581
     66c: 91000042     	add	x2, x2, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x581
     670: f9400508     	ldr	x8, [x8, #0x8]
     674: 52801123     	mov	w3, #0x89               // =137
     678: 39400104     	ldrb	w4, [x8]
     67c: b9400505     	ldr	w5, [x8, #0x4]
     680: 94000000     	bl	0x680 <fan_hrtimer_hander+0x110>
		0000000000000680:  R_AARCH64_CALL26	_printk
     684: 17ffffc7     	b	0x5a0 <fan_hrtimer_hander+0x30>
