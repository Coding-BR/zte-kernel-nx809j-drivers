
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252cc <tp_game_partition_read>:
   252cc: d503233f     	paciasp
   252d0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   252d4: f9000bfc     	str	x28, [sp, #0x10]
   252d8: a90257f6     	stp	x22, x21, [sp, #0x20]
   252dc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   252e0: 910003fd     	mov	x29, sp
   252e4: d11043ff     	sub	sp, sp, #0x410
   252e8: d5384108     	mrs	x8, SP_EL0
   252ec: aa0203f4     	mov	x20, x2
   252f0: aa0103f5     	mov	x21, x1
   252f4: f9438908     	ldr	x8, [x8, #0x710]
   252f8: 910023e0     	add	x0, sp, #0x8
   252fc: 2a1f03e1     	mov	w1, wzr
   25300: 52808002     	mov	w2, #0x400              // =1024
   25304: aa0303f3     	mov	x19, x3
   25308: f81f83a8     	stur	x8, [x29, #-0x8]
   2530c: 94000000     	bl	0x2530c <tp_game_partition_read+0x40>
		000000000002530c:  R_AARCH64_CALL26	memset
   25310: f9400268     	ldr	x8, [x19]
   25314: b40001c8     	cbz	x8, 0x2534c <tp_game_partition_read+0x80>
   25318: aa1f03e0     	mov	x0, xzr
   2531c: d5384108     	mrs	x8, SP_EL0
   25320: f9438908     	ldr	x8, [x8, #0x710]
   25324: f85f83a9     	ldur	x9, [x29, #-0x8]
   25328: eb09011f     	cmp	x8, x9
   2532c: 540003a1     	b.ne	0x253a0 <tp_game_partition_read+0xd4>
   25330: 911043ff     	add	sp, sp, #0x410
   25334: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   25338: f9400bfc     	ldr	x28, [sp, #0x10]
   2533c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   25340: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   25344: d50323bf     	autiasp
   25348: d65f03c0     	ret
   2534c: 90000008     	adrp	x8, 0x25000 <syna_dev_set_stability_level+0x164>
		000000000002534c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25350: 90000000     	adrp	x0, 0x25000 <syna_dev_set_stability_level+0x164>
		0000000000025350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12400
   25354: 91000000     	add	x0, x0, #0x0
		0000000000025354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12400
   25358: f9400116     	ldr	x22, [x8]
		0000000000025358:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2535c: 90000001     	adrp	x1, 0x25000 <syna_dev_set_stability_level+0x164>
		000000000002535c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12090
   25360: 91000021     	add	x1, x1, #0x0
		0000000000025360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12090
   25364: 910106c2     	add	x2, x22, #0x41
   25368: 94000000     	bl	0x25368 <tp_game_partition_read+0x9c>
		0000000000025368:  R_AARCH64_CALL26	_printk
   2536c: 90000002     	adrp	x2, 0x25000 <syna_dev_set_stability_level+0x164>
		000000000002536c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11fcc
   25370: 91000042     	add	x2, x2, #0x0
		0000000000025370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11fcc
   25374: 910023e0     	add	x0, sp, #0x8
   25378: 910106c3     	add	x3, x22, #0x41
   2537c: 52808001     	mov	w1, #0x400              // =1024
   25380: 94000000     	bl	0x25380 <tp_game_partition_read+0xb4>
		0000000000025380:  R_AARCH64_CALL26	snprintf
   25384: 93407c04     	sxtw	x4, w0
   25388: 910023e3     	add	x3, sp, #0x8
   2538c: aa1403e1     	mov	x1, x20
   25390: aa1503e0     	mov	x0, x21
   25394: aa1303e2     	mov	x2, x19
   25398: 94000000     	bl	0x25398 <tp_game_partition_read+0xcc>
		0000000000025398:  R_AARCH64_CALL26	simple_read_from_buffer
   2539c: 17ffffe0     	b	0x2531c <tp_game_partition_read+0x50>
   253a0: 94000000     	bl	0x253a0 <tp_game_partition_read+0xd4>
		00000000000253a0:  R_AARCH64_CALL26	__stack_chk_fail
