
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f41c <tp_smart_cover_read>:
   1f41c: d503233f     	paciasp
   1f420: d10143ff     	sub	sp, sp, #0x50
   1f424: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f428: a90357f6     	stp	x22, x21, [sp, #0x30]
   1f42c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1f430: 910083fd     	add	x29, sp, #0x20
   1f434: d5384108     	mrs	x8, SP_EL0
   1f438: aa1f03e0     	mov	x0, xzr
   1f43c: f9438908     	ldr	x8, [x8, #0x710]
   1f440: f81f83a8     	stur	x8, [x29, #-0x8]
   1f444: f9400068     	ldr	x8, [x3]
   1f448: f90007ff     	str	xzr, [sp, #0x8]
   1f44c: b4000188     	cbz	x8, 0x1f47c <tp_smart_cover_read+0x60>
   1f450: d5384108     	mrs	x8, SP_EL0
   1f454: f9438908     	ldr	x8, [x8, #0x710]
   1f458: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f45c: eb09011f     	cmp	x8, x9
   1f460: 54000541     	b.ne	0x1f508 <tp_smart_cover_read+0xec>
   1f464: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1f468: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1f46c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f470: 910143ff     	add	sp, sp, #0x50
   1f474: d50323bf     	autiasp
   1f478: d65f03c0     	ret
   1f47c: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f47c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f480: f9000bff     	str	xzr, [sp, #0x10]
   1f484: aa0103f5     	mov	x21, x1
   1f488: f9400116     	ldr	x22, [x8]
		000000000001f488:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f48c: aa0203f4     	mov	x20, x2
   1f490: aa0303f3     	mov	x19, x3
   1f494: f9471ec8     	ldr	x8, [x22, #0xe38]
   1f498: b4000128     	cbz	x8, 0x1f4bc <tp_smart_cover_read+0xa0>
   1f49c: aa1603e0     	mov	x0, x22
   1f4a0: b85fc110     	ldur	w16, [x8, #-0x4]
   1f4a4: 7281af31     	movk	w17, #0xd79
   1f4a8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1f4ac: 6b11021f     	cmp	w16, w17
   1f4b0: 54000040     	b.eq	0x1f4b8 <tp_smart_cover_read+0x9c>
   1f4b4: d4304500     	brk	#0x8228
   1f4b8: d63f0100     	blr	x8
   1f4bc: b94006c2     	ldr	w2, [x22, #0x4]
   1f4c0: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f4c0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
   1f4c4: 91000000     	add	x0, x0, #0x0
		000000000001f4c4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
   1f4c8: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f4c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca9
   1f4cc: 91000021     	add	x1, x1, #0x0
		000000000001f4cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca9
   1f4d0: 94000000     	bl	0x1f4d0 <tp_smart_cover_read+0xb4>
		000000000001f4d0:  R_AARCH64_CALL26	_printk
   1f4d4: b94006c3     	ldr	w3, [x22, #0x4]
   1f4d8: 90000002     	adrp	x2, 0x1f000 <tp_single_aod_write+0x7c>
		000000000001f4d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
   1f4dc: 91000042     	add	x2, x2, #0x0
		000000000001f4dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
   1f4e0: 910023e0     	add	x0, sp, #0x8
   1f4e4: 52800141     	mov	w1, #0xa                // =10
   1f4e8: 94000000     	bl	0x1f4e8 <tp_smart_cover_read+0xcc>
		000000000001f4e8:  R_AARCH64_CALL26	snprintf
   1f4ec: 93407c04     	sxtw	x4, w0
   1f4f0: 910023e3     	add	x3, sp, #0x8
   1f4f4: aa1403e1     	mov	x1, x20
   1f4f8: aa1503e0     	mov	x0, x21
   1f4fc: aa1303e2     	mov	x2, x19
   1f500: 94000000     	bl	0x1f500 <tp_smart_cover_read+0xe4>
		000000000001f500:  R_AARCH64_CALL26	simple_read_from_buffer
   1f504: 17ffffd3     	b	0x1f450 <tp_smart_cover_read+0x34>
   1f508: 94000000     	bl	0x1f508 <tp_smart_cover_read+0xec>
		000000000001f508:  R_AARCH64_CALL26	__stack_chk_fail
