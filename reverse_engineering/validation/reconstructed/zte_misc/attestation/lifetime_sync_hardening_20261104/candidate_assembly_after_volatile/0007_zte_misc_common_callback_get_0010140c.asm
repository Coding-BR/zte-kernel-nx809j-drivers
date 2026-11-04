
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000744 <zte_misc_common_callback_get>:
     744: d503233f     	paciasp
     748: d10243ff     	sub	sp, sp, #0x90
     74c: a9057bfd     	stp	x29, x30, [sp, #0x50]
     750: a9065ff8     	stp	x24, x23, [sp, #0x60]
     754: a90757f6     	stp	x22, x21, [sp, #0x70]
     758: a9084ff4     	stp	x20, x19, [sp, #0x80]
     75c: 910143fd     	add	x29, sp, #0x50
     760: d5384108     	mrs	x8, SP_EL0
     764: aa0003f3     	mov	x19, x0
     768: 910023e2     	add	x2, sp, #0x8
     76c: f9438908     	ldr	x8, [x8, #0x710]
     770: f81f83a8     	stur	x8, [x29, #-0x8]
     774: f9400020     	ldr	x0, [x1]
     778: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14f
     77c: 91000021     	add	x1, x1, #0x0
		000000000000077c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14f
     780: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     784: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     788: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     78c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     790: 94000000     	bl	0x790 <zte_misc_common_callback_get+0x4c>
		0000000000000790:  R_AARCH64_CALL26	sscanf
     794: 7100041f     	cmp	w0, #0x1
     798: 54000921     	b.ne	0x8bc <zte_misc_common_callback_get+0x178>
     79c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     7a0: 91000000     	add	x0, x0, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     7a4: 94000000     	bl	0x7a4 <zte_misc_common_callback_get+0x60>
		00000000000007a4:  R_AARCH64_CALL26	__srcu_read_lock
     7a8: 2a0003f5     	mov	w21, w0
     7ac: aa1f03f7     	mov	x23, xzr
     7b0: 2a1f03f4     	mov	w20, wzr
     7b4: 90000018     	adrp	x24, 0x0 <.text>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     7b8: 91000318     	add	x24, x24, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     7bc: 14000004     	b	0x7cc <zte_misc_common_callback_get+0x88>
     7c0: 910042f7     	add	x23, x23, #0x10
     7c4: f10902ff     	cmp	x23, #0x240
     7c8: 54000540     	b.eq	0x870 <zte_misc_common_callback_get+0x12c>
     7cc: f8776b16     	ldr	x22, [x24, x23]
     7d0: 910023e0     	add	x0, sp, #0x8
     7d4: 52800801     	mov	w1, #0x40               // =64
     7d8: 94000000     	bl	0x7d8 <zte_misc_common_callback_get+0x94>
		00000000000007d8:  R_AARCH64_CALL26	strnlen
     7dc: aa0003e2     	mov	x2, x0
     7e0: f101041f     	cmp	x0, #0x41
     7e4: 54000822     	b.hs	0x8e8 <zte_misc_common_callback_get+0x1a4>
     7e8: f101005f     	cmp	x2, #0x40
     7ec: 54000760     	b.eq	0x8d8 <zte_misc_common_callback_get+0x194>
     7f0: 910023e1     	add	x1, sp, #0x8
     7f4: aa1603e0     	mov	x0, x22
     7f8: 94000000     	bl	0x7f8 <zte_misc_common_callback_get+0xb4>
		00000000000007f8:  R_AARCH64_CALL26	strncmp
     7fc: 35fffe20     	cbnz	w0, 0x7c0 <zte_misc_common_callback_get+0x7c>
     800: aa1603e0     	mov	x0, x22
     804: 94000000     	bl	0x804 <zte_misc_common_callback_get+0xc0>
		0000000000000804:  R_AARCH64_CALL26	strlen
     808: aa0003f6     	mov	x22, x0
     80c: 910023e0     	add	x0, sp, #0x8
     810: 52800801     	mov	w1, #0x40               // =64
     814: 94000000     	bl	0x814 <zte_misc_common_callback_get+0xd0>
		0000000000000814:  R_AARCH64_CALL26	strnlen
     818: f101041f     	cmp	x0, #0x41
     81c: 540006a2     	b.hs	0x8f0 <zte_misc_common_callback_get+0x1ac>
     820: f101001f     	cmp	x0, #0x40
     824: 540005a0     	b.eq	0x8d8 <zte_misc_common_callback_get+0x194>
     828: eb0002df     	cmp	x22, x0
     82c: 54fffca1     	b.ne	0x7c0 <zte_misc_common_callback_get+0x7c>
     830: 8b170308     	add	x8, x24, x23
     834: f9400509     	ldr	x9, [x8, #0x8]
     838: b4fffc49     	cbz	x9, 0x7c0 <zte_misc_common_callback_get+0x7c>
     83c: f9400528     	ldr	x8, [x9, #0x8]
     840: b4fffc08     	cbz	x8, 0x7c0 <zte_misc_common_callback_get+0x7c>
     844: f9400d21     	ldr	x1, [x9, #0x18]
     848: aa1303e0     	mov	x0, x19
     84c: b85fc110     	ldur	w16, [x8, #-0x4]
     850: 7296dd31     	movk	w17, #0xb6e9
     854: 72a53211     	movk	w17, #0x2990, lsl #16
     858: 6b11021f     	cmp	w16, w17
     85c: 54000040     	b.eq	0x864 <zte_misc_common_callback_get+0x120>
     860: d4304500     	brk	#0x8228
     864: d63f0100     	blr	x8
     868: 2a0003f4     	mov	w20, w0
     86c: 36fffaa0     	tbz	w0, #0x1f, 0x7c0 <zte_misc_common_callback_get+0x7c>
     870: 71000abf     	cmp	w21, #0x2
     874: 540002e2     	b.hs	0x8d0 <zte_misc_common_callback_get+0x18c>
     878: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2b8
     87c: 91000000     	add	x0, x0, #0x0
		000000000000087c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2b8
     880: 2a1503e1     	mov	w1, w21
     884: 94000000     	bl	0x884 <zte_misc_common_callback_get+0x140>
		0000000000000884:  R_AARCH64_CALL26	__srcu_read_unlock
     888: d5384108     	mrs	x8, SP_EL0
     88c: f9438908     	ldr	x8, [x8, #0x710]
     890: f85f83a9     	ldur	x9, [x29, #-0x8]
     894: eb09011f     	cmp	x8, x9
     898: 54000341     	b.ne	0x900 <zte_misc_common_callback_get+0x1bc>
     89c: 2a1403e0     	mov	w0, w20
     8a0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     8a4: a94757f6     	ldp	x22, x21, [sp, #0x70]
     8a8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
     8ac: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     8b0: 910243ff     	add	sp, sp, #0x90
     8b4: d50323bf     	autiasp
     8b8: d65f03c0     	ret
     8bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a
     8c0: 91000000     	add	x0, x0, #0x0
		00000000000008c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a
     8c4: 94000000     	bl	0x8c4 <zte_misc_common_callback_get+0x180>
		00000000000008c4:  R_AARCH64_CALL26	_printk
     8c8: 128002b4     	mov	w20, #-0x16             // =-22
     8cc: 17ffffef     	b	0x888 <zte_misc_common_callback_get+0x144>
     8d0: d4210000     	brk	#0x800
     8d4: 17ffffe9     	b	0x878 <zte_misc_common_callback_get+0x134>
     8d8: 52800080     	mov	w0, #0x4                // =4
     8dc: 52800801     	mov	w1, #0x40               // =64
     8e0: 52800822     	mov	w2, #0x41               // =65
     8e4: 94000000     	bl	0x8e4 <zte_misc_common_callback_get+0x1a0>
		00000000000008e4:  R_AARCH64_CALL26	__fortify_panic
     8e8: 91000442     	add	x2, x2, #0x1
     8ec: 14000002     	b	0x8f4 <zte_misc_common_callback_get+0x1b0>
     8f0: 91000402     	add	x2, x0, #0x1
     8f4: 52800040     	mov	w0, #0x2                // =2
     8f8: 52800801     	mov	w1, #0x40               // =64
     8fc: 94000000     	bl	0x8fc <zte_misc_common_callback_get+0x1b8>
		00000000000008fc:  R_AARCH64_CALL26	__fortify_panic
     900: 94000000     	bl	0x900 <zte_misc_common_callback_get+0x1bc>
		0000000000000900:  R_AARCH64_CALL26	__stack_chk_fail
