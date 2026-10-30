
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000830 <zte_misc_common_callback_set>:
     830: d503233f     	paciasp
     834: d10243ff     	sub	sp, sp, #0x90
     838: a9057bfd     	stp	x29, x30, [sp, #0x50]
     83c: f90033f7     	str	x23, [sp, #0x60]
     840: a90757f6     	stp	x22, x21, [sp, #0x70]
     844: a9084ff4     	stp	x20, x19, [sp, #0x80]
     848: 910143fd     	add	x29, sp, #0x50
     84c: d5384108     	mrs	x8, SP_EL0
     850: aa0003f3     	mov	x19, x0
     854: 910023e2     	add	x2, sp, #0x8
     858: f9438908     	ldr	x8, [x8, #0x710]
     85c: f81f83a8     	stur	x8, [x29, #-0x8]
     860: f9400020     	ldr	x0, [x1]
     864: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a
     868: 91000021     	add	x1, x1, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a
     86c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     870: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     874: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     878: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     87c: 94000000     	bl	0x87c <zte_misc_common_callback_set+0x4c>
		000000000000087c:  R_AARCH64_CALL26	sscanf
     880: 7100041f     	cmp	w0, #0x1
     884: 54000621     	b.ne	0x948 <zte_misc_common_callback_set+0x118>
     888: aa1f03f6     	mov	x22, xzr
     88c: 2a1f03f4     	mov	w20, wzr
     890: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     894: 910002f7     	add	x23, x23, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     898: 14000004     	b	0x8a8 <zte_misc_common_callback_set+0x78>
     89c: 9100a2d6     	add	x22, x22, #0x28
     8a0: f11682df     	cmp	x22, #0x5a0
     8a4: 540005a0     	b.eq	0x958 <zte_misc_common_callback_set+0x128>
     8a8: f8766af5     	ldr	x21, [x23, x22]
     8ac: 910023e0     	add	x0, sp, #0x8
     8b0: 52800801     	mov	w1, #0x40               // =64
     8b4: 94000000     	bl	0x8b4 <zte_misc_common_callback_set+0x84>
		00000000000008b4:  R_AARCH64_CALL26	strnlen
     8b8: aa0003e2     	mov	x2, x0
     8bc: f101041f     	cmp	x0, #0x41
     8c0: 540006e2     	b.hs	0x99c <zte_misc_common_callback_set+0x16c>
     8c4: f101005f     	cmp	x2, #0x40
     8c8: 54000620     	b.eq	0x98c <zte_misc_common_callback_set+0x15c>
     8cc: 910023e1     	add	x1, sp, #0x8
     8d0: aa1503e0     	mov	x0, x21
     8d4: 94000000     	bl	0x8d4 <zte_misc_common_callback_set+0xa4>
		00000000000008d4:  R_AARCH64_CALL26	strncmp
     8d8: 35fffe20     	cbnz	w0, 0x89c <zte_misc_common_callback_set+0x6c>
     8dc: aa1503e0     	mov	x0, x21
     8e0: 94000000     	bl	0x8e0 <zte_misc_common_callback_set+0xb0>
		00000000000008e0:  R_AARCH64_CALL26	strlen
     8e4: aa0003f5     	mov	x21, x0
     8e8: 910023e0     	add	x0, sp, #0x8
     8ec: 52800801     	mov	w1, #0x40               // =64
     8f0: 94000000     	bl	0x8f0 <zte_misc_common_callback_set+0xc0>
		00000000000008f0:  R_AARCH64_CALL26	strnlen
     8f4: f101041f     	cmp	x0, #0x41
     8f8: 54000562     	b.hs	0x9a4 <zte_misc_common_callback_set+0x174>
     8fc: f101001f     	cmp	x0, #0x40
     900: 54000460     	b.eq	0x98c <zte_misc_common_callback_set+0x15c>
     904: eb0002bf     	cmp	x21, x0
     908: 54fffca1     	b.ne	0x89c <zte_misc_common_callback_set+0x6c>
     90c: 8b1602e9     	add	x9, x23, x22
     910: f9400528     	ldr	x8, [x9, #0x8]
     914: b4fffc48     	cbz	x8, 0x89c <zte_misc_common_callback_set+0x6c>
     918: f9401121     	ldr	x1, [x9, #0x20]
     91c: aa1303e0     	mov	x0, x19
     920: b85fc110     	ldur	w16, [x8, #-0x4]
     924: 72933971     	movk	w17, #0x99cb
     928: 72a99f31     	movk	w17, #0x4cf9, lsl #16
     92c: 6b11021f     	cmp	w16, w17
     930: 54000040     	b.eq	0x938 <zte_misc_common_callback_set+0x108>
     934: d4304500     	brk	#0x8228
     938: d63f0100     	blr	x8
     93c: 2a0003f4     	mov	w20, w0
     940: 36fffae0     	tbz	w0, #0x1f, 0x89c <zte_misc_common_callback_set+0x6c>
     944: 14000005     	b	0x958 <zte_misc_common_callback_set+0x128>
     948: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a
     94c: 91000000     	add	x0, x0, #0x0
		000000000000094c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a
     950: 94000000     	bl	0x950 <zte_misc_common_callback_set+0x120>
		0000000000000950:  R_AARCH64_CALL26	_printk
     954: 128002b4     	mov	w20, #-0x16             // =-22
     958: d5384108     	mrs	x8, SP_EL0
     95c: f9438908     	ldr	x8, [x8, #0x710]
     960: f85f83a9     	ldur	x9, [x29, #-0x8]
     964: eb09011f     	cmp	x8, x9
     968: 54000261     	b.ne	0x9b4 <zte_misc_common_callback_set+0x184>
     96c: 2a1403e0     	mov	w0, w20
     970: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     974: f94033f7     	ldr	x23, [sp, #0x60]
     978: a94757f6     	ldp	x22, x21, [sp, #0x70]
     97c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     980: 910243ff     	add	sp, sp, #0x90
     984: d50323bf     	autiasp
     988: d65f03c0     	ret
     98c: 52800080     	mov	w0, #0x4                // =4
     990: 52800801     	mov	w1, #0x40               // =64
     994: 52800822     	mov	w2, #0x41               // =65
     998: 94000000     	bl	0x998 <zte_misc_common_callback_set+0x168>
		0000000000000998:  R_AARCH64_CALL26	__fortify_panic
     99c: 91000442     	add	x2, x2, #0x1
     9a0: 14000002     	b	0x9a8 <zte_misc_common_callback_set+0x178>
     9a4: 91000402     	add	x2, x0, #0x1
     9a8: 52800040     	mov	w0, #0x2                // =2
     9ac: 52800801     	mov	w1, #0x40               // =64
     9b0: 94000000     	bl	0x9b0 <zte_misc_common_callback_set+0x180>
		00000000000009b0:  R_AARCH64_CALL26	__fortify_panic
     9b4: 94000000     	bl	0x9b4 <zte_misc_common_callback_set+0x184>
		00000000000009b4:  R_AARCH64_CALL26	__stack_chk_fail
