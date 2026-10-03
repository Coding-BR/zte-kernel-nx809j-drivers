
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000167c0 <tp_game_partition_write>:
   167c0: d503233f     	paciasp
   167c4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   167c8: a90157fc     	stp	x28, x21, [sp, #0x10]
   167cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   167d0: 910003fd     	mov	x29, sp
   167d4: d11043ff     	sub	sp, sp, #0x410
   167d8: d5384108     	mrs	x8, SP_EL0
   167dc: aa0203f3     	mov	x19, x2
   167e0: aa0103f5     	mov	x21, x1
   167e4: f9438908     	ldr	x8, [x8, #0x710]
   167e8: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000167e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81e4
   167ec: 91000000     	add	x0, x0, #0x0
		00000000000167ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81e4
   167f0: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000167f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eca
   167f4: 91000021     	add	x1, x1, #0x0
		00000000000167f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eca
   167f8: 52808002     	mov	w2, #0x400              // =1024
   167fc: f81f83a8     	stur	x8, [x29, #-0x8]
   16800: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016800:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16804: aa1303e3     	mov	x3, x19
   16808: f9400114     	ldr	x20, [x8]
		0000000000016808:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1680c: 94000000     	bl	0x1680c <tp_game_partition_write+0x4c>
		000000000001680c:  R_AARCH64_CALL26	_printk
   16810: f110067f     	cmp	x19, #0x401
   16814: 54000083     	b.lo	0x16824 <tp_game_partition_write+0x64>
   16818: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81fa
   1681c: 91000000     	add	x0, x0, #0x0
		000000000001681c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81fa
   16820: 14000027     	b	0x168bc <tp_game_partition_write+0xfc>
   16824: 910023e0     	add	x0, sp, #0x8
   16828: 2a1f03e1     	mov	w1, wzr
   1682c: 52808002     	mov	w2, #0x400              // =1024
   16830: 94000000     	bl	0x16830 <tp_game_partition_write+0x70>
		0000000000016830:  R_AARCH64_CALL26	memset
   16834: 910023e0     	add	x0, sp, #0x8
   16838: aa1303e1     	mov	x1, x19
   1683c: 2a1f03e2     	mov	w2, wzr
   16840: 94000000     	bl	0x16840 <tp_game_partition_write+0x80>
		0000000000016840:  R_AARCH64_CALL26	__check_object_size
   16844: 910023e0     	add	x0, sp, #0x8
   16848: aa1503e1     	mov	x1, x21
   1684c: aa1303e2     	mov	x2, x19
   16850: 94000000     	bl	0x16850 <tp_game_partition_write+0x90>
		0000000000016850:  R_AARCH64_CALL26	_inline_copy_from_user
   16854: b5000300     	cbnz	x0, 0x168b4 <tp_game_partition_write+0xf4>
   16858: f947aa88     	ldr	x8, [x20, #0xf50]
   1685c: 910023e1     	add	x1, sp, #0x8
   16860: aa1403e0     	mov	x0, x20
   16864: b85fc110     	ldur	w16, [x8, #-0x4]
   16868: 728bf651     	movk	w17, #0x5fb2
   1686c: 72ac9e51     	movk	w17, #0x64f2, lsl #16
   16870: 6b11021f     	cmp	w16, w17
   16874: 54000040     	b.eq	0x1687c <tp_game_partition_write+0xbc>
   16878: d4304500     	brk	#0x8228
   1687c: d63f0100     	blr	x8
   16880: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec6
   16884: 91000042     	add	x2, x2, #0x0
		0000000000016884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec6
   16888: 91010680     	add	x0, x20, #0x41
   1688c: 910023e3     	add	x3, sp, #0x8
   16890: 52808001     	mov	w1, #0x400              // =1024
   16894: 94000000     	bl	0x16894 <tp_game_partition_write+0xd4>
		0000000000016894:  R_AARCH64_CALL26	snprintf
   16898: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6
   1689c: 91000000     	add	x0, x0, #0x0
		000000000001689c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6
   168a0: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000168a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eca
   168a4: 91000021     	add	x1, x1, #0x0
		00000000000168a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eca
   168a8: 91010682     	add	x2, x20, #0x41
   168ac: 94000000     	bl	0x168ac <tp_game_partition_write+0xec>
		00000000000168ac:  R_AARCH64_CALL26	_printk
   168b0: 14000007     	b	0x168cc <tp_game_partition_write+0x10c>
   168b4: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000168b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f30
   168b8: 91000000     	add	x0, x0, #0x0
		00000000000168b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f30
   168bc: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		00000000000168bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eca
   168c0: 91000021     	add	x1, x1, #0x0
		00000000000168c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eca
   168c4: 94000000     	bl	0x168c4 <tp_game_partition_write+0x104>
		00000000000168c4:  R_AARCH64_CALL26	_printk
   168c8: 928002b3     	mov	x19, #-0x16             // =-22
   168cc: d5384108     	mrs	x8, SP_EL0
   168d0: f9438908     	ldr	x8, [x8, #0x710]
   168d4: f85f83a9     	ldur	x9, [x29, #-0x8]
   168d8: eb09011f     	cmp	x8, x9
   168dc: 54000101     	b.ne	0x168fc <tp_game_partition_write+0x13c>
   168e0: aa1303e0     	mov	x0, x19
   168e4: 911043ff     	add	sp, sp, #0x410
   168e8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   168ec: a94157fc     	ldp	x28, x21, [sp, #0x10]
   168f0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   168f4: d50323bf     	autiasp
   168f8: d65f03c0     	ret
   168fc: 94000000     	bl	0x168fc <tp_game_partition_write+0x13c>
		00000000000168fc:  R_AARCH64_CALL26	__stack_chk_fail
