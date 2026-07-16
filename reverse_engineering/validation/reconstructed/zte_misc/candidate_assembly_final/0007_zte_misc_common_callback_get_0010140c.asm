
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002a4 <zte_misc_common_callback_get>:
     2a4: d503233f     	paciasp
     2a8: d10243ff     	sub	sp, sp, #0x90
     2ac: a9057bfd     	stp	x29, x30, [sp, #0x50]
     2b0: f90033f7     	str	x23, [sp, #0x60]
     2b4: a90757f6     	stp	x22, x21, [sp, #0x70]
     2b8: a9084ff4     	stp	x20, x19, [sp, #0x80]
     2bc: 910143fd     	add	x29, sp, #0x50
     2c0: d5384108     	mrs	x8, SP_EL0
     2c4: aa0003f3     	mov	x19, x0
     2c8: 910023e2     	add	x2, sp, #0x8
     2cc: f9438908     	ldr	x8, [x8, #0x710]
     2d0: f81f83a8     	stur	x8, [x29, #-0x8]
     2d4: f9400020     	ldr	x0, [x1]
     2d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a
     2dc: 91000021     	add	x1, x1, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a
     2e0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     2e4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     2e8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     2ec: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     2f0: 94000000     	bl	0x2f0 <zte_misc_common_callback_get+0x4c>
		00000000000002f0:  R_AARCH64_CALL26	sscanf
     2f4: 7100041f     	cmp	w0, #0x1
     2f8: 54000621     	b.ne	0x3bc <zte_misc_common_callback_get+0x118>
     2fc: aa1f03f6     	mov	x22, xzr
     300: 2a1f03f4     	mov	w20, wzr
     304: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     308: 910002f7     	add	x23, x23, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     30c: 14000004     	b	0x31c <zte_misc_common_callback_get+0x78>
     310: 9100a2d6     	add	x22, x22, #0x28
     314: f11682df     	cmp	x22, #0x5a0
     318: 540005a0     	b.eq	0x3cc <zte_misc_common_callback_get+0x128>
     31c: f8766af5     	ldr	x21, [x23, x22]
     320: 910023e0     	add	x0, sp, #0x8
     324: 52800801     	mov	w1, #0x40               // =64
     328: 94000000     	bl	0x328 <zte_misc_common_callback_get+0x84>
		0000000000000328:  R_AARCH64_CALL26	strnlen
     32c: aa0003e2     	mov	x2, x0
     330: f101041f     	cmp	x0, #0x41
     334: 540006e2     	b.hs	0x410 <zte_misc_common_callback_get+0x16c>
     338: f101005f     	cmp	x2, #0x40
     33c: 54000620     	b.eq	0x400 <zte_misc_common_callback_get+0x15c>
     340: 910023e1     	add	x1, sp, #0x8
     344: aa1503e0     	mov	x0, x21
     348: 94000000     	bl	0x348 <zte_misc_common_callback_get+0xa4>
		0000000000000348:  R_AARCH64_CALL26	strncmp
     34c: 35fffe20     	cbnz	w0, 0x310 <zte_misc_common_callback_get+0x6c>
     350: aa1503e0     	mov	x0, x21
     354: 94000000     	bl	0x354 <zte_misc_common_callback_get+0xb0>
		0000000000000354:  R_AARCH64_CALL26	strlen
     358: aa0003f5     	mov	x21, x0
     35c: 910023e0     	add	x0, sp, #0x8
     360: 52800801     	mov	w1, #0x40               // =64
     364: 94000000     	bl	0x364 <zte_misc_common_callback_get+0xc0>
		0000000000000364:  R_AARCH64_CALL26	strnlen
     368: f101041f     	cmp	x0, #0x41
     36c: 54000562     	b.hs	0x418 <zte_misc_common_callback_get+0x174>
     370: f101001f     	cmp	x0, #0x40
     374: 54000460     	b.eq	0x400 <zte_misc_common_callback_get+0x15c>
     378: eb0002bf     	cmp	x21, x0
     37c: 54fffca1     	b.ne	0x310 <zte_misc_common_callback_get+0x6c>
     380: 8b1602e9     	add	x9, x23, x22
     384: f9400928     	ldr	x8, [x9, #0x10]
     388: b4fffc48     	cbz	x8, 0x310 <zte_misc_common_callback_get+0x6c>
     38c: f9401121     	ldr	x1, [x9, #0x20]
     390: aa1303e0     	mov	x0, x19
     394: b85fc110     	ldur	w16, [x8, #-0x4]
     398: 7296dd31     	movk	w17, #0xb6e9
     39c: 72a53211     	movk	w17, #0x2990, lsl #16
     3a0: 6b11021f     	cmp	w16, w17
     3a4: 54000040     	b.eq	0x3ac <zte_misc_common_callback_get+0x108>
     3a8: d4304500     	brk	#0x8228
     3ac: d63f0100     	blr	x8
     3b0: 2a0003f4     	mov	w20, w0
     3b4: 36fffae0     	tbz	w0, #0x1f, 0x310 <zte_misc_common_callback_get+0x6c>
     3b8: 14000005     	b	0x3cc <zte_misc_common_callback_get+0x128>
     3bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a
     3c0: 91000000     	add	x0, x0, #0x0
		00000000000003c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a
     3c4: 94000000     	bl	0x3c4 <zte_misc_common_callback_get+0x120>
		00000000000003c4:  R_AARCH64_CALL26	_printk
     3c8: 128002b4     	mov	w20, #-0x16             // =-22
     3cc: d5384108     	mrs	x8, SP_EL0
     3d0: f9438908     	ldr	x8, [x8, #0x710]
     3d4: f85f83a9     	ldur	x9, [x29, #-0x8]
     3d8: eb09011f     	cmp	x8, x9
     3dc: 54000261     	b.ne	0x428 <zte_misc_common_callback_get+0x184>
     3e0: 2a1403e0     	mov	w0, w20
     3e4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     3e8: f94033f7     	ldr	x23, [sp, #0x60]
     3ec: a94757f6     	ldp	x22, x21, [sp, #0x70]
     3f0: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     3f4: 910243ff     	add	sp, sp, #0x90
     3f8: d50323bf     	autiasp
     3fc: d65f03c0     	ret
     400: 52800080     	mov	w0, #0x4                // =4
     404: 52800801     	mov	w1, #0x40               // =64
     408: 52800822     	mov	w2, #0x41               // =65
     40c: 94000000     	bl	0x40c <zte_misc_common_callback_get+0x168>
		000000000000040c:  R_AARCH64_CALL26	__fortify_panic
     410: 91000442     	add	x2, x2, #0x1
     414: 14000002     	b	0x41c <zte_misc_common_callback_get+0x178>
     418: 91000402     	add	x2, x0, #0x1
     41c: 52800040     	mov	w0, #0x2                // =2
     420: 52800801     	mov	w1, #0x40               // =64
     424: 94000000     	bl	0x424 <zte_misc_common_callback_get+0x180>
		0000000000000424:  R_AARCH64_CALL26	__fortify_panic
     428: 94000000     	bl	0x428 <zte_misc_common_callback_get+0x184>
		0000000000000428:  R_AARCH64_CALL26	__stack_chk_fail
