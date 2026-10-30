
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009bc <zte_misc_common_callback_get>:
     9bc: d503233f     	paciasp
     9c0: d10243ff     	sub	sp, sp, #0x90
     9c4: a9057bfd     	stp	x29, x30, [sp, #0x50]
     9c8: f90033f7     	str	x23, [sp, #0x60]
     9cc: a90757f6     	stp	x22, x21, [sp, #0x70]
     9d0: a9084ff4     	stp	x20, x19, [sp, #0x80]
     9d4: 910143fd     	add	x29, sp, #0x50
     9d8: d5384108     	mrs	x8, SP_EL0
     9dc: aa0003f3     	mov	x19, x0
     9e0: 910023e2     	add	x2, sp, #0x8
     9e4: f9438908     	ldr	x8, [x8, #0x710]
     9e8: f81f83a8     	stur	x8, [x29, #-0x8]
     9ec: f9400020     	ldr	x0, [x1]
     9f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a
     9f4: 91000021     	add	x1, x1, #0x0
		00000000000009f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a
     9f8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     9fc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     a00: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     a04: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     a08: 94000000     	bl	0xa08 <zte_misc_common_callback_get+0x4c>
		0000000000000a08:  R_AARCH64_CALL26	sscanf
     a0c: 7100041f     	cmp	w0, #0x1
     a10: 54000621     	b.ne	0xad4 <zte_misc_common_callback_get+0x118>
     a14: aa1f03f6     	mov	x22, xzr
     a18: 2a1f03f4     	mov	w20, wzr
     a1c: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000a1c:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     a20: 910002f7     	add	x23, x23, #0x0
		0000000000000a20:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     a24: 14000004     	b	0xa34 <zte_misc_common_callback_get+0x78>
     a28: 9100a2d6     	add	x22, x22, #0x28
     a2c: f11682df     	cmp	x22, #0x5a0
     a30: 540005a0     	b.eq	0xae4 <zte_misc_common_callback_get+0x128>
     a34: f8766af5     	ldr	x21, [x23, x22]
     a38: 910023e0     	add	x0, sp, #0x8
     a3c: 52800801     	mov	w1, #0x40               // =64
     a40: 94000000     	bl	0xa40 <zte_misc_common_callback_get+0x84>
		0000000000000a40:  R_AARCH64_CALL26	strnlen
     a44: aa0003e2     	mov	x2, x0
     a48: f101041f     	cmp	x0, #0x41
     a4c: 540006e2     	b.hs	0xb28 <zte_misc_common_callback_get+0x16c>
     a50: f101005f     	cmp	x2, #0x40
     a54: 54000620     	b.eq	0xb18 <zte_misc_common_callback_get+0x15c>
     a58: 910023e1     	add	x1, sp, #0x8
     a5c: aa1503e0     	mov	x0, x21
     a60: 94000000     	bl	0xa60 <zte_misc_common_callback_get+0xa4>
		0000000000000a60:  R_AARCH64_CALL26	strncmp
     a64: 35fffe20     	cbnz	w0, 0xa28 <zte_misc_common_callback_get+0x6c>
     a68: aa1503e0     	mov	x0, x21
     a6c: 94000000     	bl	0xa6c <zte_misc_common_callback_get+0xb0>
		0000000000000a6c:  R_AARCH64_CALL26	strlen
     a70: aa0003f5     	mov	x21, x0
     a74: 910023e0     	add	x0, sp, #0x8
     a78: 52800801     	mov	w1, #0x40               // =64
     a7c: 94000000     	bl	0xa7c <zte_misc_common_callback_get+0xc0>
		0000000000000a7c:  R_AARCH64_CALL26	strnlen
     a80: f101041f     	cmp	x0, #0x41
     a84: 54000562     	b.hs	0xb30 <zte_misc_common_callback_get+0x174>
     a88: f101001f     	cmp	x0, #0x40
     a8c: 54000460     	b.eq	0xb18 <zte_misc_common_callback_get+0x15c>
     a90: eb0002bf     	cmp	x21, x0
     a94: 54fffca1     	b.ne	0xa28 <zte_misc_common_callback_get+0x6c>
     a98: 8b1602e9     	add	x9, x23, x22
     a9c: f9400928     	ldr	x8, [x9, #0x10]
     aa0: b4fffc48     	cbz	x8, 0xa28 <zte_misc_common_callback_get+0x6c>
     aa4: f9401121     	ldr	x1, [x9, #0x20]
     aa8: aa1303e0     	mov	x0, x19
     aac: b85fc110     	ldur	w16, [x8, #-0x4]
     ab0: 7296dd31     	movk	w17, #0xb6e9
     ab4: 72a53211     	movk	w17, #0x2990, lsl #16
     ab8: 6b11021f     	cmp	w16, w17
     abc: 54000040     	b.eq	0xac4 <zte_misc_common_callback_get+0x108>
     ac0: d4304500     	brk	#0x8228
     ac4: d63f0100     	blr	x8
     ac8: 2a0003f4     	mov	w20, w0
     acc: 36fffae0     	tbz	w0, #0x1f, 0xa28 <zte_misc_common_callback_get+0x6c>
     ad0: 14000005     	b	0xae4 <zte_misc_common_callback_get+0x128>
     ad4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a
     ad8: 91000000     	add	x0, x0, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a
     adc: 94000000     	bl	0xadc <zte_misc_common_callback_get+0x120>
		0000000000000adc:  R_AARCH64_CALL26	_printk
     ae0: 128002b4     	mov	w20, #-0x16             // =-22
     ae4: d5384108     	mrs	x8, SP_EL0
     ae8: f9438908     	ldr	x8, [x8, #0x710]
     aec: f85f83a9     	ldur	x9, [x29, #-0x8]
     af0: eb09011f     	cmp	x8, x9
     af4: 54000261     	b.ne	0xb40 <zte_misc_common_callback_get+0x184>
     af8: 2a1403e0     	mov	w0, w20
     afc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     b00: f94033f7     	ldr	x23, [sp, #0x60]
     b04: a94757f6     	ldp	x22, x21, [sp, #0x70]
     b08: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     b0c: 910243ff     	add	sp, sp, #0x90
     b10: d50323bf     	autiasp
     b14: d65f03c0     	ret
     b18: 52800080     	mov	w0, #0x4                // =4
     b1c: 52800801     	mov	w1, #0x40               // =64
     b20: 52800822     	mov	w2, #0x41               // =65
     b24: 94000000     	bl	0xb24 <zte_misc_common_callback_get+0x168>
		0000000000000b24:  R_AARCH64_CALL26	__fortify_panic
     b28: 91000442     	add	x2, x2, #0x1
     b2c: 14000002     	b	0xb34 <zte_misc_common_callback_get+0x178>
     b30: 91000402     	add	x2, x0, #0x1
     b34: 52800040     	mov	w0, #0x2                // =2
     b38: 52800801     	mov	w1, #0x40               // =64
     b3c: 94000000     	bl	0xb3c <zte_misc_common_callback_get+0x180>
		0000000000000b3c:  R_AARCH64_CALL26	__fortify_panic
     b40: 94000000     	bl	0xb40 <zte_misc_common_callback_get+0x184>
		0000000000000b40:  R_AARCH64_CALL26	__stack_chk_fail
