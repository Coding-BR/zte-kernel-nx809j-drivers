
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000598 <zlog_unregister_client>:
     598: d503233f     	paciasp
     59c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     5a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     5a4: 910003fd     	mov	x29, sp
     5a8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
     5ac: 39400108     	ldrb	w8, [x8]
		00000000000005ac:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
     5b0: 37000108     	tbnz	w8, #0x0, 0x5d0 <zlog_unregister_client+0x38>
     5b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
     5b8: 91000021     	add	x1, x1, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
     5bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b
     5c0: 91000000     	add	x0, x0, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b
     5c4: aa0103e2     	mov	x2, x1
     5c8: 94000000     	bl	0x5c8 <zlog_unregister_client+0x30>
		00000000000005c8:  R_AARCH64_CALL26	_printk
     5cc: 14000036     	b	0x6a4 <zlog_unregister_client+0x10c>
     5d0: b9400013     	ldr	w19, [x0]
     5d4: aa0003f4     	mov	x20, x0
     5d8: 36f80093     	tbz	w19, #0x1f, 0x5e8 <zlog_unregister_client+0x50>
     5dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b7
     5e0: 91000000     	add	x0, x0, #0x0
		00000000000005e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b7
     5e4: 1400002c     	b	0x694 <zlog_unregister_client+0xfc>
     5e8: 9102c280     	add	x0, x20, #0xb0
     5ec: 94000000     	bl	0x5ec <zlog_unregister_client+0x54>
		00000000000005ec:  R_AARCH64_CALL26	mutex_lock
     5f0: f9408680     	ldr	x0, [x20, #0x108]
     5f4: b4000040     	cbz	x0, 0x5fc <zlog_unregister_client+0x64>
     5f8: 94000000     	bl	0x5f8 <zlog_unregister_client+0x60>
		00000000000005f8:  R_AARCH64_CALL26	kfree
     5fc: 52810008     	mov	w8, #0x800              // =2048
     600: a90f7e9f     	stp	xzr, xzr, [x20, #0xf0]
     604: f9008288     	str	x8, [x20, #0x100]
     608: f800429f     	stur	xzr, [x20, #0x4]
     60c: f800c29f     	stur	xzr, [x20, #0xc]
     610: f801429f     	stur	xzr, [x20, #0x14]
     614: f801c29f     	stur	xzr, [x20, #0x1c]
     618: f802429f     	stur	xzr, [x20, #0x24]
     61c: f802c29f     	stur	xzr, [x20, #0x2c]
     620: f803429f     	stur	xzr, [x20, #0x34]
     624: f803c29f     	stur	xzr, [x20, #0x3c]
     628: f804429f     	stur	xzr, [x20, #0x44]
     62c: f804c29f     	stur	xzr, [x20, #0x4c]
     630: f805429f     	stur	xzr, [x20, #0x54]
     634: f805c29f     	stur	xzr, [x20, #0x5c]
     638: f806429f     	stur	xzr, [x20, #0x64]
     63c: f806c29f     	stur	xzr, [x20, #0x6c]
     640: f807429f     	stur	xzr, [x20, #0x74]
     644: f807c29f     	stur	xzr, [x20, #0x7c]
     648: f809c29f     	stur	xzr, [x20, #0x9c]
     64c: f809429f     	stur	xzr, [x20, #0x94]
     650: f808c29f     	stur	xzr, [x20, #0x8c]
     654: f808429f     	stur	xzr, [x20, #0x84]
     658: f802429f     	stur	xzr, [x20, #0x24]
     65c: f802c29f     	stur	xzr, [x20, #0x2c]
     660: f803429f     	stur	xzr, [x20, #0x34]
     664: f803c29f     	stur	xzr, [x20, #0x3c]
     668: b900029f     	str	wzr, [x20]
     66c: f900569f     	str	xzr, [x20, #0xa8]
     670: 3904629f     	strb	wzr, [x20, #0x118]
     674: 14000010     	b	0x6b4 <zlog_unregister_client+0x11c>
     678: 9103a288     	add	x8, x20, #0xe8
     67c: 52800029     	mov	w9, #0x1                // =1
     680: f829311f     	stset	x9, [x8]
     684: 9102c280     	add	x0, x20, #0xb0
     688: 94000000     	bl	0x688 <zlog_unregister_client+0xf0>
		0000000000000688:  R_AARCH64_CALL26	mutex_unlock
     68c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x226
     690: 91000000     	add	x0, x0, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x226
     694: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a0
     698: 91000021     	add	x1, x1, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a0
     69c: 2a1303e2     	mov	w2, w19
     6a0: 94000000     	bl	0x6a0 <zlog_unregister_client+0x108>
		00000000000006a0:  R_AARCH64_CALL26	_printk
     6a4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     6a8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     6ac: d50323bf     	autiasp
     6b0: d65f03c0     	ret
     6b4: 9103a288     	add	x8, x20, #0xe8
     6b8: f9800111     	prfm	pstl1strm, [x8]
     6bc: c85f7d09     	ldxr	x9, [x8]
     6c0: b2400129     	orr	x9, x9, #0x1
     6c4: c80a7d09     	stxr	w10, x9, [x8]
     6c8: 35ffffaa     	cbnz	w10, 0x6bc <zlog_unregister_client+0x124>
     6cc: 17ffffee     	b	0x684 <zlog_unregister_client+0xec>
