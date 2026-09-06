
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000041d4 <tp_single_tap_read>:
    41d4: d503233f     	paciasp
    41d8: d10143ff     	sub	sp, sp, #0x50
    41dc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    41e0: a90357f6     	stp	x22, x21, [sp, #0x30]
    41e4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    41e8: 910083fd     	add	x29, sp, #0x20
    41ec: d5384108     	mrs	x8, SP_EL0
    41f0: aa1f03e0     	mov	x0, xzr
    41f4: f9438908     	ldr	x8, [x8, #0x710]
    41f8: f81f83a8     	stur	x8, [x29, #-0x8]
    41fc: f9400068     	ldr	x8, [x3]
    4200: 790023ff     	strh	wzr, [sp, #0x10]
    4204: f90007ff     	str	xzr, [sp, #0x8]
    4208: b4000188     	cbz	x8, 0x4238 <tp_single_tap_read+0x64>
    420c: d5384108     	mrs	x8, SP_EL0
    4210: f9438908     	ldr	x8, [x8, #0x710]
    4214: f85f83a9     	ldur	x9, [x29, #-0x8]
    4218: eb09011f     	cmp	x8, x9
    421c: 54000521     	b.ne	0x42c0 <tp_single_tap_read+0xec>
    4220: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    4224: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4228: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    422c: 910143ff     	add	sp, sp, #0x50
    4230: d50323bf     	autiasp
    4234: d65f03c0     	ret
    4238: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004238:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    423c: aa0103f5     	mov	x21, x1
    4240: aa0203f4     	mov	x20, x2
    4244: f9400116     	ldr	x22, [x8]
		0000000000004244:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4248: aa0303f3     	mov	x19, x3
    424c: f9475ec8     	ldr	x8, [x22, #0xeb8]
    4250: b4000128     	cbz	x8, 0x4274 <tp_single_tap_read+0xa0>
    4254: aa1603e0     	mov	x0, x22
    4258: b85fc110     	ldur	w16, [x8, #-0x4]
    425c: 7281af31     	movk	w17, #0xd79
    4260: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    4264: 6b11021f     	cmp	w16, w17
    4268: 54000040     	b.eq	0x4270 <tp_single_tap_read+0x9c>
    426c: d4304500     	brk	#0x8228
    4270: d63f0100     	blr	x8
    4274: b9444ec2     	ldr	w2, [x22, #0x44c]
    4278: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a98
    427c: 91000000     	add	x0, x0, #0x0
		000000000000427c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a98
    4280: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		0000000000004280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f11
    4284: 91000021     	add	x1, x1, #0x0
		0000000000004284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f11
    4288: 94000000     	bl	0x4288 <tp_single_tap_read+0xb4>
		0000000000004288:  R_AARCH64_CALL26	_printk
    428c: b9444ec3     	ldr	w3, [x22, #0x44c]
    4290: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    4294: 91000042     	add	x2, x2, #0x0
		0000000000004294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    4298: 910023e0     	add	x0, sp, #0x8
    429c: 52800141     	mov	w1, #0xa                // =10
    42a0: 94000000     	bl	0x42a0 <tp_single_tap_read+0xcc>
		00000000000042a0:  R_AARCH64_CALL26	snprintf
    42a4: 93407c04     	sxtw	x4, w0
    42a8: 910023e3     	add	x3, sp, #0x8
    42ac: aa1403e1     	mov	x1, x20
    42b0: aa1503e0     	mov	x0, x21
    42b4: aa1303e2     	mov	x2, x19
    42b8: 94000000     	bl	0x42b8 <tp_single_tap_read+0xe4>
		00000000000042b8:  R_AARCH64_CALL26	simple_read_from_buffer
    42bc: 17ffffd4     	b	0x420c <tp_single_tap_read+0x38>
    42c0: 94000000     	bl	0x42c0 <tp_single_tap_read+0xec>
		00000000000042c0:  R_AARCH64_CALL26	__stack_chk_fail
