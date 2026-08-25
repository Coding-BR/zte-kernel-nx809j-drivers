
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d538 <syna_tcm_send_command>:
   1d538: d503233f     	paciasp
   1d53c: d10183ff     	sub	sp, sp, #0x60
   1d540: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1d544: f90013f9     	str	x25, [sp, #0x20]
   1d548: a9035ff8     	stp	x24, x23, [sp, #0x30]
   1d54c: a90457f6     	stp	x22, x21, [sp, #0x40]
   1d550: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1d554: 910043fd     	add	x29, sp, #0x10
   1d558: d5384108     	mrs	x8, SP_EL0
   1d55c: f9438908     	ldr	x8, [x8, #0x710]
   1d560: f90007e8     	str	x8, [sp, #0x8]
   1d564: 390013ff     	strb	wzr, [sp, #0x4]
   1d568: b4000800     	cbz	x0, 0x1d668 <syna_tcm_send_command+0x130>
   1d56c: aa0503f3     	mov	x19, x5
   1d570: aa0403f5     	mov	x21, x4
   1d574: aa0003f4     	mov	x20, x0
   1d578: 2a0103f6     	mov	w22, w1
   1d57c: 350000a6     	cbnz	w6, 0x1d590 <syna_tcm_send_command+0x58>
   1d580: f9402688     	ldr	x8, [x20, #0x48]
   1d584: 39405108     	ldrb	w8, [x8, #0x14]
   1d588: 36000ac8     	tbz	w8, #0x0, 0x1d6e0 <syna_tcm_send_command+0x1a8>
   1d58c: 2a1f03e6     	mov	w6, wzr
   1d590: f941ce88     	ldr	x8, [x20, #0x398]
   1d594: 910013e4     	add	x4, sp, #0x4
   1d598: aa1403e0     	mov	x0, x20
   1d59c: 2a1603e1     	mov	w1, w22
   1d5a0: 2a0603e5     	mov	w5, w6
   1d5a4: b85fc110     	ldur	w16, [x8, #-0x4]
   1d5a8: 728751d1     	movk	w17, #0x3a8e
   1d5ac: 72a48411     	movk	w17, #0x2420, lsl #16
   1d5b0: 6b11021f     	cmp	w16, w17
   1d5b4: 54000040     	b.eq	0x1d5bc <syna_tcm_send_command+0x84>
   1d5b8: d4304500     	brk	#0x8228
   1d5bc: d63f0100     	blr	x8
   1d5c0: 37f807a0     	tbnz	w0, #0x1f, 0x1d6b4 <syna_tcm_send_command+0x17c>
   1d5c4: b4000075     	cbz	x21, 0x1d5d0 <syna_tcm_send_command+0x98>
   1d5c8: 394013e8     	ldrb	w8, [sp, #0x4]
   1d5cc: 390002a8     	strb	w8, [x21]
   1d5d0: b4000593     	cbz	x19, 0x1d680 <syna_tcm_send_command+0x148>
   1d5d4: 394013e8     	ldrb	w8, [sp, #0x4]
   1d5d8: 51004109     	sub	w9, w8, #0x10
   1d5dc: 7103b93f     	cmp	w9, #0xee
   1d5e0: 540001c8     	b.hi	0x1d618 <syna_tcm_send_command+0xe0>
   1d5e4: b9410e88     	ldr	w8, [x20, #0x10c]
   1d5e8: 340004c8     	cbz	w8, 0x1d680 <syna_tcm_send_command+0x148>
   1d5ec: 91040281     	add	x1, x20, #0x100
   1d5f0: 2a0003f4     	mov	w20, w0
   1d5f4: aa1303e0     	mov	x0, x19
   1d5f8: 97fff764     	bl	0x1b388 <syna_tcm_buf_copy>
   1d5fc: 2a0003e8     	mov	w8, w0
   1d600: 2a1403e0     	mov	w0, w20
   1d604: 36f803e8     	tbz	w8, #0x1f, 0x1d680 <syna_tcm_send_command+0x148>
   1d608: 394013e2     	ldrb	w2, [sp, #0x4]
   1d60c: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa89e
   1d610: 91000000     	add	x0, x0, #0x0
		000000000001d610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa89e
   1d614: 14000010     	b	0x1d654 <syna_tcm_send_command+0x11c>
   1d618: 51000508     	sub	w8, w8, #0x1
   1d61c: 7100391f     	cmp	w8, #0xe
   1d620: 54000308     	b.hi	0x1d680 <syna_tcm_send_command+0x148>
   1d624: b9415688     	ldr	w8, [x20, #0x154]
   1d628: 340002c8     	cbz	w8, 0x1d680 <syna_tcm_send_command+0x148>
   1d62c: 91052281     	add	x1, x20, #0x148
   1d630: 2a0003f4     	mov	w20, w0
   1d634: aa1303e0     	mov	x0, x19
   1d638: 97fff754     	bl	0x1b388 <syna_tcm_buf_copy>
   1d63c: 2a0003e8     	mov	w8, w0
   1d640: 2a1403e0     	mov	w0, w20
   1d644: 36f801e8     	tbz	w8, #0x1f, 0x1d680 <syna_tcm_send_command+0x148>
   1d648: 394013e2     	ldrb	w2, [sp, #0x4]
   1d64c: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d64c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb602
   1d650: 91000000     	add	x0, x0, #0x0
		000000000001d650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb602
   1d654: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38c
   1d658: 91000021     	add	x1, x1, #0x0
		000000000001d658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38c
   1d65c: 94000000     	bl	0x1d65c <syna_tcm_send_command+0x124>
		000000000001d65c:  R_AARCH64_CALL26	_printk
   1d660: 12801e40     	mov	w0, #-0xf3              // =-243
   1d664: 14000007     	b	0x1d680 <syna_tcm_send_command+0x148>
   1d668: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d66c: 91000000     	add	x0, x0, #0x0
		000000000001d66c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d670: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38c
   1d674: 91000021     	add	x1, x1, #0x0
		000000000001d674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38c
   1d678: 94000000     	bl	0x1d678 <syna_tcm_send_command+0x140>
		000000000001d678:  R_AARCH64_CALL26	_printk
   1d67c: 12801e00     	mov	w0, #-0xf1              // =-241
   1d680: d5384108     	mrs	x8, SP_EL0
   1d684: f9438908     	ldr	x8, [x8, #0x710]
   1d688: f94007e9     	ldr	x9, [sp, #0x8]
   1d68c: eb09011f     	cmp	x8, x9
   1d690: 54000401     	b.ne	0x1d710 <syna_tcm_send_command+0x1d8>
   1d694: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   1d698: f94013f9     	ldr	x25, [sp, #0x20]
   1d69c: a94457f6     	ldp	x22, x21, [sp, #0x40]
   1d6a0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   1d6a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1d6a8: 910183ff     	add	sp, sp, #0x60
   1d6ac: d50323bf     	autiasp
   1d6b0: d65f03c0     	ret
   1d6b4: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d6b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x588c
   1d6b8: 91000108     	add	x8, x8, #0x0
		000000000001d6b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x588c
   1d6bc: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d6bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38c
   1d6c0: 91000021     	add	x1, x1, #0x0
		000000000001d6c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38c
   1d6c4: 12001ec2     	and	w2, w22, #0xff
   1d6c8: 2a0003f6     	mov	w22, w0
   1d6cc: aa0803e0     	mov	x0, x8
   1d6d0: 94000000     	bl	0x1d6d0 <syna_tcm_send_command+0x198>
		000000000001d6d0:  R_AARCH64_CALL26	_printk
   1d6d4: 2a1603e0     	mov	w0, w22
   1d6d8: b5fff795     	cbnz	x21, 0x1d5c8 <syna_tcm_send_command+0x90>
   1d6dc: 17ffffbd     	b	0x1d5d0 <syna_tcm_send_command+0x98>
   1d6e0: b9420e99     	ldr	w25, [x20, #0x20c]
   1d6e4: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d6e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1d6e8: 91000000     	add	x0, x0, #0x0
		000000000001d6e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1d6ec: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d6ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc38c
   1d6f0: 91000021     	add	x1, x1, #0x0
		000000000001d6f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc38c
   1d6f4: 2a0303f7     	mov	w23, w3
   1d6f8: aa0203f8     	mov	x24, x2
   1d6fc: 94000000     	bl	0x1d6fc <syna_tcm_send_command+0x1c4>
		000000000001d6fc:  R_AARCH64_CALL26	_printk
   1d700: 2a1903e6     	mov	w6, w25
   1d704: aa1803e2     	mov	x2, x24
   1d708: 2a1703e3     	mov	w3, w23
   1d70c: 17ffffa1     	b	0x1d590 <syna_tcm_send_command+0x58>
   1d710: 94000000     	bl	0x1d710 <syna_tcm_send_command+0x1d8>
		000000000001d710:  R_AARCH64_CALL26	__stack_chk_fail
