
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005ec <gpio_keys_attr_store_helper>:
     5ec: 121d7848     	and	w8, w2, #0xfffffffb
     5f0: 7100051f     	cmp	w8, #0x1
     5f4: 540018a1     	b.ne	0x908 <gpio_keys_attr_store_helper+0x31c>
     5f8: d503233f     	paciasp
     5fc: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     600: f9000bf9     	str	x25, [sp, #0x10]
     604: a9025ff8     	stp	x24, x23, [sp, #0x20]
     608: a90357f6     	stp	x22, x21, [sp, #0x30]
     60c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     610: 910003fd     	mov	x29, sp
     614: 7100045f     	cmp	w2, #0x1
     618: 52800228     	mov	w8, #0x11               // =17
     61c: 52806009     	mov	w9, #0x300              // =768
     620: 1a880136     	csel	w22, w9, w8, eq
     624: aa0103f7     	mov	x23, x1
     628: aa0003f5     	mov	x21, x0
     62c: f9400418     	ldr	x24, [x0, #0x8]
     630: 5280190a     	mov	w10, #0xc8              // =200
     634: 5280060b     	mov	w11, #0x30              // =48
     638: 2a1603e0     	mov	w0, w22
     63c: 52819801     	mov	w1, #0xcc0              // =3264
     640: 2a0203f4     	mov	w20, w2
     644: 9a8a0179     	csel	x25, x11, x10, eq
     648: 94000000     	bl	0x648 <gpio_keys_attr_store_helper+0x5c>
		0000000000000648:  R_AARCH64_CALL26	bitmap_zalloc
     64c: b4000120     	cbz	x0, 0x670 <gpio_keys_attr_store_helper+0x84>
     650: aa0003f3     	mov	x19, x0
     654: aa1703e0     	mov	x0, x23
     658: 2a1603e2     	mov	w2, w22
     65c: aa1303e1     	mov	x1, x19
     660: 94000000     	bl	0x660 <gpio_keys_attr_store_helper+0x74>
		0000000000000660:  R_AARCH64_CALL26	bitmap_parselist
     664: 340000a0     	cbz	w0, 0x678 <gpio_keys_attr_store_helper+0x8c>
     668: 93407c14     	sxtw	x20, w0
     66c: 14000045     	b	0x780 <gpio_keys_attr_store_helper+0x194>
     670: 92800174     	mov	x20, #-0xc              // =-12
     674: 14000045     	b	0x788 <gpio_keys_attr_store_helper+0x19c>
     678: 7100069f     	cmp	w20, #0x1
     67c: 8b190308     	add	x8, x24, x25
     680: 54000661     	b.ne	0x74c <gpio_keys_attr_store_helper+0x160>
     684: f9400269     	ldr	x9, [x19]
     688: f940010a     	ldr	x10, [x8]
     68c: ea2a013f     	bics	xzr, x9, x10
     690: 54000761     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     694: f9400669     	ldr	x9, [x19, #0x8]
     698: f940050a     	ldr	x10, [x8, #0x8]
     69c: ea2a013f     	bics	xzr, x9, x10
     6a0: 540006e1     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     6a4: f9400a69     	ldr	x9, [x19, #0x10]
     6a8: f940090a     	ldr	x10, [x8, #0x10]
     6ac: ea2a013f     	bics	xzr, x9, x10
     6b0: 54000661     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     6b4: f9400e69     	ldr	x9, [x19, #0x18]
     6b8: f9400d0a     	ldr	x10, [x8, #0x18]
     6bc: ea2a013f     	bics	xzr, x9, x10
     6c0: 540005e1     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     6c4: f9401269     	ldr	x9, [x19, #0x20]
     6c8: f940110a     	ldr	x10, [x8, #0x20]
     6cc: ea2a013f     	bics	xzr, x9, x10
     6d0: 54000561     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     6d4: f9401669     	ldr	x9, [x19, #0x28]
     6d8: f940150a     	ldr	x10, [x8, #0x28]
     6dc: ea2a013f     	bics	xzr, x9, x10
     6e0: 540004e1     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     6e4: f9401a69     	ldr	x9, [x19, #0x30]
     6e8: f940190a     	ldr	x10, [x8, #0x30]
     6ec: ea2a013f     	bics	xzr, x9, x10
     6f0: 54000461     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     6f4: f9401e69     	ldr	x9, [x19, #0x38]
     6f8: f9401d0a     	ldr	x10, [x8, #0x38]
     6fc: ea2a013f     	bics	xzr, x9, x10
     700: 540003e1     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     704: f9402269     	ldr	x9, [x19, #0x40]
     708: f940210a     	ldr	x10, [x8, #0x40]
     70c: ea2a013f     	bics	xzr, x9, x10
     710: 54000361     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     714: f9402669     	ldr	x9, [x19, #0x48]
     718: f940250a     	ldr	x10, [x8, #0x48]
     71c: ea2a013f     	bics	xzr, x9, x10
     720: 540002e1     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     724: f9402a69     	ldr	x9, [x19, #0x50]
     728: f940290a     	ldr	x10, [x8, #0x50]
     72c: ea2a013f     	bics	xzr, x9, x10
     730: 54000261     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     734: f9402e69     	ldr	x9, [x19, #0x58]
     738: f9402d0a     	ldr	x10, [x8, #0x58]
     73c: ea2a013f     	bics	xzr, x9, x10
     740: 540001e1     	b.ne	0x77c <gpio_keys_attr_store_helper+0x190>
     744: 52800189     	mov	w9, #0xc                // =12
     748: 14000002     	b	0x750 <gpio_keys_attr_store_helper+0x164>
     74c: aa1f03e9     	mov	x9, xzr
     750: 5280022a     	mov	w10, #0x11              // =17
     754: 6a0a02df     	tst	w22, w10
     758: 54000280     	b.eq	0x7a8 <gpio_keys_attr_store_helper+0x1bc>
     75c: f8697a6a     	ldr	x10, [x19, x9, lsl #3]
     760: 7100069f     	cmp	w20, #0x1
     764: 12bfffcb     	mov	w11, #0x1ffff           // =131071
     768: f8697908     	ldr	x8, [x8, x9, lsl #3]
     76c: da9f1169     	csinv	x9, x11, xzr, ne
     770: 8a090149     	and	x9, x10, x9
     774: ea28013f     	bics	xzr, x9, x8
     778: 54000180     	b.eq	0x7a8 <gpio_keys_attr_store_helper+0x1bc>
     77c: 928002b4     	mov	x20, #-0x16             // =-22
     780: aa1303e0     	mov	x0, x19
     784: 94000000     	bl	0x784 <gpio_keys_attr_store_helper+0x198>
		0000000000000784:  R_AARCH64_CALL26	bitmap_free
     788: aa1403e0     	mov	x0, x20
     78c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     790: f9400bf9     	ldr	x25, [sp, #0x10]
     794: a94357f6     	ldp	x22, x21, [sp, #0x30]
     798: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     79c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     7a0: d50323bf     	autiasp
     7a4: d65f03c0     	ret
     7a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007a8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_store_helper_log
     7ac: 91000000     	add	x0, x0, #0x0
		00000000000007ac:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_store_helper_log
     7b0: 2a1603e1     	mov	w1, w22
     7b4: 2a1403e2     	mov	w2, w20
     7b8: 94000000     	bl	0x7b8 <gpio_keys_attr_store_helper+0x1cc>
		00000000000007b8:  R_AARCH64_CALL26	_printk
     7bc: f94002a8     	ldr	x8, [x21]
     7c0: b9400908     	ldr	w8, [x8, #0x8]
     7c4: 7100051f     	cmp	w8, #0x1
     7c8: 540002ab     	b.lt	0x81c <gpio_keys_attr_store_helper+0x230>
     7cc: 910182a9     	add	x9, x21, #0x60
     7d0: 14000004     	b	0x7e0 <gpio_keys_attr_store_helper+0x1f4>
     7d4: f1000508     	subs	x8, x8, #0x1
     7d8: 91044129     	add	x9, x9, #0x110
     7dc: 54000200     	b.eq	0x81c <gpio_keys_attr_store_helper+0x230>
     7e0: f85e812a     	ldur	x10, [x9, #-0x18]
     7e4: b940194b     	ldr	w11, [x10, #0x18]
     7e8: 6b14017f     	cmp	w11, w20
     7ec: 54ffff41     	b.ne	0x7d4 <gpio_keys_attr_store_helper+0x1e8>
     7f0: f940012b     	ldr	x11, [x9]
     7f4: 7940016b     	ldrh	w11, [x11]
     7f8: d343fd6c     	lsr	x12, x11, #3
     7fc: 927d258c     	and	x12, x12, #0x1ff8
     800: f86c6a6c     	ldr	x12, [x19, x12]
     804: 9acb258b     	lsr	x11, x12, x11
     808: 3607fe6b     	tbz	w11, #0x0, 0x7d4 <gpio_keys_attr_store_helper+0x1e8>
     80c: 3940a14a     	ldrb	w10, [x10, #0x28]
     810: 7100055f     	cmp	w10, #0x1
     814: 54fffe00     	b.eq	0x7d4 <gpio_keys_attr_store_helper+0x1e8>
     818: 17ffffd9     	b	0x77c <gpio_keys_attr_store_helper+0x190>
     81c: 910042a0     	add	x0, x21, #0x10
     820: 94000000     	bl	0x820 <gpio_keys_attr_store_helper+0x234>
		0000000000000820:  R_AARCH64_CALL26	mutex_lock
     824: f94002a8     	ldr	x8, [x21]
     828: b9400908     	ldr	w8, [x8, #0x8]
     82c: 7100051f     	cmp	w8, #0x1
     830: 5400064b     	b.lt	0x8f8 <gpio_keys_attr_store_helper+0x30c>
     834: aa1f03f6     	mov	x22, xzr
     838: aa1f03f7     	mov	x23, xzr
     83c: 1400000c     	b	0x86c <gpio_keys_attr_store_helper+0x280>
     840: 8b1602a8     	add	x8, x21, x22
     844: 91026100     	add	x0, x8, #0x98
     848: 94000000     	bl	0x848 <gpio_keys_attr_store_helper+0x25c>
		0000000000000848:  R_AARCH64_CALL26	cancel_delayed_work_sync
     84c: 52800028     	mov	w8, #0x1                // =1
     850: 39054308     	strb	w8, [x24, #0x150]
     854: f94002a8     	ldr	x8, [x21]
     858: 910006f7     	add	x23, x23, #0x1
     85c: 910442d6     	add	x22, x22, #0x110
     860: b9800908     	ldrsw	x8, [x8, #0x8]
     864: eb0802ff     	cmp	x23, x8
     868: 5400048a     	b.ge	0x8f8 <gpio_keys_attr_store_helper+0x30c>
     86c: 8b1602b8     	add	x24, x21, x22
     870: f9402708     	ldr	x8, [x24, #0x48]
     874: b9401908     	ldr	w8, [x8, #0x18]
     878: 6b14011f     	cmp	w8, w20
     87c: 54fffec1     	b.ne	0x854 <gpio_keys_attr_store_helper+0x268>
     880: f9403308     	ldr	x8, [x24, #0x60]
     884: 79400108     	ldrh	w8, [x8]
     888: d343fd09     	lsr	x9, x8, #3
     88c: 927d2529     	and	x9, x9, #0x1ff8
     890: f8696a69     	ldr	x9, [x19, x9]
     894: 9ac82529     	lsr	x9, x9, x8
     898: 39454308     	ldrb	w8, [x24, #0x150]
     89c: 360001c9     	tbz	w9, #0x0, 0x8d4 <gpio_keys_attr_store_helper+0x2e8>
     8a0: 3707fda8     	tbnz	w8, #0x0, 0x854 <gpio_keys_attr_store_helper+0x268>
     8a4: 8b1602b9     	add	x25, x21, x22
     8a8: b9410720     	ldr	w0, [x25, #0x104]
     8ac: 94000000     	bl	0x8ac <gpio_keys_attr_store_helper+0x2c0>
		00000000000008ac:  R_AARCH64_CALL26	disable_irq
     8b0: b9410b20     	ldr	w0, [x25, #0x108]
     8b4: 34000040     	cbz	w0, 0x8bc <gpio_keys_attr_store_helper+0x2d0>
     8b8: 94000000     	bl	0x8b8 <gpio_keys_attr_store_helper+0x2cc>
		00000000000008b8:  R_AARCH64_CALL26	disable_irq
     8bc: f9402f28     	ldr	x8, [x25, #0x58]
     8c0: b5fffc08     	cbnz	x8, 0x840 <gpio_keys_attr_store_helper+0x254>
     8c4: 8b1602a8     	add	x8, x21, x22
     8c8: 9101a100     	add	x0, x8, #0x68
     8cc: 94000000     	bl	0x8cc <gpio_keys_attr_store_helper+0x2e0>
		00000000000008cc:  R_AARCH64_CALL26	timer_delete_sync
     8d0: 17ffffdf     	b	0x84c <gpio_keys_attr_store_helper+0x260>
     8d4: 34fffc08     	cbz	w8, 0x854 <gpio_keys_attr_store_helper+0x268>
     8d8: 8b1602b9     	add	x25, x21, x22
     8dc: b9410720     	ldr	w0, [x25, #0x104]
     8e0: 94000000     	bl	0x8e0 <gpio_keys_attr_store_helper+0x2f4>
		00000000000008e0:  R_AARCH64_CALL26	enable_irq
     8e4: b9410b20     	ldr	w0, [x25, #0x108]
     8e8: 34000040     	cbz	w0, 0x8f0 <gpio_keys_attr_store_helper+0x304>
     8ec: 94000000     	bl	0x8ec <gpio_keys_attr_store_helper+0x300>
		00000000000008ec:  R_AARCH64_CALL26	enable_irq
     8f0: 2a1f03e8     	mov	w8, wzr
     8f4: 17ffffd7     	b	0x850 <gpio_keys_attr_store_helper+0x264>
     8f8: 910042a0     	add	x0, x21, #0x10
     8fc: 94000000     	bl	0x8fc <gpio_keys_attr_store_helper+0x310>
		00000000000008fc:  R_AARCH64_CALL26	mutex_unlock
     900: aa1f03f4     	mov	x20, xzr
     904: 17ffff9f     	b	0x780 <gpio_keys_attr_store_helper+0x194>
     908: d4210000     	brk	#0x800
