
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f218 <tp_single_tap_read>:
   1f218: d503233f     	paciasp
   1f21c: d10143ff     	sub	sp, sp, #0x50
   1f220: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f224: a90357f6     	stp	x22, x21, [sp, #0x30]
   1f228: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1f22c: 910083fd     	add	x29, sp, #0x20
   1f230: d5384108     	mrs	x8, SP_EL0
   1f234: aa1f03e0     	mov	x0, xzr
   1f238: f9438908     	ldr	x8, [x8, #0x710]
   1f23c: f81f83a8     	stur	x8, [x29, #-0x8]
   1f240: f9400068     	ldr	x8, [x3]
   1f244: f90007ff     	str	xzr, [sp, #0x8]
   1f248: b4000188     	cbz	x8, 0x1f278 <tp_single_tap_read+0x60>
   1f24c: d5384108     	mrs	x8, SP_EL0
   1f250: f9438908     	ldr	x8, [x8, #0x710]
   1f254: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f258: eb09011f     	cmp	x8, x9
   1f25c: 54000541     	b.ne	0x1f304 <tp_single_tap_read+0xec>
   1f260: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1f264: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1f268: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f26c: 910143ff     	add	sp, sp, #0x50
   1f270: d50323bf     	autiasp
   1f274: d65f03c0     	ret
   1f278: 90000008     	adrp	x8, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f278:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f27c: f9000bff     	str	xzr, [sp, #0x10]
   1f280: aa0103f5     	mov	x21, x1
   1f284: f9400116     	ldr	x22, [x8]
		000000000001f284:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f288: aa0203f4     	mov	x20, x2
   1f28c: aa0303f3     	mov	x19, x3
   1f290: f9475ec8     	ldr	x8, [x22, #0xeb8]
   1f294: b4000128     	cbz	x8, 0x1f2b8 <tp_single_tap_read+0xa0>
   1f298: aa1603e0     	mov	x0, x22
   1f29c: b85fc110     	ldur	w16, [x8, #-0x4]
   1f2a0: 7281af31     	movk	w17, #0xd79
   1f2a4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1f2a8: 6b11021f     	cmp	w16, w17
   1f2ac: 54000040     	b.eq	0x1f2b4 <tp_single_tap_read+0x9c>
   1f2b0: d4304500     	brk	#0x8228
   1f2b4: d63f0100     	blr	x8
   1f2b8: b9444ec2     	ldr	w2, [x22, #0x44c]
   1f2bc: 90000000     	adrp	x0, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f2bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_34061
   1f2c0: 91000000     	add	x0, x0, #0x0
		000000000001f2c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_34061
   1f2c4: 90000001     	adrp	x1, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f2c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5662
   1f2c8: 91000021     	add	x1, x1, #0x0
		000000000001f2c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5662
   1f2cc: 94000000     	bl	0x1f2cc <tp_single_tap_read+0xb4>
		000000000001f2cc:  R_AARCH64_CALL26	_printk
   1f2d0: b9444ec3     	ldr	w3, [x22, #0x44c]
   1f2d4: 90000002     	adrp	x2, 0x1f000 <tp_single_aod_write+0xa4>
		000000000001f2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
   1f2d8: 91000042     	add	x2, x2, #0x0
		000000000001f2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
   1f2dc: 910023e0     	add	x0, sp, #0x8
   1f2e0: 52800141     	mov	w1, #0xa                // =10
   1f2e4: 94000000     	bl	0x1f2e4 <tp_single_tap_read+0xcc>
		000000000001f2e4:  R_AARCH64_CALL26	snprintf
   1f2e8: 93407c04     	sxtw	x4, w0
   1f2ec: 910023e3     	add	x3, sp, #0x8
   1f2f0: aa1403e1     	mov	x1, x20
   1f2f4: aa1503e0     	mov	x0, x21
   1f2f8: aa1303e2     	mov	x2, x19
   1f2fc: 94000000     	bl	0x1f2fc <tp_single_tap_read+0xe4>
		000000000001f2fc:  R_AARCH64_CALL26	simple_read_from_buffer
   1f300: 17ffffd3     	b	0x1f24c <tp_single_tap_read+0x34>
   1f304: 94000000     	bl	0x1f304 <tp_single_tap_read+0xec>
		000000000001f304:  R_AARCH64_CALL26	__stack_chk_fail
