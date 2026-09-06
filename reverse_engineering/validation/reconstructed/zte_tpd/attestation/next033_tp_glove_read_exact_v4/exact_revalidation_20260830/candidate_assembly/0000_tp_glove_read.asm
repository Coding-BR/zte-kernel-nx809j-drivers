
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024fa4 <tp_glove_read>:
   24fa4: d503233f     	paciasp
   24fa8: d10143ff     	sub	sp, sp, #0x50
   24fac: a9027bfd     	stp	x29, x30, [sp, #0x20]
   24fb0: a90357f6     	stp	x22, x21, [sp, #0x30]
   24fb4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   24fb8: 910083fd     	add	x29, sp, #0x20
   24fbc: d5384108     	mrs	x8, SP_EL0
   24fc0: aa1f03e0     	mov	x0, xzr
   24fc4: f9438908     	ldr	x8, [x8, #0x710]
   24fc8: f81f83a8     	stur	x8, [x29, #-0x8]
   24fcc: f9400068     	ldr	x8, [x3]
   24fd0: 790023ff     	strh	wzr, [sp, #0x10]
   24fd4: f90007ff     	str	xzr, [sp, #0x8]
   24fd8: b4000188     	cbz	x8, 0x25008 <tp_glove_read+0x64>
   24fdc: d5384108     	mrs	x8, SP_EL0
   24fe0: f9438908     	ldr	x8, [x8, #0x710]
   24fe4: f85f83a9     	ldur	x9, [x29, #-0x8]
   24fe8: eb09011f     	cmp	x8, x9
   24fec: 54000521     	b.ne	0x25090 <tp_glove_read+0xec>
   24ff0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   24ff4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   24ff8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24ffc: 910143ff     	add	sp, sp, #0x50
   25000: d50323bf     	autiasp
   25004: d65f03c0     	ret
   25008: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025008:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2500c: aa0103f5     	mov	x21, x1
   25010: aa0203f4     	mov	x20, x2
   25014: f9400116     	ldr	x22, [x8]
		0000000000025014:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25018: aa0303f3     	mov	x19, x3
   2501c: f94726c8     	ldr	x8, [x22, #0xe48]
   25020: b4000128     	cbz	x8, 0x25044 <tp_glove_read+0xa0>
   25024: aa1603e0     	mov	x0, x22
   25028: b85fc110     	ldur	w16, [x8, #-0x4]
   2502c: 7281af31     	movk	w17, #0xd79
   25030: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25034: 6b11021f     	cmp	w16, w17
   25038: 54000040     	b.eq	0x25040 <tp_glove_read+0x9c>
   2503c: d4304500     	brk	#0x8228
   25040: d63f0100     	blr	x8
   25044: b9400ac2     	ldr	w2, [x22, #0x8]
   25048: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   2504c: 91000000     	add	x0, x0, #0x0
		000000000002504c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   25050: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c68a
   25054: 91000021     	add	x1, x1, #0x0
		0000000000025054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c68a
   25058: 94000000     	bl	0x25058 <tp_glove_read+0xb4>
		0000000000025058:  R_AARCH64_CALL26	_printk
   2505c: b9400ac3     	ldr	w3, [x22, #0x8]
   25060: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   25064: 91000042     	add	x2, x2, #0x0
		0000000000025064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   25068: 910023e0     	add	x0, sp, #0x8
   2506c: 52800141     	mov	w1, #0xa                // =10
   25070: 94000000     	bl	0x25070 <tp_glove_read+0xcc>
		0000000000025070:  R_AARCH64_CALL26	snprintf
   25074: 93407c04     	sxtw	x4, w0
   25078: 910023e3     	add	x3, sp, #0x8
   2507c: aa1403e1     	mov	x1, x20
   25080: aa1503e0     	mov	x0, x21
   25084: aa1303e2     	mov	x2, x19
   25088: 94000000     	bl	0x25088 <tp_glove_read+0xe4>
		0000000000025088:  R_AARCH64_CALL26	simple_read_from_buffer
   2508c: 17ffffd4     	b	0x24fdc <tp_glove_read+0x38>
   25090: 94000000     	bl	0x25090 <tp_glove_read+0xec>
		0000000000025090:  R_AARCH64_CALL26	__stack_chk_fail
