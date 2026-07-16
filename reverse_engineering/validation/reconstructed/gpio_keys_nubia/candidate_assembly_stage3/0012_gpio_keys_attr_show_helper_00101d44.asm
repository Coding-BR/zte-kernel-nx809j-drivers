
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001634 <gpio_keys_attr_show_helper>:
    1634: 121d7848     	and	w8, w2, #0xfffffffb
    1638: 7100051f     	cmp	w8, #0x1
    163c: 540009a1     	b.ne	0x1770 <gpio_keys_attr_show_helper+0x13c>
    1640: d503233f     	paciasp
    1644: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1648: a9015ff8     	stp	x24, x23, [sp, #0x10]
    164c: a90257f6     	stp	x22, x21, [sp, #0x20]
    1650: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1654: 910003fd     	mov	x29, sp
    1658: 7100045f     	cmp	w2, #0x1
    165c: 52800228     	mov	w8, #0x11               // =17
    1660: 52806009     	mov	w9, #0x300              // =768
    1664: 1a880136     	csel	w22, w9, w8, eq
    1668: aa0103f3     	mov	x19, x1
    166c: aa0003f8     	mov	x24, x0
    1670: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x606
    1674: 91000000     	add	x0, x0, #0x0
		0000000000001674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x606
    1678: 2a1603e1     	mov	w1, w22
    167c: 2a0303f4     	mov	w20, w3
    1680: 2a0203f5     	mov	w21, w2
    1684: 94000000     	bl	0x1684 <gpio_keys_attr_show_helper+0x50>
		0000000000001684:  R_AARCH64_CALL26	_printk
    1688: 2a1603e0     	mov	w0, w22
    168c: 52819801     	mov	w1, #0xcc0              // =3264
    1690: 94000000     	bl	0x1690 <gpio_keys_attr_show_helper+0x5c>
		0000000000001690:  R_AARCH64_CALL26	bitmap_zalloc
    1694: b40005e0     	cbz	x0, 0x1750 <gpio_keys_attr_show_helper+0x11c>
    1698: f9400308     	ldr	x8, [x24]
    169c: aa0003f7     	mov	x23, x0
    16a0: b9400908     	ldr	w8, [x8, #0x8]
    16a4: 7100051f     	cmp	w8, #0x1
    16a8: 5400038b     	b.lt	0x1718 <gpio_keys_attr_show_helper+0xe4>
    16ac: aa1f03e8     	mov	x8, xzr
    16b0: 52800029     	mov	w9, #0x1                // =1
    16b4: aa1803ea     	mov	x10, x24
    16b8: 1400000f     	b	0x16f4 <gpio_keys_attr_show_helper+0xc0>
    16bc: f940314b     	ldr	x11, [x10, #0x60]
    16c0: 7940016b     	ldrh	w11, [x11]
    16c4: d343fd6c     	lsr	x12, x11, #3
    16c8: 9acb212b     	lsl	x11, x9, x11
    16cc: 927d258c     	and	x12, x12, #0x1ff8
    16d0: f86c6aed     	ldr	x13, [x23, x12]
    16d4: aa0b01ab     	orr	x11, x13, x11
    16d8: f82c6aeb     	str	x11, [x23, x12]
    16dc: f940030b     	ldr	x11, [x24]
    16e0: 91000508     	add	x8, x8, #0x1
    16e4: 9104414a     	add	x10, x10, #0x110
    16e8: b980096b     	ldrsw	x11, [x11, #0x8]
    16ec: eb0b011f     	cmp	x8, x11
    16f0: 5400014a     	b.ge	0x1718 <gpio_keys_attr_show_helper+0xe4>
    16f4: f940254b     	ldr	x11, [x10, #0x48]
    16f8: b940196b     	ldr	w11, [x11, #0x18]
    16fc: 6b15017f     	cmp	w11, w21
    1700: 54fffee1     	b.ne	0x16dc <gpio_keys_attr_show_helper+0xa8>
    1704: 3607fdd4     	tbz	w20, #0x0, 0x16bc <gpio_keys_attr_show_helper+0x88>
    1708: 3945414b     	ldrb	w11, [x10, #0x150]
    170c: 7100057f     	cmp	w11, #0x1
    1710: 54fffd60     	b.eq	0x16bc <gpio_keys_attr_show_helper+0x88>
    1714: 17fffff2     	b	0x16dc <gpio_keys_attr_show_helper+0xa8>
    1718: 90000002     	adrp	x2, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64
    171c: 91000042     	add	x2, x2, #0x0
		000000000000171c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64
    1720: aa1303e0     	mov	x0, x19
    1724: 5281ffe1     	mov	w1, #0xfff              // =4095
    1728: 2a1603e3     	mov	w3, w22
    172c: aa1703e4     	mov	x4, x23
    1730: 94000000     	bl	0x1730 <gpio_keys_attr_show_helper+0xfc>
		0000000000001730:  R_AARCH64_CALL26	scnprintf
    1734: 93407c09     	sxtw	x9, w0
    1738: 52800148     	mov	w8, #0xa                // =10
    173c: aa1703e0     	mov	x0, x23
    1740: 91000534     	add	x20, x9, #0x1
    1744: 78296a68     	strh	w8, [x19, x9]
    1748: 94000000     	bl	0x1748 <gpio_keys_attr_show_helper+0x114>
		0000000000001748:  R_AARCH64_CALL26	bitmap_free
    174c: 14000002     	b	0x1754 <gpio_keys_attr_show_helper+0x120>
    1750: 92800174     	mov	x20, #-0xc              // =-12
    1754: aa1403e0     	mov	x0, x20
    1758: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    175c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1760: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1764: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1768: d50323bf     	autiasp
    176c: d65f03c0     	ret
    1770: d4210000     	brk	#0x800
