
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017d0 <rtp_auto_sin_store>:
    17d0: d503233f     	paciasp
    17d4: d10103ff     	sub	sp, sp, #0x40
    17d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    17dc: f90013f5     	str	x21, [sp, #0x20]
    17e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    17e4: 910043fd     	add	x29, sp, #0x10
    17e8: d5384109     	mrs	x9, SP_EL0
    17ec: aa0203e8     	mov	x8, x2
    17f0: 910013e2     	add	x2, sp, #0x4
    17f4: f9438929     	ldr	x9, [x9, #0x710]
    17f8: 2a1f03e1     	mov	w1, wzr
    17fc: aa0303f3     	mov	x19, x3
    1800: f90007e9     	str	x9, [sp, #0x8]
    1804: f9404c15     	ldr	x21, [x0, #0x98]
    1808: aa0803e0     	mov	x0, x8
    180c: b90007ff     	str	wzr, [sp, #0x4]
    1810: 94000000     	bl	0x1810 <rtp_auto_sin_store+0x40>
		0000000000001810:  R_AARCH64_CALL26	kstrtouint
    1814: 37f80520     	tbnz	w0, #0x1f, 0x18b8 <rtp_auto_sin_store+0xe8>
    1818: 910922a0     	add	x0, x21, #0x248
    181c: d102a2b4     	sub	x20, x21, #0xa8
    1820: 94000000     	bl	0x1820 <rtp_auto_sin_store+0x50>
		0000000000001820:  R_AARCH64_CALL26	mutex_lock
    1824: b94007e4     	ldr	w4, [sp, #0x4]
    1828: 34000184     	cbz	w4, 0x1858 <rtp_auto_sin_store+0x88>
    182c: b9463aa8     	ldr	w8, [x21, #0x638]
    1830: 6b08009f     	cmp	w4, w8
    1834: 54000582     	b.hs	0x18e4 <rtp_auto_sin_store+0x114>
    1838: 52800028     	mov	w8, #0x1                // =1
    183c: aa1403e0     	mov	x0, x20
    1840: 528005a1     	mov	w1, #0x2d               // =45
    1844: 52801be2     	mov	w2, #0xdf               // =223
    1848: 52800403     	mov	w3, #0x20               // =32
    184c: b81982a8     	stur	w8, [x21, #-0x68]
    1850: b81e82a4     	stur	w4, [x21, #-0x18]
    1854: 14000006     	b	0x186c <rtp_auto_sin_store+0x9c>
    1858: aa1403e0     	mov	x0, x20
    185c: 528005a1     	mov	w1, #0x2d               // =45
    1860: 52801be2     	mov	w2, #0xdf               // =223
    1864: 2a1f03e3     	mov	w3, wzr
    1868: b81982bf     	stur	wzr, [x21, #-0x68]
    186c: 94000000     	bl	0x186c <rtp_auto_sin_store+0x9c>
		000000000000186c:  R_AARCH64_CALL26	i2c_w_bits
    1870: 910922a0     	add	x0, x21, #0x248
    1874: 94000000     	bl	0x1874 <rtp_auto_sin_store+0xa4>
		0000000000001874:  R_AARCH64_CALL26	mutex_unlock
    1878: f941d2a1     	ldr	x1, [x21, #0x3a0]
    187c: 910be2a2     	add	x2, x21, #0x2f8
    1880: 52800400     	mov	w0, #0x20               // =32
    1884: 94000000     	bl	0x1884 <rtp_auto_sin_store+0xb4>
		0000000000001884:  R_AARCH64_CALL26	queue_work_on
    1888: d5384108     	mrs	x8, SP_EL0
    188c: f9438908     	ldr	x8, [x8, #0x710]
    1890: f94007e9     	ldr	x9, [sp, #0x8]
    1894: eb09011f     	cmp	x8, x9
    1898: 540003a1     	b.ne	0x190c <rtp_auto_sin_store+0x13c>
    189c: aa1303e0     	mov	x0, x19
    18a0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    18a4: f94013f5     	ldr	x21, [sp, #0x20]
    18a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    18ac: 910103ff     	add	sp, sp, #0x40
    18b0: d50323bf     	autiasp
    18b4: d65f03c0     	ret
    18b8: 2a0003f4     	mov	w20, w0
    18bc: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000018bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x383
    18c0: 91000000     	add	x0, x0, #0x0
		00000000000018c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x383
    18c4: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000018c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    18c8: 91000021     	add	x1, x1, #0x0
		00000000000018c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    18cc: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000018cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
    18d0: 91000063     	add	x3, x3, #0x0
		00000000000018d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
    18d4: 52811ba2     	mov	w2, #0x8dd              // =2269
    18d8: 94000000     	bl	0x18d8 <rtp_auto_sin_store+0x108>
		00000000000018d8:  R_AARCH64_CALL26	_printk
    18dc: 93407e93     	sxtw	x19, w20
    18e0: 17ffffea     	b	0x1888 <rtp_auto_sin_store+0xb8>
    18e4: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000018e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x259
    18e8: 91000000     	add	x0, x0, #0x0
		00000000000018e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x259
    18ec: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000018ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    18f0: 91000021     	add	x1, x1, #0x0
		00000000000018f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    18f4: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000018f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
    18f8: 91000063     	add	x3, x3, #0x0
		00000000000018f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
    18fc: 52811dc2     	mov	w2, #0x8ee              // =2286
    1900: b81982bf     	stur	wzr, [x21, #-0x68]
    1904: 94000000     	bl	0x1904 <rtp_auto_sin_store+0x134>
		0000000000001904:  R_AARCH64_CALL26	_printk
    1908: 17ffffda     	b	0x1870 <rtp_auto_sin_store+0xa0>
    190c: 94000000     	bl	0x190c <rtp_auto_sin_store+0x13c>
		000000000000190c:  R_AARCH64_CALL26	__stack_chk_fail
