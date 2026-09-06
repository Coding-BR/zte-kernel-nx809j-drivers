
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007348 <tp_test_read>:
    7348: d503233f     	paciasp
    734c: d10143ff     	sub	sp, sp, #0x50
    7350: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7354: a90357f6     	stp	x22, x21, [sp, #0x30]
    7358: a9044ff4     	stp	x20, x19, [sp, #0x40]
    735c: 910083fd     	add	x29, sp, #0x20
    7360: d5384108     	mrs	x8, SP_EL0
    7364: aa1f03e0     	mov	x0, xzr
    7368: f9438908     	ldr	x8, [x8, #0x710]
    736c: f81f83a8     	stur	x8, [x29, #-0x8]
    7370: f9400068     	ldr	x8, [x3]
    7374: 790023ff     	strh	wzr, [sp, #0x10]
    7378: f90007ff     	str	xzr, [sp, #0x8]
    737c: b4000188     	cbz	x8, 0x73ac <tp_test_read+0x64>
    7380: d5384108     	mrs	x8, SP_EL0
    7384: f9438908     	ldr	x8, [x8, #0x710]
    7388: f85f83a9     	ldur	x9, [x29, #-0x8]
    738c: eb09011f     	cmp	x8, x9
    7390: 540005e1     	b.ne	0x744c <tp_test_read+0x104>
    7394: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    7398: a94357f6     	ldp	x22, x21, [sp, #0x30]
    739c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    73a0: 910143ff     	add	sp, sp, #0x50
    73a4: d50323bf     	autiasp
    73a8: d65f03c0     	ret
    73ac: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		00000000000073ac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    73b0: aa0103f5     	mov	x21, x1
    73b4: aa0203f4     	mov	x20, x2
    73b8: f9400116     	ldr	x22, [x8]
		00000000000073b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    73bc: aa0303f3     	mov	x19, x3
    73c0: 397002c1     	ldrb	w1, [x22, #0xc00]
    73c4: 7103fc3f     	cmp	w1, #0xff
    73c8: 54000181     	b.ne	0x73f8 <tp_test_read+0xb0>
    73cc: 39511ac1     	ldrb	w1, [x22, #0x446]
    73d0: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000073d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba11
    73d4: 91000000     	add	x0, x0, #0x0
		00000000000073d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba11
    73d8: 94000000     	bl	0x73d8 <tp_test_read+0x90>
		00000000000073d8:  R_AARCH64_CALL26	_printk
    73dc: 394076c8     	ldrb	w8, [x22, #0x1d]
    73e0: 36000168     	tbz	w8, #0x0, 0x740c <tp_test_read+0xc4>
    73e4: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000073e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6161
    73e8: 91000000     	add	x0, x0, #0x0
		00000000000073e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6161
    73ec: 94000000     	bl	0x73ec <tp_test_read+0xa4>
		00000000000073ec:  R_AARCH64_CALL26	_printk
    73f0: 2a1f03e3     	mov	w3, wzr
    73f4: 1400000a     	b	0x741c <tp_test_read+0xd4>
    73f8: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000073f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ac3
    73fc: 91000000     	add	x0, x0, #0x0
		00000000000073fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ac3
    7400: 94000000     	bl	0x7400 <tp_test_read+0xb8>
		0000000000007400:  R_AARCH64_CALL26	_printk
    7404: 52800023     	mov	w3, #0x1                // =1
    7408: 14000005     	b	0x741c <tp_test_read+0xd4>
    740c: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		000000000000740c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8037
    7410: 91000000     	add	x0, x0, #0x0
		0000000000007410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8037
    7414: 94000000     	bl	0x7414 <tp_test_read+0xcc>
		0000000000007414:  R_AARCH64_CALL26	_printk
    7418: 52800043     	mov	w3, #0x2                // =2
    741c: 90000002     	adrp	x2, 0x7000 <ghost_debug_read+0x30c>
		000000000000741c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2abf
    7420: 91000042     	add	x2, x2, #0x0
		0000000000007420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2abf
    7424: 910023e0     	add	x0, sp, #0x8
    7428: 52800141     	mov	w1, #0xa                // =10
    742c: 94000000     	bl	0x742c <tp_test_read+0xe4>
		000000000000742c:  R_AARCH64_CALL26	snprintf
    7430: 93407c04     	sxtw	x4, w0
    7434: 910023e3     	add	x3, sp, #0x8
    7438: aa1403e1     	mov	x1, x20
    743c: aa1503e0     	mov	x0, x21
    7440: aa1303e2     	mov	x2, x19
    7444: 94000000     	bl	0x7444 <tp_test_read+0xfc>
		0000000000007444:  R_AARCH64_CALL26	simple_read_from_buffer
    7448: 17ffffce     	b	0x7380 <tp_test_read+0x38>
    744c: 94000000     	bl	0x744c <tp_test_read+0x104>
		000000000000744c:  R_AARCH64_CALL26	__stack_chk_fail
