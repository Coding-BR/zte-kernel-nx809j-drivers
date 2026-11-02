
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ea60 <tp_self_test_read>:
   1ea60: d503233f     	paciasp
   1ea64: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1ea68: a90167fa     	stp	x26, x25, [sp, #0x10]
   1ea6c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1ea70: a90357f6     	stp	x22, x21, [sp, #0x30]
   1ea74: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1ea78: 910003fd     	mov	x29, sp
   1ea7c: f9400068     	ldr	x8, [x3]
   1ea80: b5000208     	cbnz	x8, 0x1eac0 <tp_self_test_read+0x60>
   1ea84: 90000018     	adrp	x24, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001ea84:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1ea88: aa0303f3     	mov	x19, x3
   1ea8c: aa0103f5     	mov	x21, x1
   1ea90: f9400316     	ldr	x22, [x24]
		000000000001ea90:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1ea94: aa0203f4     	mov	x20, x2
   1ea98: d503201f     	nop
   1ea9c: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001ea9c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1eaa0: 5281b801     	mov	w1, #0xdc0              // =3520
   1eaa4: 52820002     	mov	w2, #0x1000             // =4096
   1eaa8: f9400100     	ldr	x0, [x8]
		000000000001eaa8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1eaac: 94000000     	bl	0x1eaac <tp_self_test_read+0x4c>
		000000000001eaac:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1eab0: aa0003f7     	mov	x23, x0
   1eab4: b40007f7     	cbz	x23, 0x1ebb0 <tp_self_test_read+0x150>
   1eab8: f9400268     	ldr	x8, [x19]
   1eabc: b4000128     	cbz	x8, 0x1eae0 <tp_self_test_read+0x80>
   1eac0: aa1f03e0     	mov	x0, xzr
   1eac4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1eac8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1eacc: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1ead0: a94167fa     	ldp	x26, x25, [sp, #0x10]
   1ead4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1ead8: d50323bf     	autiasp
   1eadc: d65f03c0     	ret
   1eae0: f947cec8     	ldr	x8, [x22, #0xf98]
   1eae4: b4000188     	cbz	x8, 0x1eb14 <tp_self_test_read+0xb4>
   1eae8: aa1603e0     	mov	x0, x22
   1eaec: aa1703e1     	mov	x1, x23
   1eaf0: b85fc110     	ldur	w16, [x8, #-0x4]
   1eaf4: 728bf651     	movk	w17, #0x5fb2
   1eaf8: 72ac9e51     	movk	w17, #0x64f2, lsl #16
   1eafc: 6b11021f     	cmp	w16, w17
   1eb00: 54000040     	b.eq	0x1eb08 <tp_self_test_read+0xa8>
   1eb04: d4304500     	brk	#0x8228
   1eb08: d63f0100     	blr	x8
   1eb0c: 93407c16     	sxtw	x22, w0
   1eb10: 14000002     	b	0x1eb18 <tp_self_test_read+0xb8>
   1eb14: aa1f03f6     	mov	x22, xzr
   1eb18: aa1503e0     	mov	x0, x21
   1eb1c: aa1403e1     	mov	x1, x20
   1eb20: aa1303e2     	mov	x2, x19
   1eb24: aa1703e3     	mov	x3, x23
   1eb28: aa1603e4     	mov	x4, x22
   1eb2c: 94000000     	bl	0x1eb2c <tp_self_test_read+0xcc>
		000000000001eb2c:  R_AARCH64_CALL26	simple_read_from_buffer
   1eb30: aa1703e0     	mov	x0, x23
   1eb34: 94000000     	bl	0x1eb34 <tp_self_test_read+0xd4>
		000000000001eb34:  R_AARCH64_CALL26	kfree
   1eb38: f9400313     	ldr	x19, [x24]
		000000000001eb38:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1eb3c: f9462e60     	ldr	x0, [x19, #0xc58]
   1eb40: b4000180     	cbz	x0, 0x1eb70 <tp_self_test_read+0x110>
   1eb44: f9400408     	ldr	x8, [x0, #0x8]
   1eb48: b4000108     	cbz	x8, 0x1eb68 <tp_self_test_read+0x108>
   1eb4c: aa0803e0     	mov	x0, x8
   1eb50: 94000000     	bl	0x1eb50 <tp_self_test_read+0xf0>
		000000000001eb50:  R_AARCH64_CALL26	vfree
   1eb54: f9462e68     	ldr	x8, [x19, #0xc58]
   1eb58: f900051f     	str	xzr, [x8, #0x8]
   1eb5c: f9462e68     	ldr	x8, [x19, #0xc58]
   1eb60: f900011f     	str	xzr, [x8]
   1eb64: f9462e60     	ldr	x0, [x19, #0xc58]
   1eb68: 94000000     	bl	0x1eb68 <tp_self_test_read+0x108>
		000000000001eb68:  R_AARCH64_CALL26	kfree
   1eb6c: f9062e7f     	str	xzr, [x19, #0xc58]
   1eb70: aa1603e0     	mov	x0, x22
   1eb74: b9044a7f     	str	wzr, [x19, #0x448]
   1eb78: 17ffffd3     	b	0x1eac4 <tp_self_test_read+0x64>
   1eb7c: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001eb7c:  R_AARCH64_ADR_PREL_PG_HI21	tp_self_test_read._alloc_tag
   1eb80: 91000108     	add	x8, x8, #0x0
		000000000001eb80:  R_AARCH64_ADD_ABS_LO12_NC	tp_self_test_read._alloc_tag
   1eb84: d5384119     	mrs	x25, SP_EL0
   1eb88: f9402b3a     	ldr	x26, [x25, #0x50]
   1eb8c: f9002b28     	str	x8, [x25, #0x50]
   1eb90: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001eb90:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1eb94: f9400100     	ldr	x0, [x8]
		000000000001eb94:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1eb98: 5281b801     	mov	w1, #0xdc0              // =3520
   1eb9c: 52820002     	mov	w2, #0x1000             // =4096
   1eba0: 94000000     	bl	0x1eba0 <tp_self_test_read+0x140>
		000000000001eba0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1eba4: aa0003f7     	mov	x23, x0
   1eba8: f9002b3a     	str	x26, [x25, #0x50]
   1ebac: b5fff877     	cbnz	x23, 0x1eab8 <tp_self_test_read+0x58>
   1ebb0: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001ebb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1411
   1ebb4: 91000000     	add	x0, x0, #0x0
		000000000001ebb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1411
   1ebb8: 94000000     	bl	0x1ebb8 <tp_self_test_read+0x158>
		000000000001ebb8:  R_AARCH64_CALL26	_printk
   1ebbc: 92800160     	mov	x0, #-0xc               // =-12
   1ebc0: 17ffffc1     	b	0x1eac4 <tp_self_test_read+0x64>
