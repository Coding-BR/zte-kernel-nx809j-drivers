
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c704 <tp_self_test_read>:
    c704: d503233f     	paciasp
    c708: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    c70c: a90167fa     	stp	x26, x25, [sp, #0x10]
    c710: a9025ff8     	stp	x24, x23, [sp, #0x20]
    c714: a90357f6     	stp	x22, x21, [sp, #0x30]
    c718: a9044ff4     	stp	x20, x19, [sp, #0x40]
    c71c: 910003fd     	mov	x29, sp
    c720: f9400068     	ldr	x8, [x3]
    c724: b5000208     	cbnz	x8, 0xc764 <tp_self_test_read+0x60>
    c728: 90000018     	adrp	x24, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c728:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    c72c: aa0303f3     	mov	x19, x3
    c730: aa0103f5     	mov	x21, x1
    c734: f9400316     	ldr	x22, [x24]
		000000000000c734:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c738: aa0203f4     	mov	x20, x2
    c73c: d503201f     	nop
    c740: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c740:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    c744: 5281b801     	mov	w1, #0xdc0              // =3520
    c748: 52820002     	mov	w2, #0x1000             // =4096
    c74c: f9400100     	ldr	x0, [x8]
		000000000000c74c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    c750: 94000000     	bl	0xc750 <tp_self_test_read+0x4c>
		000000000000c750:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    c754: aa0003f7     	mov	x23, x0
    c758: b40007f7     	cbz	x23, 0xc854 <tp_self_test_read+0x150>
    c75c: f9400268     	ldr	x8, [x19]
    c760: b4000128     	cbz	x8, 0xc784 <tp_self_test_read+0x80>
    c764: aa1f03e0     	mov	x0, xzr
    c768: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    c76c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    c770: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    c774: a94167fa     	ldp	x26, x25, [sp, #0x10]
    c778: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    c77c: d50323bf     	autiasp
    c780: d65f03c0     	ret
    c784: f947cec8     	ldr	x8, [x22, #0xf98]
    c788: b4000188     	cbz	x8, 0xc7b8 <tp_self_test_read+0xb4>
    c78c: aa1603e0     	mov	x0, x22
    c790: aa1703e1     	mov	x1, x23
    c794: b85fc110     	ldur	w16, [x8, #-0x4]
    c798: 728bf651     	movk	w17, #0x5fb2
    c79c: 72ac9e51     	movk	w17, #0x64f2, lsl #16
    c7a0: 6b11021f     	cmp	w16, w17
    c7a4: 54000040     	b.eq	0xc7ac <tp_self_test_read+0xa8>
    c7a8: d4304500     	brk	#0x8228
    c7ac: d63f0100     	blr	x8
    c7b0: 93407c16     	sxtw	x22, w0
    c7b4: 14000002     	b	0xc7bc <tp_self_test_read+0xb8>
    c7b8: aa1f03f6     	mov	x22, xzr
    c7bc: aa1503e0     	mov	x0, x21
    c7c0: aa1403e1     	mov	x1, x20
    c7c4: aa1303e2     	mov	x2, x19
    c7c8: aa1703e3     	mov	x3, x23
    c7cc: aa1603e4     	mov	x4, x22
    c7d0: 94000000     	bl	0xc7d0 <tp_self_test_read+0xcc>
		000000000000c7d0:  R_AARCH64_CALL26	simple_read_from_buffer
    c7d4: aa1703e0     	mov	x0, x23
    c7d8: 94000000     	bl	0xc7d8 <tp_self_test_read+0xd4>
		000000000000c7d8:  R_AARCH64_CALL26	kfree
    c7dc: f9400313     	ldr	x19, [x24]
		000000000000c7dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    c7e0: f9462e60     	ldr	x0, [x19, #0xc58]
    c7e4: b4000180     	cbz	x0, 0xc814 <tp_self_test_read+0x110>
    c7e8: f9400408     	ldr	x8, [x0, #0x8]
    c7ec: b4000108     	cbz	x8, 0xc80c <tp_self_test_read+0x108>
    c7f0: aa0803e0     	mov	x0, x8
    c7f4: 94000000     	bl	0xc7f4 <tp_self_test_read+0xf0>
		000000000000c7f4:  R_AARCH64_CALL26	vfree
    c7f8: f9462e68     	ldr	x8, [x19, #0xc58]
    c7fc: f900051f     	str	xzr, [x8, #0x8]
    c800: f9462e68     	ldr	x8, [x19, #0xc58]
    c804: f900011f     	str	xzr, [x8]
    c808: f9462e60     	ldr	x0, [x19, #0xc58]
    c80c: 94000000     	bl	0xc80c <tp_self_test_read+0x108>
		000000000000c80c:  R_AARCH64_CALL26	kfree
    c810: f9062e7f     	str	xzr, [x19, #0xc58]
    c814: aa1603e0     	mov	x0, x22
    c818: b9044a7f     	str	wzr, [x19, #0x448]
    c81c: 17ffffd3     	b	0xc768 <tp_self_test_read+0x64>
    c820: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c820:  R_AARCH64_ADR_PREL_PG_HI21	tp_self_test_read._alloc_tag
    c824: 91000108     	add	x8, x8, #0x0
		000000000000c824:  R_AARCH64_ADD_ABS_LO12_NC	tp_self_test_read._alloc_tag
    c828: d5384119     	mrs	x25, SP_EL0
    c82c: f9402b3a     	ldr	x26, [x25, #0x50]
    c830: f9002b28     	str	x8, [x25, #0x50]
    c834: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c834:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    c838: f9400100     	ldr	x0, [x8]
		000000000000c838:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    c83c: 5281b801     	mov	w1, #0xdc0              // =3520
    c840: 52820002     	mov	w2, #0x1000             // =4096
    c844: 94000000     	bl	0xc844 <tp_self_test_read+0x140>
		000000000000c844:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    c848: aa0003f7     	mov	x23, x0
    c84c: f9002b3a     	str	x26, [x25, #0x50]
    c850: b5fff877     	cbnz	x23, 0xc75c <tp_self_test_read+0x58>
    c854: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181d4
    c858: 91000000     	add	x0, x0, #0x0
		000000000000c858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181d4
    c85c: 94000000     	bl	0xc85c <tp_self_test_read+0x158>
		000000000000c85c:  R_AARCH64_CALL26	_printk
    c860: 92800160     	mov	x0, #-0xc               // =-12
    c864: 17ffffc1     	b	0xc768 <tp_self_test_read+0x64>
