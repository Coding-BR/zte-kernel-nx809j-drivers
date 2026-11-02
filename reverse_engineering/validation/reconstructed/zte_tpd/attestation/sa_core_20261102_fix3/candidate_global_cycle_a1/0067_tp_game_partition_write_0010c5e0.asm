
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001681c <tp_game_partition_write>:
   1681c: d503233f     	paciasp
   16820: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   16824: a90157fc     	stp	x28, x21, [sp, #0x10]
   16828: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1682c: 910003fd     	mov	x29, sp
   16830: d11043ff     	sub	sp, sp, #0x410
   16834: d5384108     	mrs	x8, SP_EL0
   16838: aa0203f3     	mov	x19, x2
   1683c: aa0103f5     	mov	x21, x1
   16840: f9438908     	ldr	x8, [x8, #0x710]
   16844: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81e4
   16848: 91000000     	add	x0, x0, #0x0
		0000000000016848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81e4
   1684c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001684c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eca
   16850: 91000021     	add	x1, x1, #0x0
		0000000000016850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eca
   16854: 52808002     	mov	w2, #0x400              // =1024
   16858: f81f83a8     	stur	x8, [x29, #-0x8]
   1685c: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001685c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16860: aa1303e3     	mov	x3, x19
   16864: f9400114     	ldr	x20, [x8]
		0000000000016864:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16868: 94000000     	bl	0x16868 <tp_game_partition_write+0x4c>
		0000000000016868:  R_AARCH64_CALL26	_printk
   1686c: f110067f     	cmp	x19, #0x401
   16870: 54000083     	b.lo	0x16880 <tp_game_partition_write+0x64>
   16874: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81fa
   16878: 91000000     	add	x0, x0, #0x0
		0000000000016878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81fa
   1687c: 14000027     	b	0x16918 <tp_game_partition_write+0xfc>
   16880: 910023e0     	add	x0, sp, #0x8
   16884: 2a1f03e1     	mov	w1, wzr
   16888: 52808002     	mov	w2, #0x400              // =1024
   1688c: 94000000     	bl	0x1688c <tp_game_partition_write+0x70>
		000000000001688c:  R_AARCH64_CALL26	memset
   16890: 910023e0     	add	x0, sp, #0x8
   16894: aa1303e1     	mov	x1, x19
   16898: 2a1f03e2     	mov	w2, wzr
   1689c: 94000000     	bl	0x1689c <tp_game_partition_write+0x80>
		000000000001689c:  R_AARCH64_CALL26	__check_object_size
   168a0: 910023e0     	add	x0, sp, #0x8
   168a4: aa1503e1     	mov	x1, x21
   168a8: aa1303e2     	mov	x2, x19
   168ac: 94000000     	bl	0x168ac <tp_game_partition_write+0x90>
		00000000000168ac:  R_AARCH64_CALL26	_inline_copy_from_user
   168b0: b5000300     	cbnz	x0, 0x16910 <tp_game_partition_write+0xf4>
   168b4: f947aa88     	ldr	x8, [x20, #0xf50]
   168b8: 910023e1     	add	x1, sp, #0x8
   168bc: aa1403e0     	mov	x0, x20
   168c0: b85fc110     	ldur	w16, [x8, #-0x4]
   168c4: 728bf651     	movk	w17, #0x5fb2
   168c8: 72ac9e51     	movk	w17, #0x64f2, lsl #16
   168cc: 6b11021f     	cmp	w16, w17
   168d0: 54000040     	b.eq	0x168d8 <tp_game_partition_write+0xbc>
   168d4: d4304500     	brk	#0x8228
   168d8: d63f0100     	blr	x8
   168dc: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000168dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec6
   168e0: 91000042     	add	x2, x2, #0x0
		00000000000168e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec6
   168e4: 91010680     	add	x0, x20, #0x41
   168e8: 910023e3     	add	x3, sp, #0x8
   168ec: 52808001     	mov	w1, #0x400              // =1024
   168f0: 94000000     	bl	0x168f0 <tp_game_partition_write+0xd4>
		00000000000168f0:  R_AARCH64_CALL26	snprintf
   168f4: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000168f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6
   168f8: 91000000     	add	x0, x0, #0x0
		00000000000168f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6
   168fc: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000168fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eca
   16900: 91000021     	add	x1, x1, #0x0
		0000000000016900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eca
   16904: 91010682     	add	x2, x20, #0x41
   16908: 94000000     	bl	0x16908 <tp_game_partition_write+0xec>
		0000000000016908:  R_AARCH64_CALL26	_printk
   1690c: 14000007     	b	0x16928 <tp_game_partition_write+0x10c>
   16910: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f30
   16914: 91000000     	add	x0, x0, #0x0
		0000000000016914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f30
   16918: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eca
   1691c: 91000021     	add	x1, x1, #0x0
		000000000001691c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eca
   16920: 94000000     	bl	0x16920 <tp_game_partition_write+0x104>
		0000000000016920:  R_AARCH64_CALL26	_printk
   16924: 928002b3     	mov	x19, #-0x16             // =-22
   16928: d5384108     	mrs	x8, SP_EL0
   1692c: f9438908     	ldr	x8, [x8, #0x710]
   16930: f85f83a9     	ldur	x9, [x29, #-0x8]
   16934: eb09011f     	cmp	x8, x9
   16938: 54000101     	b.ne	0x16958 <tp_game_partition_write+0x13c>
   1693c: aa1303e0     	mov	x0, x19
   16940: 911043ff     	add	sp, sp, #0x410
   16944: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16948: a94157fc     	ldp	x28, x21, [sp, #0x10]
   1694c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16950: d50323bf     	autiasp
   16954: d65f03c0     	ret
   16958: 94000000     	bl	0x16958 <tp_game_partition_write+0x13c>
		0000000000016958:  R_AARCH64_CALL26	__stack_chk_fail
