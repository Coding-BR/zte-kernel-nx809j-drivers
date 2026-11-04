
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000162c <gpio_keys_attr_show_helper>:
    162c: 121d7848     	and	w8, w2, #0xfffffffb
    1630: 7100051f     	cmp	w8, #0x1
    1634: 540009a1     	b.ne	0x1768 <gpio_keys_attr_show_helper+0x13c>
    1638: d503233f     	paciasp
    163c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1640: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1644: a90257f6     	stp	x22, x21, [sp, #0x20]
    1648: a9034ff4     	stp	x20, x19, [sp, #0x30]
    164c: 910003fd     	mov	x29, sp
    1650: 7100045f     	cmp	w2, #0x1
    1654: 52800228     	mov	w8, #0x11               // =17
    1658: 52806009     	mov	w9, #0x300              // =768
    165c: 1a880136     	csel	w22, w9, w8, eq
    1660: aa0103f3     	mov	x19, x1
    1664: aa0003f8     	mov	x24, x0
    1668: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x606
    166c: 91000000     	add	x0, x0, #0x0
		000000000000166c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x606
    1670: 2a1603e1     	mov	w1, w22
    1674: 2a0303f4     	mov	w20, w3
    1678: 2a0203f5     	mov	w21, w2
    167c: 94000000     	bl	0x167c <gpio_keys_attr_show_helper+0x50>
		000000000000167c:  R_AARCH64_CALL26	_printk
    1680: 2a1603e0     	mov	w0, w22
    1684: 52819801     	mov	w1, #0xcc0              // =3264
    1688: 94000000     	bl	0x1688 <gpio_keys_attr_show_helper+0x5c>
		0000000000001688:  R_AARCH64_CALL26	bitmap_zalloc
    168c: b40005e0     	cbz	x0, 0x1748 <gpio_keys_attr_show_helper+0x11c>
    1690: f9400308     	ldr	x8, [x24]
    1694: aa0003f7     	mov	x23, x0
    1698: b9400908     	ldr	w8, [x8, #0x8]
    169c: 7100051f     	cmp	w8, #0x1
    16a0: 5400038b     	b.lt	0x1710 <gpio_keys_attr_show_helper+0xe4>
    16a4: aa1f03e8     	mov	x8, xzr
    16a8: 52800029     	mov	w9, #0x1                // =1
    16ac: aa1803ea     	mov	x10, x24
    16b0: 1400000f     	b	0x16ec <gpio_keys_attr_show_helper+0xc0>
    16b4: f940314b     	ldr	x11, [x10, #0x60]
    16b8: 7940016b     	ldrh	w11, [x11]
    16bc: d343fd6c     	lsr	x12, x11, #3
    16c0: 9acb212b     	lsl	x11, x9, x11
    16c4: 927d258c     	and	x12, x12, #0x1ff8
    16c8: f86c6aed     	ldr	x13, [x23, x12]
    16cc: aa0b01ab     	orr	x11, x13, x11
    16d0: f82c6aeb     	str	x11, [x23, x12]
    16d4: f940030b     	ldr	x11, [x24]
    16d8: 91000508     	add	x8, x8, #0x1
    16dc: 9104414a     	add	x10, x10, #0x110
    16e0: b980096b     	ldrsw	x11, [x11, #0x8]
    16e4: eb0b011f     	cmp	x8, x11
    16e8: 5400014a     	b.ge	0x1710 <gpio_keys_attr_show_helper+0xe4>
    16ec: f940254b     	ldr	x11, [x10, #0x48]
    16f0: b940196b     	ldr	w11, [x11, #0x18]
    16f4: 6b15017f     	cmp	w11, w21
    16f8: 54fffee1     	b.ne	0x16d4 <gpio_keys_attr_show_helper+0xa8>
    16fc: 3607fdd4     	tbz	w20, #0x0, 0x16b4 <gpio_keys_attr_show_helper+0x88>
    1700: 3945414b     	ldrb	w11, [x10, #0x150]
    1704: 7100057f     	cmp	w11, #0x1
    1708: 54fffd60     	b.eq	0x16b4 <gpio_keys_attr_show_helper+0x88>
    170c: 17fffff2     	b	0x16d4 <gpio_keys_attr_show_helper+0xa8>
    1710: 90000002     	adrp	x2, 0x1000 <gpio_keys_gpio_report_event+0x94>
		0000000000001710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64
    1714: 91000042     	add	x2, x2, #0x0
		0000000000001714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64
    1718: aa1303e0     	mov	x0, x19
    171c: 5281ffe1     	mov	w1, #0xfff              // =4095
    1720: 2a1603e3     	mov	w3, w22
    1724: aa1703e4     	mov	x4, x23
    1728: 94000000     	bl	0x1728 <gpio_keys_attr_show_helper+0xfc>
		0000000000001728:  R_AARCH64_CALL26	scnprintf
    172c: 93407c09     	sxtw	x9, w0
    1730: 52800148     	mov	w8, #0xa                // =10
    1734: aa1703e0     	mov	x0, x23
    1738: 91000534     	add	x20, x9, #0x1
    173c: 78296a68     	strh	w8, [x19, x9]
    1740: 94000000     	bl	0x1740 <gpio_keys_attr_show_helper+0x114>
		0000000000001740:  R_AARCH64_CALL26	bitmap_free
    1744: 14000002     	b	0x174c <gpio_keys_attr_show_helper+0x120>
    1748: 92800174     	mov	x20, #-0xc              // =-12
    174c: aa1403e0     	mov	x0, x20
    1750: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1754: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1758: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    175c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1760: d50323bf     	autiasp
    1764: d65f03c0     	ret
    1768: d4210000     	brk	#0x800
