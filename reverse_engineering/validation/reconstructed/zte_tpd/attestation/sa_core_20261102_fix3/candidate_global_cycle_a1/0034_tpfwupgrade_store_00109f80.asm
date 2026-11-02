
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000251c8 <tpfwupgrade_store>:
   251c8: d503233f     	paciasp
   251cc: d10103ff     	sub	sp, sp, #0x40
   251d0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   251d4: a90257f6     	stp	x22, x21, [sp, #0x20]
   251d8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   251dc: 910043fd     	add	x29, sp, #0x10
   251e0: d5384108     	mrs	x8, SP_EL0
   251e4: aa0203f3     	mov	x19, x2
   251e8: aa0103e0     	mov	x0, x1
   251ec: f9438908     	ldr	x8, [x8, #0x710]
   251f0: 910013e3     	add	x3, sp, #0x4
   251f4: aa0203e1     	mov	x1, x2
   251f8: 52800142     	mov	w2, #0xa                // =10
   251fc: f90007e8     	str	x8, [sp, #0x8]
   25200: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025200:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25204: f9400114     	ldr	x20, [x8]
		0000000000025204:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25208: b90007ff     	str	wzr, [sp, #0x4]
   2520c: 94000000     	bl	0x2520c <tpfwupgrade_store+0x44>
		000000000002520c:  R_AARCH64_CALL26	kstrtouint_from_user
   25210: 340001c0     	cbz	w0, 0x25248 <tpfwupgrade_store+0x80>
   25214: 928002b3     	mov	x19, #-0x16             // =-22
   25218: d5384108     	mrs	x8, SP_EL0
   2521c: f9438908     	ldr	x8, [x8, #0x710]
   25220: f94007e9     	ldr	x9, [sp, #0x8]
   25224: eb09011f     	cmp	x8, x9
   25228: 54000ae1     	b.ne	0x25384 <tpfwupgrade_store+0x1bc>
   2522c: aa1303e0     	mov	x0, x19
   25230: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   25234: a94257f6     	ldp	x22, x21, [sp, #0x20]
   25238: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   2523c: 910103ff     	add	sp, sp, #0x40
   25240: d50323bf     	autiasp
   25244: d65f03c0     	ret
   25248: b94007e2     	ldr	w2, [sp, #0x4]
   2524c: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		000000000002524c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
   25250: 91000000     	add	x0, x0, #0x0
		0000000000025250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
   25254: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1757e
   25258: 91000021     	add	x1, x1, #0x0
		0000000000025258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1757e
   2525c: 94000000     	bl	0x2525c <tpfwupgrade_store+0x94>
		000000000002525c:  R_AARCH64_CALL26	_printk
   25260: 91318280     	add	x0, x20, #0xc60
   25264: 94000000     	bl	0x25264 <tpfwupgrade_store+0x9c>
		0000000000025264:  R_AARCH64_CALL26	mutex_lock
   25268: b94007e8     	ldr	w8, [sp, #0x4]
   2526c: f9462e80     	ldr	x0, [x20, #0xc58]
   25270: 71002d1f     	cmp	w8, #0xb
   25274: 54000443     	b.lo	0x252fc <tpfwupgrade_store+0x134>
   25278: b40000e0     	cbz	x0, 0x25294 <tpfwupgrade_store+0xcc>
   2527c: f9400408     	ldr	x8, [x0, #0x8]
   25280: b4000088     	cbz	x8, 0x25290 <tpfwupgrade_store+0xc8>
   25284: aa0803e0     	mov	x0, x8
   25288: 94000000     	bl	0x25288 <tpfwupgrade_store+0xc0>
		0000000000025288:  R_AARCH64_CALL26	vfree
   2528c: f9462e80     	ldr	x0, [x20, #0xc58]
   25290: 94000000     	bl	0x25290 <tpfwupgrade_store+0xc8>
		0000000000025290:  R_AARCH64_CALL26	kfree
   25294: b9044a9f     	str	wzr, [x20, #0x448]
   25298: d503201f     	nop
   2529c: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		000000000002529c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   252a0: 5281b801     	mov	w1, #0xdc0              // =3520
   252a4: 52800302     	mov	w2, #0x18               // =24
   252a8: f9400100     	ldr	x0, [x8]
		00000000000252a8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   252ac: 94000000     	bl	0x252ac <tpfwupgrade_store+0xe4>
		00000000000252ac:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   252b0: f9062e80     	str	x0, [x20, #0xc58]
   252b4: b4000840     	cbz	x0, 0x253bc <tpfwupgrade_store+0x1f4>
   252b8: d503201f     	nop
   252bc: b94007e8     	ldr	w8, [sp, #0x4]
   252c0: 91006100     	add	x0, x8, #0x18
   252c4: 94000000     	bl	0x252c4 <tpfwupgrade_store+0xfc>
		00000000000252c4:  R_AARCH64_CALL26	vmalloc_noprof
   252c8: f9462e88     	ldr	x8, [x20, #0xc58]
   252cc: f9000500     	str	x0, [x8, #0x8]
   252d0: f9462e88     	ldr	x8, [x20, #0xc58]
   252d4: f9400509     	ldr	x9, [x8, #0x8]
   252d8: b4000489     	cbz	x9, 0x25368 <tpfwupgrade_store+0x1a0>
   252dc: b94007e9     	ldr	w9, [sp, #0x4]
   252e0: 2a1f03e1     	mov	w1, wzr
   252e4: f9000109     	str	x9, [x8]
   252e8: 91006122     	add	x2, x9, #0x18
   252ec: f9462e88     	ldr	x8, [x20, #0xc58]
   252f0: f9400500     	ldr	x0, [x8, #0x8]
   252f4: 94000000     	bl	0x252f4 <tpfwupgrade_store+0x12c>
		00000000000252f4:  R_AARCH64_CALL26	memset
   252f8: 14000019     	b	0x2535c <tpfwupgrade_store+0x194>
   252fc: b4000300     	cbz	x0, 0x2535c <tpfwupgrade_store+0x194>
   25300: f9470e88     	ldr	x8, [x20, #0xe18]
   25304: b4000188     	cbz	x8, 0x25334 <tpfwupgrade_store+0x16c>
   25308: aa1403e0     	mov	x0, x20
   2530c: aa1f03e1     	mov	x1, xzr
   25310: 2a1f03e2     	mov	w2, wzr
   25314: b85fc110     	ldur	w16, [x8, #-0x4]
   25318: 728a1491     	movk	w17, #0x50a4
   2531c: 72a9aed1     	movk	w17, #0x4d76, lsl #16
   25320: 6b11021f     	cmp	w16, w17
   25324: 54000040     	b.eq	0x2532c <tpfwupgrade_store+0x164>
   25328: d4304500     	brk	#0x8228
   2532c: d63f0100     	blr	x8
   25330: f9462e80     	ldr	x0, [x20, #0xc58]
   25334: f9400408     	ldr	x8, [x0, #0x8]
   25338: b40000c8     	cbz	x8, 0x25350 <tpfwupgrade_store+0x188>
   2533c: aa0803e0     	mov	x0, x8
   25340: 94000000     	bl	0x25340 <tpfwupgrade_store+0x178>
		0000000000025340:  R_AARCH64_CALL26	vfree
   25344: f9462e88     	ldr	x8, [x20, #0xc58]
   25348: f900051f     	str	xzr, [x8, #0x8]
   2534c: f9462e80     	ldr	x0, [x20, #0xc58]
   25350: 94000000     	bl	0x25350 <tpfwupgrade_store+0x188>
		0000000000025350:  R_AARCH64_CALL26	kfree
   25354: f9062e9f     	str	xzr, [x20, #0xc58]
   25358: b9044a9f     	str	wzr, [x20, #0x448]
   2535c: 91318280     	add	x0, x20, #0xc60
   25360: 94000000     	bl	0x25360 <tpfwupgrade_store+0x198>
		0000000000025360:  R_AARCH64_CALL26	mutex_unlock
   25364: 17ffffad     	b	0x25218 <tpfwupgrade_store+0x50>
   25368: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd13
   2536c: 91000000     	add	x0, x0, #0x0
		000000000002536c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd13
   25370: 94000000     	bl	0x25370 <tpfwupgrade_store+0x1a8>
		0000000000025370:  R_AARCH64_CALL26	_printk
   25374: f9462e80     	ldr	x0, [x20, #0xc58]
   25378: 94000000     	bl	0x25378 <tpfwupgrade_store+0x1b0>
		0000000000025378:  R_AARCH64_CALL26	kfree
   2537c: 92800173     	mov	x19, #-0xc              // =-12
   25380: 17fffff7     	b	0x2535c <tpfwupgrade_store+0x194>
   25384: 94000000     	bl	0x25384 <tpfwupgrade_store+0x1bc>
		0000000000025384:  R_AARCH64_CALL26	__stack_chk_fail
   25388: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025388:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   2538c: d5384115     	mrs	x21, SP_EL0
   25390: f9402ab6     	ldr	x22, [x21, #0x50]
   25394: f9400100     	ldr	x0, [x8]
		0000000000025394:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   25398: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025398:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf68
   2539c: 91000108     	add	x8, x8, #0x0
		000000000002539c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf68
   253a0: 5281b801     	mov	w1, #0xdc0              // =3520
   253a4: 52800302     	mov	w2, #0x18               // =24
   253a8: f9002aa8     	str	x8, [x21, #0x50]
   253ac: 94000000     	bl	0x253ac <tpfwupgrade_store+0x1e4>
		00000000000253ac:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   253b0: f9002ab6     	str	x22, [x21, #0x50]
   253b4: f9062e80     	str	x0, [x20, #0xc58]
   253b8: b5fff800     	cbnz	x0, 0x252b8 <tpfwupgrade_store+0xf0>
   253bc: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		00000000000253bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17852
   253c0: 91000000     	add	x0, x0, #0x0
		00000000000253c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17852
   253c4: 94000000     	bl	0x253c4 <tpfwupgrade_store+0x1fc>
		00000000000253c4:  R_AARCH64_CALL26	_printk
   253c8: 92800173     	mov	x19, #-0xc              // =-12
   253cc: 17ffffe4     	b	0x2535c <tpfwupgrade_store+0x194>
   253d0: b94007e8     	ldr	w8, [sp, #0x4]
   253d4: d5384115     	mrs	x21, SP_EL0
   253d8: f9402ab6     	ldr	x22, [x21, #0x50]
   253dc: 90000009     	adrp	x9, 0x25000 <tp_glove_read>
		00000000000253dc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf90
   253e0: 91000129     	add	x9, x9, #0x0
		00000000000253e0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf90
   253e4: 91006100     	add	x0, x8, #0x18
   253e8: f9002aa9     	str	x9, [x21, #0x50]
   253ec: 94000000     	bl	0x253ec <tpfwupgrade_store+0x224>
		00000000000253ec:  R_AARCH64_CALL26	vmalloc_noprof
   253f0: f9002ab6     	str	x22, [x21, #0x50]
   253f4: 17ffffb5     	b	0x252c8 <tpfwupgrade_store+0x100>
