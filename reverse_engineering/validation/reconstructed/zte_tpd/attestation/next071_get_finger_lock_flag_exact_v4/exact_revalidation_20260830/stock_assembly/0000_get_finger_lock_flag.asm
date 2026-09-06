
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000060a4 <get_finger_lock_flag>:
    60a4: d503233f     	paciasp
    60a8: d10143ff     	sub	sp, sp, #0x50
    60ac: a9027bfd     	stp	x29, x30, [sp, #0x20]
    60b0: a90357f6     	stp	x22, x21, [sp, #0x30]
    60b4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    60b8: 910083fd     	add	x29, sp, #0x20
    60bc: d5384108     	mrs	x8, SP_EL0
    60c0: aa1f03e0     	mov	x0, xzr
    60c4: f9438908     	ldr	x8, [x8, #0x710]
    60c8: f81f83a8     	stur	x8, [x29, #-0x8]
    60cc: f9400068     	ldr	x8, [x3]
    60d0: 790023ff     	strh	wzr, [sp, #0x10]
    60d4: f90007ff     	str	xzr, [sp, #0x8]
    60d8: b4000188     	cbz	x8, 0x6108 <get_finger_lock_flag+0x64>
    60dc: d5384108     	mrs	x8, SP_EL0
    60e0: f9438908     	ldr	x8, [x8, #0x710]
    60e4: f85f83a9     	ldur	x9, [x29, #-0x8]
    60e8: eb09011f     	cmp	x8, x9
    60ec: 54000421     	b.ne	0x6170 <get_finger_lock_flag+0xcc>
    60f0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    60f4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    60f8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    60fc: 910143ff     	add	sp, sp, #0x50
    6100: d50323bf     	autiasp
    6104: d65f03c0     	ret
    6108: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006108:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    610c: 90000009     	adrp	x9, 0x6000 <tp_pen_only_write+0x70>
		000000000000610c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabe5
    6110: 91000129     	add	x9, x9, #0x0
		0000000000006110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabe5
    6114: f9400116     	ldr	x22, [x8]
		0000000000006114:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6118: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    611c: 91000000     	add	x0, x0, #0x0
		000000000000611c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    6120: aa0103f3     	mov	x19, x1
    6124: aa0903e1     	mov	x1, x9
    6128: aa0203f4     	mov	x20, x2
    612c: b94476c8     	ldr	w8, [x22, #0x474]
    6130: aa0303f5     	mov	x21, x3
    6134: 2a0803e2     	mov	w2, w8
    6138: 94000000     	bl	0x6138 <get_finger_lock_flag+0x94>
		0000000000006138:  R_AARCH64_CALL26	_printk
    613c: b94476c3     	ldr	w3, [x22, #0x474]
    6140: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    6144: 91000042     	add	x2, x2, #0x0
		0000000000006144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    6148: 910023e0     	add	x0, sp, #0x8
    614c: 52800141     	mov	w1, #0xa                // =10
    6150: 94000000     	bl	0x6150 <get_finger_lock_flag+0xac>
		0000000000006150:  R_AARCH64_CALL26	snprintf
    6154: 93407c04     	sxtw	x4, w0
    6158: 910023e3     	add	x3, sp, #0x8
    615c: aa1403e1     	mov	x1, x20
    6160: aa1303e0     	mov	x0, x19
    6164: aa1503e2     	mov	x2, x21
    6168: 94000000     	bl	0x6168 <get_finger_lock_flag+0xc4>
		0000000000006168:  R_AARCH64_CALL26	simple_read_from_buffer
    616c: 17ffffdc     	b	0x60dc <get_finger_lock_flag+0x38>
    6170: 94000000     	bl	0x6170 <get_finger_lock_flag+0xcc>
		0000000000006170:  R_AARCH64_CALL26	__stack_chk_fail
