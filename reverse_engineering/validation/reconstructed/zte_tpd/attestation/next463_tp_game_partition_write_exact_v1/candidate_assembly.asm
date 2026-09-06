
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025264 <tp_game_partition_write>:
   25264: d503233f     	paciasp
   25268: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   2526c: a90157fc     	stp	x28, x21, [sp, #0x10]
   25270: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25274: 910003fd     	mov	x29, sp
   25278: d11043ff     	sub	sp, sp, #0x410
   2527c: d5384108     	mrs	x8, SP_EL0
   25280: aa0203f3     	mov	x19, x2
   25284: aa0103f5     	mov	x21, x1
   25288: f9438908     	ldr	x8, [x8, #0x710]
   2528c: 90000000     	adrp	x0, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		000000000002528c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12184
   25290: 91000000     	add	x0, x0, #0x0
		0000000000025290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12184
   25294: 90000001     	adrp	x1, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		0000000000025294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f4e
   25298: 91000021     	add	x1, x1, #0x0
		0000000000025298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f4e
   2529c: 52808002     	mov	w2, #0x400              // =1024
   252a0: f81f83a8     	stur	x8, [x29, #-0x8]
   252a4: 90000008     	adrp	x8, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		00000000000252a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   252a8: aa1303e3     	mov	x3, x19
   252ac: f9400114     	ldr	x20, [x8]
		00000000000252ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252b0: 94000000     	bl	0x252b0 <tp_game_partition_write+0x4c>
		00000000000252b0:  R_AARCH64_CALL26	_printk
   252b4: f110067f     	cmp	x19, #0x401
   252b8: 54000083     	b.lo	0x252c8 <tp_game_partition_write+0x64>
   252bc: 90000000     	adrp	x0, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		00000000000252bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1219a
   252c0: 91000000     	add	x0, x0, #0x0
		00000000000252c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1219a
   252c4: 14000027     	b	0x25360 <tp_game_partition_write+0xfc>
   252c8: 910023e0     	add	x0, sp, #0x8
   252cc: 2a1f03e1     	mov	w1, wzr
   252d0: 52808002     	mov	w2, #0x400              // =1024
   252d4: 94000000     	bl	0x252d4 <tp_game_partition_write+0x70>
		00000000000252d4:  R_AARCH64_CALL26	memset
   252d8: 910023e0     	add	x0, sp, #0x8
   252dc: aa1303e1     	mov	x1, x19
   252e0: 2a1f03e2     	mov	w2, wzr
   252e4: 94000000     	bl	0x252e4 <tp_game_partition_write+0x80>
		00000000000252e4:  R_AARCH64_CALL26	__check_object_size
   252e8: 910023e0     	add	x0, sp, #0x8
   252ec: aa1503e1     	mov	x1, x21
   252f0: aa1303e2     	mov	x2, x19
   252f4: 94000000     	bl	0x252f4 <tp_game_partition_write+0x90>
		00000000000252f4:  R_AARCH64_CALL26	_inline_copy_from_user
   252f8: b5000300     	cbnz	x0, 0x25358 <tp_game_partition_write+0xf4>
   252fc: f947aa88     	ldr	x8, [x20, #0xf50]
   25300: 910023e1     	add	x1, sp, #0x8
   25304: aa1403e0     	mov	x0, x20
   25308: b85fc110     	ldur	w16, [x8, #-0x4]
   2530c: 728bf651     	movk	w17, #0x5fb2
   25310: 72ac9e51     	movk	w17, #0x64f2, lsl #16
   25314: 6b11021f     	cmp	w16, w17
   25318: 54000040     	b.eq	0x25320 <tp_game_partition_write+0xbc>
   2531c: d4304500     	brk	#0x8228
   25320: d63f0100     	blr	x8
   25324: 90000002     	adrp	x2, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		0000000000025324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f4a
   25328: 91000042     	add	x2, x2, #0x0
		0000000000025328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f4a
   2532c: 91010680     	add	x0, x20, #0x41
   25330: 910023e3     	add	x3, sp, #0x8
   25334: 52808001     	mov	w1, #0x400              // =1024
   25338: 94000000     	bl	0x25338 <tp_game_partition_write+0xd4>
		0000000000025338:  R_AARCH64_CALL26	snprintf
   2533c: 90000000     	adrp	x0, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		000000000002533c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ece
   25340: 91000000     	add	x0, x0, #0x0
		0000000000025340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ece
   25344: 90000001     	adrp	x1, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		0000000000025344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f4e
   25348: 91000021     	add	x1, x1, #0x0
		0000000000025348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f4e
   2534c: 91010682     	add	x2, x20, #0x41
   25350: 94000000     	bl	0x25350 <tp_game_partition_write+0xec>
		0000000000025350:  R_AARCH64_CALL26	_printk
   25354: 14000007     	b	0x25370 <tp_game_partition_write+0x10c>
   25358: 90000000     	adrp	x0, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		0000000000025358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1203e
   2535c: 91000000     	add	x0, x0, #0x0
		000000000002535c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1203e
   25360: 90000001     	adrp	x1, 0x25000 <syna_recovery_game_mode_after_reset+0x14>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f4e
   25364: 91000021     	add	x1, x1, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f4e
   25368: 94000000     	bl	0x25368 <tp_game_partition_write+0x104>
		0000000000025368:  R_AARCH64_CALL26	_printk
   2536c: 928002b3     	mov	x19, #-0x16             // =-22
   25370: d5384108     	mrs	x8, SP_EL0
   25374: f9438908     	ldr	x8, [x8, #0x710]
   25378: f85f83a9     	ldur	x9, [x29, #-0x8]
   2537c: eb09011f     	cmp	x8, x9
   25380: 54000101     	b.ne	0x253a0 <tp_game_partition_write+0x13c>
   25384: aa1303e0     	mov	x0, x19
   25388: 911043ff     	add	sp, sp, #0x410
   2538c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25390: a94157fc     	ldp	x28, x21, [sp, #0x10]
   25394: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25398: d50323bf     	autiasp
   2539c: d65f03c0     	ret
   253a0: 94000000     	bl	0x253a0 <tp_game_partition_write+0x13c>
		00000000000253a0:  R_AARCH64_CALL26	__stack_chk_fail
