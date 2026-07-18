
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016750 <syna_tcm_set_static_config>:
   16750: d503233f     	paciasp
   16754: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   16758: f9000bf7     	str	x23, [sp, #0x10]
   1675c: a90257f6     	stp	x22, x21, [sp, #0x20]
   16760: a9034ff4     	stp	x20, x19, [sp, #0x30]
   16764: 910003fd     	mov	x29, sp
   16768: b4000520     	cbz	x0, 0x1680c <syna_tcm_set_static_config+0xbc>
   1676c: 39402408     	ldrb	w8, [x0, #0x9]
   16770: 7100051f     	cmp	w8, #0x1
   16774: 54000521     	b.ne	0x16818 <syna_tcm_set_static_config+0xc8>
   16778: 2a0303f5     	mov	w21, w3
   1677c: 2a0203f3     	mov	w19, w2
   16780: aa0103f4     	mov	x20, x1
   16784: 350000a3     	cbnz	w3, 0x16798 <syna_tcm_set_static_config+0x48>
   16788: f9402408     	ldr	x8, [x0, #0x48]
   1678c: 39405108     	ldrb	w8, [x8, #0x14]
   16790: 360008a8     	tbz	w8, #0x0, 0x168a4 <syna_tcm_set_static_config+0x154>
   16794: 2a1f03f5     	mov	w21, wzr
   16798: 79416808     	ldrh	w8, [x0, #0xb4]
   1679c: 6b13011f     	cmp	w8, w19
   167a0: 54000481     	b.ne	0x16830 <syna_tcm_set_static_config+0xe0>
   167a4: f941cc16     	ldr	x22, [x0, #0x398]
   167a8: 528751c9     	mov	w9, #0x3a8e             // =14990
   167ac: 72a48409     	movk	w9, #0x2420, lsl #16
   167b0: b85fc2c8     	ldur	w8, [x22, #-0x4]
   167b4: 6b09011f     	cmp	w8, w9
   167b8: 540004c1     	b.ne	0x16850 <syna_tcm_set_static_config+0x100>
   167bc: 52800441     	mov	w1, #0x22               // =34
   167c0: aa1403e2     	mov	x2, x20
   167c4: 2a1303e3     	mov	w3, w19
   167c8: aa1f03e4     	mov	x4, xzr
   167cc: 2a1503e5     	mov	w5, w21
   167d0: b85fc2d0     	ldur	w16, [x22, #-0x4]
   167d4: 728751d1     	movk	w17, #0x3a8e
   167d8: 72a48411     	movk	w17, #0x2420, lsl #16
   167dc: 6b11021f     	cmp	w16, w17
   167e0: 54000040     	b.eq	0x167e8 <syna_tcm_set_static_config+0x98>
   167e4: d43046c0     	brk	#0x8236
   167e8: d63f02c0     	blr	x22
   167ec: 37f80480     	tbnz	w0, #0x1f, 0x1687c <syna_tcm_set_static_config+0x12c>
   167f0: 2a1f03e0     	mov	w0, wzr
   167f4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   167f8: f9400bf7     	ldr	x23, [sp, #0x10]
   167fc: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16800: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   16804: d50323bf     	autiasp
   16808: d65f03c0     	ret
   1680c: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		000000000001680c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
   16810: 91000000     	add	x0, x0, #0x0
		0000000000016810:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
   16814: 14000003     	b	0x16820 <syna_tcm_set_static_config+0xd0>
   16818: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016818:  R_AARCH64_ADR_PREL_PG_HI21	unk_33E1E
   1681c: 91000000     	add	x0, x0, #0x0
		000000000001681c:  R_AARCH64_ADD_ABS_LO12_NC	unk_33E1E
   16820: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47ed
   16824: 91000021     	add	x1, x1, #0x0
		0000000000016824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47ed
   16828: 94000000     	bl	0x16828 <syna_tcm_set_static_config+0xd8>
		0000000000016828:  R_AARCH64_CALL26	_printk
   1682c: 14000007     	b	0x16848 <syna_tcm_set_static_config+0xf8>
   16830: 90000000     	adrp	x0, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016830:  R_AARCH64_ADR_PREL_PG_HI21	unk_3501F
   16834: 91000000     	add	x0, x0, #0x0
		0000000000016834:  R_AARCH64_ADD_ABS_LO12_NC	unk_3501F
   16838: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47ed
   1683c: 91000021     	add	x1, x1, #0x0
		000000000001683c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47ed
   16840: 2a1303e2     	mov	w2, w19
   16844: 94000000     	bl	0x16844 <syna_tcm_set_static_config+0xf4>
		0000000000016844:  R_AARCH64_CALL26	_printk
   16848: 12801e00     	mov	w0, #-0xf1              // =-241
   1684c: 17ffffea     	b	0x167f4 <syna_tcm_set_static_config+0xa4>
   16850: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
   16854: 91000108     	add	x8, x8, #0x0
		0000000000016854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
   16858: 90000002     	adrp	x2, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc5
   1685c: 91000042     	add	x2, x2, #0x0
		000000000001685c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc5
   16860: aa0003f7     	mov	x23, x0
   16864: aa0803e0     	mov	x0, x8
   16868: 52904501     	mov	w1, #0x8228             // =33320
   1686c: 52800403     	mov	w3, #0x20               // =32
   16870: 94000000     	bl	0x16870 <syna_tcm_set_static_config+0x120>
		0000000000016870:  R_AARCH64_CALL26	_printk
   16874: aa1703e0     	mov	x0, x23
   16878: 17ffffd1     	b	0x167bc <syna_tcm_set_static_config+0x6c>
   1687c: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		000000000001687c:  R_AARCH64_ADR_PREL_PG_HI21	unk_39AB7
   16880: 91000108     	add	x8, x8, #0x0
		0000000000016880:  R_AARCH64_ADD_ABS_LO12_NC	unk_39AB7
   16884: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		0000000000016884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47ed
   16888: 91000021     	add	x1, x1, #0x0
		0000000000016888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47ed
   1688c: 2a0003f3     	mov	w19, w0
   16890: aa0803e0     	mov	x0, x8
   16894: 52800442     	mov	w2, #0x22               // =34
   16898: 94000000     	bl	0x16898 <syna_tcm_set_static_config+0x148>
		0000000000016898:  R_AARCH64_CALL26	_printk
   1689c: 2a1303e0     	mov	w0, w19
   168a0: 17ffffd5     	b	0x167f4 <syna_tcm_set_static_config+0xa4>
   168a4: 90000008     	adrp	x8, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000168a4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BA3F
   168a8: 91000108     	add	x8, x8, #0x0
		00000000000168a8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BA3F
   168ac: b9420c15     	ldr	w21, [x0, #0x20c]
   168b0: 90000001     	adrp	x1, 0x16000 <syna_tcm_run_production_test+0x1a0>
		00000000000168b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47ed
   168b4: 91000021     	add	x1, x1, #0x0
		00000000000168b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47ed
   168b8: aa0003f6     	mov	x22, x0
   168bc: aa0803e0     	mov	x0, x8
   168c0: 94000000     	bl	0x168c0 <syna_tcm_set_static_config+0x170>
		00000000000168c0:  R_AARCH64_CALL26	_printk
   168c4: aa1603e0     	mov	x0, x22
   168c8: 17ffffb4     	b	0x16798 <syna_tcm_set_static_config+0x48>
