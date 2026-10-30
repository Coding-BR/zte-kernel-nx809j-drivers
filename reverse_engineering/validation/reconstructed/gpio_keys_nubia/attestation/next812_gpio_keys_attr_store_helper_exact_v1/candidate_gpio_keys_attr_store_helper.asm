
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000354 <gpio_keys_attr_store_helper>:
     354: 121d7848     	and	w8, w2, #0xfffffffb
     358: 7100051f     	cmp	w8, #0x1
     35c: 540018a1     	b.ne	0x670 <gpio_keys_attr_store_helper+0x31c>
     360: d503233f     	paciasp
     364: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     368: f9000bf9     	str	x25, [sp, #0x10]
     36c: a9025ff8     	stp	x24, x23, [sp, #0x20]
     370: a90357f6     	stp	x22, x21, [sp, #0x30]
     374: a9044ff4     	stp	x20, x19, [sp, #0x40]
     378: 910003fd     	mov	x29, sp
     37c: 7100045f     	cmp	w2, #0x1
     380: 52800228     	mov	w8, #0x11               // =17
     384: 52806009     	mov	w9, #0x300              // =768
     388: 1a880136     	csel	w22, w9, w8, eq
     38c: aa0103f7     	mov	x23, x1
     390: aa0003f5     	mov	x21, x0
     394: f9400418     	ldr	x24, [x0, #0x8]
     398: 5280190a     	mov	w10, #0xc8              // =200
     39c: 5280060b     	mov	w11, #0x30              // =48
     3a0: 2a1603e0     	mov	w0, w22
     3a4: 52819801     	mov	w1, #0xcc0              // =3264
     3a8: 2a0203f4     	mov	w20, w2
     3ac: 9a8a0179     	csel	x25, x11, x10, eq
     3b0: 94000000     	bl	0x3b0 <gpio_keys_attr_store_helper+0x5c>
		00000000000003b0:  R_AARCH64_CALL26	bitmap_zalloc
     3b4: b4000120     	cbz	x0, 0x3d8 <gpio_keys_attr_store_helper+0x84>
     3b8: aa0003f3     	mov	x19, x0
     3bc: aa1703e0     	mov	x0, x23
     3c0: 2a1603e2     	mov	w2, w22
     3c4: aa1303e1     	mov	x1, x19
     3c8: 94000000     	bl	0x3c8 <gpio_keys_attr_store_helper+0x74>
		00000000000003c8:  R_AARCH64_CALL26	bitmap_parselist
     3cc: 340000a0     	cbz	w0, 0x3e0 <gpio_keys_attr_store_helper+0x8c>
     3d0: 93407c14     	sxtw	x20, w0
     3d4: 14000045     	b	0x4e8 <gpio_keys_attr_store_helper+0x194>
     3d8: 92800174     	mov	x20, #-0xc              // =-12
     3dc: 14000045     	b	0x4f0 <gpio_keys_attr_store_helper+0x19c>
     3e0: 7100069f     	cmp	w20, #0x1
     3e4: 8b190308     	add	x8, x24, x25
     3e8: 54000661     	b.ne	0x4b4 <gpio_keys_attr_store_helper+0x160>
     3ec: f9400269     	ldr	x9, [x19]
     3f0: f940010a     	ldr	x10, [x8]
     3f4: ea2a013f     	bics	xzr, x9, x10
     3f8: 54000761     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     3fc: f9400669     	ldr	x9, [x19, #0x8]
     400: f940050a     	ldr	x10, [x8, #0x8]
     404: ea2a013f     	bics	xzr, x9, x10
     408: 540006e1     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     40c: f9400a69     	ldr	x9, [x19, #0x10]
     410: f940090a     	ldr	x10, [x8, #0x10]
     414: ea2a013f     	bics	xzr, x9, x10
     418: 54000661     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     41c: f9400e69     	ldr	x9, [x19, #0x18]
     420: f9400d0a     	ldr	x10, [x8, #0x18]
     424: ea2a013f     	bics	xzr, x9, x10
     428: 540005e1     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     42c: f9401269     	ldr	x9, [x19, #0x20]
     430: f940110a     	ldr	x10, [x8, #0x20]
     434: ea2a013f     	bics	xzr, x9, x10
     438: 54000561     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     43c: f9401669     	ldr	x9, [x19, #0x28]
     440: f940150a     	ldr	x10, [x8, #0x28]
     444: ea2a013f     	bics	xzr, x9, x10
     448: 540004e1     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     44c: f9401a69     	ldr	x9, [x19, #0x30]
     450: f940190a     	ldr	x10, [x8, #0x30]
     454: ea2a013f     	bics	xzr, x9, x10
     458: 54000461     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     45c: f9401e69     	ldr	x9, [x19, #0x38]
     460: f9401d0a     	ldr	x10, [x8, #0x38]
     464: ea2a013f     	bics	xzr, x9, x10
     468: 540003e1     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     46c: f9402269     	ldr	x9, [x19, #0x40]
     470: f940210a     	ldr	x10, [x8, #0x40]
     474: ea2a013f     	bics	xzr, x9, x10
     478: 54000361     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     47c: f9402669     	ldr	x9, [x19, #0x48]
     480: f940250a     	ldr	x10, [x8, #0x48]
     484: ea2a013f     	bics	xzr, x9, x10
     488: 540002e1     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     48c: f9402a69     	ldr	x9, [x19, #0x50]
     490: f940290a     	ldr	x10, [x8, #0x50]
     494: ea2a013f     	bics	xzr, x9, x10
     498: 54000261     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     49c: f9402e69     	ldr	x9, [x19, #0x58]
     4a0: f9402d0a     	ldr	x10, [x8, #0x58]
     4a4: ea2a013f     	bics	xzr, x9, x10
     4a8: 540001e1     	b.ne	0x4e4 <gpio_keys_attr_store_helper+0x190>
     4ac: 52800189     	mov	w9, #0xc                // =12
     4b0: 14000002     	b	0x4b8 <gpio_keys_attr_store_helper+0x164>
     4b4: aa1f03e9     	mov	x9, xzr
     4b8: 5280022a     	mov	w10, #0x11              // =17
     4bc: 6a0a02df     	tst	w22, w10
     4c0: 54000280     	b.eq	0x510 <gpio_keys_attr_store_helper+0x1bc>
     4c4: f8697a6a     	ldr	x10, [x19, x9, lsl #3]
     4c8: 7100069f     	cmp	w20, #0x1
     4cc: 12bfffcb     	mov	w11, #0x1ffff           // =131071
     4d0: f8697908     	ldr	x8, [x8, x9, lsl #3]
     4d4: da9f1169     	csinv	x9, x11, xzr, ne
     4d8: 8a090149     	and	x9, x10, x9
     4dc: ea28013f     	bics	xzr, x9, x8
     4e0: 54000180     	b.eq	0x510 <gpio_keys_attr_store_helper+0x1bc>
     4e4: 928002b4     	mov	x20, #-0x16             // =-22
     4e8: aa1303e0     	mov	x0, x19
     4ec: 94000000     	bl	0x4ec <gpio_keys_attr_store_helper+0x198>
		00000000000004ec:  R_AARCH64_CALL26	bitmap_free
     4f0: aa1403e0     	mov	x0, x20
     4f4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     4f8: f9400bf9     	ldr	x25, [sp, #0x10]
     4fc: a94357f6     	ldp	x22, x21, [sp, #0x30]
     500: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     504: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     508: d50323bf     	autiasp
     50c: d65f03c0     	ret
     510: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_store_helper_log
     514: 91000000     	add	x0, x0, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_store_helper_log
     518: 2a1603e1     	mov	w1, w22
     51c: 2a1403e2     	mov	w2, w20
     520: 94000000     	bl	0x520 <gpio_keys_attr_store_helper+0x1cc>
		0000000000000520:  R_AARCH64_CALL26	_printk
     524: f94002a8     	ldr	x8, [x21]
     528: b9400908     	ldr	w8, [x8, #0x8]
     52c: 7100051f     	cmp	w8, #0x1
     530: 540002ab     	b.lt	0x584 <gpio_keys_attr_store_helper+0x230>
     534: 910182a9     	add	x9, x21, #0x60
     538: 14000004     	b	0x548 <gpio_keys_attr_store_helper+0x1f4>
     53c: f1000508     	subs	x8, x8, #0x1
     540: 91044129     	add	x9, x9, #0x110
     544: 54000200     	b.eq	0x584 <gpio_keys_attr_store_helper+0x230>
     548: f85e812a     	ldur	x10, [x9, #-0x18]
     54c: b940194b     	ldr	w11, [x10, #0x18]
     550: 6b14017f     	cmp	w11, w20
     554: 54ffff41     	b.ne	0x53c <gpio_keys_attr_store_helper+0x1e8>
     558: f940012b     	ldr	x11, [x9]
     55c: 7940016b     	ldrh	w11, [x11]
     560: d343fd6c     	lsr	x12, x11, #3
     564: 927d258c     	and	x12, x12, #0x1ff8
     568: f86c6a6c     	ldr	x12, [x19, x12]
     56c: 9acb258b     	lsr	x11, x12, x11
     570: 3607fe6b     	tbz	w11, #0x0, 0x53c <gpio_keys_attr_store_helper+0x1e8>
     574: 3940a14a     	ldrb	w10, [x10, #0x28]
     578: 7100055f     	cmp	w10, #0x1
     57c: 54fffe00     	b.eq	0x53c <gpio_keys_attr_store_helper+0x1e8>
     580: 17ffffd9     	b	0x4e4 <gpio_keys_attr_store_helper+0x190>
     584: 910042a0     	add	x0, x21, #0x10
     588: 94000000     	bl	0x588 <gpio_keys_attr_store_helper+0x234>
		0000000000000588:  R_AARCH64_CALL26	mutex_lock
     58c: f94002a8     	ldr	x8, [x21]
     590: b9400908     	ldr	w8, [x8, #0x8]
     594: 7100051f     	cmp	w8, #0x1
     598: 5400064b     	b.lt	0x660 <gpio_keys_attr_store_helper+0x30c>
     59c: aa1f03f6     	mov	x22, xzr
     5a0: aa1f03f7     	mov	x23, xzr
     5a4: 1400000c     	b	0x5d4 <gpio_keys_attr_store_helper+0x280>
     5a8: 8b1602a8     	add	x8, x21, x22
     5ac: 91026100     	add	x0, x8, #0x98
     5b0: 94000000     	bl	0x5b0 <gpio_keys_attr_store_helper+0x25c>
		00000000000005b0:  R_AARCH64_CALL26	cancel_delayed_work_sync
     5b4: 52800028     	mov	w8, #0x1                // =1
     5b8: 39054308     	strb	w8, [x24, #0x150]
     5bc: f94002a8     	ldr	x8, [x21]
     5c0: 910006f7     	add	x23, x23, #0x1
     5c4: 910442d6     	add	x22, x22, #0x110
     5c8: b9800908     	ldrsw	x8, [x8, #0x8]
     5cc: eb0802ff     	cmp	x23, x8
     5d0: 5400048a     	b.ge	0x660 <gpio_keys_attr_store_helper+0x30c>
     5d4: 8b1602b8     	add	x24, x21, x22
     5d8: f9402708     	ldr	x8, [x24, #0x48]
     5dc: b9401908     	ldr	w8, [x8, #0x18]
     5e0: 6b14011f     	cmp	w8, w20
     5e4: 54fffec1     	b.ne	0x5bc <gpio_keys_attr_store_helper+0x268>
     5e8: f9403308     	ldr	x8, [x24, #0x60]
     5ec: 79400108     	ldrh	w8, [x8]
     5f0: d343fd09     	lsr	x9, x8, #3
     5f4: 927d2529     	and	x9, x9, #0x1ff8
     5f8: f8696a69     	ldr	x9, [x19, x9]
     5fc: 9ac82529     	lsr	x9, x9, x8
     600: 39454308     	ldrb	w8, [x24, #0x150]
     604: 360001c9     	tbz	w9, #0x0, 0x63c <gpio_keys_attr_store_helper+0x2e8>
     608: 3707fda8     	tbnz	w8, #0x0, 0x5bc <gpio_keys_attr_store_helper+0x268>
     60c: 8b1602b9     	add	x25, x21, x22
     610: b9410720     	ldr	w0, [x25, #0x104]
     614: 94000000     	bl	0x614 <gpio_keys_attr_store_helper+0x2c0>
		0000000000000614:  R_AARCH64_CALL26	disable_irq
     618: b9410b20     	ldr	w0, [x25, #0x108]
     61c: 34000040     	cbz	w0, 0x624 <gpio_keys_attr_store_helper+0x2d0>
     620: 94000000     	bl	0x620 <gpio_keys_attr_store_helper+0x2cc>
		0000000000000620:  R_AARCH64_CALL26	disable_irq
     624: f9402f28     	ldr	x8, [x25, #0x58]
     628: b5fffc08     	cbnz	x8, 0x5a8 <gpio_keys_attr_store_helper+0x254>
     62c: 8b1602a8     	add	x8, x21, x22
     630: 9101a100     	add	x0, x8, #0x68
     634: 94000000     	bl	0x634 <gpio_keys_attr_store_helper+0x2e0>
		0000000000000634:  R_AARCH64_CALL26	timer_delete_sync
     638: 17ffffdf     	b	0x5b4 <gpio_keys_attr_store_helper+0x260>
     63c: 34fffc08     	cbz	w8, 0x5bc <gpio_keys_attr_store_helper+0x268>
     640: 8b1602b9     	add	x25, x21, x22
     644: b9410720     	ldr	w0, [x25, #0x104]
     648: 94000000     	bl	0x648 <gpio_keys_attr_store_helper+0x2f4>
		0000000000000648:  R_AARCH64_CALL26	enable_irq
     64c: b9410b20     	ldr	w0, [x25, #0x108]
     650: 34000040     	cbz	w0, 0x658 <gpio_keys_attr_store_helper+0x304>
     654: 94000000     	bl	0x654 <gpio_keys_attr_store_helper+0x300>
		0000000000000654:  R_AARCH64_CALL26	enable_irq
     658: 2a1f03e8     	mov	w8, wzr
     65c: 17ffffd7     	b	0x5b8 <gpio_keys_attr_store_helper+0x264>
     660: 910042a0     	add	x0, x21, #0x10
     664: 94000000     	bl	0x664 <gpio_keys_attr_store_helper+0x310>
		0000000000000664:  R_AARCH64_CALL26	mutex_unlock
     668: aa1f03f4     	mov	x20, xzr
     66c: 17ffff9f     	b	0x4e8 <gpio_keys_attr_store_helper+0x194>
     670: d4210000     	brk	#0x800
