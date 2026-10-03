
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007c8 <gf_release>:
     7c8: d503233f     	paciasp
     7cc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7d0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     7d4: 910003fd     	mov	x29, sp
     7d8: aa0103f4     	mov	x20, x1
     7dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fd
     7e0: 91000000     	add	x0, x0, #0x0
		00000000000007e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fd
     7e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde7
     7e8: 91000021     	add	x1, x1, #0x0
		00000000000007e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde7
     7ec: 94000000     	bl	0x7ec <gf_release+0x24>
		00000000000007ec:  R_AARCH64_CALL26	_printk
     7f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     7f4: 91000000     	add	x0, x0, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     7f8: 94000000     	bl	0x7f8 <gf_release+0x30>
		00000000000007f8:  R_AARCH64_CALL26	mutex_lock
     7fc: f9401293     	ldr	x19, [x20, #0x20]
     800: f900129f     	str	xzr, [x20, #0x20]
     804: b9403a68     	ldr	w8, [x19, #0x38]
     808: 71000508     	subs	w8, w8, #0x1
     80c: b9003a68     	str	w8, [x19, #0x38]
     810: 54000160     	b.eq	0x83c <gf_release+0x74>
     814: f9403e60     	ldr	x0, [x19, #0x78]
     818: b50003a0     	cbnz	x0, 0x88c <gf_release+0xc4>
     81c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000081c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     820: 91000000     	add	x0, x0, #0x0
		0000000000000820:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     824: 94000000     	bl	0x824 <gf_release+0x5c>
		0000000000000824:  R_AARCH64_CALL26	mutex_unlock
     828: 2a1f03e0     	mov	w0, wzr
     82c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     830: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     834: d50323bf     	autiasp
     838: d65f03c0     	ret
     83c: b9404a61     	ldr	w1, [x19, #0x48]
     840: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf8
     844: 91000000     	add	x0, x0, #0x0
		0000000000000844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf8
     848: 94000000     	bl	0x848 <gf_release+0x80>
		0000000000000848:  R_AARCH64_CALL26	_printk
     84c: b9404a60     	ldr	w0, [x19, #0x48]
     850: 2a1f03e1     	mov	w1, wzr
     854: 94000000     	bl	0x854 <gf_release+0x8c>
		0000000000000854:  R_AARCH64_CALL26	irq_set_irq_wake
     858: b9404e68     	ldr	w8, [x19, #0x4c]
     85c: 34000268     	cbz	w8, 0x8a8 <gf_release+0xe0>
     860: b9404a60     	ldr	w0, [x19, #0x48]
     864: b9004e7f     	str	wzr, [x19, #0x4c]
     868: 94000000     	bl	0x868 <gf_release+0xa0>
		0000000000000868:  R_AARCH64_CALL26	disable_irq
     86c: b9404a60     	ldr	w0, [x19, #0x48]
     870: aa1303e1     	mov	x1, x19
     874: 94000000     	bl	0x874 <gf_release+0xac>
		0000000000000874:  R_AARCH64_CALL26	free_irq
     878: aa1303e0     	mov	x0, x19
     87c: 94000000     	bl	0x87c <gf_release+0xb4>
		000000000000087c:  R_AARCH64_CALL26	gf_cleanup
     880: 3901c27f     	strb	wzr, [x19, #0x70]
     884: f9403e60     	ldr	x0, [x19, #0x78]
     888: b4fffca0     	cbz	x0, 0x81c <gf_release+0x54>
     88c: 94000000     	bl	0x88c <gf_release+0xc4>
		000000000000088c:  R_AARCH64_CALL26	zlog_unregister_client
     890: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad
     894: 91000000     	add	x0, x0, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad
     898: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde7
     89c: 91000021     	add	x1, x1, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde7
     8a0: 94000000     	bl	0x8a0 <gf_release+0xd8>
		00000000000008a0:  R_AARCH64_CALL26	_printk
     8a4: 17ffffde     	b	0x81c <gf_release+0x54>
     8a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cf
     8ac: 91000000     	add	x0, x0, #0x0
		00000000000008ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cf
     8b0: 94000000     	bl	0x8b0 <gf_release+0xe8>
		00000000000008b0:  R_AARCH64_CALL26	_printk
     8b4: 17ffffee     	b	0x86c <gf_release+0xa4>
