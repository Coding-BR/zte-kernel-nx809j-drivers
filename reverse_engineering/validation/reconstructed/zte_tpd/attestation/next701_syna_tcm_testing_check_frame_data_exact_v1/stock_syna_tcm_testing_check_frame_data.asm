
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016864 <syna_tcm_testing_check_frame_data>:
   16864: d503233f     	paciasp
   16868: d101c3ff     	sub	sp, sp, #0x70
   1686c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   16870: a9026ffc     	stp	x28, x27, [sp, #0x20]
   16874: a90367fa     	stp	x26, x25, [sp, #0x30]
   16878: a9045ff8     	stp	x24, x23, [sp, #0x40]
   1687c: a90557f6     	stp	x22, x21, [sp, #0x50]
   16880: a9064ff4     	stp	x20, x19, [sp, #0x60]
   16884: 910043fd     	add	x29, sp, #0x10
   16888: b9000be3     	str	w3, [sp, #0x8]
   1688c: b4000844     	cbz	x4, 0x16994 <syna_tcm_testing_check_frame_data+0x130>
   16890: aa0003f9     	mov	x25, x0
   16894: b4000800     	cbz	x0, 0x16994 <syna_tcm_testing_check_frame_data+0x130>
   16898: aa0503f5     	mov	x21, x5
   1689c: b40007c5     	cbz	x5, 0x16994 <syna_tcm_testing_check_frame_data+0x130>
   168a0: b9400be8     	ldr	w8, [sp, #0x8]
   168a4: aa0103f3     	mov	x19, x1
   168a8: 1b087c48     	mul	w8, w2, w8
   168ac: 531f7903     	lsl	w3, w8, #1
   168b0: eb01007f     	cmp	x3, x1
   168b4: 540007e8     	b.hi	0x169b0 <syna_tcm_testing_check_frame_data+0x14c>
   168b8: 7100045f     	cmp	w2, #0x1
   168bc: 5400056b     	b.lt	0x16968 <syna_tcm_testing_check_frame_data+0x104>
   168c0: b9400be8     	ldr	w8, [sp, #0x8]
   168c4: aa0603f4     	mov	x20, x6
   168c8: aa0403f6     	mov	x22, x4
   168cc: 2a1f03e9     	mov	w9, wzr
   168d0: 2a1f03fa     	mov	w26, wzr
   168d4: 5280003c     	mov	w28, #0x1               // =1
   168d8: 531f790a     	lsl	w10, w8, #1
   168dc: 2a0803f7     	mov	w23, w8
   168e0: 29000bea     	stp	w10, w2, [sp]
   168e4: 14000007     	b	0x16900 <syna_tcm_testing_check_frame_data+0x9c>
   168e8: 29400be8     	ldp	w8, w2, [sp]
   168ec: b85fc3a9     	ldur	w9, [x29, #-0x4]
   168f0: 1100075a     	add	w26, w26, #0x1
   168f4: 6b02035f     	cmp	w26, w2
   168f8: 0b080129     	add	w9, w9, w8
   168fc: 54000380     	b.eq	0x1696c <syna_tcm_testing_check_frame_data+0x108>
   16900: b9400be8     	ldr	w8, [sp, #0x8]
   16904: b81fc3a9     	stur	w9, [x29, #-0x4]
   16908: 7100051f     	cmp	w8, #0x1
   1690c: 54fffeeb     	b.lt	0x168e8 <syna_tcm_testing_check_frame_data+0x84>
   16910: aa1f03fb     	mov	x27, xzr
   16914: 2a0903f8     	mov	w24, w9
   16918: 93407f08     	sxtw	x8, w24
   1691c: eb13029f     	cmp	x20, x19
   16920: 2a1b03e2     	mov	w2, w27
   16924: 2a1a03e3     	mov	w3, w26
   16928: 9a8833e9     	csel	x9, xzr, x8, lo
   1692c: 8b080320     	add	x0, x25, x8
   16930: 8b0902a1     	add	x1, x21, x9
   16934: b85fc2d0     	ldur	w16, [x22, #-0x4]
   16938: 7290be51     	movk	w17, #0x85f2
   1693c: 72b46651     	movk	w17, #0xa332, lsl #16
   16940: 6b11021f     	cmp	w16, w17
   16944: 54000040     	b.eq	0x1694c <syna_tcm_testing_check_frame_data+0xe8>
   16948: d43046c0     	brk	#0x8236
   1694c: d63f02c0     	blr	x22
   16950: 9100077b     	add	x27, x27, #0x1
   16954: 0a1c001c     	and	w28, w0, w28
   16958: 11000b18     	add	w24, w24, #0x2
   1695c: eb1b02ff     	cmp	x23, x27
   16960: 54fffdc1     	b.ne	0x16918 <syna_tcm_testing_check_frame_data+0xb4>
   16964: 17ffffe1     	b	0x168e8 <syna_tcm_testing_check_frame_data+0x84>
   16968: 5280003c     	mov	w28, #0x1               // =1
   1696c: 12000380     	and	w0, w28, #0x1
   16970: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   16974: a94557f6     	ldp	x22, x21, [sp, #0x50]
   16978: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   1697c: a94367fa     	ldp	x26, x25, [sp, #0x30]
   16980: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   16984: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   16988: 9101c3ff     	add	sp, sp, #0x70
   1698c: d50323bf     	autiasp
   16990: d65f03c0     	ret
   16994: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2205
   16998: 91000000     	add	x0, x0, #0x0
		0000000000016998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2205
   1699c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001699c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
   169a0: 91000021     	add	x1, x1, #0x0
		00000000000169a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
   169a4: 94000000     	bl	0x169a4 <syna_tcm_testing_check_frame_data+0x140>
		00000000000169a4:  R_AARCH64_CALL26	_printk
   169a8: 2a1f03fc     	mov	w28, wzr
   169ac: 17fffff0     	b	0x1696c <syna_tcm_testing_check_frame_data+0x108>
   169b0: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000169b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8318
   169b4: 91000000     	add	x0, x0, #0x0
		00000000000169b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8318
   169b8: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000169b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
   169bc: 91000021     	add	x1, x1, #0x0
		00000000000169bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
   169c0: 2a1303e2     	mov	w2, w19
   169c4: 94000000     	bl	0x169c4 <syna_tcm_testing_check_frame_data+0x160>
		00000000000169c4:  R_AARCH64_CALL26	_printk
   169c8: 2a1f03fc     	mov	w28, wzr
   169cc: 17ffffe8     	b	0x1696c <syna_tcm_testing_check_frame_data+0x108>
