
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007208 <tp_BBAT_test_read>:
    7208: d503233f     	paciasp
    720c: d10143ff     	sub	sp, sp, #0x50
    7210: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7214: a90357f6     	stp	x22, x21, [sp, #0x30]
    7218: a9044ff4     	stp	x20, x19, [sp, #0x40]
    721c: 910083fd     	add	x29, sp, #0x20
    7220: d5384108     	mrs	x8, SP_EL0
    7224: aa1f03e0     	mov	x0, xzr
    7228: f9438908     	ldr	x8, [x8, #0x710]
    722c: f81f83a8     	stur	x8, [x29, #-0x8]
    7230: f9400068     	ldr	x8, [x3]
    7234: 790023ff     	strh	wzr, [sp, #0x10]
    7238: f90007ff     	str	xzr, [sp, #0x8]
    723c: b5000428     	cbnz	x8, 0x72c0 <tp_BBAT_test_read+0xb8>
    7240: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007240:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    7244: aa0303f3     	mov	x19, x3
    7248: aa0203f4     	mov	x20, x2
    724c: f9400100     	ldr	x0, [x8]
		000000000000724c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7250: aa0103f5     	mov	x21, x1
    7254: f947f408     	ldr	x8, [x0, #0xfe8]
    7258: b4000168     	cbz	x8, 0x7284 <tp_BBAT_test_read+0x7c>
    725c: b85fc110     	ldur	w16, [x8, #-0x4]
    7260: 7281af31     	movk	w17, #0xd79
    7264: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    7268: 6b11021f     	cmp	w16, w17
    726c: 54000040     	b.eq	0x7274 <tp_BBAT_test_read+0x6c>
    7270: d4304500     	brk	#0x8228
    7274: d63f0100     	blr	x8
    7278: 350003a0     	cbnz	w0, 0x72ec <tp_BBAT_test_read+0xe4>
    727c: 2a1f03e3     	mov	w3, wzr
    7280: 14000005     	b	0x7294 <tp_BBAT_test_read+0x8c>
    7284: 39405008     	ldrb	w8, [x0, #0x14]
    7288: 7100011f     	cmp	w8, #0x0
    728c: 1a9f17e8     	cset	w8, eq
    7290: 531f7903     	lsl	w3, w8, #1
    7294: 90000002     	adrp	x2, 0x7000 <ghost_debug_read+0x30c>
		0000000000007294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2abf
    7298: 91000042     	add	x2, x2, #0x0
		0000000000007298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2abf
    729c: 910023e0     	add	x0, sp, #0x8
    72a0: 52800141     	mov	w1, #0xa                // =10
    72a4: 94000000     	bl	0x72a4 <tp_BBAT_test_read+0x9c>
		00000000000072a4:  R_AARCH64_CALL26	snprintf
    72a8: 93407c04     	sxtw	x4, w0
    72ac: 910023e3     	add	x3, sp, #0x8
    72b0: aa1403e1     	mov	x1, x20
    72b4: aa1503e0     	mov	x0, x21
    72b8: aa1303e2     	mov	x2, x19
    72bc: 94000000     	bl	0x72bc <tp_BBAT_test_read+0xb4>
		00000000000072bc:  R_AARCH64_CALL26	simple_read_from_buffer
    72c0: d5384108     	mrs	x8, SP_EL0
    72c4: f9438908     	ldr	x8, [x8, #0x710]
    72c8: f85f83a9     	ldur	x9, [x29, #-0x8]
    72cc: eb09011f     	cmp	x8, x9
    72d0: 540001c1     	b.ne	0x7308 <tp_BBAT_test_read+0x100>
    72d4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    72d8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    72dc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    72e0: 910143ff     	add	sp, sp, #0x50
    72e4: d50323bf     	autiasp
    72e8: d65f03c0     	ret
    72ec: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		00000000000072ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9f5
    72f0: 91000108     	add	x8, x8, #0x0
		00000000000072f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9f5
    72f4: 2a0003f6     	mov	w22, w0
    72f8: aa0803e0     	mov	x0, x8
    72fc: 94000000     	bl	0x72fc <tp_BBAT_test_read+0xf4>
		00000000000072fc:  R_AARCH64_CALL26	_printk
    7300: 2a1603e3     	mov	w3, w22
    7304: 17ffffe4     	b	0x7294 <tp_BBAT_test_read+0x8c>
    7308: 94000000     	bl	0x7308 <tp_BBAT_test_read+0x100>
		0000000000007308:  R_AARCH64_CALL26	__stack_chk_fail
