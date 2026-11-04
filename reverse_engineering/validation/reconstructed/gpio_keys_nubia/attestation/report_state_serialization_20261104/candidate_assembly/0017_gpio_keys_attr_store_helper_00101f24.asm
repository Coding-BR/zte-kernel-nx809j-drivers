
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000588 <gpio_keys_attr_store_helper>:
     588: 121d7848     	and	w8, w2, #0xfffffffb
     58c: 7100051f     	cmp	w8, #0x1
     590: 540018a1     	b.ne	0x8a4 <gpio_keys_attr_store_helper+0x31c>
     594: d503233f     	paciasp
     598: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     59c: f9000bf9     	str	x25, [sp, #0x10]
     5a0: a9025ff8     	stp	x24, x23, [sp, #0x20]
     5a4: a90357f6     	stp	x22, x21, [sp, #0x30]
     5a8: a9044ff4     	stp	x20, x19, [sp, #0x40]
     5ac: 910003fd     	mov	x29, sp
     5b0: 7100045f     	cmp	w2, #0x1
     5b4: 52800228     	mov	w8, #0x11               // =17
     5b8: 52806009     	mov	w9, #0x300              // =768
     5bc: 1a880136     	csel	w22, w9, w8, eq
     5c0: aa0103f7     	mov	x23, x1
     5c4: aa0003f5     	mov	x21, x0
     5c8: f9400418     	ldr	x24, [x0, #0x8]
     5cc: 5280190a     	mov	w10, #0xc8              // =200
     5d0: 5280060b     	mov	w11, #0x30              // =48
     5d4: 2a1603e0     	mov	w0, w22
     5d8: 52819801     	mov	w1, #0xcc0              // =3264
     5dc: 2a0203f4     	mov	w20, w2
     5e0: 9a8a0179     	csel	x25, x11, x10, eq
     5e4: 94000000     	bl	0x5e4 <gpio_keys_attr_store_helper+0x5c>
		00000000000005e4:  R_AARCH64_CALL26	bitmap_zalloc
     5e8: b4000120     	cbz	x0, 0x60c <gpio_keys_attr_store_helper+0x84>
     5ec: aa0003f3     	mov	x19, x0
     5f0: aa1703e0     	mov	x0, x23
     5f4: 2a1603e2     	mov	w2, w22
     5f8: aa1303e1     	mov	x1, x19
     5fc: 94000000     	bl	0x5fc <gpio_keys_attr_store_helper+0x74>
		00000000000005fc:  R_AARCH64_CALL26	bitmap_parselist
     600: 340000a0     	cbz	w0, 0x614 <gpio_keys_attr_store_helper+0x8c>
     604: 93407c14     	sxtw	x20, w0
     608: 14000045     	b	0x71c <gpio_keys_attr_store_helper+0x194>
     60c: 92800174     	mov	x20, #-0xc              // =-12
     610: 14000045     	b	0x724 <gpio_keys_attr_store_helper+0x19c>
     614: 7100069f     	cmp	w20, #0x1
     618: 8b190308     	add	x8, x24, x25
     61c: 54000661     	b.ne	0x6e8 <gpio_keys_attr_store_helper+0x160>
     620: f9400269     	ldr	x9, [x19]
     624: f940010a     	ldr	x10, [x8]
     628: ea2a013f     	bics	xzr, x9, x10
     62c: 54000761     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     630: f9400669     	ldr	x9, [x19, #0x8]
     634: f940050a     	ldr	x10, [x8, #0x8]
     638: ea2a013f     	bics	xzr, x9, x10
     63c: 540006e1     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     640: f9400a69     	ldr	x9, [x19, #0x10]
     644: f940090a     	ldr	x10, [x8, #0x10]
     648: ea2a013f     	bics	xzr, x9, x10
     64c: 54000661     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     650: f9400e69     	ldr	x9, [x19, #0x18]
     654: f9400d0a     	ldr	x10, [x8, #0x18]
     658: ea2a013f     	bics	xzr, x9, x10
     65c: 540005e1     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     660: f9401269     	ldr	x9, [x19, #0x20]
     664: f940110a     	ldr	x10, [x8, #0x20]
     668: ea2a013f     	bics	xzr, x9, x10
     66c: 54000561     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     670: f9401669     	ldr	x9, [x19, #0x28]
     674: f940150a     	ldr	x10, [x8, #0x28]
     678: ea2a013f     	bics	xzr, x9, x10
     67c: 540004e1     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     680: f9401a69     	ldr	x9, [x19, #0x30]
     684: f940190a     	ldr	x10, [x8, #0x30]
     688: ea2a013f     	bics	xzr, x9, x10
     68c: 54000461     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     690: f9401e69     	ldr	x9, [x19, #0x38]
     694: f9401d0a     	ldr	x10, [x8, #0x38]
     698: ea2a013f     	bics	xzr, x9, x10
     69c: 540003e1     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     6a0: f9402269     	ldr	x9, [x19, #0x40]
     6a4: f940210a     	ldr	x10, [x8, #0x40]
     6a8: ea2a013f     	bics	xzr, x9, x10
     6ac: 54000361     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     6b0: f9402669     	ldr	x9, [x19, #0x48]
     6b4: f940250a     	ldr	x10, [x8, #0x48]
     6b8: ea2a013f     	bics	xzr, x9, x10
     6bc: 540002e1     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     6c0: f9402a69     	ldr	x9, [x19, #0x50]
     6c4: f940290a     	ldr	x10, [x8, #0x50]
     6c8: ea2a013f     	bics	xzr, x9, x10
     6cc: 54000261     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     6d0: f9402e69     	ldr	x9, [x19, #0x58]
     6d4: f9402d0a     	ldr	x10, [x8, #0x58]
     6d8: ea2a013f     	bics	xzr, x9, x10
     6dc: 540001e1     	b.ne	0x718 <gpio_keys_attr_store_helper+0x190>
     6e0: 52800189     	mov	w9, #0xc                // =12
     6e4: 14000002     	b	0x6ec <gpio_keys_attr_store_helper+0x164>
     6e8: aa1f03e9     	mov	x9, xzr
     6ec: 5280022a     	mov	w10, #0x11              // =17
     6f0: 6a0a02df     	tst	w22, w10
     6f4: 54000280     	b.eq	0x744 <gpio_keys_attr_store_helper+0x1bc>
     6f8: f8697a6a     	ldr	x10, [x19, x9, lsl #3]
     6fc: 7100069f     	cmp	w20, #0x1
     700: 12bfffcb     	mov	w11, #0x1ffff           // =131071
     704: f8697908     	ldr	x8, [x8, x9, lsl #3]
     708: da9f1169     	csinv	x9, x11, xzr, ne
     70c: 8a090149     	and	x9, x10, x9
     710: ea28013f     	bics	xzr, x9, x8
     714: 54000180     	b.eq	0x744 <gpio_keys_attr_store_helper+0x1bc>
     718: 928002b4     	mov	x20, #-0x16             // =-22
     71c: aa1303e0     	mov	x0, x19
     720: 94000000     	bl	0x720 <gpio_keys_attr_store_helper+0x198>
		0000000000000720:  R_AARCH64_CALL26	bitmap_free
     724: aa1403e0     	mov	x0, x20
     728: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     72c: f9400bf9     	ldr	x25, [sp, #0x10]
     730: a94357f6     	ldp	x22, x21, [sp, #0x30]
     734: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     738: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     73c: d50323bf     	autiasp
     740: d65f03c0     	ret
     744: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_store_helper_log
     748: 91000000     	add	x0, x0, #0x0
		0000000000000748:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_store_helper_log
     74c: 2a1603e1     	mov	w1, w22
     750: 2a1403e2     	mov	w2, w20
     754: 94000000     	bl	0x754 <gpio_keys_attr_store_helper+0x1cc>
		0000000000000754:  R_AARCH64_CALL26	_printk
     758: f94002a8     	ldr	x8, [x21]
     75c: b9400908     	ldr	w8, [x8, #0x8]
     760: 7100051f     	cmp	w8, #0x1
     764: 540002ab     	b.lt	0x7b8 <gpio_keys_attr_store_helper+0x230>
     768: 910182a9     	add	x9, x21, #0x60
     76c: 14000004     	b	0x77c <gpio_keys_attr_store_helper+0x1f4>
     770: f1000508     	subs	x8, x8, #0x1
     774: 91044129     	add	x9, x9, #0x110
     778: 54000200     	b.eq	0x7b8 <gpio_keys_attr_store_helper+0x230>
     77c: f85e812a     	ldur	x10, [x9, #-0x18]
     780: b940194b     	ldr	w11, [x10, #0x18]
     784: 6b14017f     	cmp	w11, w20
     788: 54ffff41     	b.ne	0x770 <gpio_keys_attr_store_helper+0x1e8>
     78c: f940012b     	ldr	x11, [x9]
     790: 7940016b     	ldrh	w11, [x11]
     794: d343fd6c     	lsr	x12, x11, #3
     798: 927d258c     	and	x12, x12, #0x1ff8
     79c: f86c6a6c     	ldr	x12, [x19, x12]
     7a0: 9acb258b     	lsr	x11, x12, x11
     7a4: 3607fe6b     	tbz	w11, #0x0, 0x770 <gpio_keys_attr_store_helper+0x1e8>
     7a8: 3940a14a     	ldrb	w10, [x10, #0x28]
     7ac: 7100055f     	cmp	w10, #0x1
     7b0: 54fffe00     	b.eq	0x770 <gpio_keys_attr_store_helper+0x1e8>
     7b4: 17ffffd9     	b	0x718 <gpio_keys_attr_store_helper+0x190>
     7b8: 910042a0     	add	x0, x21, #0x10
     7bc: 94000000     	bl	0x7bc <gpio_keys_attr_store_helper+0x234>
		00000000000007bc:  R_AARCH64_CALL26	mutex_lock
     7c0: f94002a8     	ldr	x8, [x21]
     7c4: b9400908     	ldr	w8, [x8, #0x8]
     7c8: 7100051f     	cmp	w8, #0x1
     7cc: 5400064b     	b.lt	0x894 <gpio_keys_attr_store_helper+0x30c>
     7d0: aa1f03f6     	mov	x22, xzr
     7d4: aa1f03f7     	mov	x23, xzr
     7d8: 1400000c     	b	0x808 <gpio_keys_attr_store_helper+0x280>
     7dc: 8b1602a8     	add	x8, x21, x22
     7e0: 91026100     	add	x0, x8, #0x98
     7e4: 94000000     	bl	0x7e4 <gpio_keys_attr_store_helper+0x25c>
		00000000000007e4:  R_AARCH64_CALL26	cancel_delayed_work_sync
     7e8: 52800028     	mov	w8, #0x1                // =1
     7ec: 39054308     	strb	w8, [x24, #0x150]
     7f0: f94002a8     	ldr	x8, [x21]
     7f4: 910006f7     	add	x23, x23, #0x1
     7f8: 910442d6     	add	x22, x22, #0x110
     7fc: b9800908     	ldrsw	x8, [x8, #0x8]
     800: eb0802ff     	cmp	x23, x8
     804: 5400048a     	b.ge	0x894 <gpio_keys_attr_store_helper+0x30c>
     808: 8b1602b8     	add	x24, x21, x22
     80c: f9402708     	ldr	x8, [x24, #0x48]
     810: b9401908     	ldr	w8, [x8, #0x18]
     814: 6b14011f     	cmp	w8, w20
     818: 54fffec1     	b.ne	0x7f0 <gpio_keys_attr_store_helper+0x268>
     81c: f9403308     	ldr	x8, [x24, #0x60]
     820: 79400108     	ldrh	w8, [x8]
     824: d343fd09     	lsr	x9, x8, #3
     828: 927d2529     	and	x9, x9, #0x1ff8
     82c: f8696a69     	ldr	x9, [x19, x9]
     830: 9ac82529     	lsr	x9, x9, x8
     834: 39454308     	ldrb	w8, [x24, #0x150]
     838: 360001c9     	tbz	w9, #0x0, 0x870 <gpio_keys_attr_store_helper+0x2e8>
     83c: 3707fda8     	tbnz	w8, #0x0, 0x7f0 <gpio_keys_attr_store_helper+0x268>
     840: 8b1602b9     	add	x25, x21, x22
     844: b9410720     	ldr	w0, [x25, #0x104]
     848: 94000000     	bl	0x848 <gpio_keys_attr_store_helper+0x2c0>
		0000000000000848:  R_AARCH64_CALL26	disable_irq
     84c: b9410b20     	ldr	w0, [x25, #0x108]
     850: 34000040     	cbz	w0, 0x858 <gpio_keys_attr_store_helper+0x2d0>
     854: 94000000     	bl	0x854 <gpio_keys_attr_store_helper+0x2cc>
		0000000000000854:  R_AARCH64_CALL26	disable_irq
     858: f9402f28     	ldr	x8, [x25, #0x58]
     85c: b5fffc08     	cbnz	x8, 0x7dc <gpio_keys_attr_store_helper+0x254>
     860: 8b1602a8     	add	x8, x21, x22
     864: 9101a100     	add	x0, x8, #0x68
     868: 94000000     	bl	0x868 <gpio_keys_attr_store_helper+0x2e0>
		0000000000000868:  R_AARCH64_CALL26	timer_delete_sync
     86c: 17ffffdf     	b	0x7e8 <gpio_keys_attr_store_helper+0x260>
     870: 34fffc08     	cbz	w8, 0x7f0 <gpio_keys_attr_store_helper+0x268>
     874: 8b1602b9     	add	x25, x21, x22
     878: b9410720     	ldr	w0, [x25, #0x104]
     87c: 94000000     	bl	0x87c <gpio_keys_attr_store_helper+0x2f4>
		000000000000087c:  R_AARCH64_CALL26	enable_irq
     880: b9410b20     	ldr	w0, [x25, #0x108]
     884: 34000040     	cbz	w0, 0x88c <gpio_keys_attr_store_helper+0x304>
     888: 94000000     	bl	0x888 <gpio_keys_attr_store_helper+0x300>
		0000000000000888:  R_AARCH64_CALL26	enable_irq
     88c: 2a1f03e8     	mov	w8, wzr
     890: 17ffffd7     	b	0x7ec <gpio_keys_attr_store_helper+0x264>
     894: 910042a0     	add	x0, x21, #0x10
     898: 94000000     	bl	0x898 <gpio_keys_attr_store_helper+0x310>
		0000000000000898:  R_AARCH64_CALL26	mutex_unlock
     89c: aa1f03f4     	mov	x20, xzr
     8a0: 17ffff9f     	b	0x71c <gpio_keys_attr_store_helper+0x194>
     8a4: d4210000     	brk	#0x800
