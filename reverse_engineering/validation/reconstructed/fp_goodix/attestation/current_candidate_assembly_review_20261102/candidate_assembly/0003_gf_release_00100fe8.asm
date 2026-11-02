
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000498 <gf_release>:
     498: d503233f     	paciasp
     49c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     4a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     4a4: 910003fd     	mov	x29, sp
     4a8: aa0103f4     	mov	x20, x1
     4ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     4b0: 91000000     	add	x0, x0, #0x0
		00000000000004b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     4b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb9
     4b8: 91000021     	add	x1, x1, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb9
     4bc: 94000000     	bl	0x4bc <gf_release+0x24>
		00000000000004bc:  R_AARCH64_CALL26	_printk
     4c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004c0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     4c4: 91000000     	add	x0, x0, #0x0
		00000000000004c4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     4c8: 94000000     	bl	0x4c8 <gf_release+0x30>
		00000000000004c8:  R_AARCH64_CALL26	mutex_lock
     4cc: f9401293     	ldr	x19, [x20, #0x20]
     4d0: f900129f     	str	xzr, [x20, #0x20]
     4d4: b9403a68     	ldr	w8, [x19, #0x38]
     4d8: 71000508     	subs	w8, w8, #0x1
     4dc: b9003a68     	str	w8, [x19, #0x38]
     4e0: 54000160     	b.eq	0x50c <gf_release+0x74>
     4e4: f9403e60     	ldr	x0, [x19, #0x78]
     4e8: b50003a0     	cbnz	x0, 0x55c <gf_release+0xc4>
     4ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     4f0: 91000000     	add	x0, x0, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     4f4: 94000000     	bl	0x4f4 <gf_release+0x5c>
		00000000000004f4:  R_AARCH64_CALL26	mutex_unlock
     4f8: 2a1f03e0     	mov	w0, wzr
     4fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     500: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     504: d50323bf     	autiasp
     508: d65f03c0     	ret
     50c: b9404a61     	ldr	w1, [x19, #0x48]
     510: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe77
     514: 91000000     	add	x0, x0, #0x0
		0000000000000514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe77
     518: 94000000     	bl	0x518 <gf_release+0x80>
		0000000000000518:  R_AARCH64_CALL26	_printk
     51c: b9404a60     	ldr	w0, [x19, #0x48]
     520: 2a1f03e1     	mov	w1, wzr
     524: 94000000     	bl	0x524 <gf_release+0x8c>
		0000000000000524:  R_AARCH64_CALL26	irq_set_irq_wake
     528: b9404e68     	ldr	w8, [x19, #0x4c]
     52c: 34000268     	cbz	w8, 0x578 <gf_release+0xe0>
     530: b9404a60     	ldr	w0, [x19, #0x48]
     534: b9004e7f     	str	wzr, [x19, #0x4c]
     538: 94000000     	bl	0x538 <gf_release+0xa0>
		0000000000000538:  R_AARCH64_CALL26	disable_irq
     53c: b9404a60     	ldr	w0, [x19, #0x48]
     540: aa1303e1     	mov	x1, x19
     544: 94000000     	bl	0x544 <gf_release+0xac>
		0000000000000544:  R_AARCH64_CALL26	free_irq
     548: aa1303e0     	mov	x0, x19
     54c: 94000000     	bl	0x54c <gf_release+0xb4>
		000000000000054c:  R_AARCH64_CALL26	gf_cleanup
     550: 3901c27f     	strb	wzr, [x19, #0x70]
     554: f9403e60     	ldr	x0, [x19, #0x78]
     558: b4fffca0     	cbz	x0, 0x4ec <gf_release+0x54>
     55c: 94000000     	bl	0x55c <gf_release+0xc4>
		000000000000055c:  R_AARCH64_CALL26	zlog_unregister_client
     560: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ff
     564: 91000000     	add	x0, x0, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ff
     568: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb9
     56c: 91000021     	add	x1, x1, #0x0
		000000000000056c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb9
     570: 94000000     	bl	0x570 <gf_release+0xd8>
		0000000000000570:  R_AARCH64_CALL26	_printk
     574: 17ffffde     	b	0x4ec <gf_release+0x54>
     578: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x603
     57c: 91000000     	add	x0, x0, #0x0
		000000000000057c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x603
     580: 94000000     	bl	0x580 <gf_release+0xe8>
		0000000000000580:  R_AARCH64_CALL26	_printk
     584: 17ffffee     	b	0x53c <gf_release+0xa4>
