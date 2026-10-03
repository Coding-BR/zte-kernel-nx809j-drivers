
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005a4 <zlog_unregister_client>:
     5a4: d503233f     	paciasp
     5a8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     5ac: a9014ff4     	stp	x20, x19, [sp, #0x10]
     5b0: 910003fd     	mov	x29, sp
     5b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
     5b8: 39400108     	ldrb	w8, [x8]
		00000000000005b8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
     5bc: 360000e8     	tbz	w8, #0x0, 0x5d8 <zlog_unregister_client+0x34>
     5c0: b9400013     	ldr	w19, [x0]
     5c4: aa0003f4     	mov	x20, x0
     5c8: 36f80173     	tbz	w19, #0x1f, 0x5f4 <zlog_unregister_client+0x50>
     5cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cd
     5d0: 91000000     	add	x0, x0, #0x0
		00000000000005d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cd
     5d4: 14000033     	b	0x6a0 <zlog_unregister_client+0xfc>
     5d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b6
     5dc: 91000021     	add	x1, x1, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b6
     5e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x581
     5e4: 91000000     	add	x0, x0, #0x0
		00000000000005e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x581
     5e8: aa0103e2     	mov	x2, x1
     5ec: 94000000     	bl	0x5ec <zlog_unregister_client+0x48>
		00000000000005ec:  R_AARCH64_CALL26	_printk
     5f0: 14000030     	b	0x6b0 <zlog_unregister_client+0x10c>
     5f4: 9102c280     	add	x0, x20, #0xb0
     5f8: 94000000     	bl	0x5f8 <zlog_unregister_client+0x54>
		00000000000005f8:  R_AARCH64_CALL26	mutex_lock
     5fc: f9408680     	ldr	x0, [x20, #0x108]
     600: b4000040     	cbz	x0, 0x608 <zlog_unregister_client+0x64>
     604: 94000000     	bl	0x604 <zlog_unregister_client+0x60>
		0000000000000604:  R_AARCH64_CALL26	kfree
     608: 52810008     	mov	w8, #0x800              // =2048
     60c: f9007a9f     	str	xzr, [x20, #0xf0]
     610: a90fa29f     	stp	xzr, x8, [x20, #0xf8]
     614: f800429f     	stur	xzr, [x20, #0x4]
     618: f800c29f     	stur	xzr, [x20, #0xc]
     61c: f801429f     	stur	xzr, [x20, #0x14]
     620: f801c29f     	stur	xzr, [x20, #0x1c]
     624: f802429f     	stur	xzr, [x20, #0x24]
     628: f802c29f     	stur	xzr, [x20, #0x2c]
     62c: f803429f     	stur	xzr, [x20, #0x34]
     630: f803c29f     	stur	xzr, [x20, #0x3c]
     634: f804429f     	stur	xzr, [x20, #0x44]
     638: f804c29f     	stur	xzr, [x20, #0x4c]
     63c: f805429f     	stur	xzr, [x20, #0x54]
     640: f805c29f     	stur	xzr, [x20, #0x5c]
     644: f806429f     	stur	xzr, [x20, #0x64]
     648: f806c29f     	stur	xzr, [x20, #0x6c]
     64c: f807429f     	stur	xzr, [x20, #0x74]
     650: f807c29f     	stur	xzr, [x20, #0x7c]
     654: f809c29f     	stur	xzr, [x20, #0x9c]
     658: f809429f     	stur	xzr, [x20, #0x94]
     65c: f808c29f     	stur	xzr, [x20, #0x8c]
     660: f808429f     	stur	xzr, [x20, #0x84]
     664: f802429f     	stur	xzr, [x20, #0x24]
     668: f802c29f     	stur	xzr, [x20, #0x2c]
     66c: f803429f     	stur	xzr, [x20, #0x34]
     670: f803c29f     	stur	xzr, [x20, #0x3c]
     674: b900029f     	str	wzr, [x20]
     678: f900569f     	str	xzr, [x20, #0xa8]
     67c: 3904629f     	strb	wzr, [x20, #0x118]
     680: 14000010     	b	0x6c0 <zlog_unregister_client+0x11c>
     684: 9103a288     	add	x8, x20, #0xe8
     688: 52800029     	mov	w9, #0x1                // =1
     68c: f829311f     	stset	x9, [x8]
     690: 9102c280     	add	x0, x20, #0xb0
     694: 94000000     	bl	0x694 <zlog_unregister_client+0xf0>
		0000000000000694:  R_AARCH64_CALL26	mutex_unlock
     698: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x226
     69c: 91000000     	add	x0, x0, #0x0
		000000000000069c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x226
     6a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b6
     6a4: 91000021     	add	x1, x1, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b6
     6a8: 2a1303e2     	mov	w2, w19
     6ac: 94000000     	bl	0x6ac <zlog_unregister_client+0x108>
		00000000000006ac:  R_AARCH64_CALL26	_printk
     6b0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     6b4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     6b8: d50323bf     	autiasp
     6bc: d65f03c0     	ret
     6c0: 9103a288     	add	x8, x20, #0xe8
     6c4: f9800111     	prfm	pstl1strm, [x8]
     6c8: c85f7d09     	ldxr	x9, [x8]
     6cc: b2400129     	orr	x9, x9, #0x1
     6d0: c80a7d09     	stxr	w10, x9, [x8]
     6d4: 35ffffaa     	cbnz	w10, 0x6c8 <zlog_unregister_client+0x124>
     6d8: 17ffffee     	b	0x690 <zlog_unregister_client+0xec>
