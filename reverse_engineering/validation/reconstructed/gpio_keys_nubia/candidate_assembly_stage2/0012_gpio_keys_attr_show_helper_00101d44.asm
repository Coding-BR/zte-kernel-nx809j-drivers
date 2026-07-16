
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015e0 <gpio_keys_attr_show_helper>:
    15e0: 121d7848     	and	w8, w2, #0xfffffffb
    15e4: 7100051f     	cmp	w8, #0x1
    15e8: 540009a1     	b.ne	0x171c <gpio_keys_attr_show_helper+0x13c>
    15ec: d503233f     	paciasp
    15f0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    15f4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    15f8: a90257f6     	stp	x22, x21, [sp, #0x20]
    15fc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1600: 910003fd     	mov	x29, sp
    1604: 7100045f     	cmp	w2, #0x1
    1608: 52800228     	mov	w8, #0x11               // =17
    160c: 52806009     	mov	w9, #0x300              // =768
    1610: 1a880136     	csel	w22, w9, w8, eq
    1614: aa0103f3     	mov	x19, x1
    1618: aa0003f8     	mov	x24, x0
    161c: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		000000000000161c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d9
    1620: 91000000     	add	x0, x0, #0x0
		0000000000001620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d9
    1624: 2a1603e1     	mov	w1, w22
    1628: 2a0303f4     	mov	w20, w3
    162c: 2a0203f5     	mov	w21, w2
    1630: 94000000     	bl	0x1630 <gpio_keys_attr_show_helper+0x50>
		0000000000001630:  R_AARCH64_CALL26	_printk
    1634: 2a1603e0     	mov	w0, w22
    1638: 52819801     	mov	w1, #0xcc0              // =3264
    163c: 94000000     	bl	0x163c <gpio_keys_attr_show_helper+0x5c>
		000000000000163c:  R_AARCH64_CALL26	bitmap_zalloc
    1640: b40005e0     	cbz	x0, 0x16fc <gpio_keys_attr_show_helper+0x11c>
    1644: f9400308     	ldr	x8, [x24]
    1648: aa0003f7     	mov	x23, x0
    164c: b9400908     	ldr	w8, [x8, #0x8]
    1650: 7100051f     	cmp	w8, #0x1
    1654: 5400038b     	b.lt	0x16c4 <gpio_keys_attr_show_helper+0xe4>
    1658: aa1f03e8     	mov	x8, xzr
    165c: 52800029     	mov	w9, #0x1                // =1
    1660: aa1803ea     	mov	x10, x24
    1664: 1400000f     	b	0x16a0 <gpio_keys_attr_show_helper+0xc0>
    1668: f940314b     	ldr	x11, [x10, #0x60]
    166c: 7940016b     	ldrh	w11, [x11]
    1670: d343fd6c     	lsr	x12, x11, #3
    1674: 9acb212b     	lsl	x11, x9, x11
    1678: 927d258c     	and	x12, x12, #0x1ff8
    167c: f86c6aed     	ldr	x13, [x23, x12]
    1680: aa0b01ab     	orr	x11, x13, x11
    1684: f82c6aeb     	str	x11, [x23, x12]
    1688: f940030b     	ldr	x11, [x24]
    168c: 91000508     	add	x8, x8, #0x1
    1690: 9104414a     	add	x10, x10, #0x110
    1694: b980096b     	ldrsw	x11, [x11, #0x8]
    1698: eb0b011f     	cmp	x8, x11
    169c: 5400014a     	b.ge	0x16c4 <gpio_keys_attr_show_helper+0xe4>
    16a0: f940254b     	ldr	x11, [x10, #0x48]
    16a4: b940196b     	ldr	w11, [x11, #0x18]
    16a8: 6b15017f     	cmp	w11, w21
    16ac: 54fffee1     	b.ne	0x1688 <gpio_keys_attr_show_helper+0xa8>
    16b0: 3607fdd4     	tbz	w20, #0x0, 0x1668 <gpio_keys_attr_show_helper+0x88>
    16b4: 3945414b     	ldrb	w11, [x10, #0x150]
    16b8: 7100057f     	cmp	w11, #0x1
    16bc: 54fffd60     	b.eq	0x1668 <gpio_keys_attr_show_helper+0x88>
    16c0: 17fffff2     	b	0x1688 <gpio_keys_attr_show_helper+0xa8>
    16c4: 90000002     	adrp	x2, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		00000000000016c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e
    16c8: 91000042     	add	x2, x2, #0x0
		00000000000016c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e
    16cc: aa1303e0     	mov	x0, x19
    16d0: 5281ffe1     	mov	w1, #0xfff              // =4095
    16d4: 2a1603e3     	mov	w3, w22
    16d8: aa1703e4     	mov	x4, x23
    16dc: 94000000     	bl	0x16dc <gpio_keys_attr_show_helper+0xfc>
		00000000000016dc:  R_AARCH64_CALL26	scnprintf
    16e0: 93407c09     	sxtw	x9, w0
    16e4: 52800148     	mov	w8, #0xa                // =10
    16e8: aa1703e0     	mov	x0, x23
    16ec: 91000534     	add	x20, x9, #0x1
    16f0: 78296a68     	strh	w8, [x19, x9]
    16f4: 94000000     	bl	0x16f4 <gpio_keys_attr_show_helper+0x114>
		00000000000016f4:  R_AARCH64_CALL26	bitmap_free
    16f8: 14000002     	b	0x1700 <gpio_keys_attr_show_helper+0x120>
    16fc: 92800174     	mov	x20, #-0xc              // =-12
    1700: aa1403e0     	mov	x0, x20
    1704: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1708: a94257f6     	ldp	x22, x21, [sp, #0x20]
    170c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1710: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1714: d50323bf     	autiasp
    1718: d65f03c0     	ret
    171c: d4210000     	brk	#0x800
