
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000214 <aw86320_play_mode>:
     214: d503233f     	paciasp
     218: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     21c: f9000bf3     	str	x19, [sp, #0x10]
     220: 910003fd     	mov	x29, sp
     224: 72001c3f     	tst	w1, #0xff
     228: aa0003f3     	mov	x19, x0
     22c: 540002a1     	b.ne	0x280 <aw86320_play_mode+0x6c>
     230: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101
     234: 91000000     	add	x0, x0, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101
     238: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     23c: 91000021     	add	x1, x1, #0x0
		000000000000023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     240: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf20
     244: 91000063     	add	x3, x3, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf20
     248: 52802462     	mov	w2, #0x123              // =291
     24c: 94000000     	bl	0x24c <aw86320_play_mode+0x38>
		000000000000024c:  R_AARCH64_CALL26	_printk
     250: aa1303e0     	mov	x0, x19
     254: 52800361     	mov	w1, #0x1b               // =27
     258: 5281c1c2     	mov	w2, #0xe0e              // =3598
     25c: 94000078     	bl	0x43c <haptic_i2c_write>
     260: aa1303e0     	mov	x0, x19
     264: 528004a1     	mov	w1, #0x25               // =37
     268: 2a1f03e2     	mov	w2, wzr
     26c: 94000074     	bl	0x43c <haptic_i2c_write>
     270: 52938100     	mov	w0, #0x9c08             // =39944
     274: 72a01880     	movk	w0, #0xc4, lsl #16
     278: 94000000     	bl	0x278 <aw86320_play_mode+0x64>
		0000000000000278:  R_AARCH64_CALL26	__const_udelay
     27c: 14000012     	b	0x2c4 <aw86320_play_mode+0xb0>
     280: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c7
     284: 91000000     	add	x0, x0, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c7
     288: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     28c: 91000021     	add	x1, x1, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     290: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf20
     294: 91000063     	add	x3, x3, #0x0
		0000000000000294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf20
     298: 52802522     	mov	w2, #0x129              // =297
     29c: 94000000     	bl	0x29c <aw86320_play_mode+0x88>
		000000000000029c:  R_AARCH64_CALL26	_printk
     2a0: 394d1a68     	ldrb	w8, [x19, #0x346]
     2a4: 7100051f     	cmp	w8, #0x1
     2a8: 54000041     	b.ne	0x2b0 <aw86320_play_mode+0x9c>
     2ac: 39000668     	strb	w8, [x19, #0x1]
     2b0: 394d1668     	ldrb	w8, [x19, #0x345]
     2b4: 7100051f     	cmp	w8, #0x1
     2b8: 54000061     	b.ne	0x2c4 <aw86320_play_mode+0xb0>
     2bc: 52800048     	mov	w8, #0x2                // =2
     2c0: 39000668     	strb	w8, [x19, #0x1]
     2c4: f9400bf3     	ldr	x19, [sp, #0x10]
     2c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     2cc: d50323bf     	autiasp
     2d0: d65f03c0     	ret
