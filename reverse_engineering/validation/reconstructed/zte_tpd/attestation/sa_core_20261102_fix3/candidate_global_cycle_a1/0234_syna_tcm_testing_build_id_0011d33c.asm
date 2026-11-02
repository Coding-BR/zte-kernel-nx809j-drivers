
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024640 <syna_tcm_testing_build_id>:
   24640: d503233f     	paciasp
   24644: d10203ff     	sub	sp, sp, #0x80
   24648: a9047bfd     	stp	x29, x30, [sp, #0x40]
   2464c: f9002bf7     	str	x23, [sp, #0x50]
   24650: a90657f6     	stp	x22, x21, [sp, #0x60]
   24654: a9074ff4     	stp	x20, x19, [sp, #0x70]
   24658: 910103fd     	add	x29, sp, #0x40
   2465c: d5384108     	mrs	x8, SP_EL0
   24660: f9438908     	ldr	x8, [x8, #0x710]
   24664: f81f83a8     	stur	x8, [x29, #-0x8]
   24668: 12801408     	mov	w8, #-0xa1              // =-161
   2466c: b4000040     	cbz	x0, 0x24674 <syna_tcm_testing_build_id+0x34>
   24670: b50001c1     	cbnz	x1, 0x246a8 <syna_tcm_testing_build_id+0x68>
   24674: d5384109     	mrs	x9, SP_EL0
   24678: f9438929     	ldr	x9, [x9, #0x710]
   2467c: f85f83aa     	ldur	x10, [x29, #-0x8]
   24680: eb0a013f     	cmp	x9, x10
   24684: 54001081     	b.ne	0x24894 <syna_tcm_testing_build_id+0x254>
   24688: 2a0803e0     	mov	w0, w8
   2468c: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   24690: f9402bf7     	ldr	x23, [sp, #0x50]
   24694: a94657f6     	ldp	x22, x21, [sp, #0x60]
   24698: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   2469c: 910203ff     	add	sp, sp, #0x80
   246a0: d50323bf     	autiasp
   246a4: d65f03c0     	ret
   246a8: 2a0203f6     	mov	w22, w2
   246ac: aa0103f4     	mov	x20, x1
   246b0: 910023e1     	add	x1, sp, #0x8
   246b4: 2a1f03e2     	mov	w2, wzr
   246b8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   246bc: 910023f5     	add	x21, sp, #0x8
   246c0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   246c4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   246c8: b90007ff     	str	wzr, [sp, #0x4]
   246cc: 94000000     	bl	0x246cc <syna_tcm_testing_build_id+0x8c>
		00000000000246cc:  R_AARCH64_CALL26	syna_tcm_identify
   246d0: 36f80160     	tbz	w0, #0x1f, 0x246fc <syna_tcm_testing_build_id+0xbc>
   246d4: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000246d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b0f
   246d8: 91000000     	add	x0, x0, #0x0
		00000000000246d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b0f
   246dc: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000246dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0fa
   246e0: 91000021     	add	x1, x1, #0x0
		00000000000246e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0fa
   246e4: 94000000     	bl	0x246e4 <syna_tcm_testing_build_id+0xa4>
		00000000000246e4:  R_AARCH64_CALL26	_printk
   246e8: 3900429f     	strb	wzr, [x20, #0x10]
   246ec: 12801453     	mov	w19, #-0xa3             // =-163
   246f0: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000246f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
   246f4: 91000042     	add	x2, x2, #0x0
		00000000000246f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
   246f8: 14000055     	b	0x2484c <syna_tcm_testing_build_id+0x20c>
   246fc: b841a3ea     	ldur	w10, [sp, #0x1a]
   24700: f9406e88     	ldr	x8, [x20, #0xd8]
   24704: aa1403e9     	mov	x9, x20
   24708: 2a0003f3     	mov	w19, w0
   2470c: b90007ea     	str	w10, [sp, #0x4]
   24710: b4000288     	cbz	x8, 0x24760 <syna_tcm_testing_build_id+0x120>
   24714: aa0803e0     	mov	x0, x8
   24718: 52800081     	mov	w1, #0x4                // =4
   2471c: 52800097     	mov	w23, #0x4               // =4
   24720: 9400005e     	bl	0x24898 <syna_tcm_buf_alloc>
   24724: aa1403e9     	mov	x9, x20
   24728: 2a0003e8     	mov	w8, w0
   2472c: 2a1303e0     	mov	w0, w19
   24730: 37f80188     	tbnz	w8, #0x1f, 0x24760 <syna_tcm_testing_build_id+0x120>
   24734: f9406d28     	ldr	x8, [x9, #0xd8]
   24738: 910013e2     	add	x2, sp, #0x4
   2473c: 52800083     	mov	w3, #0x4                // =4
   24740: 52800084     	mov	w4, #0x4                // =4
   24744: f9400100     	ldr	x0, [x8]
   24748: b9400901     	ldr	w1, [x8, #0x8]
   2474c: 9400008d     	bl	0x24980 <syna_pal_mem_cpy>
   24750: f9406e88     	ldr	x8, [x20, #0xd8]
   24754: aa1403e9     	mov	x9, x20
   24758: 2a1303e0     	mov	w0, w19
   2475c: b9000d17     	str	w23, [x8, #0xc]
   24760: f9407128     	ldr	x8, [x9, #0xe0]
   24764: b4000288     	cbz	x8, 0x247b4 <syna_tcm_testing_build_id+0x174>
   24768: aa0803e0     	mov	x0, x8
   2476c: 52800201     	mov	w1, #0x10               // =16
   24770: 52800217     	mov	w23, #0x10              // =16
   24774: 94000049     	bl	0x24898 <syna_tcm_buf_alloc>
   24778: aa1403e9     	mov	x9, x20
   2477c: 2a0003e8     	mov	w8, w0
   24780: 2a1303e0     	mov	w0, w19
   24784: 37f80188     	tbnz	w8, #0x1f, 0x247b4 <syna_tcm_testing_build_id+0x174>
   24788: f9407128     	ldr	x8, [x9, #0xe0]
   2478c: b27f02a2     	orr	x2, x21, #0x2
   24790: 52800203     	mov	w3, #0x10               // =16
   24794: 52800204     	mov	w4, #0x10               // =16
   24798: f9400100     	ldr	x0, [x8]
   2479c: b9400901     	ldr	w1, [x8, #0x8]
   247a0: 94000078     	bl	0x24980 <syna_pal_mem_cpy>
   247a4: f9407288     	ldr	x8, [x20, #0xe0]
   247a8: aa1403e9     	mov	x9, x20
   247ac: 2a1303e0     	mov	w0, w19
   247b0: b9000d17     	str	w23, [x8, #0xc]
   247b4: 360000d6     	tbz	w22, #0x0, 0x247cc <syna_tcm_testing_build_id+0x18c>
   247b8: 52800028     	mov	w8, #0x1                // =1
   247bc: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000247bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
   247c0: 91000042     	add	x2, x2, #0x0
		00000000000247c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
   247c4: 39004128     	strb	w8, [x9, #0x10]
   247c8: 14000021     	b	0x2484c <syna_tcm_testing_build_id+0x20c>
   247cc: f9401d28     	ldr	x8, [x9, #0x38]
   247d0: b4000128     	cbz	x8, 0x247f4 <syna_tcm_testing_build_id+0x1b4>
   247d4: b940090a     	ldr	w10, [x8, #0x8]
   247d8: 7100115f     	cmp	w10, #0x4
   247dc: 540000c3     	b.lo	0x247f4 <syna_tcm_testing_build_id+0x1b4>
   247e0: f9400108     	ldr	x8, [x8]
   247e4: b94007e2     	ldr	w2, [sp, #0x4]
   247e8: b9400103     	ldr	w3, [x8]
   247ec: 6b02007f     	cmp	w3, w2
   247f0: 540003c1     	b.ne	0x24868 <syna_tcm_testing_build_id+0x228>
   247f4: 52800036     	mov	w22, #0x1               // =1
   247f8: f9402128     	ldr	x8, [x9, #0x40]
   247fc: b4000068     	cbz	x8, 0x24808 <syna_tcm_testing_build_id+0x1c8>
   24800: b9400902     	ldr	w2, [x8, #0x8]
   24804: 35000062     	cbnz	w2, 0x24810 <syna_tcm_testing_build_id+0x1d0>
   24808: 52800028     	mov	w8, #0x1                // =1
   2480c: 14000007     	b	0x24828 <syna_tcm_testing_build_id+0x1e8>
   24810: f9400101     	ldr	x1, [x8]
   24814: b27f02a0     	orr	x0, x21, #0x2
   24818: 94000074     	bl	0x249e8 <syna_tcm_testing_0001_check_device_id>
   2481c: aa1403e9     	mov	x9, x20
   24820: 2a0003e8     	mov	w8, w0
   24824: 2a1303e0     	mov	w0, w19
   24828: 6a0802c8     	ands	w8, w22, w8
   2482c: 1280142a     	mov	w10, #-0xa2             // =-162
   24830: 9000000b     	adrp	x11, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
   24834: 9100016b     	add	x11, x11, #0x0
		0000000000024834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
   24838: 39004128     	strb	w8, [x9, #0x10]
   2483c: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002483c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
   24840: 91000108     	add	x8, x8, #0x0
		0000000000024840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
   24844: 1a8a1013     	csel	w19, w0, w10, ne
   24848: 9a8b1102     	csel	x2, x8, x11, ne
   2484c: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002484c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fbf
   24850: 91000000     	add	x0, x0, #0x0
		0000000000024850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fbf
   24854: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0fa
   24858: 91000021     	add	x1, x1, #0x0
		0000000000024858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0fa
   2485c: 94000000     	bl	0x2485c <syna_tcm_testing_build_id+0x21c>
		000000000002485c:  R_AARCH64_CALL26	_printk
   24860: 2a1303e8     	mov	w8, w19
   24864: 17ffff84     	b	0x24674 <syna_tcm_testing_build_id+0x34>
   24868: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c38
   2486c: 91000000     	add	x0, x0, #0x0
		000000000002486c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c38
   24870: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x183f5
   24874: 91000021     	add	x1, x1, #0x0
		0000000000024874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x183f5
   24878: 94000000     	bl	0x24878 <syna_tcm_testing_build_id+0x238>
		0000000000024878:  R_AARCH64_CALL26	_printk
   2487c: aa1403e9     	mov	x9, x20
   24880: 2a1303e0     	mov	w0, w19
   24884: 2a1f03f6     	mov	w22, wzr
   24888: f9402128     	ldr	x8, [x9, #0x40]
   2488c: b5fffba8     	cbnz	x8, 0x24800 <syna_tcm_testing_build_id+0x1c0>
   24890: 17ffffde     	b	0x24808 <syna_tcm_testing_build_id+0x1c8>
   24894: 94000000     	bl	0x24894 <syna_tcm_testing_build_id+0x254>
		0000000000024894:  R_AARCH64_CALL26	__stack_chk_fail
