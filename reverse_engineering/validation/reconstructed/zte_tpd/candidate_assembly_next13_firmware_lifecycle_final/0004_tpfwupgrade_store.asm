
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002456c <tpfwupgrade_store>:
   2456c: d503233f     	paciasp
   24570: d10103ff     	sub	sp, sp, #0x40
   24574: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24578: a90257f6     	stp	x22, x21, [sp, #0x20]
   2457c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   24580: 910043fd     	add	x29, sp, #0x10
   24584: d5384108     	mrs	x8, SP_EL0
   24588: aa0203f3     	mov	x19, x2
   2458c: aa0103e0     	mov	x0, x1
   24590: f9438908     	ldr	x8, [x8, #0x710]
   24594: 910013e3     	add	x3, sp, #0x4
   24598: aa0203e1     	mov	x1, x2
   2459c: 52800142     	mov	w2, #0xa                // =10
   245a0: f90007e8     	str	x8, [sp, #0x8]
   245a4: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x434>
		00000000000245a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   245a8: f9400114     	ldr	x20, [x8]
		00000000000245a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   245ac: b90007ff     	str	wzr, [sp, #0x4]
   245b0: 94000000     	bl	0x245b0 <tpfwupgrade_store+0x44>
		00000000000245b0:  R_AARCH64_CALL26	kstrtouint_from_user
   245b4: 340001c0     	cbz	w0, 0x245ec <tpfwupgrade_store+0x80>
   245b8: 928002b3     	mov	x19, #-0x16             // =-22
   245bc: d5384108     	mrs	x8, SP_EL0
   245c0: f9438908     	ldr	x8, [x8, #0x710]
   245c4: f94007e9     	ldr	x9, [sp, #0x8]
   245c8: eb09011f     	cmp	x8, x9
   245cc: 54000ae1     	b.ne	0x24728 <tpfwupgrade_store+0x1bc>
   245d0: aa1303e0     	mov	x0, x19
   245d4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   245d8: a94257f6     	ldp	x22, x21, [sp, #0x20]
   245dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   245e0: 910103ff     	add	sp, sp, #0x40
   245e4: d50323bf     	autiasp
   245e8: d65f03c0     	ret
   245ec: b94007e2     	ldr	w2, [sp, #0x4]
   245f0: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x434>
		00000000000245f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5a
   245f4: 91000000     	add	x0, x0, #0x0
		00000000000245f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5a
   245f8: 90000001     	adrp	x1, 0x24000 <tpd_zlog_record_notify+0x434>
		00000000000245f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fa
   245fc: 91000021     	add	x1, x1, #0x0
		00000000000245fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fa
   24600: 94000000     	bl	0x24600 <tpfwupgrade_store+0x94>
		0000000000024600:  R_AARCH64_CALL26	_printk
   24604: 91318280     	add	x0, x20, #0xc60
   24608: 94000000     	bl	0x24608 <tpfwupgrade_store+0x9c>
		0000000000024608:  R_AARCH64_CALL26	mutex_lock
   2460c: b94007e8     	ldr	w8, [sp, #0x4]
   24610: f9462e80     	ldr	x0, [x20, #0xc58]
   24614: 71002d1f     	cmp	w8, #0xb
   24618: 54000443     	b.lo	0x246a0 <tpfwupgrade_store+0x134>
   2461c: b40000e0     	cbz	x0, 0x24638 <tpfwupgrade_store+0xcc>
   24620: f9400408     	ldr	x8, [x0, #0x8]
   24624: b4000088     	cbz	x8, 0x24634 <tpfwupgrade_store+0xc8>
   24628: aa0803e0     	mov	x0, x8
   2462c: 94000000     	bl	0x2462c <tpfwupgrade_store+0xc0>
		000000000002462c:  R_AARCH64_CALL26	vfree
   24630: f9462e80     	ldr	x0, [x20, #0xc58]
   24634: 94000000     	bl	0x24634 <tpfwupgrade_store+0xc8>
		0000000000024634:  R_AARCH64_CALL26	kfree
   24638: b9044a9f     	str	wzr, [x20, #0x448]
   2463c: d503201f     	nop
   24640: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x434>
		0000000000024640:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   24644: 5281b801     	mov	w1, #0xdc0              // =3520
   24648: 52800302     	mov	w2, #0x18               // =24
   2464c: f9400100     	ldr	x0, [x8]
		000000000002464c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   24650: 94000000     	bl	0x24650 <tpfwupgrade_store+0xe4>
		0000000000024650:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   24654: f9062e80     	str	x0, [x20, #0xc58]
   24658: b4000840     	cbz	x0, 0x24760 <tpfwupgrade_store+0x1f4>
   2465c: d503201f     	nop
   24660: b94007e8     	ldr	w8, [sp, #0x4]
   24664: 91006100     	add	x0, x8, #0x18
   24668: 94000000     	bl	0x24668 <tpfwupgrade_store+0xfc>
		0000000000024668:  R_AARCH64_CALL26	vmalloc_noprof
   2466c: f9462e88     	ldr	x8, [x20, #0xc58]
   24670: f9000500     	str	x0, [x8, #0x8]
   24674: f9462e88     	ldr	x8, [x20, #0xc58]
   24678: f9400509     	ldr	x9, [x8, #0x8]
   2467c: b4000489     	cbz	x9, 0x2470c <tpfwupgrade_store+0x1a0>
   24680: b94007e9     	ldr	w9, [sp, #0x4]
   24684: 2a1f03e1     	mov	w1, wzr
   24688: f9000109     	str	x9, [x8]
   2468c: 91006122     	add	x2, x9, #0x18
   24690: f9462e88     	ldr	x8, [x20, #0xc58]
   24694: f9400500     	ldr	x0, [x8, #0x8]
   24698: 94000000     	bl	0x24698 <tpfwupgrade_store+0x12c>
		0000000000024698:  R_AARCH64_CALL26	memset
   2469c: 14000019     	b	0x24700 <tpfwupgrade_store+0x194>
   246a0: b4000300     	cbz	x0, 0x24700 <tpfwupgrade_store+0x194>
   246a4: f9470e88     	ldr	x8, [x20, #0xe18]
   246a8: b4000188     	cbz	x8, 0x246d8 <tpfwupgrade_store+0x16c>
   246ac: aa1403e0     	mov	x0, x20
   246b0: aa1f03e1     	mov	x1, xzr
   246b4: 2a1f03e2     	mov	w2, wzr
   246b8: b85fc110     	ldur	w16, [x8, #-0x4]
   246bc: 728a1491     	movk	w17, #0x50a4
   246c0: 72a9aed1     	movk	w17, #0x4d76, lsl #16
   246c4: 6b11021f     	cmp	w16, w17
   246c8: 54000040     	b.eq	0x246d0 <tpfwupgrade_store+0x164>
   246cc: d4304500     	brk	#0x8228
   246d0: d63f0100     	blr	x8
   246d4: f9462e80     	ldr	x0, [x20, #0xc58]
   246d8: f9400408     	ldr	x8, [x0, #0x8]
   246dc: b40000c8     	cbz	x8, 0x246f4 <tpfwupgrade_store+0x188>
   246e0: aa0803e0     	mov	x0, x8
   246e4: 94000000     	bl	0x246e4 <tpfwupgrade_store+0x178>
		00000000000246e4:  R_AARCH64_CALL26	vfree
   246e8: f9462e88     	ldr	x8, [x20, #0xc58]
   246ec: f900051f     	str	xzr, [x8, #0x8]
   246f0: f9462e80     	ldr	x0, [x20, #0xc58]
   246f4: 94000000     	bl	0x246f4 <tpfwupgrade_store+0x188>
		00000000000246f4:  R_AARCH64_CALL26	kfree
   246f8: f9062e9f     	str	xzr, [x20, #0xc58]
   246fc: b9044a9f     	str	wzr, [x20, #0x448]
   24700: 91318280     	add	x0, x20, #0xc60
   24704: 94000000     	bl	0x24704 <tpfwupgrade_store+0x198>
		0000000000024704:  R_AARCH64_CALL26	mutex_unlock
   24708: 17ffffad     	b	0x245bc <tpfwupgrade_store+0x50>
   2470c: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x434>
		000000000002470c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e7d
   24710: 91000000     	add	x0, x0, #0x0
		0000000000024710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e7d
   24714: 94000000     	bl	0x24714 <tpfwupgrade_store+0x1a8>
		0000000000024714:  R_AARCH64_CALL26	_printk
   24718: f9462e80     	ldr	x0, [x20, #0xc58]
   2471c: 94000000     	bl	0x2471c <tpfwupgrade_store+0x1b0>
		000000000002471c:  R_AARCH64_CALL26	kfree
   24720: 92800173     	mov	x19, #-0xc              // =-12
   24724: 17fffff7     	b	0x24700 <tpfwupgrade_store+0x194>
   24728: 94000000     	bl	0x24728 <tpfwupgrade_store+0x1bc>
		0000000000024728:  R_AARCH64_CALL26	__stack_chk_fail
   2472c: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x434>
		000000000002472c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
   24730: d5384115     	mrs	x21, SP_EL0
   24734: f9402ab6     	ldr	x22, [x21, #0x50]
   24738: f9400100     	ldr	x0, [x8]
		0000000000024738:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
   2473c: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x434>
		000000000002473c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2d0
   24740: 91000108     	add	x8, x8, #0x0
		0000000000024740:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2d0
   24744: 5281b801     	mov	w1, #0xdc0              // =3520
   24748: 52800302     	mov	w2, #0x18               // =24
   2474c: f9002aa8     	str	x8, [x21, #0x50]
   24750: 94000000     	bl	0x24750 <tpfwupgrade_store+0x1e4>
		0000000000024750:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   24754: f9002ab6     	str	x22, [x21, #0x50]
   24758: f9062e80     	str	x0, [x20, #0xc58]
   2475c: b5fff800     	cbnz	x0, 0x2465c <tpfwupgrade_store+0xf0>
   24760: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x434>
		0000000000024760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x864
   24764: 91000000     	add	x0, x0, #0x0
		0000000000024764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x864
   24768: 94000000     	bl	0x24768 <tpfwupgrade_store+0x1fc>
		0000000000024768:  R_AARCH64_CALL26	_printk
   2476c: 92800173     	mov	x19, #-0xc              // =-12
   24770: 17ffffe4     	b	0x24700 <tpfwupgrade_store+0x194>
   24774: b94007e8     	ldr	w8, [sp, #0x4]
   24778: d5384115     	mrs	x21, SP_EL0
   2477c: f9402ab6     	ldr	x22, [x21, #0x50]
   24780: 90000009     	adrp	x9, 0x24000 <tpd_zlog_record_notify+0x434>
		0000000000024780:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2f8
   24784: 91000129     	add	x9, x9, #0x0
		0000000000024784:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2f8
   24788: 91006100     	add	x0, x8, #0x18
   2478c: f9002aa9     	str	x9, [x21, #0x50]
   24790: 94000000     	bl	0x24790 <tpfwupgrade_store+0x224>
		0000000000024790:  R_AARCH64_CALL26	vmalloc_noprof
   24794: f9002ab6     	str	x22, [x21, #0x50]
   24798: 17ffffb5     	b	0x2466c <tpfwupgrade_store+0x100>
