
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025f04 <get_tp_noise_show>:
   25f04: d503233f     	paciasp
   25f08: d101c3ff     	sub	sp, sp, #0x70
   25f0c: a9037bfd     	stp	x29, x30, [sp, #0x30]
   25f10: f90023f7     	str	x23, [sp, #0x40]
   25f14: a90557f6     	stp	x22, x21, [sp, #0x50]
   25f18: a9064ff4     	stp	x20, x19, [sp, #0x60]
   25f1c: 9100c3fd     	add	x29, sp, #0x30
   25f20: d5384108     	mrs	x8, SP_EL0
   25f24: aa1f03e0     	mov	x0, xzr
   25f28: f9438908     	ldr	x8, [x8, #0x710]
   25f2c: f81f83a8     	stur	x8, [x29, #-0x8]
   25f30: f9400068     	ldr	x8, [x3]
   25f34: f801e3ff     	stur	xzr, [sp, #0x1e]
   25f38: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   25f3c: f90007ff     	str	xzr, [sp, #0x8]
   25f40: b50003a8     	cbnz	x8, 0x25fb4 <get_tp_noise_show+0xb0>
   25f44: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025f44:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25f48: aa0303f3     	mov	x19, x3
   25f4c: aa0203f4     	mov	x20, x2
   25f50: f9400116     	ldr	x22, [x8]
		0000000000025f50:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25f54: aa0103f5     	mov	x21, x1
   25f58: 913182c0     	add	x0, x22, #0xc60
   25f5c: 94000000     	bl	0x25f5c <get_tp_noise_show+0x58>
		0000000000025f5c:  R_AARCH64_CALL26	mutex_lock
   25f60: f94776c8     	ldr	x8, [x22, #0xee8]
   25f64: b4000128     	cbz	x8, 0x25f88 <get_tp_noise_show+0x84>
   25f68: aa1603e0     	mov	x0, x22
   25f6c: b85fc110     	ldur	w16, [x8, #-0x4]
   25f70: 7281af31     	movk	w17, #0xd79
   25f74: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25f78: 6b11021f     	cmp	w16, w17
   25f7c: 54000040     	b.eq	0x25f84 <get_tp_noise_show+0x80>
   25f80: d4304500     	brk	#0x8228
   25f84: d63f0100     	blr	x8
   25f88: f9462ec8     	ldr	x8, [x22, #0xc58]
   25f8c: b50002c8     	cbnz	x8, 0x25fe4 <get_tp_noise_show+0xe0>
   25f90: aa1f03f7     	mov	x23, xzr
   25f94: 913182c0     	add	x0, x22, #0xc60
   25f98: 94000000     	bl	0x25f98 <get_tp_noise_show+0x94>
		0000000000025f98:  R_AARCH64_CALL26	mutex_unlock
   25f9c: 910023e3     	add	x3, sp, #0x8
   25fa0: aa1503e0     	mov	x0, x21
   25fa4: aa1403e1     	mov	x1, x20
   25fa8: aa1303e2     	mov	x2, x19
   25fac: aa1703e4     	mov	x4, x23
   25fb0: 94000000     	bl	0x25fb0 <get_tp_noise_show+0xac>
		0000000000025fb0:  R_AARCH64_CALL26	simple_read_from_buffer
   25fb4: d5384108     	mrs	x8, SP_EL0
   25fb8: f9438908     	ldr	x8, [x8, #0x710]
   25fbc: f85f83a9     	ldur	x9, [x29, #-0x8]
   25fc0: eb09011f     	cmp	x8, x9
   25fc4: 540002a1     	b.ne	0x26018 <get_tp_noise_show+0x114>
   25fc8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   25fcc: f94023f7     	ldr	x23, [sp, #0x40]
   25fd0: a94557f6     	ldp	x22, x21, [sp, #0x50]
   25fd4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   25fd8: 9101c3ff     	add	sp, sp, #0x70
   25fdc: d50323bf     	autiasp
   25fe0: d65f03c0     	ret
   25fe4: f9400103     	ldr	x3, [x8]
   25fe8: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		0000000000025fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7610
   25fec: 91000042     	add	x2, x2, #0x0
		0000000000025fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7610
   25ff0: 910023e0     	add	x0, sp, #0x8
   25ff4: 528003c1     	mov	w1, #0x1e               // =30
   25ff8: 94000000     	bl	0x25ff8 <get_tp_noise_show+0xf4>
		0000000000025ff8:  R_AARCH64_CALL26	snprintf
   25ffc: f9462ec8     	ldr	x8, [x22, #0xc58]
   26000: 93407c17     	sxtw	x23, w0
   26004: 90000000     	adrp	x0, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3876
   26008: 91000000     	add	x0, x0, #0x0
		0000000000026008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3876
   2600c: f9400101     	ldr	x1, [x8]
   26010: 94000000     	bl	0x26010 <get_tp_noise_show+0x10c>
		0000000000026010:  R_AARCH64_CALL26	_printk
   26014: 17ffffe0     	b	0x25f94 <get_tp_noise_show+0x90>
   26018: 94000000     	bl	0x26018 <get_tp_noise_show+0x114>
		0000000000026018:  R_AARCH64_CALL26	__stack_chk_fail
