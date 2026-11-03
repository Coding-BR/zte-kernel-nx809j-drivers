
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001e0 <zte_check_xbl_log_lines>:
     1e0: d503233f     	paciasp
     1e4: d10203ff     	sub	sp, sp, #0x80
     1e8: a9027bfd     	stp	x29, x30, [sp, #0x20]
     1ec: a9036ffc     	stp	x28, x27, [sp, #0x30]
     1f0: a90467fa     	stp	x26, x25, [sp, #0x40]
     1f4: a9055ff8     	stp	x24, x23, [sp, #0x50]
     1f8: a90657f6     	stp	x22, x21, [sp, #0x60]
     1fc: a9074ff4     	stp	x20, x19, [sp, #0x70]
     200: 910083fd     	add	x29, sp, #0x20
     204: a947dc09     	ldp	x9, x23, [x0, #0x78]
     208: 52860008     	mov	w8, #0x3000             // =12288
     20c: f9000be4     	str	x4, [sp, #0x10]
     210: f81f83a0     	stur	x0, [x29, #-0x8]
     214: f1400d3f     	cmp	x9, #0x3, lsl #12       // =0x3000
     218: 9a883128     	csel	x8, x9, x8, lo
     21c: f90007e8     	str	x8, [sp, #0x8]
     220: 8b0802e8     	add	x8, x23, x8
     224: eb0802ff     	cmp	x23, x8
     228: 540008a2     	b.hs	0x33c <zte_check_xbl_log_lines+0x15c>
     22c: aa0303f5     	mov	x21, x3
     230: aa0203f6     	mov	x22, x2
     234: aa0103f8     	mov	x24, x1
     238: 14000007     	b	0x254 <zte_check_xbl_log_lines+0x74>
     23c: f85f83a8     	ldur	x8, [x29, #-0x8]
     240: f94007e9     	ldr	x9, [sp, #0x8]
     244: f9404108     	ldr	x8, [x8, #0x80]
     248: 8b090108     	add	x8, x8, x9
     24c: eb0802ff     	cmp	x23, x8
     250: 54000762     	b.hs	0x33c <zte_check_xbl_log_lines+0x15c>
     254: cb17011a     	sub	x26, x8, x23
     258: aa1703e0     	mov	x0, x23
     25c: 52800141     	mov	w1, #0xa                // =10
     260: aa1a03e2     	mov	x2, x26
     264: 94000000     	bl	0x264 <zte_check_xbl_log_lines+0x84>
		0000000000000264:  R_AARCH64_CALL26	memchr
     268: b40007e0     	cbz	x0, 0x364 <zte_check_xbl_log_lines+0x184>
     26c: cb17001b     	sub	x27, x0, x23
     270: aa0003fc     	mov	x28, x0
     274: f1000b7f     	cmp	x27, #0x2
     278: 540007e3     	b.lo	0x374 <zte_check_xbl_log_lines+0x194>
     27c: b4000576     	cbz	x22, 0x328 <zte_check_xbl_log_lines+0x148>
     280: f9400bf4     	ldr	x20, [sp, #0x10]
     284: aa1f03f9     	mov	x25, xzr
     288: d1000773     	sub	x19, x27, #0x1
     28c: 1400000c     	b	0x2bc <zte_check_xbl_log_lines+0xdc>
     290: f85f83a8     	ldur	x8, [x29, #-0x8]
     294: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194
     298: 91000021     	add	x1, x1, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194
     29c: aa1903e2     	mov	x2, x25
     2a0: aa1a03e3     	mov	x3, x26
     2a4: f9400100     	ldr	x0, [x8]
     2a8: 94000000     	bl	0x2a8 <zte_check_xbl_log_lines+0xc8>
		00000000000002a8:  R_AARCH64_CALL26	_dev_info
     2ac: 91000739     	add	x25, x25, #0x1
     2b0: 91020294     	add	x20, x20, #0x80
     2b4: eb1902df     	cmp	x22, x25
     2b8: 54000280     	b.eq	0x308 <zte_check_xbl_log_lines+0x128>
     2bc: b8797aa8     	ldr	w8, [x21, x25, lsl #2]
     2c0: 7100051f     	cmp	w8, #0x1
     2c4: 54ffff4b     	b.lt	0x2ac <zte_check_xbl_log_lines+0xcc>
     2c8: f8797b01     	ldr	x1, [x24, x25, lsl #3]
     2cc: aa1703e0     	mov	x0, x23
     2d0: aa1b03e2     	mov	x2, x27
     2d4: 94000000     	bl	0x2d4 <zte_check_xbl_log_lines+0xf4>
		00000000000002d4:  R_AARCH64_CALL26	strnstr
     2d8: b4fffea0     	cbz	x0, 0x2ac <zte_check_xbl_log_lines+0xcc>
     2dc: f102037f     	cmp	x27, #0x80
     2e0: 54fffd88     	b.hi	0x290 <zte_check_xbl_log_lines+0xb0>
     2e4: aa1403e0     	mov	x0, x20
     2e8: aa1703e1     	mov	x1, x23
     2ec: aa1303e2     	mov	x2, x19
     2f0: 94000000     	bl	0x2f0 <zte_check_xbl_log_lines+0x110>
		00000000000002f0:  R_AARCH64_CALL26	memcpy
     2f4: 38336a9f     	strb	wzr, [x20, x19]
     2f8: b8797aa8     	ldr	w8, [x21, x25, lsl #2]
     2fc: 51000508     	sub	w8, w8, #0x1
     300: b8397aa8     	str	w8, [x21, x25, lsl #2]
     304: 17ffffea     	b	0x2ac <zte_check_xbl_log_lines+0xcc>
     308: 91000797     	add	x23, x28, #0x1
     30c: aa1503e8     	mov	x8, x21
     310: aa1603e9     	mov	x9, x22
     314: b840450a     	ldr	w10, [x8], #0x4
     318: 7100015f     	cmp	w10, #0x0
     31c: 54fff90c     	b.gt	0x23c <zte_check_xbl_log_lines+0x5c>
     320: f1000529     	subs	x9, x9, #0x1
     324: 54ffff81     	b.ne	0x314 <zte_check_xbl_log_lines+0x134>
     328: f85f83a8     	ldur	x8, [x29, #-0x8]
     32c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x210
     330: 91000021     	add	x1, x1, #0x0
		0000000000000330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x210
     334: f9400100     	ldr	x0, [x8]
     338: 94000000     	bl	0x338 <zte_check_xbl_log_lines+0x158>
		0000000000000338:  R_AARCH64_CALL26	_dev_info
     33c: 2a1f03e0     	mov	w0, wzr
     340: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     344: a94657f6     	ldp	x22, x21, [sp, #0x60]
     348: a9455ff8     	ldp	x24, x23, [sp, #0x50]
     34c: a94467fa     	ldp	x26, x25, [sp, #0x40]
     350: a9436ffc     	ldp	x28, x27, [sp, #0x30]
     354: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     358: 910203ff     	add	sp, sp, #0x80
     35c: d50323bf     	autiasp
     360: d65f03c0     	ret
     364: f85f83a8     	ldur	x8, [x29, #-0x8]
     368: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48a
     36c: 91000021     	add	x1, x1, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48a
     370: 17fffff1     	b	0x334 <zte_check_xbl_log_lines+0x154>
     374: f85f83a8     	ldur	x8, [x29, #-0x8]
     378: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     37c: 91000021     	add	x1, x1, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     380: aa1b03e2     	mov	x2, x27
     384: aa1a03e3     	mov	x3, x26
     388: f9400100     	ldr	x0, [x8]
     38c: 94000000     	bl	0x38c <zte_check_xbl_log_lines+0x1ac>
		000000000000038c:  R_AARCH64_CALL26	_dev_err
     390: 12800000     	mov	w0, #-0x1               // =-1
     394: 17ffffeb     	b	0x340 <zte_check_xbl_log_lines+0x160>
