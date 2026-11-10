
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000388 <gf_open>:
     388: d503233f     	paciasp
     38c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     390: f9000bf7     	str	x23, [sp, #0x10]
     394: a90257f6     	stp	x22, x21, [sp, #0x20]
     398: a9034ff4     	stp	x20, x19, [sp, #0x30]
     39c: 910003fd     	mov	x29, sp
     3a0: aa0103f3     	mov	x19, x1
     3a4: aa0003f4     	mov	x20, x0
     3a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12dc
     3ac: 91000000     	add	x0, x0, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12dc
     3b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca2
     3b4: 91000021     	add	x1, x1, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca2
     3b8: 94000000     	bl	0x3b8 <gf_open+0x30>
		00000000000003b8:  R_AARCH64_CALL26	_printk
     3bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003bc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     3c0: 91000000     	add	x0, x0, #0x0
		00000000000003c0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     3c4: 94000000     	bl	0x3c4 <gf_open+0x3c>
		00000000000003c4:  R_AARCH64_CALL26	mutex_lock
     3c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003c8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     3cc: 91000108     	add	x8, x8, #0x0
		00000000000003cc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     3d0: aa0803f7     	mov	x23, x8
     3d4: f94002f7     	ldr	x23, [x23]
     3d8: eb0802ff     	cmp	x23, x8
     3dc: 540001e0     	b.eq	0x418 <gf_open+0x90>
     3e0: b85f82e9     	ldur	w9, [x23, #-0x8]
     3e4: b9404e8a     	ldr	w10, [x20, #0x4c]
     3e8: 6b0a013f     	cmp	w9, w10
     3ec: 54ffff41     	b.ne	0x3d4 <gf_open+0x4c>
     3f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d7
     3f4: 91000000     	add	x0, x0, #0x0
		00000000000003f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d7
     3f8: 94000000     	bl	0x3f8 <gf_open+0x70>
		00000000000003f8:  R_AARCH64_CALL26	_printk
     3fc: b94116e8     	ldr	w8, [x23, #0x114]
     400: 35000088     	cbnz	w8, 0x410 <gf_open+0x88>
     404: d10022f5     	sub	x21, x23, #0x8
     408: b94002a8     	ldr	w8, [x21]
     40c: 35000308     	cbnz	w8, 0x46c <gf_open+0xe4>
     410: 12800256     	mov	w22, #-0x13             // =-19
     414: 14000007     	b	0x430 <gf_open+0xa8>
     418: b9404e88     	ldr	w8, [x20, #0x4c]
     41c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000041c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb65
     420: 91000000     	add	x0, x0, #0x0
		0000000000000420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb65
     424: 12004d01     	and	w1, w8, #0xfffff
     428: 94000000     	bl	0x428 <gf_open+0xa0>
		0000000000000428:  R_AARCH64_CALL26	_printk
     42c: 128000b6     	mov	w22, #-0x6              // =-6
     430: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000430:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     434: 91000000     	add	x0, x0, #0x0
		0000000000000434:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     438: 94000000     	bl	0x438 <gf_open+0xb0>
		0000000000000438:  R_AARCH64_CALL26	mutex_unlock
     43c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xffa
     440: 91000000     	add	x0, x0, #0x0
		0000000000000440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xffa
     444: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca2
     448: 91000021     	add	x1, x1, #0x0
		0000000000000448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca2
     44c: 94000000     	bl	0x44c <gf_open+0xc4>
		000000000000044c:  R_AARCH64_CALL26	_printk
     450: 2a1603e0     	mov	w0, w22
     454: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     458: f9400bf7     	ldr	x23, [sp, #0x10]
     45c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     460: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     464: d50323bf     	autiasp
     468: d65f03c0     	ret
     46c: b94032e8     	ldr	w8, [x23, #0x30]
     470: 350002c8     	cbnz	w8, 0x4c8 <gf_open+0x140>
     474: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000474:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     478: 91000000     	add	x0, x0, #0x0
		0000000000000478:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     47c: 94000000     	bl	0x47c <gf_open+0xf4>
		000000000000047c:  R_AARCH64_CALL26	zlog_register_client
     480: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9b
     484: 91000108     	add	x8, x8, #0x0
		0000000000000484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9b
     488: f100001f     	cmp	x0, #0x0
     48c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad2
     490: 91000129     	add	x9, x9, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad2
     494: f9003ae0     	str	x0, [x23, #0x70]
     498: 9a880120     	csel	x0, x9, x8, eq
     49c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000049c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca2
     4a0: 91000021     	add	x1, x1, #0x0
		00000000000004a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca2
     4a4: 94000000     	bl	0x4a4 <gf_open+0x11c>
		00000000000004a4:  R_AARCH64_CALL26	_printk
     4a8: f9400ae8     	ldr	x8, [x23, #0x10]
     4ac: aa1f03e1     	mov	x1, xzr
     4b0: 52819802     	mov	w2, #0xcc0              // =3264
     4b4: 91004100     	add	x0, x8, #0x10
     4b8: 94000000     	bl	0x4b8 <gf_open+0x130>
		00000000000004b8:  R_AARCH64_CALL26	devres_open_group
     4bc: b50002c0     	cbnz	x0, 0x514 <gf_open+0x18c>
     4c0: 12800176     	mov	w22, #-0xc              // =-12
     4c4: 1400003e     	b	0x5bc <gf_open+0x234>
     4c8: f94086e9     	ldr	x9, [x23, #0x108]
     4cc: b4fffa29     	cbz	x9, 0x410 <gf_open+0x88>
     4d0: 11000508     	add	w8, w8, #0x1
     4d4: aa1403e0     	mov	x0, x20
     4d8: aa1303e1     	mov	x1, x19
     4dc: b90032e8     	str	w8, [x23, #0x30]
     4e0: f9001275     	str	x21, [x19, #0x20]
     4e4: 94000000     	bl	0x4e4 <gf_open+0x15c>
		00000000000004e4:  R_AARCH64_CALL26	nonseekable_open
     4e8: b94042e1     	ldr	w1, [x23, #0x40]
     4ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x589
     4f0: 91000000     	add	x0, x0, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x589
     4f4: 94000000     	bl	0x4f4 <gf_open+0x16c>
		00000000000004f4:  R_AARCH64_CALL26	_printk
     4f8: aa1503e0     	mov	x0, x21
     4fc: 528000a1     	mov	w1, #0x5                // =5
     500: 94000000     	bl	0x500 <gf_open+0x178>
		0000000000000500:  R_AARCH64_CALL26	gf_hw_reset
     504: 52800028     	mov	w8, #0x1                // =1
     508: 2a1f03f6     	mov	w22, wzr
     50c: 3901a2e8     	strb	w8, [x23, #0x68]
     510: 17ffffc8     	b	0x430 <gf_open+0xa8>
     514: f90086e0     	str	x0, [x23, #0x108]
     518: aa1503e0     	mov	x0, x21
     51c: 94000000     	bl	0x51c <gf_open+0x194>
		000000000000051c:  R_AARCH64_CALL26	gf_parse_dts
     520: 2a0003f6     	mov	w22, w0
     524: 350003e0     	cbnz	w0, 0x5a0 <gf_open+0x218>
     528: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x879
     52c: 91000000     	add	x0, x0, #0x0
		000000000000052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x879
     530: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x605
     534: 91000021     	add	x1, x1, #0x0
		0000000000000534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x605
     538: 94000000     	bl	0x538 <gf_open+0x1b0>
		0000000000000538:  R_AARCH64_CALL26	_printk
     53c: aa1503e0     	mov	x0, x21
     540: 94000000     	bl	0x540 <gf_open+0x1b8>
		0000000000000540:  R_AARCH64_CALL26	gf_irq_num
     544: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x71c
     548: 91000042     	add	x2, x2, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x71c
     54c: 90000004     	adrp	x4, 0x0 <.text>
		000000000000054c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7b
     550: 91000084     	add	x4, x4, #0x0
		0000000000000550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7b
     554: aa1f03e1     	mov	x1, xzr
     558: 52840023     	mov	w3, #0x2001             // =8193
     55c: aa1503e5     	mov	x5, x21
     560: b90042e0     	str	w0, [x23, #0x40]
     564: 94000000     	bl	0x564 <gf_open+0x1dc>
		0000000000000564:  R_AARCH64_CALL26	request_threaded_irq
     568: 35000120     	cbnz	w0, 0x58c <gf_open+0x204>
     56c: b94042e0     	ldr	w0, [x23, #0x40]
     570: 52800036     	mov	w22, #0x1               // =1
     574: 52800021     	mov	w1, #0x1                // =1
     578: b90112f6     	str	w22, [x23, #0x110]
     57c: 94000000     	bl	0x57c <gf_open+0x1f4>
		000000000000057c:  R_AARCH64_CALL26	irq_set_irq_wake
     580: b94032e8     	ldr	w8, [x23, #0x30]
     584: b90046f6     	str	w22, [x23, #0x44]
     588: 17ffffd2     	b	0x4d0 <gf_open+0x148>
     58c: 2a0003f6     	mov	w22, w0
     590: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd8
     594: 91000000     	add	x0, x0, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd8
     598: 2a1603e1     	mov	w1, w22
     59c: 94000000     	bl	0x59c <gf_open+0x214>
		000000000000059c:  R_AARCH64_CALL26	_printk
     5a0: b94112e8     	ldr	w8, [x23, #0x110]
     5a4: 34000068     	cbz	w8, 0x5b0 <gf_open+0x228>
     5a8: aa1503e0     	mov	x0, x21
     5ac: 94000044     	bl	0x6bc <gf_release_irq>
     5b0: aa1503e0     	mov	x0, x21
     5b4: 94000000     	bl	0x5b4 <gf_open+0x22c>
		00000000000005b4:  R_AARCH64_CALL26	gf_cleanup
     5b8: 3901a2ff     	strb	wzr, [x23, #0x68]
     5bc: f9403ae0     	ldr	x0, [x23, #0x70]
     5c0: b4fff380     	cbz	x0, 0x430 <gf_open+0xa8>
     5c4: 94000000     	bl	0x5c4 <gf_open+0x23c>
		00000000000005c4:  R_AARCH64_CALL26	zlog_unregister_client
     5c8: f9003aff     	str	xzr, [x23, #0x70]
     5cc: 17ffff99     	b	0x430 <gf_open+0xa8>
