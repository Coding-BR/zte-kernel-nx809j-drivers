
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000430 <zte_misc_common_callback_set>:
     430: d503233f     	paciasp
     434: d10243ff     	sub	sp, sp, #0x90
     438: a9057bfd     	stp	x29, x30, [sp, #0x50]
     43c: f90033f7     	str	x23, [sp, #0x60]
     440: a90757f6     	stp	x22, x21, [sp, #0x70]
     444: a9084ff4     	stp	x20, x19, [sp, #0x80]
     448: 910143fd     	add	x29, sp, #0x50
     44c: d5384108     	mrs	x8, SP_EL0
     450: aa0003f3     	mov	x19, x0
     454: 910023e2     	add	x2, sp, #0x8
     458: f9438908     	ldr	x8, [x8, #0x710]
     45c: f81f83a8     	stur	x8, [x29, #-0x8]
     460: f9400020     	ldr	x0, [x1]
     464: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a
     468: 91000021     	add	x1, x1, #0x0
		0000000000000468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a
     46c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     470: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     474: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     478: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     47c: 94000000     	bl	0x47c <zte_misc_common_callback_set+0x4c>
		000000000000047c:  R_AARCH64_CALL26	sscanf
     480: 7100041f     	cmp	w0, #0x1
     484: 54000621     	b.ne	0x548 <zte_misc_common_callback_set+0x118>
     488: aa1f03f6     	mov	x22, xzr
     48c: 2a1f03f4     	mov	w20, wzr
     490: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     494: 910002f7     	add	x23, x23, #0x0
		0000000000000494:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     498: 14000004     	b	0x4a8 <zte_misc_common_callback_set+0x78>
     49c: 9100a2d6     	add	x22, x22, #0x28
     4a0: f11682df     	cmp	x22, #0x5a0
     4a4: 540005a0     	b.eq	0x558 <zte_misc_common_callback_set+0x128>
     4a8: f8766af5     	ldr	x21, [x23, x22]
     4ac: 910023e0     	add	x0, sp, #0x8
     4b0: 52800801     	mov	w1, #0x40               // =64
     4b4: 94000000     	bl	0x4b4 <zte_misc_common_callback_set+0x84>
		00000000000004b4:  R_AARCH64_CALL26	strnlen
     4b8: aa0003e2     	mov	x2, x0
     4bc: f101041f     	cmp	x0, #0x41
     4c0: 540006e2     	b.hs	0x59c <zte_misc_common_callback_set+0x16c>
     4c4: f101005f     	cmp	x2, #0x40
     4c8: 54000620     	b.eq	0x58c <zte_misc_common_callback_set+0x15c>
     4cc: 910023e1     	add	x1, sp, #0x8
     4d0: aa1503e0     	mov	x0, x21
     4d4: 94000000     	bl	0x4d4 <zte_misc_common_callback_set+0xa4>
		00000000000004d4:  R_AARCH64_CALL26	strncmp
     4d8: 35fffe20     	cbnz	w0, 0x49c <zte_misc_common_callback_set+0x6c>
     4dc: aa1503e0     	mov	x0, x21
     4e0: 94000000     	bl	0x4e0 <zte_misc_common_callback_set+0xb0>
		00000000000004e0:  R_AARCH64_CALL26	strlen
     4e4: aa0003f5     	mov	x21, x0
     4e8: 910023e0     	add	x0, sp, #0x8
     4ec: 52800801     	mov	w1, #0x40               // =64
     4f0: 94000000     	bl	0x4f0 <zte_misc_common_callback_set+0xc0>
		00000000000004f0:  R_AARCH64_CALL26	strnlen
     4f4: f101041f     	cmp	x0, #0x41
     4f8: 54000562     	b.hs	0x5a4 <zte_misc_common_callback_set+0x174>
     4fc: f101001f     	cmp	x0, #0x40
     500: 54000460     	b.eq	0x58c <zte_misc_common_callback_set+0x15c>
     504: eb0002bf     	cmp	x21, x0
     508: 54fffca1     	b.ne	0x49c <zte_misc_common_callback_set+0x6c>
     50c: 8b1602e9     	add	x9, x23, x22
     510: f9400528     	ldr	x8, [x9, #0x8]
     514: b4fffc48     	cbz	x8, 0x49c <zte_misc_common_callback_set+0x6c>
     518: f9401121     	ldr	x1, [x9, #0x20]
     51c: aa1303e0     	mov	x0, x19
     520: b85fc110     	ldur	w16, [x8, #-0x4]
     524: 72933971     	movk	w17, #0x99cb
     528: 72a99f31     	movk	w17, #0x4cf9, lsl #16
     52c: 6b11021f     	cmp	w16, w17
     530: 54000040     	b.eq	0x538 <zte_misc_common_callback_set+0x108>
     534: d4304500     	brk	#0x8228
     538: d63f0100     	blr	x8
     53c: 2a0003f4     	mov	w20, w0
     540: 36fffae0     	tbz	w0, #0x1f, 0x49c <zte_misc_common_callback_set+0x6c>
     544: 14000005     	b	0x558 <zte_misc_common_callback_set+0x128>
     548: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a
     54c: 91000000     	add	x0, x0, #0x0
		000000000000054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a
     550: 94000000     	bl	0x550 <zte_misc_common_callback_set+0x120>
		0000000000000550:  R_AARCH64_CALL26	_printk
     554: 128002b4     	mov	w20, #-0x16             // =-22
     558: d5384108     	mrs	x8, SP_EL0
     55c: f9438908     	ldr	x8, [x8, #0x710]
     560: f85f83a9     	ldur	x9, [x29, #-0x8]
     564: eb09011f     	cmp	x8, x9
     568: 54000261     	b.ne	0x5b4 <zte_misc_common_callback_set+0x184>
     56c: 2a1403e0     	mov	w0, w20
     570: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     574: f94033f7     	ldr	x23, [sp, #0x60]
     578: a94757f6     	ldp	x22, x21, [sp, #0x70]
     57c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     580: 910243ff     	add	sp, sp, #0x90
     584: d50323bf     	autiasp
     588: d65f03c0     	ret
     58c: 52800080     	mov	w0, #0x4                // =4
     590: 52800801     	mov	w1, #0x40               // =64
     594: 52800822     	mov	w2, #0x41               // =65
     598: 94000000     	bl	0x598 <zte_misc_common_callback_set+0x168>
		0000000000000598:  R_AARCH64_CALL26	__fortify_panic
     59c: 91000442     	add	x2, x2, #0x1
     5a0: 14000002     	b	0x5a8 <zte_misc_common_callback_set+0x178>
     5a4: 91000402     	add	x2, x0, #0x1
     5a8: 52800040     	mov	w0, #0x2                // =2
     5ac: 52800801     	mov	w1, #0x40               // =64
     5b0: 94000000     	bl	0x5b0 <zte_misc_common_callback_set+0x180>
		00000000000005b0:  R_AARCH64_CALL26	__fortify_panic
     5b4: 94000000     	bl	0x5b4 <zte_misc_common_callback_set+0x184>
		00000000000005b4:  R_AARCH64_CALL26	__stack_chk_fail
