
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004ac <gpio_keys_attr_show_helper>:
     4ac: 121d7848     	and	w8, w2, #0xfffffffb
     4b0: 7100051f     	cmp	w8, #0x1
     4b4: 540009a1     	b.ne	0x5e8 <gpio_keys_attr_show_helper+0x13c>
     4b8: d503233f     	paciasp
     4bc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     4c0: a9015ff8     	stp	x24, x23, [sp, #0x10]
     4c4: a90257f6     	stp	x22, x21, [sp, #0x20]
     4c8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     4cc: 910003fd     	mov	x29, sp
     4d0: 7100045f     	cmp	w2, #0x1
     4d4: 52800228     	mov	w8, #0x11               // =17
     4d8: 52806009     	mov	w9, #0x300              // =768
     4dc: 1a880136     	csel	w22, w9, w8, eq
     4e0: aa0103f3     	mov	x19, x1
     4e4: aa0003f8     	mov	x24, x0
     4e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004e8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_show_helper_log
     4ec: 91000000     	add	x0, x0, #0x0
		00000000000004ec:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_show_helper_log
     4f0: 2a1603e1     	mov	w1, w22
     4f4: 2a0303f4     	mov	w20, w3
     4f8: 2a0203f5     	mov	w21, w2
     4fc: 94000000     	bl	0x4fc <gpio_keys_attr_show_helper+0x50>
		00000000000004fc:  R_AARCH64_CALL26	_printk
     500: 2a1603e0     	mov	w0, w22
     504: 52819801     	mov	w1, #0xcc0              // =3264
     508: 94000000     	bl	0x508 <gpio_keys_attr_show_helper+0x5c>
		0000000000000508:  R_AARCH64_CALL26	bitmap_zalloc
     50c: b40005e0     	cbz	x0, 0x5c8 <gpio_keys_attr_show_helper+0x11c>
     510: f9400308     	ldr	x8, [x24]
     514: aa0003f7     	mov	x23, x0
     518: b9400908     	ldr	w8, [x8, #0x8]
     51c: 7100051f     	cmp	w8, #0x1
     520: 5400038b     	b.lt	0x590 <gpio_keys_attr_show_helper+0xe4>
     524: aa1f03e8     	mov	x8, xzr
     528: 52800029     	mov	w9, #0x1                // =1
     52c: aa1803ea     	mov	x10, x24
     530: 1400000f     	b	0x56c <gpio_keys_attr_show_helper+0xc0>
     534: f940314b     	ldr	x11, [x10, #0x60]
     538: 7940016b     	ldrh	w11, [x11]
     53c: d343fd6c     	lsr	x12, x11, #3
     540: 9acb212b     	lsl	x11, x9, x11
     544: 927d258c     	and	x12, x12, #0x1ff8
     548: f86c6aed     	ldr	x13, [x23, x12]
     54c: aa0b01ab     	orr	x11, x13, x11
     550: f82c6aeb     	str	x11, [x23, x12]
     554: f940030b     	ldr	x11, [x24]
     558: 91000508     	add	x8, x8, #0x1
     55c: 9104414a     	add	x10, x10, #0x110
     560: b980096b     	ldrsw	x11, [x11, #0x8]
     564: eb0b011f     	cmp	x8, x11
     568: 5400014a     	b.ge	0x590 <gpio_keys_attr_show_helper+0xe4>
     56c: f940254b     	ldr	x11, [x10, #0x48]
     570: b940196b     	ldr	w11, [x11, #0x18]
     574: 6b15017f     	cmp	w11, w21
     578: 54fffee1     	b.ne	0x554 <gpio_keys_attr_show_helper+0xa8>
     57c: 3607fdd4     	tbz	w20, #0x0, 0x534 <gpio_keys_attr_show_helper+0x88>
     580: 3945414b     	ldrb	w11, [x10, #0x150]
     584: 7100057f     	cmp	w11, #0x1
     588: 54fffd60     	b.eq	0x534 <gpio_keys_attr_show_helper+0x88>
     58c: 17fffff2     	b	0x554 <gpio_keys_attr_show_helper+0xa8>
     590: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_show_bitmap_fmt
     594: 91000042     	add	x2, x2, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_show_bitmap_fmt
     598: aa1303e0     	mov	x0, x19
     59c: 5281ffe1     	mov	w1, #0xfff              // =4095
     5a0: 2a1603e3     	mov	w3, w22
     5a4: aa1703e4     	mov	x4, x23
     5a8: 94000000     	bl	0x5a8 <gpio_keys_attr_show_helper+0xfc>
		00000000000005a8:  R_AARCH64_CALL26	scnprintf
     5ac: 93407c09     	sxtw	x9, w0
     5b0: 52800148     	mov	w8, #0xa                // =10
     5b4: aa1703e0     	mov	x0, x23
     5b8: 91000534     	add	x20, x9, #0x1
     5bc: 78296a68     	strh	w8, [x19, x9]
     5c0: 94000000     	bl	0x5c0 <gpio_keys_attr_show_helper+0x114>
		00000000000005c0:  R_AARCH64_CALL26	bitmap_free
     5c4: 14000002     	b	0x5cc <gpio_keys_attr_show_helper+0x120>
     5c8: 92800174     	mov	x20, #-0xc              // =-12
     5cc: aa1403e0     	mov	x0, x20
     5d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     5d4: a94257f6     	ldp	x22, x21, [sp, #0x20]
     5d8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     5dc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     5e0: d50323bf     	autiasp
     5e4: d65f03c0     	ret
     5e8: d4210000     	brk	#0x800
