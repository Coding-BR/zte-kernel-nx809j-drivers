
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006e0 <get_finger_lock_flag>:
     6e0: d503233f     	paciasp
     6e4: d10143ff     	sub	sp, sp, #0x50
     6e8: a9027bfd     	stp	x29, x30, [sp, #0x20]
     6ec: a90357f6     	stp	x22, x21, [sp, #0x30]
     6f0: a9044ff4     	stp	x20, x19, [sp, #0x40]
     6f4: 910083fd     	add	x29, sp, #0x20
     6f8: d5384108     	mrs	x8, SP_EL0
     6fc: aa1f03e0     	mov	x0, xzr
     700: f9438908     	ldr	x8, [x8, #0x710]
     704: f81f83a8     	stur	x8, [x29, #-0x8]
     708: f9400068     	ldr	x8, [x3]
     70c: 790023ff     	strh	wzr, [sp, #0x10]
     710: f90007ff     	str	xzr, [sp, #0x8]
     714: b4000188     	cbz	x8, 0x744 <get_finger_lock_flag+0x64>
     718: d5384108     	mrs	x8, SP_EL0
     71c: f9438908     	ldr	x8, [x8, #0x710]
     720: f85f83a9     	ldur	x9, [x29, #-0x8]
     724: eb09011f     	cmp	x8, x9
     728: 54000421     	b.ne	0x7ac <get_finger_lock_flag+0xcc>
     72c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     730: a94357f6     	ldp	x22, x21, [sp, #0x30]
     734: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     738: 910143ff     	add	sp, sp, #0x50
     73c: d50323bf     	autiasp
     740: d65f03c0     	ret
     744: 90000008     	adrp	x8, 0x0 <_inline_copy_from_user>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     748: 90000009     	adrp	x9, 0x0 <_inline_copy_from_user>
		0000000000000748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62fb
     74c: 91000129     	add	x9, x9, #0x0
		000000000000074c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62fb
     750: f9400116     	ldr	x22, [x8]
		0000000000000750:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     754: 90000000     	adrp	x0, 0x0 <_inline_copy_from_user>
		0000000000000754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53cd
     758: 91000000     	add	x0, x0, #0x0
		0000000000000758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53cd
     75c: aa0103f3     	mov	x19, x1
     760: aa0903e1     	mov	x1, x9
     764: aa0203f4     	mov	x20, x2
     768: b94476c8     	ldr	w8, [x22, #0x474]
     76c: aa0303f5     	mov	x21, x3
     770: 2a0803e2     	mov	w2, w8
     774: 94000000     	bl	0x774 <get_finger_lock_flag+0x94>
		0000000000000774:  R_AARCH64_CALL26	_printk
     778: b94476c3     	ldr	w3, [x22, #0x474]
     77c: 90000002     	adrp	x2, 0x0 <_inline_copy_from_user>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48f9
     780: 91000042     	add	x2, x2, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48f9
     784: 910023e0     	add	x0, sp, #0x8
     788: 52800141     	mov	w1, #0xa                // =10
     78c: 94000000     	bl	0x78c <get_finger_lock_flag+0xac>
		000000000000078c:  R_AARCH64_CALL26	snprintf
     790: 93407c04     	sxtw	x4, w0
     794: 910023e3     	add	x3, sp, #0x8
     798: aa1403e1     	mov	x1, x20
     79c: aa1303e0     	mov	x0, x19
     7a0: aa1503e2     	mov	x2, x21
     7a4: 94000000     	bl	0x7a4 <get_finger_lock_flag+0xc4>
		00000000000007a4:  R_AARCH64_CALL26	simple_read_from_buffer
     7a8: 17ffffdc     	b	0x718 <get_finger_lock_flag+0x38>
     7ac: 94000000     	bl	0x7ac <get_finger_lock_flag+0xcc>
		00000000000007ac:  R_AARCH64_CALL26	__stack_chk_fail
