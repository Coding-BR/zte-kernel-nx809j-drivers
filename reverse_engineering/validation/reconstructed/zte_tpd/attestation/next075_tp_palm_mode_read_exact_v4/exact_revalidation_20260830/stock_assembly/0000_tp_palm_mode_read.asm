
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006460 <tp_palm_mode_read>:
    6460: d503233f     	paciasp
    6464: d10143ff     	sub	sp, sp, #0x50
    6468: a9027bfd     	stp	x29, x30, [sp, #0x20]
    646c: a90357f6     	stp	x22, x21, [sp, #0x30]
    6470: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6474: 910083fd     	add	x29, sp, #0x20
    6478: d5384108     	mrs	x8, SP_EL0
    647c: aa1f03e0     	mov	x0, xzr
    6480: f9438908     	ldr	x8, [x8, #0x710]
    6484: f81f83a8     	stur	x8, [x29, #-0x8]
    6488: f9400068     	ldr	x8, [x3]
    648c: 790023ff     	strh	wzr, [sp, #0x10]
    6490: f90007ff     	str	xzr, [sp, #0x8]
    6494: b4000188     	cbz	x8, 0x64c4 <tp_palm_mode_read+0x64>
    6498: d5384108     	mrs	x8, SP_EL0
    649c: f9438908     	ldr	x8, [x8, #0x710]
    64a0: f85f83a9     	ldur	x9, [x29, #-0x8]
    64a4: eb09011f     	cmp	x8, x9
    64a8: 54000521     	b.ne	0x654c <tp_palm_mode_read+0xec>
    64ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    64b0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    64b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    64b8: 910143ff     	add	sp, sp, #0x50
    64bc: d50323bf     	autiasp
    64c0: d65f03c0     	ret
    64c4: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		00000000000064c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    64c8: aa0103f5     	mov	x21, x1
    64cc: aa0203f4     	mov	x20, x2
    64d0: f9400116     	ldr	x22, [x8]
		00000000000064d0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    64d4: aa0303f3     	mov	x19, x3
    64d8: f947d6c8     	ldr	x8, [x22, #0xfa8]
    64dc: b4000128     	cbz	x8, 0x6500 <tp_palm_mode_read+0xa0>
    64e0: aa1603e0     	mov	x0, x22
    64e4: b85fc110     	ldur	w16, [x8, #-0x4]
    64e8: 7281af31     	movk	w17, #0xd79
    64ec: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    64f0: 6b11021f     	cmp	w16, w17
    64f4: 54000040     	b.eq	0x64fc <tp_palm_mode_read+0x9c>
    64f8: d4304500     	brk	#0x8228
    64fc: d63f0100     	blr	x8
    6500: b9447ac2     	ldr	w2, [x22, #0x478]
    6504: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a98
    6508: 91000000     	add	x0, x0, #0x0
		0000000000006508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a98
    650c: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		000000000000650c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37e0
    6510: 91000021     	add	x1, x1, #0x0
		0000000000006510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37e0
    6514: 94000000     	bl	0x6514 <tp_palm_mode_read+0xb4>
		0000000000006514:  R_AARCH64_CALL26	_printk
    6518: b9447ac3     	ldr	w3, [x22, #0x478]
    651c: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		000000000000651c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    6520: 91000042     	add	x2, x2, #0x0
		0000000000006520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    6524: 910023e0     	add	x0, sp, #0x8
    6528: 52800141     	mov	w1, #0xa                // =10
    652c: 94000000     	bl	0x652c <tp_palm_mode_read+0xcc>
		000000000000652c:  R_AARCH64_CALL26	snprintf
    6530: 93407c04     	sxtw	x4, w0
    6534: 910023e3     	add	x3, sp, #0x8
    6538: aa1403e1     	mov	x1, x20
    653c: aa1503e0     	mov	x0, x21
    6540: aa1303e2     	mov	x2, x19
    6544: 94000000     	bl	0x6544 <tp_palm_mode_read+0xe4>
		0000000000006544:  R_AARCH64_CALL26	simple_read_from_buffer
    6548: 17ffffd4     	b	0x6498 <tp_palm_mode_read+0x38>
    654c: 94000000     	bl	0x654c <tp_palm_mode_read+0xec>
		000000000000654c:  R_AARCH64_CALL26	__stack_chk_fail
