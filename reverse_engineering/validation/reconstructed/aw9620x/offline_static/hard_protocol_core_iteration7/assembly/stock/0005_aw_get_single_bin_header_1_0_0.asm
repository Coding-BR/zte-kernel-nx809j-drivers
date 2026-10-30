
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005d8 <aw_get_single_bin_header_1_0_0>:
     5d8: d503233f     	paciasp
     5dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     5e0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     5e4: 910003fd     	mov	x29, sp
     5e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ac
     5ec: 91000021     	add	x1, x1, #0x0
		00000000000005ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ac
     5f0: aa0003f3     	mov	x19, x0
     5f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1289
     5f8: 91000000     	add	x0, x0, #0x0
		00000000000005f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1289
     5fc: 528021c2     	mov	w2, #0x10e              // =270
     600: aa0103e3     	mov	x3, x1
     604: 94000000     	bl	0x604 <aw_get_single_bin_header_1_0_0+0x2c>
		0000000000000604:  R_AARCH64_CALL26	_printk
     608: b9400a68     	ldr	w8, [x19, #0x8]
     60c: 7101911f     	cmp	w8, #0x64
     610: 540007e2     	b.hs	0x70c <aw_get_single_bin_header_1_0_0+0x134>
     614: 52800a89     	mov	w9, #0x54               // =84
     618: 91005274     	add	x20, x19, #0x14
     61c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000061c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ac
     620: 91000021     	add	x1, x1, #0x0
		0000000000000620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ac
     624: 9ba95104     	umaddl	x4, w8, w9, x20
     628: 52800788     	mov	w8, #0x3c               // =60
     62c: f9400269     	ldr	x9, [x19]
     630: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a26
     634: 91000000     	add	x0, x0, #0x0
		0000000000000634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a26
     638: 52802622     	mov	w2, #0x131              // =305
     63c: aa0103e3     	mov	x3, x1
     640: b9000088     	str	w8, [x4]
     644: b9400128     	ldr	w8, [x9]
     648: b9000488     	str	w8, [x4, #0x4]
     64c: b9400528     	ldr	w8, [x9, #0x4]
     650: b9000888     	str	w8, [x4, #0x8]
     654: b9400928     	ldr	w8, [x9, #0x8]
     658: b9000c88     	str	w8, [x4, #0xc]
     65c: b9400d28     	ldr	w8, [x9, #0xc]
     660: b9001088     	str	w8, [x4, #0x10]
     664: b9401128     	ldr	w8, [x9, #0x10]
     668: b9001488     	str	w8, [x4, #0x14]
     66c: b9401528     	ldr	w8, [x9, #0x14]
     670: b9001888     	str	w8, [x4, #0x18]
     674: b9402128     	ldr	w8, [x9, #0x20]
     678: b9003088     	str	w8, [x4, #0x30]
     67c: b9402528     	ldr	w8, [x9, #0x24]
     680: b9003488     	str	w8, [x4, #0x34]
     684: b9402928     	ldr	w8, [x9, #0x28]
     688: b9003888     	str	w8, [x4, #0x38]
     68c: 39406128     	ldrb	w8, [x9, #0x18]
     690: 3801cc88     	strb	w8, [x4, #0x1c]!
     694: 39406528     	ldrb	w8, [x9, #0x19]
     698: 39000488     	strb	w8, [x4, #0x1]
     69c: 39406928     	ldrb	w8, [x9, #0x1a]
     6a0: 39000888     	strb	w8, [x4, #0x2]
     6a4: 39406d28     	ldrb	w8, [x9, #0x1b]
     6a8: 39000c88     	strb	w8, [x4, #0x3]
     6ac: 39407128     	ldrb	w8, [x9, #0x1c]
     6b0: 39001088     	strb	w8, [x4, #0x4]
     6b4: 39407528     	ldrb	w8, [x9, #0x1d]
     6b8: 39001488     	strb	w8, [x4, #0x5]
     6bc: 39407928     	ldrb	w8, [x9, #0x1e]
     6c0: 39001888     	strb	w8, [x4, #0x6]
     6c4: 39407d28     	ldrb	w8, [x9, #0x1f]
     6c8: 3900209f     	strb	wzr, [x4, #0x8]
     6cc: 39001c88     	strb	w8, [x4, #0x7]
     6d0: 94000000     	bl	0x6d0 <aw_get_single_bin_header_1_0_0+0xf8>
		00000000000006d0:  R_AARCH64_CALL26	_printk
     6d4: b9400a68     	ldr	w8, [x19, #0x8]
     6d8: 71018d1f     	cmp	w8, #0x63
     6dc: 54000188     	b.hi	0x70c <aw_get_single_bin_header_1_0_0+0x134>
     6e0: 52800a89     	mov	w9, #0x54               // =84
     6e4: 9ba95109     	umaddl	x9, w8, w9, x20
     6e8: 11000508     	add	w8, w8, #0x1
     6ec: b9003d3f     	str	wzr, [x9, #0x3c]
     6f0: f804413f     	stur	xzr, [x9, #0x44]
     6f4: f804c13f     	stur	xzr, [x9, #0x4c]
     6f8: b9000a68     	str	w8, [x19, #0x8]
     6fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     700: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     704: d50323bf     	autiasp
     708: d65f03c0     	ret
     70c: d42aa240     	brk	#0x5512
