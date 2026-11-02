
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024ce8 <tp_wake_gesture_read>:
   24ce8: d503233f     	paciasp
   24cec: d10143ff     	sub	sp, sp, #0x50
   24cf0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   24cf4: a90357f6     	stp	x22, x21, [sp, #0x30]
   24cf8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   24cfc: 910083fd     	add	x29, sp, #0x20
   24d00: d5384108     	mrs	x8, SP_EL0
   24d04: aa1f03e0     	mov	x0, xzr
   24d08: f9438908     	ldr	x8, [x8, #0x710]
   24d0c: f81f83a8     	stur	x8, [x29, #-0x8]
   24d10: f9400068     	ldr	x8, [x3]
   24d14: 790023ff     	strh	wzr, [sp, #0x10]
   24d18: f90007ff     	str	xzr, [sp, #0x8]
   24d1c: b4000188     	cbz	x8, 0x24d4c <tp_wake_gesture_read+0x64>
   24d20: d5384108     	mrs	x8, SP_EL0
   24d24: f9438908     	ldr	x8, [x8, #0x710]
   24d28: f85f83a9     	ldur	x9, [x29, #-0x8]
   24d2c: eb09011f     	cmp	x8, x9
   24d30: 54000521     	b.ne	0x24dd4 <tp_wake_gesture_read+0xec>
   24d34: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   24d38: a94357f6     	ldp	x22, x21, [sp, #0x30]
   24d3c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24d40: 910143ff     	add	sp, sp, #0x50
   24d44: d50323bf     	autiasp
   24d48: d65f03c0     	ret
   24d4c: 90000008     	adrp	x8, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024d4c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24d50: aa0103f5     	mov	x21, x1
   24d54: aa0203f4     	mov	x20, x2
   24d58: f9400116     	ldr	x22, [x8]
		0000000000024d58:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24d5c: aa0303f3     	mov	x19, x3
   24d60: f94716c8     	ldr	x8, [x22, #0xe28]
   24d64: b4000128     	cbz	x8, 0x24d88 <tp_wake_gesture_read+0xa0>
   24d68: aa1603e0     	mov	x0, x22
   24d6c: b85fc110     	ldur	w16, [x8, #-0x4]
   24d70: 7281af31     	movk	w17, #0xd79
   24d74: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   24d78: 6b11021f     	cmp	w16, w17
   24d7c: 54000040     	b.eq	0x24d84 <tp_wake_gesture_read+0x9c>
   24d80: d4304500     	brk	#0x8228
   24d84: d63f0100     	blr	x8
   24d88: b94002c2     	ldr	w2, [x22]
   24d8c: 90000000     	adrp	x0, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   24d90: 91000000     	add	x0, x0, #0x0
		0000000000024d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   24d94: 90000001     	adrp	x1, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ef4
   24d98: 91000021     	add	x1, x1, #0x0
		0000000000024d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ef4
   24d9c: 94000000     	bl	0x24d9c <tp_wake_gesture_read+0xb4>
		0000000000024d9c:  R_AARCH64_CALL26	_printk
   24da0: b94002c3     	ldr	w3, [x22]
   24da4: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   24da8: 91000042     	add	x2, x2, #0x0
		0000000000024da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   24dac: 910023e0     	add	x0, sp, #0x8
   24db0: 52800141     	mov	w1, #0xa                // =10
   24db4: 94000000     	bl	0x24db4 <tp_wake_gesture_read+0xcc>
		0000000000024db4:  R_AARCH64_CALL26	snprintf
   24db8: 93407c04     	sxtw	x4, w0
   24dbc: 910023e3     	add	x3, sp, #0x8
   24dc0: aa1403e1     	mov	x1, x20
   24dc4: aa1503e0     	mov	x0, x21
   24dc8: aa1303e2     	mov	x2, x19
   24dcc: 94000000     	bl	0x24dcc <tp_wake_gesture_read+0xe4>
		0000000000024dcc:  R_AARCH64_CALL26	simple_read_from_buffer
   24dd0: 17ffffd4     	b	0x24d20 <tp_wake_gesture_read+0x38>
   24dd4: 94000000     	bl	0x24dd4 <tp_wake_gesture_read+0xec>
		0000000000024dd4:  R_AARCH64_CALL26	__stack_chk_fail
