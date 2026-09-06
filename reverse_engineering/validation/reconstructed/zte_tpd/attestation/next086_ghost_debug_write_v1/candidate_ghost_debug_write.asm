
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001818 <ghost_debug_write>:
    1818: d503233f     	paciasp
    181c: d103c3ff     	sub	sp, sp, #0xf0
    1820: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
    1824: f90063f7     	str	x23, [sp, #0xc0]
    1828: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    182c: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    1830: 9102c3fd     	add	x29, sp, #0xb0
    1834: d5384108     	mrs	x8, SP_EL0
    1838: f9438908     	ldr	x8, [x8, #0x710]
    183c: f101905f     	cmp	x2, #0x64
    1840: f81f83a8     	stur	x8, [x29, #-0x8]
    1844: f90007ff     	str	xzr, [sp, #0x8]
    1848: d5384108     	mrs	x8, SP_EL0
    184c: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xf4>
		000000000000184c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1850: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1854: f9400115     	ldr	x21, [x8]
		0000000000001854:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1858: 52800c88     	mov	w8, #0x64               // =100
    185c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1860: 9a88b053     	csel	x19, x2, x8, lt
    1864: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1868: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    186c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    1870: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    1874: f9003fff     	str	xzr, [sp, #0x78]
    1878: b90017ff     	str	wzr, [sp, #0x14]
    187c: a93d7fbf     	stp	xzr, xzr, [x29, #-0x30]
    1880: a93e7fbf     	stp	xzr, xzr, [x29, #-0x20]
    1884: f81f03bf     	stur	xzr, [x29, #-0x10]
    1888: b40000a1     	cbz	x1, 0x189c <ghost_debug_write+0x84>
    188c: 910063e0     	add	x0, sp, #0x18
    1890: aa1303e2     	mov	x2, x19
    1894: 94000000     	bl	0x1894 <ghost_debug_write+0x7c>
		0000000000001894:  R_AARCH64_CALL26	_inline_copy_from_user
    1898: b50008c0     	cbnz	x0, 0x19b0 <ghost_debug_write+0x198>
    189c: 910063e8     	add	x8, sp, #0x18
    18a0: 90000001     	adrp	x1, 0x1000 <get_tp_chip_id+0xf4>
		00000000000018a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2681
    18a4: 91000021     	add	x1, x1, #0x0
		00000000000018a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2681
    18a8: 910023e0     	add	x0, sp, #0x8
    18ac: f90007e8     	str	x8, [sp, #0x8]
    18b0: 94000000     	bl	0x18b0 <ghost_debug_write+0x98>
		00000000000018b0:  R_AARCH64_CALL26	strsep
    18b4: b40003e0     	cbz	x0, 0x1930 <ghost_debug_write+0x118>
    18b8: aa1f03f6     	mov	x22, xzr
    18bc: d100c3b7     	sub	x23, x29, #0x30
    18c0: 90000014     	adrp	x20, 0x1000 <get_tp_chip_id+0xf4>
		00000000000018c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2681
    18c4: 91000294     	add	x20, x20, #0x0
		00000000000018c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2681
    18c8: 910053e2     	add	x2, sp, #0x14
    18cc: 52800141     	mov	w1, #0xa                // =10
    18d0: 94000000     	bl	0x18d0 <ghost_debug_write+0xb8>
		00000000000018d0:  R_AARCH64_CALL26	kstrtouint
    18d4: 350000e0     	cbnz	w0, 0x18f0 <ghost_debug_write+0xd8>
    18d8: f1004edf     	cmp	x22, #0x13
    18dc: 54000748     	b.hi	0x19c4 <ghost_debug_write+0x1ac>
    18e0: b94017e8     	ldr	w8, [sp, #0x14]
    18e4: 910006c9     	add	x9, x22, #0x1
    18e8: 78367ae8     	strh	w8, [x23, x22, lsl #1]
    18ec: aa0903f6     	mov	x22, x9
    18f0: 910023e0     	add	x0, sp, #0x8
    18f4: aa1403e1     	mov	x1, x20
    18f8: 94000000     	bl	0x18f8 <ghost_debug_write+0xe0>
		00000000000018f8:  R_AARCH64_CALL26	strsep
    18fc: b4000060     	cbz	x0, 0x1908 <ghost_debug_write+0xf0>
    1900: f1002adf     	cmp	x22, #0xa
    1904: 54fffe23     	b.lo	0x18c8 <ghost_debug_write+0xb0>
    1908: 785da3ab     	ldurh	w11, [x29, #-0x26]
    190c: 785dc3a8     	ldurh	w8, [x29, #-0x24]
    1910: 785de3a9     	ldurh	w9, [x29, #-0x22]
    1914: 785e03aa     	ldurh	w10, [x29, #-0x20]
    1918: 385d83ac     	ldurb	w12, [x29, #-0x28]
    191c: 385d63ad     	ldurb	w13, [x29, #-0x2a]
    1920: 385d43ae     	ldurb	w14, [x29, #-0x2c]
    1924: 385d23af     	ldurb	w15, [x29, #-0x2e]
    1928: 385d03b0     	ldurb	w16, [x29, #-0x30]
    192c: 1400000a     	b	0x1954 <ghost_debug_write+0x13c>
    1930: 2a1f03e8     	mov	w8, wzr
    1934: 2a1f03e9     	mov	w9, wzr
    1938: 2a1f03ea     	mov	w10, wzr
    193c: 2a1f03ec     	mov	w12, wzr
    1940: 2a1f03ed     	mov	w13, wzr
    1944: 2a1f03ee     	mov	w14, wzr
    1948: 2a1f03ef     	mov	w15, wzr
    194c: 2a1f03f0     	mov	w16, wzr
    1950: 2a1f03eb     	mov	w11, wzr
    1954: 391246b0     	strb	w16, [x21, #0x491]
    1958: 39124aaf     	strb	w15, [x21, #0x492]
    195c: 39124eae     	strb	w14, [x21, #0x493]
    1960: 391252ad     	strb	w13, [x21, #0x494]
    1964: 391256ac     	strb	w12, [x21, #0x495]
    1968: b9049aab     	str	w11, [x21, #0x498]
    196c: b9049ea8     	str	w8, [x21, #0x49c]
    1970: b904a2a9     	str	w9, [x21, #0x4a0]
    1974: b904a6aa     	str	w10, [x21, #0x4a4]
    1978: d5384108     	mrs	x8, SP_EL0
    197c: f9438908     	ldr	x8, [x8, #0x710]
    1980: d5384109     	mrs	x9, SP_EL0
    1984: f85f83a9     	ldur	x9, [x29, #-0x8]
    1988: eb09011f     	cmp	x8, x9
    198c: 540001e1     	b.ne	0x19c8 <ghost_debug_write+0x1b0>
    1990: aa1303e0     	mov	x0, x19
    1994: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    1998: f94063f7     	ldr	x23, [sp, #0xc0]
    199c: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    19a0: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
    19a4: 9103c3ff     	add	sp, sp, #0xf0
    19a8: d50323bf     	autiasp
    19ac: d65f03c0     	ret
    19b0: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xf4>
		00000000000019b0:  R_AARCH64_ADR_PREL_PG_HI21	unk_31DF8
    19b4: 91000000     	add	x0, x0, #0x0
		00000000000019b4:  R_AARCH64_ADD_ABS_LO12_NC	unk_31DF8
    19b8: 94000000     	bl	0x19b8 <ghost_debug_write+0x1a0>
		00000000000019b8:  R_AARCH64_CALL26	_printk
    19bc: 928002b3     	mov	x19, #-0x16             // =-22
    19c0: 17ffffee     	b	0x1978 <ghost_debug_write+0x160>
    19c4: d4200020     	brk	#0x1
    19c8: 94000000     	bl	0x19c8 <ghost_debug_write+0x1b0>
		00000000000019c8:  R_AARCH64_CALL26	__stack_chk_fail
