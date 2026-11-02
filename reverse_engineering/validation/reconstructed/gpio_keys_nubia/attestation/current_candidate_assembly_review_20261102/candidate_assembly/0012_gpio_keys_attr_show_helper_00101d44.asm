
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000448 <gpio_keys_attr_show_helper>:
     448: 121d7848     	and	w8, w2, #0xfffffffb
     44c: 7100051f     	cmp	w8, #0x1
     450: 540009a1     	b.ne	0x584 <gpio_keys_attr_show_helper+0x13c>
     454: d503233f     	paciasp
     458: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     45c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     460: a90257f6     	stp	x22, x21, [sp, #0x20]
     464: a9034ff4     	stp	x20, x19, [sp, #0x30]
     468: 910003fd     	mov	x29, sp
     46c: 7100045f     	cmp	w2, #0x1
     470: 52800228     	mov	w8, #0x11               // =17
     474: 52806009     	mov	w9, #0x300              // =768
     478: 1a880136     	csel	w22, w9, w8, eq
     47c: aa0103f3     	mov	x19, x1
     480: aa0003f8     	mov	x24, x0
     484: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000484:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_show_helper_log
     488: 91000000     	add	x0, x0, #0x0
		0000000000000488:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_show_helper_log
     48c: 2a1603e1     	mov	w1, w22
     490: 2a0303f4     	mov	w20, w3
     494: 2a0203f5     	mov	w21, w2
     498: 94000000     	bl	0x498 <gpio_keys_attr_show_helper+0x50>
		0000000000000498:  R_AARCH64_CALL26	_printk
     49c: 2a1603e0     	mov	w0, w22
     4a0: 52819801     	mov	w1, #0xcc0              // =3264
     4a4: 94000000     	bl	0x4a4 <gpio_keys_attr_show_helper+0x5c>
		00000000000004a4:  R_AARCH64_CALL26	bitmap_zalloc
     4a8: b40005e0     	cbz	x0, 0x564 <gpio_keys_attr_show_helper+0x11c>
     4ac: f9400308     	ldr	x8, [x24]
     4b0: aa0003f7     	mov	x23, x0
     4b4: b9400908     	ldr	w8, [x8, #0x8]
     4b8: 7100051f     	cmp	w8, #0x1
     4bc: 5400038b     	b.lt	0x52c <gpio_keys_attr_show_helper+0xe4>
     4c0: aa1f03e8     	mov	x8, xzr
     4c4: 52800029     	mov	w9, #0x1                // =1
     4c8: aa1803ea     	mov	x10, x24
     4cc: 1400000f     	b	0x508 <gpio_keys_attr_show_helper+0xc0>
     4d0: f940314b     	ldr	x11, [x10, #0x60]
     4d4: 7940016b     	ldrh	w11, [x11]
     4d8: d343fd6c     	lsr	x12, x11, #3
     4dc: 9acb212b     	lsl	x11, x9, x11
     4e0: 927d258c     	and	x12, x12, #0x1ff8
     4e4: f86c6aed     	ldr	x13, [x23, x12]
     4e8: aa0b01ab     	orr	x11, x13, x11
     4ec: f82c6aeb     	str	x11, [x23, x12]
     4f0: f940030b     	ldr	x11, [x24]
     4f4: 91000508     	add	x8, x8, #0x1
     4f8: 9104414a     	add	x10, x10, #0x110
     4fc: b980096b     	ldrsw	x11, [x11, #0x8]
     500: eb0b011f     	cmp	x8, x11
     504: 5400014a     	b.ge	0x52c <gpio_keys_attr_show_helper+0xe4>
     508: f940254b     	ldr	x11, [x10, #0x48]
     50c: b940196b     	ldr	w11, [x11, #0x18]
     510: 6b15017f     	cmp	w11, w21
     514: 54fffee1     	b.ne	0x4f0 <gpio_keys_attr_show_helper+0xa8>
     518: 3607fdd4     	tbz	w20, #0x0, 0x4d0 <gpio_keys_attr_show_helper+0x88>
     51c: 3945414b     	ldrb	w11, [x10, #0x150]
     520: 7100057f     	cmp	w11, #0x1
     524: 54fffd60     	b.eq	0x4d0 <gpio_keys_attr_show_helper+0x88>
     528: 17fffff2     	b	0x4f0 <gpio_keys_attr_show_helper+0xa8>
     52c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000052c:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_show_bitmap_fmt
     530: 91000042     	add	x2, x2, #0x0
		0000000000000530:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_show_bitmap_fmt
     534: aa1303e0     	mov	x0, x19
     538: 5281ffe1     	mov	w1, #0xfff              // =4095
     53c: 2a1603e3     	mov	w3, w22
     540: aa1703e4     	mov	x4, x23
     544: 94000000     	bl	0x544 <gpio_keys_attr_show_helper+0xfc>
		0000000000000544:  R_AARCH64_CALL26	scnprintf
     548: 93407c09     	sxtw	x9, w0
     54c: 52800148     	mov	w8, #0xa                // =10
     550: aa1703e0     	mov	x0, x23
     554: 91000534     	add	x20, x9, #0x1
     558: 78296a68     	strh	w8, [x19, x9]
     55c: 94000000     	bl	0x55c <gpio_keys_attr_show_helper+0x114>
		000000000000055c:  R_AARCH64_CALL26	bitmap_free
     560: 14000002     	b	0x568 <gpio_keys_attr_show_helper+0x120>
     564: 92800174     	mov	x20, #-0xc              // =-12
     568: aa1403e0     	mov	x0, x20
     56c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     570: a94257f6     	ldp	x22, x21, [sp, #0x20]
     574: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     578: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     57c: d50323bf     	autiasp
     580: d65f03c0     	ret
     584: d4210000     	brk	#0x800
