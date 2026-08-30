
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005f90 <tp_pen_only_write>:
    5f90: d503233f     	paciasp
    5f94: d10143ff     	sub	sp, sp, #0x50
    5f98: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5f9c: f9001bf5     	str	x21, [sp, #0x30]
    5fa0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5fa4: 910083fd     	add	x29, sp, #0x20
    5fa8: d5384108     	mrs	x8, SP_EL0
    5fac: aa0103f5     	mov	x21, x1
    5fb0: 910023e0     	add	x0, sp, #0x8
    5fb4: f9438908     	ldr	x8, [x8, #0x710]
    5fb8: f100245f     	cmp	x2, #0x9
    5fbc: f81f83a8     	stur	x8, [x29, #-0x8]
    5fc0: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005fc0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5fc4: f9400114     	ldr	x20, [x8]
		0000000000005fc4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5fc8: 52800128     	mov	w8, #0x9                // =9
    5fcc: b90007ff     	str	wzr, [sp, #0x4]
    5fd0: 9a883053     	csel	x19, x2, x8, lo
    5fd4: 2a1f03e2     	mov	w2, wzr
    5fd8: 790023ff     	strh	wzr, [sp, #0x10]
    5fdc: aa1303e1     	mov	x1, x19
    5fe0: f90007ff     	str	xzr, [sp, #0x8]
    5fe4: 94000000     	bl	0x5fe4 <tp_pen_only_write+0x54>
		0000000000005fe4:  R_AARCH64_CALL26	__check_object_size
    5fe8: 910023e0     	add	x0, sp, #0x8
    5fec: aa1503e1     	mov	x1, x21
    5ff0: aa1303e2     	mov	x2, x19
    5ff4: 97fff753     	bl	0x3d40 <_inline_copy_from_user>
    5ff8: 350000c0     	cbnz	w0, 0x6010 <tp_pen_only_write+0x80>
    5ffc: 910023e0     	add	x0, sp, #0x8
    6000: 910013e2     	add	x2, sp, #0x4
    6004: 2a1f03e1     	mov	w1, wzr
    6008: 94000000     	bl	0x6008 <tp_pen_only_write+0x78>
		0000000000006008:  R_AARCH64_CALL26	kstrtouint
    600c: 340001c0     	cbz	w0, 0x6044 <tp_pen_only_write+0xb4>
    6010: 928002b3     	mov	x19, #-0x16             // =-22
    6014: d5384108     	mrs	x8, SP_EL0
    6018: f9438908     	ldr	x8, [x8, #0x710]
    601c: f85f83a9     	ldur	x9, [x29, #-0x8]
    6020: eb09011f     	cmp	x8, x9
    6024: 540003c1     	b.ne	0x609c <tp_pen_only_write+0x10c>
    6028: aa1303e0     	mov	x0, x19
    602c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6030: f9401bf5     	ldr	x21, [sp, #0x30]
    6034: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    6038: 910143ff     	add	sp, sp, #0x50
    603c: d50323bf     	autiasp
    6040: d65f03c0     	ret
    6044: b94007e8     	ldr	w8, [sp, #0x4]
    6048: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf70
    604c: 91000000     	add	x0, x0, #0x0
		000000000000604c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf70
    6050: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		0000000000006050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa54c
    6054: 91000021     	add	x1, x1, #0x0
		0000000000006054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa54c
    6058: 7100011f     	cmp	w8, #0x0
    605c: 1a9f07e2     	cset	w2, ne
    6060: b90007e2     	str	w2, [sp, #0x4]
    6064: 39110682     	strb	w2, [x20, #0x441]
    6068: 94000000     	bl	0x6068 <tp_pen_only_write+0xd8>
		0000000000006068:  R_AARCH64_CALL26	_printk
    606c: f947c688     	ldr	x8, [x20, #0xf88]
    6070: b4fffd28     	cbz	x8, 0x6014 <tp_pen_only_write+0x84>
    6074: b94007e1     	ldr	w1, [sp, #0x4]
    6078: aa1403e0     	mov	x0, x20
    607c: b85fc110     	ldur	w16, [x8, #-0x4]
    6080: 7287b831     	movk	w17, #0x3dc1
    6084: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    6088: 6b11021f     	cmp	w16, w17
    608c: 54000040     	b.eq	0x6094 <tp_pen_only_write+0x104>
    6090: d4304500     	brk	#0x8228
    6094: d63f0100     	blr	x8
    6098: 17ffffdf     	b	0x6014 <tp_pen_only_write+0x84>
    609c: 94000000     	bl	0x609c <tp_pen_only_write+0x10c>
		000000000000609c:  R_AARCH64_CALL26	__stack_chk_fail
