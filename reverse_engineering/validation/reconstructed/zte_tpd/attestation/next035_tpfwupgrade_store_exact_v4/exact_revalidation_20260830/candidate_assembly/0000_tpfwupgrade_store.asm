
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002516c <tpfwupgrade_store>:
   2516c: d503233f     	paciasp
   25170: d10103ff     	sub	sp, sp, #0x40
   25174: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25178: a90257f6     	stp	x22, x21, [sp, #0x20]
   2517c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   25180: 910043fd     	add	x29, sp, #0x10
   25184: d5384108     	mrs	x8, SP_EL0
   25188: aa0203f3     	mov	x19, x2
   2518c: aa0103e0     	mov	x0, x1
   25190: f9438908     	ldr	x8, [x8, #0x710]
   25194: 910013e3     	add	x3, sp, #0x4
   25198: aa0203e1     	mov	x1, x2
   2519c: 52800142     	mov	w2, #0xa                // =10
   251a0: f90007e8     	str	x8, [sp, #0x8]
   251a4: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		00000000000251a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   251a8: f9400114     	ldr	x20, [x8]
		00000000000251a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   251ac: b90007ff     	str	wzr, [sp, #0x4]
   251b0: 94000000     	bl	0x251b0 <tpfwupgrade_store+0x44>
		00000000000251b0:  R_AARCH64_CALL26	kstrtouint_from_user
   251b4: 340001c0     	cbz	w0, 0x251ec <tpfwupgrade_store+0x80>
   251b8: 928002b3     	mov	x19, #-0x16             // =-22
   251bc: d5384108     	mrs	x8, SP_EL0
   251c0: f9438908     	ldr	x8, [x8, #0x710]
   251c4: f94007e9     	ldr	x9, [sp, #0x8]
   251c8: eb09011f     	cmp	x8, x9
   251cc: 54000ae1     	b.ne	0x25328 <tpfwupgrade_store+0x1bc>
   251d0: aa1303e0     	mov	x0, x19
   251d4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   251d8: a94257f6     	ldp	x22, x21, [sp, #0x20]
   251dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   251e0: 910103ff     	add	sp, sp, #0x40
   251e4: d50323bf     	autiasp
   251e8: d65f03c0     	ret
   251ec: b94007e2     	ldr	w2, [sp, #0x4]
   251f0: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		00000000000251f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
   251f4: 91000000     	add	x0, x0, #0x0
		00000000000251f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
   251f8: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		00000000000251f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1757e
   251fc: 91000021     	add	x1, x1, #0x0
		00000000000251fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1757e
   25200: 94000000     	bl	0x25200 <tpfwupgrade_store+0x94>
		0000000000025200:  R_AARCH64_CALL26	_printk
   25204: 91318280     	add	x0, x20, #0xc60
   25208: 94000000     	bl	0x25208 <tpfwupgrade_store+0x9c>
		0000000000025208:  R_AARCH64_CALL26	mutex_lock
   2520c: b94007e8     	ldr	w8, [sp, #0x4]
   25210: f9462e80     	ldr	x0, [x20, #0xc58]
   25214: 71002d1f     	cmp	w8, #0xb
   25218: 54000443     	b.lo	0x252a0 <tpfwupgrade_store+0x134>
   2521c: b40000e0     	cbz	x0, 0x25238 <tpfwupgrade_store+0xcc>
   25220: f9400408     	ldr	x8, [x0, #0x8]
   25224: b4000088     	cbz	x8, 0x25234 <tpfwupgrade_store+0xc8>
   25228: aa0803e0     	mov	x0, x8
   2522c: 94000000     	bl	0x2522c <tpfwupgrade_store+0xc0>
		000000000002522c:  R_AARCH64_CALL26	vfree
   25230: f9462e80     	ldr	x0, [x20, #0xc58]
   25234: 94000000     	bl	0x25234 <tpfwupgrade_store+0xc8>
		0000000000025234:  R_AARCH64_CALL26	kfree
   25238: b9044a9f     	str	wzr, [x20, #0x448]
   2523c: d503201f     	nop
   25240: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025240:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   25244: 5281b801     	mov	w1, #0xdc0              // =3520
   25248: 52800302     	mov	w2, #0x18               // =24
   2524c: f9400100     	ldr	x0, [x8]
		000000000002524c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   25250: 94000000     	bl	0x25250 <tpfwupgrade_store+0xe4>
		0000000000025250:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   25254: f9062e80     	str	x0, [x20, #0xc58]
   25258: b4000840     	cbz	x0, 0x25360 <tpfwupgrade_store+0x1f4>
   2525c: d503201f     	nop
   25260: b94007e8     	ldr	w8, [sp, #0x4]
   25264: 91006100     	add	x0, x8, #0x18
   25268: 94000000     	bl	0x25268 <tpfwupgrade_store+0xfc>
		0000000000025268:  R_AARCH64_CALL26	vmalloc_noprof
   2526c: f9462e88     	ldr	x8, [x20, #0xc58]
   25270: f9000500     	str	x0, [x8, #0x8]
   25274: f9462e88     	ldr	x8, [x20, #0xc58]
   25278: f9400509     	ldr	x9, [x8, #0x8]
   2527c: b4000489     	cbz	x9, 0x2530c <tpfwupgrade_store+0x1a0>
   25280: b94007e9     	ldr	w9, [sp, #0x4]
   25284: 2a1f03e1     	mov	w1, wzr
   25288: f9000109     	str	x9, [x8]
   2528c: 91006122     	add	x2, x9, #0x18
   25290: f9462e88     	ldr	x8, [x20, #0xc58]
   25294: f9400500     	ldr	x0, [x8, #0x8]
   25298: 94000000     	bl	0x25298 <tpfwupgrade_store+0x12c>
		0000000000025298:  R_AARCH64_CALL26	memset
   2529c: 14000019     	b	0x25300 <tpfwupgrade_store+0x194>
   252a0: b4000300     	cbz	x0, 0x25300 <tpfwupgrade_store+0x194>
   252a4: f9470e88     	ldr	x8, [x20, #0xe18]
   252a8: b4000188     	cbz	x8, 0x252d8 <tpfwupgrade_store+0x16c>
   252ac: aa1403e0     	mov	x0, x20
   252b0: aa1f03e1     	mov	x1, xzr
   252b4: 2a1f03e2     	mov	w2, wzr
   252b8: b85fc110     	ldur	w16, [x8, #-0x4]
   252bc: 728a1491     	movk	w17, #0x50a4
   252c0: 72a9aed1     	movk	w17, #0x4d76, lsl #16
   252c4: 6b11021f     	cmp	w16, w17
   252c8: 54000040     	b.eq	0x252d0 <tpfwupgrade_store+0x164>
   252cc: d4304500     	brk	#0x8228
   252d0: d63f0100     	blr	x8
   252d4: f9462e80     	ldr	x0, [x20, #0xc58]
   252d8: f9400408     	ldr	x8, [x0, #0x8]
   252dc: b40000c8     	cbz	x8, 0x252f4 <tpfwupgrade_store+0x188>
   252e0: aa0803e0     	mov	x0, x8
   252e4: 94000000     	bl	0x252e4 <tpfwupgrade_store+0x178>
		00000000000252e4:  R_AARCH64_CALL26	vfree
   252e8: f9462e88     	ldr	x8, [x20, #0xc58]
   252ec: f900051f     	str	xzr, [x8, #0x8]
   252f0: f9462e80     	ldr	x0, [x20, #0xc58]
   252f4: 94000000     	bl	0x252f4 <tpfwupgrade_store+0x188>
		00000000000252f4:  R_AARCH64_CALL26	kfree
   252f8: f9062e9f     	str	xzr, [x20, #0xc58]
   252fc: b9044a9f     	str	wzr, [x20, #0x448]
   25300: 91318280     	add	x0, x20, #0xc60
   25304: 94000000     	bl	0x25304 <tpfwupgrade_store+0x198>
		0000000000025304:  R_AARCH64_CALL26	mutex_unlock
   25308: 17ffffad     	b	0x251bc <tpfwupgrade_store+0x50>
   2530c: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		000000000002530c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd13
   25310: 91000000     	add	x0, x0, #0x0
		0000000000025310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd13
   25314: 94000000     	bl	0x25314 <tpfwupgrade_store+0x1a8>
		0000000000025314:  R_AARCH64_CALL26	_printk
   25318: f9462e80     	ldr	x0, [x20, #0xc58]
   2531c: 94000000     	bl	0x2531c <tpfwupgrade_store+0x1b0>
		000000000002531c:  R_AARCH64_CALL26	kfree
   25320: 92800173     	mov	x19, #-0xc              // =-12
   25324: 17fffff7     	b	0x25300 <tpfwupgrade_store+0x194>
   25328: 94000000     	bl	0x25328 <tpfwupgrade_store+0x1bc>
		0000000000025328:  R_AARCH64_CALL26	__stack_chk_fail
   2532c: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		000000000002532c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   25330: d5384115     	mrs	x21, SP_EL0
   25334: f9402ab6     	ldr	x22, [x21, #0x50]
   25338: f9400100     	ldr	x0, [x8]
		0000000000025338:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   2533c: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		000000000002533c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf68
   25340: 91000108     	add	x8, x8, #0x0
		0000000000025340:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf68
   25344: 5281b801     	mov	w1, #0xdc0              // =3520
   25348: 52800302     	mov	w2, #0x18               // =24
   2534c: f9002aa8     	str	x8, [x21, #0x50]
   25350: 94000000     	bl	0x25350 <tpfwupgrade_store+0x1e4>
		0000000000025350:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   25354: f9002ab6     	str	x22, [x21, #0x50]
   25358: f9062e80     	str	x0, [x20, #0xc58]
   2535c: b5fff800     	cbnz	x0, 0x2525c <tpfwupgrade_store+0xf0>
   25360: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17852
   25364: 91000000     	add	x0, x0, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17852
   25368: 94000000     	bl	0x25368 <tpfwupgrade_store+0x1fc>
		0000000000025368:  R_AARCH64_CALL26	_printk
   2536c: 92800173     	mov	x19, #-0xc              // =-12
   25370: 17ffffe4     	b	0x25300 <tpfwupgrade_store+0x194>
   25374: b94007e8     	ldr	w8, [sp, #0x4]
   25378: d5384115     	mrs	x21, SP_EL0
   2537c: f9402ab6     	ldr	x22, [x21, #0x50]
   25380: 90000009     	adrp	x9, 0x25000 <tp_glove_read+0x5c>
		0000000000025380:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf90
   25384: 91000129     	add	x9, x9, #0x0
		0000000000025384:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf90
   25388: 91006100     	add	x0, x8, #0x18
   2538c: f9002aa9     	str	x9, [x21, #0x50]
   25390: 94000000     	bl	0x25390 <tpfwupgrade_store+0x224>
		0000000000025390:  R_AARCH64_CALL26	vmalloc_noprof
   25394: f9002ab6     	str	x22, [x21, #0x50]
   25398: 17ffffb5     	b	0x2526c <tpfwupgrade_store+0x100>
