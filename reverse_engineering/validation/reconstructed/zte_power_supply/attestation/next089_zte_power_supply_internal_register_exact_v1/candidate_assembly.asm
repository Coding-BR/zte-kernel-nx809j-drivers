
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000058c <__zte_power_supply_register>:
     58c: d503233f     	paciasp
     590: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     594: a9015ff8     	stp	x24, x23, [sp, #0x10]
     598: a90257f6     	stp	x22, x21, [sp, #0x20]
     59c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5a0: 910003fd     	mov	x29, sp
     5a4: b4000780     	cbz	x0, 0x694 <__zte_power_supply_register+0x108>
     5a8: b40009a1     	cbz	x1, 0x6dc <__zte_power_supply_register+0x150>
     5ac: f9400028     	ldr	x8, [x1]
     5b0: b4000968     	cbz	x8, 0x6dc <__zte_power_supply_register+0x150>
     5b4: f9401028     	ldr	x8, [x1, #0x20]
     5b8: b4000928     	cbz	x8, 0x6dc <__zte_power_supply_register+0x150>
     5bc: f9401429     	ldr	x9, [x1, #0x28]
     5c0: b40008e9     	cbz	x9, 0x6dc <__zte_power_supply_register+0x150>
     5c4: aa1f03eb     	mov	x11, xzr
     5c8: 5280002a     	mov	w10, #0x1               // =1
     5cc: 14000005     	b	0x5e0 <__zte_power_supply_register+0x54>
     5d0: 93407d4b     	sxtw	x11, w10
     5d4: 1100054a     	add	w10, w10, #0x1
     5d8: eb0b013f     	cmp	x9, x11
     5dc: 54000129     	b.ls	0x600 <__zte_power_supply_register+0x74>
     5e0: b86b790b     	ldr	w11, [x8, x11, lsl #2]
     5e4: 7101057f     	cmp	w11, #0x41
     5e8: 54ffff41     	b.ne	0x5d0 <__zte_power_supply_register+0x44>
     5ec: f940082b     	ldr	x11, [x1, #0x10]
     5f0: b400076b     	cbz	x11, 0x6dc <__zte_power_supply_register+0x150>
     5f4: f9400c2b     	ldr	x11, [x1, #0x18]
     5f8: b5fffecb     	cbnz	x11, 0x5d0 <__zte_power_supply_register+0x44>
     5fc: 14000038     	b	0x6dc <__zte_power_supply_register+0x150>
     600: aa0003f7     	mov	x23, x0
     604: aa0203f3     	mov	x19, x2
     608: aa0103f6     	mov	x22, x1
     60c: 2a0303f5     	mov	w21, w3
     610: d503201f     	nop
     614: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000614:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     618: 5281b801     	mov	w1, #0xdc0              // =3520
     61c: 52809802     	mov	w2, #0x4c0              // =1216
     620: f9400100     	ldr	x0, [x8]
		0000000000000620:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     624: 94000000     	bl	0x624 <__zte_power_supply_register+0x98>
		0000000000000624:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     628: b40011a0     	cbz	x0, 0x85c <__zte_power_supply_register+0x2d0>
     62c: aa0003f4     	mov	x20, x0
     630: 9100e000     	add	x0, x0, #0x38
     634: 94000000     	bl	0x634 <__zte_power_supply_register+0xa8>
		0000000000000634:  R_AARCH64_CALL26	device_initialize
     638: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     63c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xb8
     640: 9100014a     	add	x10, x10, #0x0
		0000000000000640:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xb8
     644: f9400129     	ldr	x9, [x9]
		0000000000000644:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     648: aa1403e8     	mov	x8, x20
     64c: f9005a8a     	str	x10, [x20, #0xb0]
     650: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13c0
     654: 9100014a     	add	x10, x10, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13c0
     658: f9004e97     	str	x23, [x20, #0x98]
     65c: f901b28a     	str	x10, [x20, #0x360]
     660: f901aa89     	str	x9, [x20, #0x350]
     664: f9006a94     	str	x20, [x20, #0xd0]
     668: f9000296     	str	x22, [x20]
     66c: b40005d3     	cbz	x19, 0x724 <__zte_power_supply_register+0x198>
     670: a9412a6b     	ldp	x11, x10, [x19, #0x10]
     674: f9400669     	ldr	x9, [x19, #0x8]
     678: f901ad0a     	str	x10, [x8, #0x358]
     67c: f900190b     	str	x11, [x8, #0x30]
     680: b40003c9     	cbz	x9, 0x6f8 <__zte_power_supply_register+0x16c>
     684: b140053f     	cmn	x9, #0x1, lsl #12       // =0x1000
     688: 540003c9     	b.ls	0x700 <__zte_power_supply_register+0x174>
     68c: aa1f03e9     	mov	x9, xzr
     690: 14000022     	b	0x718 <__zte_power_supply_register+0x18c>
     694: f9400028     	ldr	x8, [x1]
     698: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33b
     69c: 91000129     	add	x9, x9, #0x0
		000000000000069c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33b
     6a0: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45c
     6a4: 9100014a     	add	x10, x10, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45c
     6a8: aa0003f3     	mov	x19, x0
     6ac: aa0903e0     	mov	x0, x9
     6b0: aa0103f4     	mov	x20, x1
     6b4: aa0a03e1     	mov	x1, x10
     6b8: aa0203f5     	mov	x21, x2
     6bc: aa0803e2     	mov	x2, x8
     6c0: 2a0303f6     	mov	w22, w3
     6c4: 94000000     	bl	0x6c4 <__zte_power_supply_register+0x138>
		00000000000006c4:  R_AARCH64_CALL26	_printk
     6c8: aa1303e0     	mov	x0, x19
     6cc: aa1503e2     	mov	x2, x21
     6d0: aa1403e1     	mov	x1, x20
     6d4: 2a1603e3     	mov	w3, w22
     6d8: b5fff6a1     	cbnz	x1, 0x5ac <__zte_power_supply_register+0x20>
     6dc: 928002a0     	mov	x0, #-0x16              // =-22
     6e0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     6e4: a94257f6     	ldp	x22, x21, [sp, #0x20]
     6e8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     6ec: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     6f0: d50323bf     	autiasp
     6f4: d65f03c0     	ret
     6f8: f9400269     	ldr	x9, [x19]
     6fc: 14000007     	b	0x718 <__zte_power_supply_register+0x18c>
     700: f940052a     	ldr	x10, [x9, #0x8]
     704: 9000000b     	adrp	x11, 0x0 <.text>
		0000000000000704:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     708: 9100016b     	add	x11, x11, #0x0
		0000000000000708:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     70c: d1006129     	sub	x9, x9, #0x18
     710: eb0b015f     	cmp	x10, x11
     714: 9a9f0129     	csel	x9, x9, xzr, eq
     718: f9001509     	str	x9, [x8, #0x28]
     71c: a942266a     	ldp	x10, x9, [x19, #0x20]
     720: a900a50a     	stp	x10, x9, [x8, #0x8]
     724: f94002c2     	ldr	x2, [x22]
     728: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d9
     72c: 91000021     	add	x1, x1, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d9
     730: 9100e100     	add	x0, x8, #0x38
     734: 94000000     	bl	0x734 <__zte_power_supply_register+0x1a8>
		0000000000000734:  R_AARCH64_CALL26	dev_set_name
     738: 2a0003f3     	mov	w19, w0
     73c: 35000700     	cbnz	w0, 0x81c <__zte_power_supply_register+0x290>
     740: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     744: 910f4289     	add	x9, x20, #0x3d0
     748: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000748:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     74c: 91000021     	add	x1, x1, #0x0
		000000000000074c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     750: f901e688     	str	x8, [x20, #0x3c8]
     754: 91102280     	add	x0, x20, #0x408
     758: f901ea89     	str	x9, [x20, #0x3d0]
     75c: 52a00402     	mov	w2, #0x200000           // =2097152
     760: aa1f03e3     	mov	x3, xzr
     764: f901ee89     	str	x9, [x20, #0x3d8]
     768: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000768:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13e4
     76c: 91000129     	add	x9, x9, #0x0
		000000000000076c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13e4
     770: f901f688     	str	x8, [x20, #0x3e8]
     774: 910fc288     	add	x8, x20, #0x3f0
     778: aa1f03e4     	mov	x4, xzr
     77c: f901f289     	str	x9, [x20, #0x3e0]
     780: f901fa88     	str	x8, [x20, #0x3f0]
     784: f901fe88     	str	x8, [x20, #0x3f8]
     788: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x14a4
     78c: 91000108     	add	x8, x8, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x14a4
     790: f9020288     	str	x8, [x20, #0x400]
     794: 94000000     	bl	0x794 <__zte_power_supply_register+0x208>
		0000000000000794:  R_AARCH64_CALL26	init_timer_key
     798: aa1403e0     	mov	x0, x20
     79c: 9400036c     	bl	0x154c <zte_power_supply_check_supplies>
     7a0: 35000340     	cbnz	w0, 0x808 <__zte_power_supply_register+0x27c>
     7a4: 9100e280     	add	x0, x20, #0x38
     7a8: b904529f     	str	wzr, [x20, #0x450]
     7ac: 94000000     	bl	0x7ac <__zte_power_supply_register+0x220>
		00000000000007ac:  R_AARCH64_CALL26	device_add
     7b0: 2a0003f3     	mov	w19, w0
     7b4: 35000340     	cbnz	w0, 0x81c <__zte_power_supply_register+0x290>
     7b8: 9100e280     	add	x0, x20, #0x38
     7bc: 120002a1     	and	w1, w21, #0x1
     7c0: 940003ca     	bl	0x16e8 <device_init_wakeup>
     7c4: 2a0003f3     	mov	w19, w0
     7c8: 350002a0     	cbnz	w0, 0x81c <__zte_power_supply_register+0x290>
     7cc: 14000026     	b	0x864 <__zte_power_supply_register+0x2d8>
     7d0: 91116289     	add	x9, x20, #0x458
     7d4: 5280002a     	mov	w10, #0x1               // =1
     7d8: b82a013f     	stadd	w10, [x9]
     7dc: aa1403e8     	mov	x8, x20
     7e0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000007e0:  R_AARCH64_ADR_PREL_PG_HI21	system_power_efficient_wq
     7e4: 5280002a     	mov	w10, #0x1               // =1
     7e8: 910fa102     	add	x2, x8, #0x3e8
     7ec: f9400121     	ldr	x1, [x9]
		00000000000007ec:  R_AARCH64_LDST64_ABS_LO12_NC	system_power_efficient_wq
     7f0: 52800400     	mov	w0, #0x20               // =32
     7f4: 52800063     	mov	w3, #0x3                // =3
     7f8: 3911550a     	strb	w10, [x8, #0x455]
     7fc: 94000000     	bl	0x7fc <__zte_power_supply_register+0x270>
		00000000000007fc:  R_AARCH64_CALL26	queue_delayed_work_on
     800: aa1403e0     	mov	x0, x20
     804: 17ffffb7     	b	0x6e0 <__zte_power_supply_register+0x154>
     808: 2a0003f3     	mov	w19, w0
     80c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000080c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     810: 91000021     	add	x1, x1, #0x0
		0000000000000810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     814: 9100e280     	add	x0, x20, #0x38
     818: 94000000     	bl	0x818 <__zte_power_supply_register+0x28c>
		0000000000000818:  R_AARCH64_CALL26	_dev_info
     81c: 9100e280     	add	x0, x20, #0x38
     820: 94000000     	bl	0x820 <__zte_power_supply_register+0x294>
		0000000000000820:  R_AARCH64_CALL26	put_device
     824: 93407e60     	sxtw	x0, w19
     828: 17ffffae     	b	0x6e0 <__zte_power_supply_register+0x154>
     82c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     830: 91000108     	add	x8, x8, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     834: d5384114     	mrs	x20, SP_EL0
     838: f9402a98     	ldr	x24, [x20, #0x50]
     83c: f9002a88     	str	x8, [x20, #0x50]
     840: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000840:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     844: f9400100     	ldr	x0, [x8]
		0000000000000844:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     848: 5281b801     	mov	w1, #0xdc0              // =3520
     84c: 52809802     	mov	w2, #0x4c0              // =1216
     850: 94000000     	bl	0x850 <__zte_power_supply_register+0x2c4>
		0000000000000850:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     854: f9002a98     	str	x24, [x20, #0x50]
     858: b5ffeea0     	cbnz	x0, 0x62c <__zte_power_supply_register+0xa0>
     85c: 92800160     	mov	x0, #-0xc               // =-12
     860: 17ffffa0     	b	0x6e0 <__zte_power_supply_register+0x154>
     864: 91116289     	add	x9, x20, #0x458
     868: f9800131     	prfm	pstl1strm, [x9]
     86c: 885f7d2a     	ldxr	w10, [x9]
     870: 1100054a     	add	w10, w10, #0x1
     874: 880b7d2a     	stxr	w11, w10, [x9]
     878: 35ffffab     	cbnz	w11, 0x86c <__zte_power_supply_register+0x2e0>
     87c: 17ffffd8     	b	0x7dc <__zte_power_supply_register+0x250>
