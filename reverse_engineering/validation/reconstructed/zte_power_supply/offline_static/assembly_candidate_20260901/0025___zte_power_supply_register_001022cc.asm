
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000058c <__zte_power_supply_register>:
     58c: d503233f     	paciasp
     590: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     594: a9015ff8     	stp	x24, x23, [sp, #0x10]
     598: a90257f6     	stp	x22, x21, [sp, #0x20]
     59c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5a0: 910003fd     	mov	x29, sp
     5a4: b4000f20     	cbz	x0, 0x788 <__zte_power_supply_register+0x1fc>
     5a8: b4001181     	cbz	x1, 0x7d8 <__zte_power_supply_register+0x24c>
     5ac: f9400028     	ldr	x8, [x1]
     5b0: b4001148     	cbz	x8, 0x7d8 <__zte_power_supply_register+0x24c>
     5b4: f9401028     	ldr	x8, [x1, #0x20]
     5b8: b4001108     	cbz	x8, 0x7d8 <__zte_power_supply_register+0x24c>
     5bc: f9401429     	ldr	x9, [x1, #0x28]
     5c0: b40010c9     	cbz	x9, 0x7d8 <__zte_power_supply_register+0x24c>
     5c4: aa1f03eb     	mov	x11, xzr
     5c8: 5280002a     	mov	w10, #0x1               // =1
     5cc: 14000005     	b	0x5e0 <__zte_power_supply_register+0x54>
     5d0: 93407d4b     	sxtw	x11, w10
     5d4: 1100054a     	add	w10, w10, #0x1
     5d8: eb0b013f     	cmp	x9, x11
     5dc: 54000129     	b.ls	0x600 <__zte_power_supply_register+0x74>
     5e0: b86b790b     	ldr	w11, [x8, x11, lsl #2]
     5e4: 7100897f     	cmp	w11, #0x22
     5e8: 54ffff41     	b.ne	0x5d0 <__zte_power_supply_register+0x44>
     5ec: f940082b     	ldr	x11, [x1, #0x10]
     5f0: b4000f4b     	cbz	x11, 0x7d8 <__zte_power_supply_register+0x24c>
     5f4: f9400c2b     	ldr	x11, [x1, #0x18]
     5f8: b5fffecb     	cbnz	x11, 0x5d0 <__zte_power_supply_register+0x44>
     5fc: 14000077     	b	0x7d8 <__zte_power_supply_register+0x24c>
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
     628: b4001100     	cbz	x0, 0x848 <__zte_power_supply_register+0x2bc>
     62c: aa0003f4     	mov	x20, x0
     630: 9100e000     	add	x0, x0, #0x38
     634: 94000000     	bl	0x634 <__zte_power_supply_register+0xa8>
		0000000000000634:  R_AARCH64_CALL26	device_initialize
     638: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     63c: aa1403e8     	mov	x8, x20
     640: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000640:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x6b8
     644: 9100014a     	add	x10, x10, #0x0
		0000000000000644:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x6b8
     648: f9400129     	ldr	x9, [x9]
		0000000000000648:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     64c: f9004e97     	str	x23, [x20, #0x98]
     650: f9005a8a     	str	x10, [x20, #0xb0]
     654: f9006a94     	str	x20, [x20, #0xd0]
     658: f901aa89     	str	x9, [x20, #0x350]
     65c: f9000296     	str	x22, [x20]
     660: b4000233     	cbz	x19, 0x6a4 <__zte_power_supply_register+0x118>
     664: a9412a6b     	ldp	x11, x10, [x19, #0x10]
     668: a940266c     	ldp	x12, x9, [x19]
     66c: f901ad0a     	str	x10, [x8, #0x358]
     670: a902ad0c     	stp	x12, x11, [x8, #0x28]
     674: b4000149     	cbz	x9, 0x69c <__zte_power_supply_register+0x110>
     678: b140053f     	cmn	x9, #0x1, lsl #12       // =0x1000
     67c: 54000108     	b.hi	0x69c <__zte_power_supply_register+0x110>
     680: f940052a     	ldr	x10, [x9, #0x8]
     684: 9000000b     	adrp	x11, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     688: 9100016b     	add	x11, x11, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     68c: eb0b015f     	cmp	x10, x11
     690: 54000061     	b.ne	0x69c <__zte_power_supply_register+0x110>
     694: d1006129     	sub	x9, x9, #0x18
     698: f9001509     	str	x9, [x8, #0x28]
     69c: a9422a69     	ldp	x9, x10, [x19, #0x20]
     6a0: a900a909     	stp	x9, x10, [x8, #0x8]
     6a4: f94002c2     	ldr	x2, [x22]
     6a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35b
     6ac: 91000021     	add	x1, x1, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35b
     6b0: 9100e100     	add	x0, x8, #0x38
     6b4: 94000000     	bl	0x6b4 <__zte_power_supply_register+0x128>
		00000000000006b4:  R_AARCH64_CALL26	dev_set_name
     6b8: 2a0003f3     	mov	w19, w0
     6bc: 35000a60     	cbnz	w0, 0x808 <__zte_power_supply_register+0x27c>
     6c0: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     6c4: 910f4289     	add	x9, x20, #0x3d0
     6c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006c8:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     6cc: 91000021     	add	x1, x1, #0x0
		00000000000006cc:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     6d0: f901e688     	str	x8, [x20, #0x3c8]
     6d4: 91102280     	add	x0, x20, #0x408
     6d8: f901ea89     	str	x9, [x20, #0x3d0]
     6dc: 52a00402     	mov	w2, #0x200000           // =2097152
     6e0: aa1f03e3     	mov	x3, xzr
     6e4: f901ee89     	str	x9, [x20, #0x3d8]
     6e8: 90000009     	adrp	x9, 0x0 <.text>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1bf0
     6ec: 91000129     	add	x9, x9, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1bf0
     6f0: f901f688     	str	x8, [x20, #0x3e8]
     6f4: 910fc288     	add	x8, x20, #0x3f0
     6f8: aa1f03e4     	mov	x4, xzr
     6fc: f901f289     	str	x9, [x20, #0x3e0]
     700: f901fa88     	str	x8, [x20, #0x3f0]
     704: f901fe88     	str	x8, [x20, #0x3f8]
     708: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1cb0
     70c: 91000108     	add	x8, x8, #0x0
		000000000000070c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1cb0
     710: f9020288     	str	x8, [x20, #0x400]
     714: 94000000     	bl	0x714 <__zte_power_supply_register+0x188>
		0000000000000714:  R_AARCH64_CALL26	init_timer_key
     718: aa1403e0     	mov	x0, x20
     71c: 9400058f     	bl	0x1d58 <zte_power_supply_check_supplies>
     720: 350006a0     	cbnz	w0, 0x7f4 <__zte_power_supply_register+0x268>
     724: 9100e280     	add	x0, x20, #0x38
     728: b904529f     	str	wzr, [x20, #0x450]
     72c: 94000000     	bl	0x72c <__zte_power_supply_register+0x1a0>
		000000000000072c:  R_AARCH64_CALL26	device_add
     730: 2a0003f3     	mov	w19, w0
     734: 350006a0     	cbnz	w0, 0x808 <__zte_power_supply_register+0x27c>
     738: 9100e280     	add	x0, x20, #0x38
     73c: 120002a1     	and	w1, w21, #0x1
     740: 940005ed     	bl	0x1ef4 <device_init_wakeup>
     744: 2a0003f3     	mov	w19, w0
     748: 35000600     	cbnz	w0, 0x808 <__zte_power_supply_register+0x27c>
     74c: 14000041     	b	0x850 <__zte_power_supply_register+0x2c4>
     750: 91116289     	add	x9, x20, #0x458
     754: 5280002a     	mov	w10, #0x1               // =1
     758: b82a013f     	stadd	w10, [x9]
     75c: aa1403e8     	mov	x8, x20
     760: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	system_power_efficient_wq
     764: 5280002a     	mov	w10, #0x1               // =1
     768: 910fa102     	add	x2, x8, #0x3e8
     76c: f9400121     	ldr	x1, [x9]
		000000000000076c:  R_AARCH64_LDST64_ABS_LO12_NC	system_power_efficient_wq
     770: 52800400     	mov	w0, #0x20               // =32
     774: 52800063     	mov	w3, #0x3                // =3
     778: 3911550a     	strb	w10, [x8, #0x455]
     77c: 94000000     	bl	0x77c <__zte_power_supply_register+0x1f0>
		000000000000077c:  R_AARCH64_CALL26	queue_delayed_work_on
     780: aa1403e0     	mov	x0, x20
     784: 14000016     	b	0x7dc <__zte_power_supply_register+0x250>
     788: aa0003f3     	mov	x19, x0
     78c: aa0203f4     	mov	x20, x2
     790: b50000a1     	cbnz	x1, 0x7a4 <__zte_power_supply_register+0x218>
     794: aa0103f5     	mov	x21, x1
     798: 2a0303f6     	mov	w22, w3
     79c: aa1f03e2     	mov	x2, xzr
     7a0: 14000004     	b	0x7b0 <__zte_power_supply_register+0x224>
     7a4: f9400022     	ldr	x2, [x1]
     7a8: 2a0303f6     	mov	w22, w3
     7ac: aa0103f5     	mov	x21, x1
     7b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b0
     7b4: 91000000     	add	x0, x0, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b0
     7b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c0
     7bc: 91000021     	add	x1, x1, #0x0
		00000000000007bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c0
     7c0: 94000000     	bl	0x7c0 <__zte_power_supply_register+0x234>
		00000000000007c0:  R_AARCH64_CALL26	_printk
     7c4: 2a1603e3     	mov	w3, w22
     7c8: aa1503e1     	mov	x1, x21
     7cc: aa1403e2     	mov	x2, x20
     7d0: aa1303e0     	mov	x0, x19
     7d4: b5ffeec1     	cbnz	x1, 0x5ac <__zte_power_supply_register+0x20>
     7d8: 928002a0     	mov	x0, #-0x16              // =-22
     7dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     7e0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     7e4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     7e8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     7ec: d50323bf     	autiasp
     7f0: d65f03c0     	ret
     7f4: 2a0003f3     	mov	w19, w0
     7f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     7fc: 91000021     	add	x1, x1, #0x0
		00000000000007fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     800: 9100e280     	add	x0, x20, #0x38
     804: 94000000     	bl	0x804 <__zte_power_supply_register+0x278>
		0000000000000804:  R_AARCH64_CALL26	_dev_info
     808: 9100e280     	add	x0, x20, #0x38
     80c: 94000000     	bl	0x80c <__zte_power_supply_register+0x280>
		000000000000080c:  R_AARCH64_CALL26	put_device
     810: 93407e60     	sxtw	x0, w19
     814: 17fffff2     	b	0x7dc <__zte_power_supply_register+0x250>
     818: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     81c: 91000108     	add	x8, x8, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     820: d5384114     	mrs	x20, SP_EL0
     824: f9402a98     	ldr	x24, [x20, #0x50]
     828: f9002a88     	str	x8, [x20, #0x50]
     82c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     830: f9400100     	ldr	x0, [x8]
		0000000000000830:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     834: 5281b801     	mov	w1, #0xdc0              // =3520
     838: 52809802     	mov	w2, #0x4c0              // =1216
     83c: 94000000     	bl	0x83c <__zte_power_supply_register+0x2b0>
		000000000000083c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     840: f9002a98     	str	x24, [x20, #0x50]
     844: b5ffef40     	cbnz	x0, 0x62c <__zte_power_supply_register+0xa0>
     848: 92800160     	mov	x0, #-0xc               // =-12
     84c: 17ffffe4     	b	0x7dc <__zte_power_supply_register+0x250>
     850: 91116289     	add	x9, x20, #0x458
     854: f9800131     	prfm	pstl1strm, [x9]
     858: 885f7d2a     	ldxr	w10, [x9]
     85c: 1100054a     	add	w10, w10, #0x1
     860: 880b7d2a     	stxr	w11, w10, [x9]
     864: 35ffffab     	cbnz	w11, 0x858 <__zte_power_supply_register+0x2cc>
     868: 17ffffbd     	b	0x75c <__zte_power_supply_register+0x1d0>
