
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002782c <syna_testing_pt0a_show>:
   2782c: d503233f     	paciasp
   27830: d10343ff     	sub	sp, sp, #0xd0
   27834: a9077bfd     	stp	x29, x30, [sp, #0x70]
   27838: a9086ffc     	stp	x28, x27, [sp, #0x80]
   2783c: a90967fa     	stp	x26, x25, [sp, #0x90]
   27840: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   27844: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   27848: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   2784c: 9101c3fd     	add	x29, sp, #0x70
   27850: d5384108     	mrs	x8, SP_EL0
   27854: aa0203f3     	mov	x19, x2
   27858: f9438908     	ldr	x8, [x8, #0x710]
   2785c: f81f83a8     	stur	x8, [x29, #-0x8]
   27860: f9400c08     	ldr	x8, [x0, #0x18]
   27864: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   27868: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   2786c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   27870: f9400d08     	ldr	x8, [x8, #0x18]
   27874: f9000fff     	str	xzr, [sp, #0x18]
   27878: f90007ff     	str	xzr, [sp, #0x8]
   2787c: f9404d18     	ldr	x24, [x8, #0x98]
   27880: f9001bff     	str	xzr, [sp, #0x30]
   27884: 39560b08     	ldrb	w8, [x24, #0x582]
   27888: 36000c68     	tbz	w8, #0x0, 0x27a14 <syna_testing_pt0a_show+0x1e8>
   2788c: 94000000     	bl	0x2788c <syna_testing_pt0a_show+0x60>
		000000000002788c:  R_AARCH64_CALL26	syna_tcm_get_testing_0A00
   27890: b4000e20     	cbz	x0, 0x27a54 <syna_testing_pt0a_show+0x228>
   27894: f9400308     	ldr	x8, [x24]
   27898: 910083f5     	add	x21, sp, #0x20
   2789c: aa0003f4     	mov	x20, x0
   278a0: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000278a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   278a4: 91000021     	add	x1, x1, #0x0
		00000000000278a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   278a8: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000278a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x88c6
   278ac: 91000042     	add	x2, x2, #0x0
		00000000000278ac:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x88c6
   278b0: b9402108     	ldr	w8, [x8, #0x20]
   278b4: b9002408     	str	w8, [x0, #0x24]
   278b8: f9400308     	ldr	x8, [x24]
   278bc: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   278c0: b9401d08     	ldr	w8, [x8, #0x1c]
   278c4: b9002008     	str	w8, [x0, #0x20]
   278c8: 910042a0     	add	x0, x21, #0x10
   278cc: 390183ff     	strb	wzr, [sp, #0x60]
   278d0: 94000000     	bl	0x278d0 <syna_testing_pt0a_show+0xa4>
		00000000000278d0:  R_AARCH64_CALL26	__mutex_init
   278d4: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000278d4:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_hi_limits
   278d8: 91000108     	add	x8, x8, #0x0
		00000000000278d8:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_hi_limits
   278dc: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		00000000000278dc:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_lo_limits
   278e0: 91000129     	add	x9, x9, #0x0
		00000000000278e0:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_lo_limits
   278e4: f9000be8     	str	x8, [sp, #0x10]
   278e8: 52819008     	mov	w8, #0xc80              // =3200
   278ec: b9001be8     	str	w8, [sp, #0x18]
   278f0: aa1403e1     	mov	x1, x20
   278f4: 2a1f03e2     	mov	w2, wzr
   278f8: f90003e9     	str	x9, [sp]
   278fc: 910043e9     	add	x9, sp, #0x10
   27900: b9000be8     	str	w8, [sp, #0x8]
   27904: 910003e8     	mov	x8, sp
   27908: f9006e95     	str	x21, [x20, #0xd8]
   2790c: a903a289     	stp	x9, x8, [x20, #0x38]
   27910: f9400e88     	ldr	x8, [x20, #0x18]
   27914: f9400300     	ldr	x0, [x24]
   27918: b85fc110     	ldur	w16, [x8, #-0x4]
   2791c: 72895251     	movk	w17, #0x4a92
   27920: 72b03811     	movk	w17, #0x81c0, lsl #16
   27924: 6b11021f     	cmp	w16, w17
   27928: 54000040     	b.eq	0x27930 <syna_testing_pt0a_show+0x104>
   2792c: d4304500     	brk	#0x8228
   27930: d63f0100     	blr	x8
   27934: 37f80ba0     	tbnz	w0, #0x1f, 0x27aa8 <syna_testing_pt0a_show+0x27c>
   27938: 39404288     	ldrb	w8, [x20, #0x10]
   2793c: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002793c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27940: 91000129     	add	x9, x9, #0x0
		0000000000027940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27944: 7100011f     	cmp	w8, #0x0
   27948: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a28
   2794c: 91000108     	add	x8, x8, #0x0
		000000000002794c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a28
   27950: 9a891105     	csel	x5, x8, x9, ne
   27954: f9400683     	ldr	x3, [x20, #0x8]
   27958: b9400284     	ldr	w4, [x20]
   2795c: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002795c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b52
   27960: 91000042     	add	x2, x2, #0x0
		0000000000027960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b52
   27964: aa1303e0     	mov	x0, x19
   27968: 52820001     	mov	w1, #0x1000             // =4096
   2796c: 94000000     	bl	0x2796c <syna_testing_pt0a_show+0x140>
		000000000002796c:  R_AARCH64_CALL26	scnprintf
   27970: b9402fe8     	ldr	w8, [sp, #0x2c]
   27974: 2a0003f5     	mov	w21, w0
   27978: 340005a8     	cbz	w8, 0x27a2c <syna_testing_pt0a_show+0x200>
   2797c: b9402288     	ldr	w8, [x20, #0x20]
   27980: 34000568     	cbz	w8, 0x27a2c <syna_testing_pt0a_show+0x200>
   27984: f94013fa     	ldr	x26, [sp, #0x20]
   27988: 2a1f03f9     	mov	w25, wzr
   2798c: 90000016     	adrp	x22, 0x27000 <syna_tcm_remove_device+0x78>
		000000000002798c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c00
   27990: 910002d6     	add	x22, x22, #0x0
		0000000000027990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c00
   27994: 5282001b     	mov	w27, #0x1000            // =4096
   27998: 90000017     	adrp	x23, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa370
   2799c: 910002f7     	add	x23, x23, #0x0
		000000000002799c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa370
   279a0: 1400000b     	b	0x279cc <syna_testing_pt0a_show+0x1a0>
   279a4: 2a1503e8     	mov	w8, w21
   279a8: aa1603e2     	mov	x2, x22
   279ac: cb080361     	sub	x1, x27, x8
   279b0: 8b080260     	add	x0, x19, x8
   279b4: 94000000     	bl	0x279b4 <syna_testing_pt0a_show+0x188>
		00000000000279b4:  R_AARCH64_CALL26	scnprintf
   279b8: b9402288     	ldr	w8, [x20, #0x20]
   279bc: 11000739     	add	w25, w25, #0x1
   279c0: 0b150015     	add	w21, w0, w21
   279c4: 6b08033f     	cmp	w25, w8
   279c8: 54000322     	b.hs	0x27a2c <syna_testing_pt0a_show+0x200>
   279cc: b9402688     	ldr	w8, [x20, #0x24]
   279d0: 34fffea8     	cbz	w8, 0x279a4 <syna_testing_pt0a_show+0x178>
   279d4: 2a1f03fc     	mov	w28, wzr
   279d8: f9400308     	ldr	x8, [x24]
   279dc: 2a1503e9     	mov	w9, w21
   279e0: aa1703e2     	mov	x2, x23
   279e4: cb090361     	sub	x1, x27, x9
   279e8: 8b090260     	add	x0, x19, x9
   279ec: b9402108     	ldr	w8, [x8, #0x20]
   279f0: 1b087328     	madd	w8, w25, w8, w28
   279f4: 78e85b43     	ldrsh	w3, [x26, w8, uxtw #1]
   279f8: 94000000     	bl	0x279f8 <syna_testing_pt0a_show+0x1cc>
		00000000000279f8:  R_AARCH64_CALL26	scnprintf
   279fc: b9402688     	ldr	w8, [x20, #0x24]
   27a00: 1100079c     	add	w28, w28, #0x1
   27a04: 0b150015     	add	w21, w0, w21
   27a08: 6b08039f     	cmp	w28, w8
   27a0c: 54fffe63     	b.lo	0x279d8 <syna_testing_pt0a_show+0x1ac>
   27a10: 17ffffe5     	b	0x279a4 <syna_testing_pt0a_show+0x178>
   27a14: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc538
   27a18: 91000042     	add	x2, x2, #0x0
		0000000000027a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc538
   27a1c: aa1303e0     	mov	x0, x19
   27a20: 52820001     	mov	w1, #0x1000             // =4096
   27a24: 94000000     	bl	0x27a24 <syna_testing_pt0a_show+0x1f8>
		0000000000027a24:  R_AARCH64_CALL26	scnprintf
   27a28: 14000011     	b	0x27a6c <syna_testing_pt0a_show+0x240>
   27a2c: 394183e2     	ldrb	w2, [sp, #0x60]
   27a30: 350004e2     	cbnz	w2, 0x27acc <syna_testing_pt0a_show+0x2a0>
   27a34: f94013f3     	ldr	x19, [sp, #0x20]
   27a38: 94000000     	bl	0x27a38 <syna_testing_pt0a_show+0x20c>
		0000000000027a38:  R_AARCH64_CALL26	syna_request_managed_device
   27a3c: b4000540     	cbz	x0, 0x27ae4 <syna_testing_pt0a_show+0x2b8>
   27a40: b4000073     	cbz	x19, 0x27a4c <syna_testing_pt0a_show+0x220>
   27a44: aa1303e1     	mov	x1, x19
   27a48: 94000000     	bl	0x27a48 <syna_testing_pt0a_show+0x21c>
		0000000000027a48:  R_AARCH64_CALL26	devm_kfree
   27a4c: 2a1503e0     	mov	w0, w21
   27a50: 14000008     	b	0x27a70 <syna_testing_pt0a_show+0x244>
   27a54: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa26
   27a58: 91000042     	add	x2, x2, #0x0
		0000000000027a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa26
   27a5c: aa1303e0     	mov	x0, x19
   27a60: 52820001     	mov	w1, #0x1000             // =4096
   27a64: 52814003     	mov	w3, #0xa00              // =2560
   27a68: 94000000     	bl	0x27a68 <syna_testing_pt0a_show+0x23c>
		0000000000027a68:  R_AARCH64_CALL26	scnprintf
   27a6c: 93407c00     	sxtw	x0, w0
   27a70: d5384108     	mrs	x8, SP_EL0
   27a74: f9438908     	ldr	x8, [x8, #0x710]
   27a78: f85f83a9     	ldur	x9, [x29, #-0x8]
   27a7c: eb09011f     	cmp	x8, x9
   27a80: 540003e1     	b.ne	0x27afc <syna_testing_pt0a_show+0x2d0>
   27a84: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   27a88: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   27a8c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   27a90: a94967fa     	ldp	x26, x25, [sp, #0x90]
   27a94: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   27a98: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   27a9c: 910343ff     	add	sp, sp, #0xd0
   27aa0: d50323bf     	autiasp
   27aa4: d65f03c0     	ret
   27aa8: f9400682     	ldr	x2, [x20, #0x8]
   27aac: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc574
   27ab0: 91000000     	add	x0, x0, #0x0
		0000000000027ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc574
   27ab4: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94d6
   27ab8: 91000021     	add	x1, x1, #0x0
		0000000000027ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94d6
   27abc: 94000000     	bl	0x27abc <syna_testing_pt0a_show+0x290>
		0000000000027abc:  R_AARCH64_CALL26	_printk
   27ac0: 90000005     	adrp	x5, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27ac4: 910000a5     	add	x5, x5, #0x0
		0000000000027ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27ac8: 17ffffa3     	b	0x27954 <syna_testing_pt0a_show+0x128>
   27acc: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   27ad0: 91000000     	add	x0, x0, #0x0
		0000000000027ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   27ad4: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27ad8: 91000021     	add	x1, x1, #0x0
		0000000000027ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   27adc: 94000000     	bl	0x27adc <syna_testing_pt0a_show+0x2b0>
		0000000000027adc:  R_AARCH64_CALL26	_printk
   27ae0: 17ffffd5     	b	0x27a34 <syna_testing_pt0a_show+0x208>
   27ae4: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   27ae8: 91000000     	add	x0, x0, #0x0
		0000000000027ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   27aec: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27af0: 91000021     	add	x1, x1, #0x0
		0000000000027af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   27af4: 94000000     	bl	0x27af4 <syna_testing_pt0a_show+0x2c8>
		0000000000027af4:  R_AARCH64_CALL26	_printk
   27af8: 17ffffd5     	b	0x27a4c <syna_testing_pt0a_show+0x220>
   27afc: 94000000     	bl	0x27afc <syna_testing_pt0a_show+0x2d0>
		0000000000027afc:  R_AARCH64_CALL26	__stack_chk_fail
