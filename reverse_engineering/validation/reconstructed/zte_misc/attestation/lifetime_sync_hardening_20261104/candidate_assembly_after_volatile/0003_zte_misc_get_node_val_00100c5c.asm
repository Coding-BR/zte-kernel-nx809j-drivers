
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000580 <zte_misc_get_node_val>:
     580: d503233f     	paciasp
     584: d10243ff     	sub	sp, sp, #0x90
     588: a9057bfd     	stp	x29, x30, [sp, #0x50]
     58c: a9065ff8     	stp	x24, x23, [sp, #0x60]
     590: a90757f6     	stp	x22, x21, [sp, #0x70]
     594: a9084ff4     	stp	x20, x19, [sp, #0x80]
     598: 910143fd     	add	x29, sp, #0x50
     59c: d5384108     	mrs	x8, SP_EL0
     5a0: aa0003f4     	mov	x20, x0
     5a4: 128002a0     	mov	w0, #-0x16              // =-22
     5a8: f9438908     	ldr	x8, [x8, #0x710]
     5ac: f81f83a8     	stur	x8, [x29, #-0x8]
     5b0: b90007e0     	str	w0, [sp, #0x4]
     5b4: b4000974     	cbz	x20, 0x6e0 <zte_misc_get_node_val+0x160>
     5b8: 39400288     	ldrb	w8, [x20]
     5bc: 34000928     	cbz	w8, 0x6e0 <zte_misc_get_node_val+0x160>
     5c0: aa1403e0     	mov	x0, x20
     5c4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     5c8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     5cc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     5d0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     5d4: 94000000     	bl	0x5d4 <zte_misc_get_node_val+0x54>
		00000000000005d4:  R_AARCH64_CALL26	strlen
     5d8: aa0003f5     	mov	x21, x0
     5dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     5e0: 91000000     	add	x0, x0, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     5e4: 94000000     	bl	0x5e4 <zte_misc_get_node_val+0x64>
		00000000000005e4:  R_AARCH64_CALL26	__srcu_read_lock
     5e8: 2a0003f3     	mov	w19, w0
     5ec: aa1f03f7     	mov	x23, xzr
     5f0: 90000018     	adrp	x24, 0x0 <.text>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     5f4: 91000318     	add	x24, x24, #0x0
		00000000000005f4:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     5f8: 14000004     	b	0x608 <zte_misc_get_node_val+0x88>
     5fc: 910042f7     	add	x23, x23, #0x10
     600: f10902ff     	cmp	x23, #0x240
     604: 540005a0     	b.eq	0x6b8 <zte_misc_get_node_val+0x138>
     608: f8776b16     	ldr	x22, [x24, x23]
     60c: aa1403e1     	mov	x1, x20
     610: aa1503e2     	mov	x2, x21
     614: aa1603e0     	mov	x0, x22
     618: 94000000     	bl	0x618 <zte_misc_get_node_val+0x98>
		0000000000000618:  R_AARCH64_CALL26	strncmp
     61c: 35ffff00     	cbnz	w0, 0x5fc <zte_misc_get_node_val+0x7c>
     620: aa1603e0     	mov	x0, x22
     624: 94000000     	bl	0x624 <zte_misc_get_node_val+0xa4>
		0000000000000624:  R_AARCH64_CALL26	strlen
     628: aa0003f6     	mov	x22, x0
     62c: aa1403e0     	mov	x0, x20
     630: 94000000     	bl	0x630 <zte_misc_get_node_val+0xb0>
		0000000000000630:  R_AARCH64_CALL26	strlen
     634: eb0002df     	cmp	x22, x0
     638: 54fffe21     	b.ne	0x5fc <zte_misc_get_node_val+0x7c>
     63c: 8b170308     	add	x8, x24, x23
     640: f9400508     	ldr	x8, [x8, #0x8]
     644: b4fffdc8     	cbz	x8, 0x5fc <zte_misc_get_node_val+0x7c>
     648: f9400509     	ldr	x9, [x8, #0x8]
     64c: b4fffd89     	cbz	x9, 0x5fc <zte_misc_get_node_val+0x7c>
     650: f9400509     	ldr	x9, [x8, #0x8]
     654: f9400d01     	ldr	x1, [x8, #0x18]
     658: 910023e0     	add	x0, sp, #0x8
     65c: b85fc130     	ldur	w16, [x9, #-0x4]
     660: 7296dd31     	movk	w17, #0xb6e9
     664: 72a53211     	movk	w17, #0x2990, lsl #16
     668: 6b11021f     	cmp	w16, w17
     66c: 54000040     	b.eq	0x674 <zte_misc_get_node_val+0xf4>
     670: d4304520     	brk	#0x8229
     674: d63f0120     	blr	x9
     678: 37f80520     	tbnz	w0, #0x1f, 0x71c <zte_misc_get_node_val+0x19c>
     67c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27f
     680: 91000021     	add	x1, x1, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27f
     684: 910023e0     	add	x0, sp, #0x8
     688: 910013e2     	add	x2, sp, #0x4
     68c: 94000000     	bl	0x68c <zte_misc_get_node_val+0x10c>
		000000000000068c:  R_AARCH64_CALL26	sscanf
     690: 7100041f     	cmp	w0, #0x1
     694: 540003e1     	b.ne	0x710 <zte_misc_get_node_val+0x190>
     698: 71000a7f     	cmp	w19, #0x2
     69c: 54000482     	b.hs	0x72c <zte_misc_get_node_val+0x1ac>
     6a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     6a4: 91000000     	add	x0, x0, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     6a8: 2a1303e1     	mov	w1, w19
     6ac: 94000000     	bl	0x6ac <zte_misc_get_node_val+0x12c>
		00000000000006ac:  R_AARCH64_CALL26	__srcu_read_unlock
     6b0: b94007e0     	ldr	w0, [sp, #0x4]
     6b4: 1400000b     	b	0x6e0 <zte_misc_get_node_val+0x160>
     6b8: 71000a7f     	cmp	w19, #0x2
     6bc: 540003c2     	b.hs	0x734 <zte_misc_get_node_val+0x1b4>
     6c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006c0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     6c4: 91000000     	add	x0, x0, #0x0
		00000000000006c4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     6c8: 2a1303e1     	mov	w1, w19
     6cc: 94000000     	bl	0x6cc <zte_misc_get_node_val+0x14c>
		00000000000006cc:  R_AARCH64_CALL26	__srcu_read_unlock
     6d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x205
     6d4: 91000000     	add	x0, x0, #0x0
		00000000000006d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x205
     6d8: 94000000     	bl	0x6d8 <zte_misc_get_node_val+0x158>
		00000000000006d8:  R_AARCH64_CALL26	_printk
     6dc: 128002a0     	mov	w0, #-0x16              // =-22
     6e0: d5384108     	mrs	x8, SP_EL0
     6e4: f9438908     	ldr	x8, [x8, #0x710]
     6e8: f85f83a9     	ldur	x9, [x29, #-0x8]
     6ec: eb09011f     	cmp	x8, x9
     6f0: 54000261     	b.ne	0x73c <zte_misc_get_node_val+0x1bc>
     6f4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     6f8: a94757f6     	ldp	x22, x21, [sp, #0x70]
     6fc: a9465ff8     	ldp	x24, x23, [sp, #0x60]
     700: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     704: 910243ff     	add	sp, sp, #0x90
     708: d50323bf     	autiasp
     70c: d65f03c0     	ret
     710: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39d
     714: 91000000     	add	x0, x0, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39d
     718: 94000000     	bl	0x718 <zte_misc_get_node_val+0x198>
		0000000000000718:  R_AARCH64_CALL26	_printk
     71c: 128002a8     	mov	w8, #-0x16              // =-22
     720: b90007e8     	str	w8, [sp, #0x4]
     724: 71000a7f     	cmp	w19, #0x2
     728: 54fffbc3     	b.lo	0x6a0 <zte_misc_get_node_val+0x120>
     72c: d4210000     	brk	#0x800
     730: 17ffffdc     	b	0x6a0 <zte_misc_get_node_val+0x120>
     734: d4210000     	brk	#0x800
     738: 17ffffe2     	b	0x6c0 <zte_misc_get_node_val+0x140>
     73c: 94000000     	bl	0x73c <zte_misc_get_node_val+0x1bc>
		000000000000073c:  R_AARCH64_CALL26	__stack_chk_fail
