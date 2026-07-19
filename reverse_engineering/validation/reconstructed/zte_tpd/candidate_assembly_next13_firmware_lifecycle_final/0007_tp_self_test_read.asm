
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f9a8 <tp_self_test_read>:
   1f9a8: d503233f     	paciasp
   1f9ac: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1f9b0: a90167fa     	stp	x26, x25, [sp, #0x10]
   1f9b4: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1f9b8: a90357f6     	stp	x22, x21, [sp, #0x30]
   1f9bc: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1f9c0: 910003fd     	mov	x29, sp
   1f9c4: f9400068     	ldr	x8, [x3]
   1f9c8: b5000208     	cbnz	x8, 0x1fa08 <tp_self_test_read+0x60>
   1f9cc: 90000018     	adrp	x24, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001f9cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f9d0: aa0303f3     	mov	x19, x3
   1f9d4: aa0103f5     	mov	x21, x1
   1f9d8: f9400316     	ldr	x22, [x24]
		000000000001f9d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f9dc: aa0203f4     	mov	x20, x2
   1f9e0: d503201f     	nop
   1f9e4: 90000008     	adrp	x8, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001f9e4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1f9e8: 5281b801     	mov	w1, #0xdc0              // =3520
   1f9ec: 52820002     	mov	w2, #0x1000             // =4096
   1f9f0: f9400100     	ldr	x0, [x8]
		000000000001f9f0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1f9f4: 94000000     	bl	0x1f9f4 <tp_self_test_read+0x4c>
		000000000001f9f4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1f9f8: aa0003f7     	mov	x23, x0
   1f9fc: b40007f7     	cbz	x23, 0x1faf8 <tp_self_test_read+0x150>
   1fa00: f9400268     	ldr	x8, [x19]
   1fa04: b4000128     	cbz	x8, 0x1fa28 <tp_self_test_read+0x80>
   1fa08: aa1f03e0     	mov	x0, xzr
   1fa0c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1fa10: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1fa14: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1fa18: a94167fa     	ldp	x26, x25, [sp, #0x10]
   1fa1c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1fa20: d50323bf     	autiasp
   1fa24: d65f03c0     	ret
   1fa28: f947cec8     	ldr	x8, [x22, #0xf98]
   1fa2c: b4000188     	cbz	x8, 0x1fa5c <tp_self_test_read+0xb4>
   1fa30: aa1603e0     	mov	x0, x22
   1fa34: aa1703e1     	mov	x1, x23
   1fa38: b85fc110     	ldur	w16, [x8, #-0x4]
   1fa3c: 728bf651     	movk	w17, #0x5fb2
   1fa40: 72ac9e51     	movk	w17, #0x64f2, lsl #16
   1fa44: 6b11021f     	cmp	w16, w17
   1fa48: 54000040     	b.eq	0x1fa50 <tp_self_test_read+0xa8>
   1fa4c: d4304500     	brk	#0x8228
   1fa50: d63f0100     	blr	x8
   1fa54: 93407c16     	sxtw	x22, w0
   1fa58: 14000002     	b	0x1fa60 <tp_self_test_read+0xb8>
   1fa5c: aa1f03f6     	mov	x22, xzr
   1fa60: aa1503e0     	mov	x0, x21
   1fa64: aa1403e1     	mov	x1, x20
   1fa68: aa1303e2     	mov	x2, x19
   1fa6c: aa1703e3     	mov	x3, x23
   1fa70: aa1603e4     	mov	x4, x22
   1fa74: 94000000     	bl	0x1fa74 <tp_self_test_read+0xcc>
		000000000001fa74:  R_AARCH64_CALL26	simple_read_from_buffer
   1fa78: aa1703e0     	mov	x0, x23
   1fa7c: 94000000     	bl	0x1fa7c <tp_self_test_read+0xd4>
		000000000001fa7c:  R_AARCH64_CALL26	kfree
   1fa80: f9400313     	ldr	x19, [x24]
		000000000001fa80:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1fa84: f9462e60     	ldr	x0, [x19, #0xc58]
   1fa88: b4000180     	cbz	x0, 0x1fab8 <tp_self_test_read+0x110>
   1fa8c: f9400408     	ldr	x8, [x0, #0x8]
   1fa90: b4000108     	cbz	x8, 0x1fab0 <tp_self_test_read+0x108>
   1fa94: aa0803e0     	mov	x0, x8
   1fa98: 94000000     	bl	0x1fa98 <tp_self_test_read+0xf0>
		000000000001fa98:  R_AARCH64_CALL26	vfree
   1fa9c: f9462e68     	ldr	x8, [x19, #0xc58]
   1faa0: f900051f     	str	xzr, [x8, #0x8]
   1faa4: f9462e68     	ldr	x8, [x19, #0xc58]
   1faa8: f900011f     	str	xzr, [x8]
   1faac: f9462e60     	ldr	x0, [x19, #0xc58]
   1fab0: 94000000     	bl	0x1fab0 <tp_self_test_read+0x108>
		000000000001fab0:  R_AARCH64_CALL26	kfree
   1fab4: f9062e7f     	str	xzr, [x19, #0xc58]
   1fab8: aa1603e0     	mov	x0, x22
   1fabc: b9044a7f     	str	wzr, [x19, #0x448]
   1fac0: 17ffffd3     	b	0x1fa0c <tp_self_test_read+0x64>
   1fac4: 90000008     	adrp	x8, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001fac4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x280
   1fac8: 91000108     	add	x8, x8, #0x0
		000000000001fac8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x280
   1facc: d5384119     	mrs	x25, SP_EL0
   1fad0: f9402b3a     	ldr	x26, [x25, #0x50]
   1fad4: f9002b28     	str	x8, [x25, #0x50]
   1fad8: 90000008     	adrp	x8, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001fad8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1fadc: f9400100     	ldr	x0, [x8]
		000000000001fadc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1fae0: 5281b801     	mov	w1, #0xdc0              // =3520
   1fae4: 52820002     	mov	w2, #0x1000             // =4096
   1fae8: 94000000     	bl	0x1fae8 <tp_self_test_read+0x140>
		000000000001fae8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1faec: aa0003f7     	mov	x23, x0
   1faf0: f9002b3a     	str	x26, [x25, #0x50]
   1faf4: b5fff877     	cbnz	x23, 0x1fa00 <tp_self_test_read+0x58>
   1faf8: 90000000     	adrp	x0, 0x1f000 <tp_ghost_check_work+0x8>
		000000000001faf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1409
   1fafc: 91000000     	add	x0, x0, #0x0
		000000000001fafc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1409
   1fb00: 94000000     	bl	0x1fb00 <tp_self_test_read+0x158>
		000000000001fb00:  R_AARCH64_CALL26	_printk
   1fb04: 92800160     	mov	x0, #-0xc               // =-12
   1fb08: 17ffffc1     	b	0x1fa0c <tp_self_test_read+0x64>
