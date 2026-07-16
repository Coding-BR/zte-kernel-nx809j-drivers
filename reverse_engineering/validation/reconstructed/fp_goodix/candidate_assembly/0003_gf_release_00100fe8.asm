
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007bc <gf_release>:
     7bc: d503233f     	paciasp
     7c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7c4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     7c8: 910003fd     	mov	x29, sp
     7cc: aa0103f4     	mov	x20, x1
     7d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e
     7d4: 91000000     	add	x0, x0, #0x0
		00000000000007d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e
     7d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcdc
     7dc: 91000021     	add	x1, x1, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcdc
     7e0: 94000000     	bl	0x7e0 <gf_release+0x24>
		00000000000007e0:  R_AARCH64_CALL26	_printk
     7e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     7e8: 91000000     	add	x0, x0, #0x0
		00000000000007e8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     7ec: 94000000     	bl	0x7ec <gf_release+0x30>
		00000000000007ec:  R_AARCH64_CALL26	mutex_lock
     7f0: f9401293     	ldr	x19, [x20, #0x20]
     7f4: f900129f     	str	xzr, [x20, #0x20]
     7f8: b9403a68     	ldr	w8, [x19, #0x38]
     7fc: 71000508     	subs	w8, w8, #0x1
     800: b9003a68     	str	w8, [x19, #0x38]
     804: 54000160     	b.eq	0x830 <gf_release+0x74>
     808: f9403e60     	ldr	x0, [x19, #0x78]
     80c: b50003a0     	cbnz	x0, 0x880 <gf_release+0xc4>
     810: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     814: 91000000     	add	x0, x0, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     818: 94000000     	bl	0x818 <gf_release+0x5c>
		0000000000000818:  R_AARCH64_CALL26	mutex_unlock
     81c: 2a1f03e0     	mov	w0, wzr
     820: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     824: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     828: d50323bf     	autiasp
     82c: d65f03c0     	ret
     830: b9404a61     	ldr	w1, [x19, #0x48]
     834: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe77
     838: 91000000     	add	x0, x0, #0x0
		0000000000000838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe77
     83c: 94000000     	bl	0x83c <gf_release+0x80>
		000000000000083c:  R_AARCH64_CALL26	_printk
     840: b9404a60     	ldr	w0, [x19, #0x48]
     844: 2a1f03e1     	mov	w1, wzr
     848: 94000000     	bl	0x848 <gf_release+0x8c>
		0000000000000848:  R_AARCH64_CALL26	irq_set_irq_wake
     84c: b9404e68     	ldr	w8, [x19, #0x4c]
     850: 34000268     	cbz	w8, 0x89c <gf_release+0xe0>
     854: b9404a60     	ldr	w0, [x19, #0x48]
     858: b9004e7f     	str	wzr, [x19, #0x4c]
     85c: 94000000     	bl	0x85c <gf_release+0xa0>
		000000000000085c:  R_AARCH64_CALL26	disable_irq
     860: b9404a60     	ldr	w0, [x19, #0x48]
     864: aa1303e1     	mov	x1, x19
     868: 94000000     	bl	0x868 <gf_release+0xac>
		0000000000000868:  R_AARCH64_CALL26	free_irq
     86c: aa1303e0     	mov	x0, x19
     870: 94000000     	bl	0x870 <gf_release+0xb4>
		0000000000000870:  R_AARCH64_CALL26	gf_cleanup
     874: 3901c27f     	strb	wzr, [x19, #0x70]
     878: f9403e60     	ldr	x0, [x19, #0x78]
     87c: b4fffca0     	cbz	x0, 0x810 <gf_release+0x54>
     880: 94000000     	bl	0x880 <gf_release+0xc4>
		0000000000000880:  R_AARCH64_CALL26	zlog_unregister_client
     884: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ff
     888: 91000000     	add	x0, x0, #0x0
		0000000000000888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ff
     88c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcdc
     890: 91000021     	add	x1, x1, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcdc
     894: 94000000     	bl	0x894 <gf_release+0xd8>
		0000000000000894:  R_AARCH64_CALL26	_printk
     898: 17ffffde     	b	0x810 <gf_release+0x54>
     89c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x603
     8a0: 91000000     	add	x0, x0, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x603
     8a4: 94000000     	bl	0x8a4 <gf_release+0xe8>
		00000000000008a4:  R_AARCH64_CALL26	_printk
     8a8: 17ffffee     	b	0x860 <gf_release+0xa4>
