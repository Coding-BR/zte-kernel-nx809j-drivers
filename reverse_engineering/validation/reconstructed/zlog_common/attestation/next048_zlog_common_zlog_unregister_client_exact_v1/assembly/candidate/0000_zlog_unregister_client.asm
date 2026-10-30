
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004dc <zlog_unregister_client>:
     4dc: d503233f     	paciasp
     4e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     4e4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     4e8: 910003fd     	mov	x29, sp
     4ec: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0x24c4
     4f0: 39400108     	ldrb	w8, [x8]
		00000000000004f0:  R_AARCH64_LDST8_ABS_LO12_NC	zlog_exact_bss_base+0x24c4
     4f4: 360000e8     	tbz	w8, #0x0, 0x510 <zlog_unregister_client+0x34>
     4f8: b9400013     	ldr	w19, [x0]
     4fc: aa0003f4     	mov	x20, x0
     500: 36f80173     	tbz	w19, #0x1f, 0x52c <zlog_unregister_client+0x50>
     504: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x5cd
     508: 91000000     	add	x0, x0, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x5cd
     50c: 14000033     	b	0x5d8 <zlog_unregister_client+0xfc>
     510: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x5b6
     514: 91000021     	add	x1, x1, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x5b6
     518: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000518:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x581
     51c: 91000000     	add	x0, x0, #0x0
		000000000000051c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x581
     520: aa0103e2     	mov	x2, x1
     524: 94000000     	bl	0x524 <zlog_unregister_client+0x48>
		0000000000000524:  R_AARCH64_CALL26	_printk
     528: 14000030     	b	0x5e8 <zlog_unregister_client+0x10c>
     52c: 9102c280     	add	x0, x20, #0xb0
     530: 94000000     	bl	0x530 <zlog_unregister_client+0x54>
		0000000000000530:  R_AARCH64_CALL26	mutex_lock
     534: f9408680     	ldr	x0, [x20, #0x108]
     538: b4000040     	cbz	x0, 0x540 <zlog_unregister_client+0x64>
     53c: 94000000     	bl	0x53c <zlog_unregister_client+0x60>
		000000000000053c:  R_AARCH64_CALL26	kfree
     540: 52810008     	mov	w8, #0x800              // =2048
     544: f9007a9f     	str	xzr, [x20, #0xf0]
     548: a90fa29f     	stp	xzr, x8, [x20, #0xf8]
     54c: f800429f     	stur	xzr, [x20, #0x4]
     550: f800c29f     	stur	xzr, [x20, #0xc]
     554: f801429f     	stur	xzr, [x20, #0x14]
     558: f801c29f     	stur	xzr, [x20, #0x1c]
     55c: f802429f     	stur	xzr, [x20, #0x24]
     560: f802c29f     	stur	xzr, [x20, #0x2c]
     564: f803429f     	stur	xzr, [x20, #0x34]
     568: f803c29f     	stur	xzr, [x20, #0x3c]
     56c: f804429f     	stur	xzr, [x20, #0x44]
     570: f804c29f     	stur	xzr, [x20, #0x4c]
     574: f805429f     	stur	xzr, [x20, #0x54]
     578: f805c29f     	stur	xzr, [x20, #0x5c]
     57c: f806429f     	stur	xzr, [x20, #0x64]
     580: f806c29f     	stur	xzr, [x20, #0x6c]
     584: f807429f     	stur	xzr, [x20, #0x74]
     588: f807c29f     	stur	xzr, [x20, #0x7c]
     58c: f809c29f     	stur	xzr, [x20, #0x9c]
     590: f809429f     	stur	xzr, [x20, #0x94]
     594: f808c29f     	stur	xzr, [x20, #0x8c]
     598: f808429f     	stur	xzr, [x20, #0x84]
     59c: f802429f     	stur	xzr, [x20, #0x24]
     5a0: f802c29f     	stur	xzr, [x20, #0x2c]
     5a4: f803429f     	stur	xzr, [x20, #0x34]
     5a8: f803c29f     	stur	xzr, [x20, #0x3c]
     5ac: b900029f     	str	wzr, [x20]
     5b0: f900569f     	str	xzr, [x20, #0xa8]
     5b4: 3904629f     	strb	wzr, [x20, #0x118]
     5b8: 14000010     	b	0x5f8 <zlog_unregister_client+0x11c>
     5bc: 9103a288     	add	x8, x20, #0xe8
     5c0: 52800029     	mov	w9, #0x1                // =1
     5c4: f829311f     	stset	x9, [x8]
     5c8: 9102c280     	add	x0, x20, #0xb0
     5cc: 94000000     	bl	0x5cc <zlog_unregister_client+0xf0>
		00000000000005cc:  R_AARCH64_CALL26	mutex_unlock
     5d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005d0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x226
     5d4: 91000000     	add	x0, x0, #0x0
		00000000000005d4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x226
     5d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x5b6
     5dc: 91000021     	add	x1, x1, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x5b6
     5e0: 2a1303e2     	mov	w2, w19
     5e4: 94000000     	bl	0x5e4 <zlog_unregister_client+0x108>
		00000000000005e4:  R_AARCH64_CALL26	_printk
     5e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     5ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     5f0: d50323bf     	autiasp
     5f4: d65f03c0     	ret
     5f8: 9103a288     	add	x8, x20, #0xe8
     5fc: f9800111     	prfm	pstl1strm, [x8]
     600: c85f7d09     	ldxr	x9, [x8]
     604: b2400129     	orr	x9, x9, #0x1
     608: c80a7d09     	stxr	w10, x9, [x8]
     60c: 35ffffaa     	cbnz	w10, 0x600 <zlog_unregister_client+0x124>
     610: 17ffffee     	b	0x5c8 <zlog_unregister_client+0xec>
