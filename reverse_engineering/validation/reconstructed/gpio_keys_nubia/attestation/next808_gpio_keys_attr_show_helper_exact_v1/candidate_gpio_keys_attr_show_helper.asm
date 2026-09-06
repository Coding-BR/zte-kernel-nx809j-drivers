
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000214 <gpio_keys_attr_show_helper>:
     214: 121d7848     	and	w8, w2, #0xfffffffb
     218: 7100051f     	cmp	w8, #0x1
     21c: 540009a1     	b.ne	0x350 <gpio_keys_attr_show_helper+0x13c>
     220: d503233f     	paciasp
     224: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     228: a9015ff8     	stp	x24, x23, [sp, #0x10]
     22c: a90257f6     	stp	x22, x21, [sp, #0x20]
     230: a9034ff4     	stp	x20, x19, [sp, #0x30]
     234: 910003fd     	mov	x29, sp
     238: 7100045f     	cmp	w2, #0x1
     23c: 52800228     	mov	w8, #0x11               // =17
     240: 52806009     	mov	w9, #0x300              // =768
     244: 1a880136     	csel	w22, w9, w8, eq
     248: aa0103f3     	mov	x19, x1
     24c: aa0003f8     	mov	x24, x0
     250: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_show_helper_log
     254: 91000000     	add	x0, x0, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_show_helper_log
     258: 2a1603e1     	mov	w1, w22
     25c: 2a0303f4     	mov	w20, w3
     260: 2a0203f5     	mov	w21, w2
     264: 94000000     	bl	0x264 <gpio_keys_attr_show_helper+0x50>
		0000000000000264:  R_AARCH64_CALL26	_printk
     268: 2a1603e0     	mov	w0, w22
     26c: 52819801     	mov	w1, #0xcc0              // =3264
     270: 94000000     	bl	0x270 <gpio_keys_attr_show_helper+0x5c>
		0000000000000270:  R_AARCH64_CALL26	bitmap_zalloc
     274: b40005e0     	cbz	x0, 0x330 <gpio_keys_attr_show_helper+0x11c>
     278: f9400308     	ldr	x8, [x24]
     27c: aa0003f7     	mov	x23, x0
     280: b9400908     	ldr	w8, [x8, #0x8]
     284: 7100051f     	cmp	w8, #0x1
     288: 5400038b     	b.lt	0x2f8 <gpio_keys_attr_show_helper+0xe4>
     28c: aa1f03e8     	mov	x8, xzr
     290: 52800029     	mov	w9, #0x1                // =1
     294: aa1803ea     	mov	x10, x24
     298: 1400000f     	b	0x2d4 <gpio_keys_attr_show_helper+0xc0>
     29c: f940314b     	ldr	x11, [x10, #0x60]
     2a0: 7940016b     	ldrh	w11, [x11]
     2a4: d343fd6c     	lsr	x12, x11, #3
     2a8: 9acb212b     	lsl	x11, x9, x11
     2ac: 927d258c     	and	x12, x12, #0x1ff8
     2b0: f86c6aed     	ldr	x13, [x23, x12]
     2b4: aa0b01ab     	orr	x11, x13, x11
     2b8: f82c6aeb     	str	x11, [x23, x12]
     2bc: f940030b     	ldr	x11, [x24]
     2c0: 91000508     	add	x8, x8, #0x1
     2c4: 9104414a     	add	x10, x10, #0x110
     2c8: b980096b     	ldrsw	x11, [x11, #0x8]
     2cc: eb0b011f     	cmp	x8, x11
     2d0: 5400014a     	b.ge	0x2f8 <gpio_keys_attr_show_helper+0xe4>
     2d4: f940254b     	ldr	x11, [x10, #0x48]
     2d8: b940196b     	ldr	w11, [x11, #0x18]
     2dc: 6b15017f     	cmp	w11, w21
     2e0: 54fffee1     	b.ne	0x2bc <gpio_keys_attr_show_helper+0xa8>
     2e4: 3607fdd4     	tbz	w20, #0x0, 0x29c <gpio_keys_attr_show_helper+0x88>
     2e8: 3945414b     	ldrb	w11, [x10, #0x150]
     2ec: 7100057f     	cmp	w11, #0x1
     2f0: 54fffd60     	b.eq	0x29c <gpio_keys_attr_show_helper+0x88>
     2f4: 17fffff2     	b	0x2bc <gpio_keys_attr_show_helper+0xa8>
     2f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	gpio_keys_attr_show_bitmap_fmt
     2fc: 91000042     	add	x2, x2, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	gpio_keys_attr_show_bitmap_fmt
     300: aa1303e0     	mov	x0, x19
     304: 5281ffe1     	mov	w1, #0xfff              // =4095
     308: 2a1603e3     	mov	w3, w22
     30c: aa1703e4     	mov	x4, x23
     310: 94000000     	bl	0x310 <gpio_keys_attr_show_helper+0xfc>
		0000000000000310:  R_AARCH64_CALL26	scnprintf
     314: 93407c09     	sxtw	x9, w0
     318: 52800148     	mov	w8, #0xa                // =10
     31c: aa1703e0     	mov	x0, x23
     320: 91000534     	add	x20, x9, #0x1
     324: 78296a68     	strh	w8, [x19, x9]
     328: 94000000     	bl	0x328 <gpio_keys_attr_show_helper+0x114>
		0000000000000328:  R_AARCH64_CALL26	bitmap_free
     32c: 14000002     	b	0x334 <gpio_keys_attr_show_helper+0x120>
     330: 92800174     	mov	x20, #-0xc              // =-12
     334: aa1403e0     	mov	x0, x20
     338: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     33c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     340: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     344: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     348: d50323bf     	autiasp
     34c: d65f03c0     	ret
     350: d4210000     	brk	#0x800
