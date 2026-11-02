
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000298 <gf_open>:
     298: d503233f     	paciasp
     29c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     2a0: a9015ff8     	stp	x24, x23, [sp, #0x10]
     2a4: a90257f6     	stp	x22, x21, [sp, #0x20]
     2a8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     2ac: 910003fd     	mov	x29, sp
     2b0: aa0103f5     	mov	x21, x1
     2b4: aa0003f6     	mov	x22, x0
     2b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1314
     2bc: 91000000     	add	x0, x0, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1314
     2c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd41
     2c4: 91000021     	add	x1, x1, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd41
     2c8: 94000000     	bl	0x2c8 <gf_open+0x30>
		00000000000002c8:  R_AARCH64_CALL26	_printk
     2cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002cc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     2d0: 91000000     	add	x0, x0, #0x0
		00000000000002d0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     2d4: 94000000     	bl	0x2d4 <gf_open+0x3c>
		00000000000002d4:  R_AARCH64_CALL26	mutex_lock
     2d8: 90000018     	adrp	x24, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     2dc: 91000318     	add	x24, x24, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     2e0: aa1803f7     	mov	x23, x24
     2e4: f94002f7     	ldr	x23, [x23]
     2e8: eb1802ff     	cmp	x23, x24
     2ec: d10022f3     	sub	x19, x23, #0x8
     2f0: 54000140     	b.eq	0x318 <gf_open+0x80>
     2f4: b9400268     	ldr	w8, [x19]
     2f8: b9404ec9     	ldr	w9, [x22, #0x4c]
     2fc: 6b09011f     	cmp	w8, w9
     300: 54ffff21     	b.ne	0x2e4 <gf_open+0x4c>
     304: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x846
     308: 91000000     	add	x0, x0, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x846
     30c: 94000000     	bl	0x30c <gf_open+0x74>
		000000000000030c:  R_AARCH64_CALL26	_printk
     310: 2a1f03f4     	mov	w20, wzr
     314: 14000002     	b	0x31c <gf_open+0x84>
     318: 128000b4     	mov	w20, #-0x6              // =-6
     31c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     320: 91000000     	add	x0, x0, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     324: 94000000     	bl	0x324 <gf_open+0x8c>
		0000000000000324:  R_AARCH64_CALL26	zlog_register_client
     328: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0a
     32c: 91000108     	add	x8, x8, #0x0
		000000000000032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0a
     330: f100001f     	cmp	x0, #0x0
     334: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb41
     338: 91000129     	add	x9, x9, #0x0
		0000000000000338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb41
     33c: f9003ae0     	str	x0, [x23, #0x70]
     340: 9a880120     	csel	x0, x9, x8, eq
     344: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd41
     348: 91000021     	add	x1, x1, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd41
     34c: 94000000     	bl	0x34c <gf_open+0xb4>
		000000000000034c:  R_AARCH64_CALL26	_printk
     350: eb1802ff     	cmp	x23, x24
     354: 540001e1     	b.ne	0x390 <gf_open+0xf8>
     358: b9404ec8     	ldr	w8, [x22, #0x4c]
     35c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000035c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd4
     360: 91000000     	add	x0, x0, #0x0
		0000000000000360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd4
     364: 12004d01     	and	w1, w8, #0xfffff
     368: 94000000     	bl	0x368 <gf_open+0xd0>
		0000000000000368:  R_AARCH64_CALL26	_printk
     36c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000036c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     370: 91000000     	add	x0, x0, #0x0
		0000000000000370:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     374: 94000000     	bl	0x374 <gf_open+0xdc>
		0000000000000374:  R_AARCH64_CALL26	mutex_unlock
     378: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1032
     37c: 91000000     	add	x0, x0, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1032
     380: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd41
     384: 91000021     	add	x1, x1, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd41
     388: 94000000     	bl	0x388 <gf_open+0xf0>
		0000000000000388:  R_AARCH64_CALL26	_printk
     38c: 14000016     	b	0x3e4 <gf_open+0x14c>
     390: b94032e8     	ldr	w8, [x23, #0x30]
     394: aa1603e0     	mov	x0, x22
     398: aa1503e1     	mov	x1, x21
     39c: 11000508     	add	w8, w8, #0x1
     3a0: b90032e8     	str	w8, [x23, #0x30]
     3a4: f90012b3     	str	x19, [x21, #0x20]
     3a8: 94000000     	bl	0x3a8 <gf_open+0x110>
		00000000000003a8:  R_AARCH64_CALL26	nonseekable_open
     3ac: b94042e1     	ldr	w1, [x23, #0x40]
     3b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57e
     3b4: 91000000     	add	x0, x0, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57e
     3b8: 94000000     	bl	0x3b8 <gf_open+0x120>
		00000000000003b8:  R_AARCH64_CALL26	_printk
     3bc: b94032e8     	ldr	w8, [x23, #0x30]
     3c0: 7100051f     	cmp	w8, #0x1
     3c4: 540004c1     	b.ne	0x45c <gf_open+0x1c4>
     3c8: aa1303e0     	mov	x0, x19
     3cc: 94000000     	bl	0x3cc <gf_open+0x134>
		00000000000003cc:  R_AARCH64_CALL26	gf_parse_dts
     3d0: 2a0003f4     	mov	w20, w0
     3d4: 34000160     	cbz	w0, 0x400 <gf_open+0x168>
     3d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     3dc: 91000000     	add	x0, x0, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     3e0: 94000000     	bl	0x3e0 <gf_open+0x148>
		00000000000003e0:  R_AARCH64_CALL26	mutex_unlock
     3e4: 2a1403e0     	mov	w0, w20
     3e8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     3ec: a94257f6     	ldp	x22, x21, [sp, #0x20]
     3f0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     3f4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     3f8: d50323bf     	autiasp
     3fc: d65f03c0     	ret
     400: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e8
     404: 91000000     	add	x0, x0, #0x0
		0000000000000404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e8
     408: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x628
     40c: 91000021     	add	x1, x1, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x628
     410: 94000000     	bl	0x410 <gf_open+0x178>
		0000000000000410:  R_AARCH64_CALL26	_printk
     414: aa1303e0     	mov	x0, x19
     418: 94000000     	bl	0x418 <gf_open+0x180>
		0000000000000418:  R_AARCH64_CALL26	gf_irq_num
     41c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x58c
     420: 91000042     	add	x2, x2, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x58c
     424: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedf
     428: 91000084     	add	x4, x4, #0x0
		0000000000000428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedf
     42c: aa1f03e1     	mov	x1, xzr
     430: 52840023     	mov	w3, #0x2001             // =8193
     434: aa1303e5     	mov	x5, x19
     438: b90042e0     	str	w0, [x23, #0x40]
     43c: 94000000     	bl	0x43c <gf_open+0x1a4>
		000000000000043c:  R_AARCH64_CALL26	request_threaded_irq
     440: b94042e1     	ldr	w1, [x23, #0x40]
     444: 350001a0     	cbnz	w0, 0x478 <gf_open+0x1e0>
     448: 2a0103e0     	mov	w0, w1
     44c: 52800021     	mov	w1, #0x1                // =1
     450: 52800034     	mov	w20, #0x1               // =1
     454: 94000000     	bl	0x454 <gf_open+0x1bc>
		0000000000000454:  R_AARCH64_CALL26	irq_set_irq_wake
     458: b90046f4     	str	w20, [x23, #0x44]
     45c: aa1303e0     	mov	x0, x19
     460: 528000a1     	mov	w1, #0x5                // =5
     464: 94000000     	bl	0x464 <gf_open+0x1cc>
		0000000000000464:  R_AARCH64_CALL26	gf_hw_reset
     468: 52800028     	mov	w8, #0x1                // =1
     46c: 2a1f03f4     	mov	w20, wzr
     470: 3901a2e8     	strb	w8, [x23, #0x68]
     474: 17ffffbe     	b	0x36c <gf_open+0xd4>
     478: 2a0003f4     	mov	w20, w0
     47c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000047c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c
     480: 91000000     	add	x0, x0, #0x0
		0000000000000480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c
     484: 94000000     	bl	0x484 <gf_open+0x1ec>
		0000000000000484:  R_AARCH64_CALL26	_printk
     488: aa1303e0     	mov	x0, x19
     48c: 94000000     	bl	0x48c <gf_open+0x1f4>
		000000000000048c:  R_AARCH64_CALL26	gf_cleanup
     490: 17ffffd2     	b	0x3d8 <gf_open+0x140>
