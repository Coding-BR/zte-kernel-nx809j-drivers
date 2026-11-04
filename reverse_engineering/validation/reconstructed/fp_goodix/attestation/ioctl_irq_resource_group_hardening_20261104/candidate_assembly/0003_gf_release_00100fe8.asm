
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005d4 <gf_release>:
     5d4: d503233f     	paciasp
     5d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     5dc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     5e0: 910003fd     	mov	x29, sp
     5e4: aa0103f4     	mov	x20, x1
     5e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     5ec: 91000000     	add	x0, x0, #0x0
		00000000000005ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     5f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc15
     5f4: 91000021     	add	x1, x1, #0x0
		00000000000005f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc15
     5f8: 94000000     	bl	0x5f8 <gf_release+0x24>
		00000000000005f8:  R_AARCH64_CALL26	_printk
     5fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     600: 91000000     	add	x0, x0, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     604: 94000000     	bl	0x604 <gf_release+0x30>
		0000000000000604:  R_AARCH64_CALL26	mutex_lock
     608: f9401293     	ldr	x19, [x20, #0x20]
     60c: f900129f     	str	xzr, [x20, #0x20]
     610: b4000373     	cbz	x19, 0x67c <gf_release+0xa8>
     614: b9403a68     	ldr	w8, [x19, #0x38]
     618: 34000328     	cbz	w8, 0x67c <gf_release+0xa8>
     61c: 71000508     	subs	w8, w8, #0x1
     620: b9003a68     	str	w8, [x19, #0x38]
     624: 540002c1     	b.ne	0x67c <gf_release+0xa8>
     628: b9411a68     	ldr	w8, [x19, #0x118]
     62c: 340001a8     	cbz	w8, 0x660 <gf_release+0x8c>
     630: b9404a60     	ldr	w0, [x19, #0x48]
     634: 2a1f03e1     	mov	w1, wzr
     638: 94000000     	bl	0x638 <gf_release+0x64>
		0000000000000638:  R_AARCH64_CALL26	irq_set_irq_wake
     63c: b9404e68     	ldr	w8, [x19, #0x4c]
     640: 34000088     	cbz	w8, 0x650 <gf_release+0x7c>
     644: b9404a60     	ldr	w0, [x19, #0x48]
     648: b9004e7f     	str	wzr, [x19, #0x4c]
     64c: 94000000     	bl	0x64c <gf_release+0x78>
		000000000000064c:  R_AARCH64_CALL26	disable_irq
     650: b9404a60     	ldr	w0, [x19, #0x48]
     654: aa1303e1     	mov	x1, x19
     658: 94000000     	bl	0x658 <gf_release+0x84>
		0000000000000658:  R_AARCH64_CALL26	free_irq
     65c: b9011a7f     	str	wzr, [x19, #0x118]
     660: b9411e68     	ldr	w8, [x19, #0x11c]
     664: 35000068     	cbnz	w8, 0x670 <gf_release+0x9c>
     668: aa1303e0     	mov	x0, x19
     66c: 94000000     	bl	0x66c <gf_release+0x98>
		000000000000066c:  R_AARCH64_CALL26	gf_cleanup
     670: f9403e60     	ldr	x0, [x19, #0x78]
     674: 3901c27f     	strb	wzr, [x19, #0x70]
     678: b5000120     	cbnz	x0, 0x69c <gf_release+0xc8>
     67c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     680: 91000000     	add	x0, x0, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     684: 94000000     	bl	0x684 <gf_release+0xb0>
		0000000000000684:  R_AARCH64_CALL26	mutex_unlock
     688: 2a1f03e0     	mov	w0, wzr
     68c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     690: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     694: d50323bf     	autiasp
     698: d65f03c0     	ret
     69c: 94000000     	bl	0x69c <gf_release+0xc8>
		000000000000069c:  R_AARCH64_CALL26	zlog_unregister_client
     6a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88b
     6a4: 91000000     	add	x0, x0, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88b
     6a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc15
     6ac: 91000021     	add	x1, x1, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc15
     6b0: f9003e7f     	str	xzr, [x19, #0x78]
     6b4: 94000000     	bl	0x6b4 <gf_release+0xe0>
		00000000000006b4:  R_AARCH64_CALL26	_printk
     6b8: 17fffff1     	b	0x67c <gf_release+0xa8>
