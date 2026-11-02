
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024d44 <tp_wake_gesture_read>:
   24d44: d503233f     	paciasp
   24d48: d10143ff     	sub	sp, sp, #0x50
   24d4c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   24d50: a90357f6     	stp	x22, x21, [sp, #0x30]
   24d54: a9044ff4     	stp	x20, x19, [sp, #0x40]
   24d58: 910083fd     	add	x29, sp, #0x20
   24d5c: d5384108     	mrs	x8, SP_EL0
   24d60: aa1f03e0     	mov	x0, xzr
   24d64: f9438908     	ldr	x8, [x8, #0x710]
   24d68: f81f83a8     	stur	x8, [x29, #-0x8]
   24d6c: f9400068     	ldr	x8, [x3]
   24d70: 790023ff     	strh	wzr, [sp, #0x10]
   24d74: f90007ff     	str	xzr, [sp, #0x8]
   24d78: b4000188     	cbz	x8, 0x24da8 <tp_wake_gesture_read+0x64>
   24d7c: d5384108     	mrs	x8, SP_EL0
   24d80: f9438908     	ldr	x8, [x8, #0x710]
   24d84: f85f83a9     	ldur	x9, [x29, #-0x8]
   24d88: eb09011f     	cmp	x8, x9
   24d8c: 54000521     	b.ne	0x24e30 <tp_wake_gesture_read+0xec>
   24d90: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   24d94: a94357f6     	ldp	x22, x21, [sp, #0x30]
   24d98: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24d9c: 910143ff     	add	sp, sp, #0x50
   24da0: d50323bf     	autiasp
   24da4: d65f03c0     	ret
   24da8: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024da8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24dac: aa0103f5     	mov	x21, x1
   24db0: aa0203f4     	mov	x20, x2
   24db4: f9400116     	ldr	x22, [x8]
		0000000000024db4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24db8: aa0303f3     	mov	x19, x3
   24dbc: f94716c8     	ldr	x8, [x22, #0xe28]
   24dc0: b4000128     	cbz	x8, 0x24de4 <tp_wake_gesture_read+0xa0>
   24dc4: aa1603e0     	mov	x0, x22
   24dc8: b85fc110     	ldur	w16, [x8, #-0x4]
   24dcc: 7281af31     	movk	w17, #0xd79
   24dd0: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   24dd4: 6b11021f     	cmp	w16, w17
   24dd8: 54000040     	b.eq	0x24de0 <tp_wake_gesture_read+0x9c>
   24ddc: d4304500     	brk	#0x8228
   24de0: d63f0100     	blr	x8
   24de4: b94002c2     	ldr	w2, [x22]
   24de8: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   24dec: 91000000     	add	x0, x0, #0x0
		0000000000024dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   24df0: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef4
   24df4: 91000021     	add	x1, x1, #0x0
		0000000000024df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef4
   24df8: 94000000     	bl	0x24df8 <tp_wake_gesture_read+0xb4>
		0000000000024df8:  R_AARCH64_CALL26	_printk
   24dfc: b94002c3     	ldr	w3, [x22]
   24e00: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   24e04: 91000042     	add	x2, x2, #0x0
		0000000000024e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   24e08: 910023e0     	add	x0, sp, #0x8
   24e0c: 52800141     	mov	w1, #0xa                // =10
   24e10: 94000000     	bl	0x24e10 <tp_wake_gesture_read+0xcc>
		0000000000024e10:  R_AARCH64_CALL26	snprintf
   24e14: 93407c04     	sxtw	x4, w0
   24e18: 910023e3     	add	x3, sp, #0x8
   24e1c: aa1403e1     	mov	x1, x20
   24e20: aa1503e0     	mov	x0, x21
   24e24: aa1303e2     	mov	x2, x19
   24e28: 94000000     	bl	0x24e28 <tp_wake_gesture_read+0xe4>
		0000000000024e28:  R_AARCH64_CALL26	simple_read_from_buffer
   24e2c: 17ffffd4     	b	0x24d7c <tp_wake_gesture_read+0x38>
   24e30: 94000000     	bl	0x24e30 <tp_wake_gesture_read+0xec>
		0000000000024e30:  R_AARCH64_CALL26	__stack_chk_fail
