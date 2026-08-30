
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025ea8 <get_tp_noise_show>:
   25ea8: d503233f     	paciasp
   25eac: d101c3ff     	sub	sp, sp, #0x70
   25eb0: a9037bfd     	stp	x29, x30, [sp, #0x30]
   25eb4: f90023f7     	str	x23, [sp, #0x40]
   25eb8: a90557f6     	stp	x22, x21, [sp, #0x50]
   25ebc: a9064ff4     	stp	x20, x19, [sp, #0x60]
   25ec0: 9100c3fd     	add	x29, sp, #0x30
   25ec4: d5384108     	mrs	x8, SP_EL0
   25ec8: aa1f03e0     	mov	x0, xzr
   25ecc: f9438908     	ldr	x8, [x8, #0x710]
   25ed0: f81f83a8     	stur	x8, [x29, #-0x8]
   25ed4: f9400068     	ldr	x8, [x3]
   25ed8: f801e3ff     	stur	xzr, [sp, #0x1e]
   25edc: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   25ee0: f90007ff     	str	xzr, [sp, #0x8]
   25ee4: b50003a8     	cbnz	x8, 0x25f58 <get_tp_noise_show+0xb0>
   25ee8: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		0000000000025ee8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25eec: aa0303f3     	mov	x19, x3
   25ef0: aa0203f4     	mov	x20, x2
   25ef4: f9400116     	ldr	x22, [x8]
		0000000000025ef4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25ef8: aa0103f5     	mov	x21, x1
   25efc: 913182c0     	add	x0, x22, #0xc60
   25f00: 94000000     	bl	0x25f00 <get_tp_noise_show+0x58>
		0000000000025f00:  R_AARCH64_CALL26	mutex_lock
   25f04: f94776c8     	ldr	x8, [x22, #0xee8]
   25f08: b4000128     	cbz	x8, 0x25f2c <get_tp_noise_show+0x84>
   25f0c: aa1603e0     	mov	x0, x22
   25f10: b85fc110     	ldur	w16, [x8, #-0x4]
   25f14: 7281af31     	movk	w17, #0xd79
   25f18: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25f1c: 6b11021f     	cmp	w16, w17
   25f20: 54000040     	b.eq	0x25f28 <get_tp_noise_show+0x80>
   25f24: d4304500     	brk	#0x8228
   25f28: d63f0100     	blr	x8
   25f2c: f9462ec8     	ldr	x8, [x22, #0xc58]
   25f30: b50002c8     	cbnz	x8, 0x25f88 <get_tp_noise_show+0xe0>
   25f34: aa1f03f7     	mov	x23, xzr
   25f38: 913182c0     	add	x0, x22, #0xc60
   25f3c: 94000000     	bl	0x25f3c <get_tp_noise_show+0x94>
		0000000000025f3c:  R_AARCH64_CALL26	mutex_unlock
   25f40: 910023e3     	add	x3, sp, #0x8
   25f44: aa1503e0     	mov	x0, x21
   25f48: aa1403e1     	mov	x1, x20
   25f4c: aa1303e2     	mov	x2, x19
   25f50: aa1703e4     	mov	x4, x23
   25f54: 94000000     	bl	0x25f54 <get_tp_noise_show+0xac>
		0000000000025f54:  R_AARCH64_CALL26	simple_read_from_buffer
   25f58: d5384108     	mrs	x8, SP_EL0
   25f5c: f9438908     	ldr	x8, [x8, #0x710]
   25f60: f85f83a9     	ldur	x9, [x29, #-0x8]
   25f64: eb09011f     	cmp	x8, x9
   25f68: 540002a1     	b.ne	0x25fbc <get_tp_noise_show+0x114>
   25f6c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   25f70: f94023f7     	ldr	x23, [sp, #0x40]
   25f74: a94557f6     	ldp	x22, x21, [sp, #0x50]
   25f78: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   25f7c: 9101c3ff     	add	sp, sp, #0x70
   25f80: d50323bf     	autiasp
   25f84: d65f03c0     	ret
   25f88: f9400103     	ldr	x3, [x8]
   25f8c: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7610
   25f90: 91000042     	add	x2, x2, #0x0
		0000000000025f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7610
   25f94: 910023e0     	add	x0, sp, #0x8
   25f98: 528003c1     	mov	w1, #0x1e               // =30
   25f9c: 94000000     	bl	0x25f9c <get_tp_noise_show+0xf4>
		0000000000025f9c:  R_AARCH64_CALL26	snprintf
   25fa0: f9462ec8     	ldr	x8, [x22, #0xc58]
   25fa4: 93407c17     	sxtw	x23, w0
   25fa8: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3876
   25fac: 91000000     	add	x0, x0, #0x0
		0000000000025fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3876
   25fb0: f9400101     	ldr	x1, [x8]
   25fb4: 94000000     	bl	0x25fb4 <get_tp_noise_show+0x10c>
		0000000000025fb4:  R_AARCH64_CALL26	_printk
   25fb8: 17ffffe0     	b	0x25f38 <get_tp_noise_show+0x90>
   25fbc: 94000000     	bl	0x25fbc <get_tp_noise_show+0x114>
		0000000000025fbc:  R_AARCH64_CALL26	__stack_chk_fail
