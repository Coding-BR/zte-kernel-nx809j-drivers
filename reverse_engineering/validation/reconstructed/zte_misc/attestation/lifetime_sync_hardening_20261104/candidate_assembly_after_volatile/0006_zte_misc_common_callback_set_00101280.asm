
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000908 <zte_misc_common_callback_set>:
     908: d503233f     	paciasp
     90c: d10243ff     	sub	sp, sp, #0x90
     910: a9057bfd     	stp	x29, x30, [sp, #0x50]
     914: a9065ff8     	stp	x24, x23, [sp, #0x60]
     918: a90757f6     	stp	x22, x21, [sp, #0x70]
     91c: a9084ff4     	stp	x20, x19, [sp, #0x80]
     920: 910143fd     	add	x29, sp, #0x50
     924: d5384108     	mrs	x8, SP_EL0
     928: aa0003f3     	mov	x19, x0
     92c: 910023e2     	add	x2, sp, #0x8
     930: f9438908     	ldr	x8, [x8, #0x710]
     934: f81f83a8     	stur	x8, [x29, #-0x8]
     938: f9400020     	ldr	x0, [x1]
     93c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000093c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14f
     940: 91000021     	add	x1, x1, #0x0
		0000000000000940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14f
     944: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     948: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     94c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     950: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     954: 94000000     	bl	0x954 <zte_misc_common_callback_set+0x4c>
		0000000000000954:  R_AARCH64_CALL26	sscanf
     958: 7100041f     	cmp	w0, #0x1
     95c: 54000921     	b.ne	0xa80 <zte_misc_common_callback_set+0x178>
     960: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     964: 91000000     	add	x0, x0, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     968: 94000000     	bl	0x968 <zte_misc_common_callback_set+0x60>
		0000000000000968:  R_AARCH64_CALL26	__srcu_read_lock
     96c: 2a0003f5     	mov	w21, w0
     970: aa1f03f7     	mov	x23, xzr
     974: 2a1f03f4     	mov	w20, wzr
     978: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     97c: 91000318     	add	x24, x24, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     980: 14000004     	b	0x990 <zte_misc_common_callback_set+0x88>
     984: 910042f7     	add	x23, x23, #0x10
     988: f10902ff     	cmp	x23, #0x240
     98c: 54000540     	b.eq	0xa34 <zte_misc_common_callback_set+0x12c>
     990: f8776b16     	ldr	x22, [x24, x23]
     994: 910023e0     	add	x0, sp, #0x8
     998: 52800801     	mov	w1, #0x40               // =64
     99c: 94000000     	bl	0x99c <zte_misc_common_callback_set+0x94>
		000000000000099c:  R_AARCH64_CALL26	strnlen
     9a0: aa0003e2     	mov	x2, x0
     9a4: f101041f     	cmp	x0, #0x41
     9a8: 54000822     	b.hs	0xaac <zte_misc_common_callback_set+0x1a4>
     9ac: f101005f     	cmp	x2, #0x40
     9b0: 54000760     	b.eq	0xa9c <zte_misc_common_callback_set+0x194>
     9b4: 910023e1     	add	x1, sp, #0x8
     9b8: aa1603e0     	mov	x0, x22
     9bc: 94000000     	bl	0x9bc <zte_misc_common_callback_set+0xb4>
		00000000000009bc:  R_AARCH64_CALL26	strncmp
     9c0: 35fffe20     	cbnz	w0, 0x984 <zte_misc_common_callback_set+0x7c>
     9c4: aa1603e0     	mov	x0, x22
     9c8: 94000000     	bl	0x9c8 <zte_misc_common_callback_set+0xc0>
		00000000000009c8:  R_AARCH64_CALL26	strlen
     9cc: aa0003f6     	mov	x22, x0
     9d0: 910023e0     	add	x0, sp, #0x8
     9d4: 52800801     	mov	w1, #0x40               // =64
     9d8: 94000000     	bl	0x9d8 <zte_misc_common_callback_set+0xd0>
		00000000000009d8:  R_AARCH64_CALL26	strnlen
     9dc: f101041f     	cmp	x0, #0x41
     9e0: 540006a2     	b.hs	0xab4 <zte_misc_common_callback_set+0x1ac>
     9e4: f101001f     	cmp	x0, #0x40
     9e8: 540005a0     	b.eq	0xa9c <zte_misc_common_callback_set+0x194>
     9ec: eb0002df     	cmp	x22, x0
     9f0: 54fffca1     	b.ne	0x984 <zte_misc_common_callback_set+0x7c>
     9f4: 8b170308     	add	x8, x24, x23
     9f8: f9400509     	ldr	x9, [x8, #0x8]
     9fc: b4fffc49     	cbz	x9, 0x984 <zte_misc_common_callback_set+0x7c>
     a00: f9400128     	ldr	x8, [x9]
     a04: b4fffc08     	cbz	x8, 0x984 <zte_misc_common_callback_set+0x7c>
     a08: f9400d21     	ldr	x1, [x9, #0x18]
     a0c: aa1303e0     	mov	x0, x19
     a10: b85fc110     	ldur	w16, [x8, #-0x4]
     a14: 72933971     	movk	w17, #0x99cb
     a18: 72a99f31     	movk	w17, #0x4cf9, lsl #16
     a1c: 6b11021f     	cmp	w16, w17
     a20: 54000040     	b.eq	0xa28 <zte_misc_common_callback_set+0x120>
     a24: d4304500     	brk	#0x8228
     a28: d63f0100     	blr	x8
     a2c: 2a0003f4     	mov	w20, w0
     a30: 36fffaa0     	tbz	w0, #0x1f, 0x984 <zte_misc_common_callback_set+0x7c>
     a34: 71000abf     	cmp	w21, #0x2
     a38: 540002e2     	b.hs	0xa94 <zte_misc_common_callback_set+0x18c>
     a3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a3c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     a40: 91000000     	add	x0, x0, #0x0
		0000000000000a40:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     a44: 2a1503e1     	mov	w1, w21
     a48: 94000000     	bl	0xa48 <zte_misc_common_callback_set+0x140>
		0000000000000a48:  R_AARCH64_CALL26	__srcu_read_unlock
     a4c: d5384108     	mrs	x8, SP_EL0
     a50: f9438908     	ldr	x8, [x8, #0x710]
     a54: f85f83a9     	ldur	x9, [x29, #-0x8]
     a58: eb09011f     	cmp	x8, x9
     a5c: 54000341     	b.ne	0xac4 <zte_misc_common_callback_set+0x1bc>
     a60: 2a1403e0     	mov	w0, w20
     a64: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     a68: a94757f6     	ldp	x22, x21, [sp, #0x70]
     a6c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
     a70: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     a74: 910243ff     	add	sp, sp, #0x90
     a78: d50323bf     	autiasp
     a7c: d65f03c0     	ret
     a80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a
     a84: 91000000     	add	x0, x0, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a
     a88: 94000000     	bl	0xa88 <zte_misc_common_callback_set+0x180>
		0000000000000a88:  R_AARCH64_CALL26	_printk
     a8c: 128002b4     	mov	w20, #-0x16             // =-22
     a90: 17ffffef     	b	0xa4c <zte_misc_common_callback_set+0x144>
     a94: d4210000     	brk	#0x800
     a98: 17ffffe9     	b	0xa3c <zte_misc_common_callback_set+0x134>
     a9c: 52800080     	mov	w0, #0x4                // =4
     aa0: 52800801     	mov	w1, #0x40               // =64
     aa4: 52800822     	mov	w2, #0x41               // =65
     aa8: 94000000     	bl	0xaa8 <zte_misc_common_callback_set+0x1a0>
		0000000000000aa8:  R_AARCH64_CALL26	__fortify_panic
     aac: 91000442     	add	x2, x2, #0x1
     ab0: 14000002     	b	0xab8 <zte_misc_common_callback_set+0x1b0>
     ab4: 91000402     	add	x2, x0, #0x1
     ab8: 52800040     	mov	w0, #0x2                // =2
     abc: 52800801     	mov	w1, #0x40               // =64
     ac0: 94000000     	bl	0xac0 <zte_misc_common_callback_set+0x1b8>
		0000000000000ac0:  R_AARCH64_CALL26	__fortify_panic
     ac4: 94000000     	bl	0xac4 <zte_misc_common_callback_set+0x1bc>
		0000000000000ac4:  R_AARCH64_CALL26	__stack_chk_fail
