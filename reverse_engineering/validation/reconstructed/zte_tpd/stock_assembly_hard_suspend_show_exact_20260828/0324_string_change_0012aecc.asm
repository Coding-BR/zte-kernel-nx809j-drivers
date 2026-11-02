
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024644 <string_change>:
   24644: d503233f     	paciasp
   24648: d102c3ff     	sub	sp, sp, #0xb0
   2464c: a9057bfd     	stp	x29, x30, [sp, #0x50]
   24650: a9066ffc     	stp	x28, x27, [sp, #0x60]
   24654: a90767fa     	stp	x26, x25, [sp, #0x70]
   24658: a9085ff8     	stp	x24, x23, [sp, #0x80]
   2465c: a90957f6     	stp	x22, x21, [sp, #0x90]
   24660: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
   24664: 910143fd     	add	x29, sp, #0x50
   24668: d5384108     	mrs	x8, SP_EL0
   2466c: aa0203f3     	mov	x19, x2
   24670: f9438908     	ldr	x8, [x8, #0x710]
   24674: f81f83a8     	stur	x8, [x29, #-0x8]
   24678: b4000921     	cbz	x1, 0x2479c <string_change+0x158>
   2467c: 39400028     	ldrb	w8, [x1]
   24680: aa0103f5     	mov	x21, x1
   24684: 340008c8     	cbz	w8, 0x2479c <string_change+0x158>
   24688: f90013e0     	str	x0, [sp, #0x20]
   2468c: aa1503e0     	mov	x0, x21
   24690: 94000000     	bl	0x24690 <string_change+0x4c>
		0000000000024690:  R_AARCH64_CALL26	strlen
   24694: aa0003f6     	mov	x22, x0
   24698: d503201f     	nop
   2469c: 910006c0     	add	x0, x22, #0x1
   246a0: 52819801     	mov	w1, #0xcc0              // =3264
   246a4: 94000000     	bl	0x246a4 <string_change+0x60>
		00000000000246a4:  R_AARCH64_CALL26	__kmalloc_noprof
   246a8: aa0003f4     	mov	x20, x0
   246ac: b4002954     	cbz	x20, 0x24bd4 <string_change+0x590>
   246b0: 910006c2     	add	x2, x22, #0x1
   246b4: aa1403e0     	mov	x0, x20
   246b8: aa1503e1     	mov	x1, x21
   246bc: 94000000     	bl	0x246bc <string_change+0x78>
		00000000000246bc:  R_AARCH64_CALL26	memcpy
   246c0: aa1503e0     	mov	x0, x21
   246c4: 94000000     	bl	0x246c4 <string_change+0x80>
		00000000000246c4:  R_AARCH64_CALL26	strlen
   246c8: 8b000416     	add	x22, x0, x0, lsl #1
   246cc: d503201f     	nop
   246d0: aa1603e0     	mov	x0, x22
   246d4: 52819801     	mov	w1, #0xcc0              // =3264
   246d8: 94000000     	bl	0x246d8 <string_change+0x94>
		00000000000246d8:  R_AARCH64_CALL26	__kmalloc_noprof
   246dc: aa0003f5     	mov	x21, x0
   246e0: aa1403e0     	mov	x0, x20
   246e4: b4002955     	cbz	x21, 0x24c0c <string_change+0x5c8>
   246e8: 52800741     	mov	w1, #0x3a               // =58
   246ec: 94000000     	bl	0x246ec <string_change+0xa8>
		00000000000246ec:  R_AARCH64_CALL26	strchr
   246f0: f100001f     	cmp	x0, #0x0
   246f4: aa1403e8     	mov	x8, x20
   246f8: 9a8007f7     	csinc	x23, xzr, x0, eq
   246fc: a93ed3b7     	stp	x23, x20, [x29, #-0x18]
   24700: b4000080     	cbz	x0, 0x24710 <string_change+0xcc>
   24704: 3900001f     	strb	wzr, [x0]
   24708: f85f03a8     	ldur	x8, [x29, #-0x10]
   2470c: b4000728     	cbz	x8, 0x247f0 <string_change+0x1ac>
   24710: 39400108     	ldrb	w8, [x8]
   24714: 34000588     	cbz	w8, 0x247c4 <string_change+0x180>
   24718: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1d
   2471c: 91000021     	add	x1, x1, #0x0
		000000000002471c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1d
   24720: d10043a0     	sub	x0, x29, #0x10
   24724: 94000000     	bl	0x24724 <string_change+0xe0>
		0000000000024724:  R_AARCH64_CALL26	strsep
   24728: b40004e0     	cbz	x0, 0x247c4 <string_change+0x180>
   2472c: 2a1f03f8     	mov	w24, wzr
   24730: 2a1f03fc     	mov	w28, wzr
   24734: 2a1f03f9     	mov	w25, wzr
   24738: 5280003a     	mov	w26, #0x1               // =1
   2473c: 90000017     	adrp	x23, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002473c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1d
   24740: 910002f7     	add	x23, x23, #0x0
		0000000000024740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1d
   24744: 14000005     	b	0x24758 <string_change+0x114>
   24748: d10043a0     	sub	x0, x29, #0x10
   2474c: aa1703e1     	mov	x1, x23
   24750: 94000000     	bl	0x24750 <string_change+0x10c>
		0000000000024750:  R_AARCH64_CALL26	strsep
   24754: b4000420     	cbz	x0, 0x247d8 <string_change+0x194>
   24758: 9400013f     	bl	0x24c54 <trim>
   2475c: 39400008     	ldrb	w8, [x0]
   24760: 34ffff48     	cbz	w8, 0x24748 <string_change+0x104>
   24764: aa1f03e1     	mov	x1, xzr
   24768: 52800202     	mov	w2, #0x10               // =16
   2476c: 94000000     	bl	0x2476c <string_change+0x128>
		000000000002476c:  R_AARCH64_CALL26	simple_strtoul
   24770: 37f81ff9     	tbnz	w25, #0x1f, 0x24b6c <string_change+0x528>
   24774: 93407f28     	sxtw	x8, w25
   24778: eb0802df     	cmp	x22, x8
   2477c: 54001f89     	b.ls	0x24b6c <string_change+0x528>
   24780: 7100035f     	cmp	w26, #0x0
   24784: 11000739     	add	w25, w25, #0x1
   24788: 2a1f03fa     	mov	w26, wzr
   2478c: 1a80039c     	csel	w28, w28, w0, eq
   24790: 1a9f0718     	csinc	w24, w24, wzr, eq
   24794: 38286aa0     	strb	w0, [x21, x8]
   24798: 17ffffec     	b	0x24748 <string_change+0x104>
   2479c: d503201f     	nop
   247a0: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000247a0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   247a4: 52819801     	mov	w1, #0xcc0              // =3264
   247a8: 52800022     	mov	w2, #0x1                // =1
   247ac: f9400100     	ldr	x0, [x8]
		00000000000247ac:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   247b0: 94000000     	bl	0x247b0 <string_change+0x16c>
		00000000000247b0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   247b4: aa0003f5     	mov	x21, x0
   247b8: b40022d5     	cbz	x21, 0x24c10 <string_change+0x5cc>
   247bc: 390002bf     	strb	wzr, [x21]
   247c0: 14000114     	b	0x24c10 <string_change+0x5cc>
   247c4: 2a1f03f9     	mov	w25, wzr
   247c8: 2a1f03fc     	mov	w28, wzr
   247cc: b81dc3bf     	stur	wzr, [x29, #-0x24]
   247d0: b50001b7     	cbnz	x23, 0x24804 <string_change+0x1c0>
   247d4: 140000e1     	b	0x24b58 <string_change+0x514>
   247d8: f85e83b7     	ldur	x23, [x29, #-0x18]
   247dc: 7100031f     	cmp	w24, #0x0
   247e0: 1a9f07e8     	cset	w8, ne
   247e4: b81dc3a8     	stur	w8, [x29, #-0x24]
   247e8: b50000f7     	cbnz	x23, 0x24804 <string_change+0x1c0>
   247ec: 140000db     	b	0x24b58 <string_change+0x514>
   247f0: 2a1f03f9     	mov	w25, wzr
   247f4: 2a1f03fc     	mov	w28, wzr
   247f8: b81dc3bf     	stur	wzr, [x29, #-0x24]
   247fc: 91000417     	add	x23, x0, #0x1
   24800: b4001ad7     	cbz	x23, 0x24b58 <string_change+0x514>
   24804: 394002e8     	ldrb	w8, [x23]
   24808: 34001a88     	cbz	w8, 0x24b58 <string_change+0x514>
   2480c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002480c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fc3
   24810: 91000021     	add	x1, x1, #0x0
		0000000000024810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fc3
   24814: d10063a0     	sub	x0, x29, #0x18
   24818: 94000000     	bl	0x24818 <string_change+0x1d4>
		0000000000024818:  R_AARCH64_CALL26	strsep
   2481c: b40019e0     	cbz	x0, 0x24b58 <string_change+0x514>
   24820: 90000018     	adrp	x24, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1d
   24824: 91000318     	add	x24, x24, #0x0
		0000000000024824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1d
   24828: 5280003a     	mov	w26, #0x1               // =1
   2482c: 2a1903f7     	mov	w23, w25
   24830: 14000007     	b	0x2484c <string_change+0x208>
   24834: 2a1f03fa     	mov	w26, wzr
   24838: d10063a0     	sub	x0, x29, #0x18
   2483c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002483c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fc3
   24840: 91000021     	add	x1, x1, #0x0
		0000000000024840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fc3
   24844: 94000000     	bl	0x24844 <string_change+0x200>
		0000000000024844:  R_AARCH64_CALL26	strsep
   24848: b40018a0     	cbz	x0, 0x24b5c <string_change+0x518>
   2484c: 94000102     	bl	0x24c54 <trim>
   24850: 39400008     	ldrb	w8, [x0]
   24854: 34ffff28     	cbz	w8, 0x24838 <string_change+0x1f4>
   24858: b85dc3a8     	ldur	w8, [x29, #-0x24]
   2485c: 7100035f     	cmp	w26, #0x0
   24860: aa0003fb     	mov	x27, x0
   24864: 1a8813e8     	csel	w8, wzr, w8, ne
   24868: 7100051f     	cmp	w8, #0x1
   2486c: 540000e1     	b.ne	0x24888 <string_change+0x244>
   24870: 37f817f7     	tbnz	w23, #0x1f, 0x24b6c <string_change+0x528>
   24874: 93407ee8     	sxtw	x8, w23
   24878: eb0802df     	cmp	x22, x8
   2487c: 54001789     	b.ls	0x24b6c <string_change+0x528>
   24880: 110006f7     	add	w23, w23, #0x1
   24884: 38286abc     	strb	w28, [x21, x8]
   24888: aa1b03e0     	mov	x0, x27
   2488c: 52800741     	mov	w1, #0x3a               // =58
   24890: 94000000     	bl	0x24890 <string_change+0x24c>
		0000000000024890:  R_AARCH64_CALL26	strchr
   24894: b40002a0     	cbz	x0, 0x248e8 <string_change+0x2a4>
   24898: 3800141f     	strb	wzr, [x0], #0x1
   2489c: aa0003f9     	mov	x25, x0
   248a0: aa1b03e0     	mov	x0, x27
   248a4: 940000ec     	bl	0x24c54 <trim>
   248a8: aa0003fa     	mov	x26, x0
   248ac: aa1903e0     	mov	x0, x25
   248b0: 940000e9     	bl	0x24c54 <trim>
   248b4: aa0003fb     	mov	x27, x0
   248b8: b400019a     	cbz	x26, 0x248e8 <string_change+0x2a4>
   248bc: aa1a03e0     	mov	x0, x26
   248c0: aa1f03e1     	mov	x1, xzr
   248c4: 52800202     	mov	w2, #0x10               // =16
   248c8: 94000000     	bl	0x248c8 <string_change+0x284>
		00000000000248c8:  R_AARCH64_CALL26	simple_strtoul
   248cc: 37f81517     	tbnz	w23, #0x1f, 0x24b6c <string_change+0x528>
   248d0: 2a1703e8     	mov	w8, w23
   248d4: 93407d08     	sxtw	x8, w8
   248d8: eb0802df     	cmp	x22, x8
   248dc: 54001489     	b.ls	0x24b6c <string_change+0x528>
   248e0: 110006f7     	add	w23, w23, #0x1
   248e4: 38286aa0     	strb	w0, [x21, x8]
   248e8: d10083a0     	sub	x0, x29, #0x20
   248ec: aa1803e1     	mov	x1, x24
   248f0: f81e03bb     	stur	x27, [x29, #-0x20]
   248f4: 94000000     	bl	0x248f4 <string_change+0x2b0>
		00000000000248f4:  R_AARCH64_CALL26	strsep
   248f8: b4fff9e0     	cbz	x0, 0x24834 <string_change+0x1f0>
   248fc: 940000d6     	bl	0x24c54 <trim>
   24900: aa0003fb     	mov	x27, x0
   24904: d10083a0     	sub	x0, x29, #0x20
   24908: aa1803e1     	mov	x1, x24
   2490c: 94000000     	bl	0x2490c <string_change+0x2c8>
		000000000002490c:  R_AARCH64_CALL26	strsep
   24910: b4fff920     	cbz	x0, 0x24834 <string_change+0x1f0>
   24914: 940000d0     	bl	0x24c54 <trim>
   24918: aa0003f9     	mov	x25, x0
   2491c: d10083a0     	sub	x0, x29, #0x20
   24920: aa1803e1     	mov	x1, x24
   24924: 94000000     	bl	0x24924 <string_change+0x2e0>
		0000000000024924:  R_AARCH64_CALL26	strsep
   24928: b4fff860     	cbz	x0, 0x24834 <string_change+0x1f0>
   2492c: 940000ca     	bl	0x24c54 <trim>
   24930: aa0003fa     	mov	x26, x0
   24934: d10083a0     	sub	x0, x29, #0x20
   24938: aa1803e1     	mov	x1, x24
   2493c: 94000000     	bl	0x2493c <string_change+0x2f8>
		000000000002493c:  R_AARCH64_CALL26	strsep
   24940: b4fff7a0     	cbz	x0, 0x24834 <string_change+0x1f0>
   24944: 940000c4     	bl	0x24c54 <trim>
   24948: f9000fe0     	str	x0, [sp, #0x18]
   2494c: aa1b03e0     	mov	x0, x27
   24950: aa1f03e1     	mov	x1, xzr
   24954: 52800142     	mov	w2, #0xa                // =10
   24958: 94000000     	bl	0x24958 <string_change+0x314>
		0000000000024958:  R_AARCH64_CALL26	simple_strtoul
   2495c: f9000be0     	str	x0, [sp, #0x10]
   24960: aa1903e0     	mov	x0, x25
   24964: aa1f03e1     	mov	x1, xzr
   24968: 52800142     	mov	w2, #0xa                // =10
   2496c: 94000000     	bl	0x2496c <string_change+0x328>
		000000000002496c:  R_AARCH64_CALL26	simple_strtoul
   24970: f90007e0     	str	x0, [sp, #0x8]
   24974: aa1a03e0     	mov	x0, x26
   24978: aa1f03e1     	mov	x1, xzr
   2497c: 52800142     	mov	w2, #0xa                // =10
   24980: 94000000     	bl	0x24980 <string_change+0x33c>
		0000000000024980:  R_AARCH64_CALL26	simple_strtoul
   24984: aa0003f9     	mov	x25, x0
   24988: f9400fe0     	ldr	x0, [sp, #0x18]
   2498c: aa1f03e1     	mov	x1, xzr
   24990: 52800142     	mov	w2, #0xa                // =10
   24994: 94000000     	bl	0x24994 <string_change+0x350>
		0000000000024994:  R_AARCH64_CALL26	simple_strtoul
   24998: f94013fb     	ldr	x27, [sp, #0x20]
   2499c: aa0003fa     	mov	x26, x0
   249a0: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000249a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29eb
   249a4: 91000000     	add	x0, x0, #0x0
		00000000000249a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29eb
   249a8: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000249a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b
   249ac: 91000021     	add	x1, x1, #0x0
		00000000000249ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b
   249b0: b9460b62     	ldr	w2, [x27, #0x608]
   249b4: 94000000     	bl	0x249b4 <string_change+0x370>
		00000000000249b4:  R_AARCH64_CALL26	_printk
   249b8: b9460b68     	ldr	w8, [x27, #0x608]
   249bc: 71000d1f     	cmp	w8, #0x3
   249c0: 540002e0     	b.eq	0x24a1c <string_change+0x3d8>
   249c4: 7100051f     	cmp	w8, #0x1
   249c8: 54000541     	b.ne	0x24a70 <string_change+0x42c>
   249cc: 52809808     	mov	w8, #0x4c0              // =1216
   249d0: f94007ea     	ldr	x10, [sp, #0x8]
   249d4: 5280014c     	mov	w12, #0xa               // =10
   249d8: 4b1a0109     	sub	w9, w8, w26
   249dc: 1280000b     	mov	w11, #-0x1              // =-1
   249e0: 5280002e     	mov	w14, #0x1               // =1
   249e4: 0b09092f     	add	w15, w9, w9, lsl #2
   249e8: f9400be9     	ldr	x9, [sp, #0x10]
   249ec: 4b0a010a     	sub	w10, w8, w10
   249f0: 1b0c2f28     	madd	w8, w25, w12, w11
   249f4: 0b09092d     	add	w13, w9, w9, lsl #2
   249f8: 1b0c2d4a     	madd	w10, w10, w12, w11
   249fc: 5280002c     	mov	w12, #0x1               // =1
   24a00: 531f79f0     	lsl	w16, w15, #1
   24a04: 531f79b1     	lsl	w17, w13, #1
   24a08: 53083d09     	ubfx	w9, w8, #8, #8
   24a0c: 331f79ac     	bfi	w12, w13, #1, #31
   24a10: 53083d4b     	ubfx	w11, w10, #8, #8
   24a14: 53083e2d     	ubfx	w13, w17, #8, #8
   24a18: 14000013     	b	0x24a64 <string_change+0x420>
   24a1c: a940a3e9     	ldp	x9, x8, [sp, #0x8]
   24a20: 5281500a     	mov	w10, #0xa80             // =2688
   24a24: 5280014c     	mov	w12, #0xa               // =10
   24a28: 1280000b     	mov	w11, #-0x1              // =-1
   24a2c: 5280002e     	mov	w14, #0x1               // =1
   24a30: 4b080148     	sub	w8, w10, w8
   24a34: 0b09092f     	add	w15, w9, w9, lsl #2
   24a38: 0b080909     	add	w9, w8, w8, lsl #2
   24a3c: 4b190148     	sub	w8, w10, w25
   24a40: 1b0c2f4a     	madd	w10, w26, w12, w11
   24a44: 1b0c2d0c     	madd	w12, w8, w12, w11
   24a48: 52800028     	mov	w8, #0x1                // =1
   24a4c: 531f79f0     	lsl	w16, w15, #1
   24a50: 531f792d     	lsl	w13, w9, #1
   24a54: 331f7928     	bfi	w8, w9, #1, #31
   24a58: 53083d4b     	ubfx	w11, w10, #8, #8
   24a5c: 53083da9     	ubfx	w9, w13, #8, #8
   24a60: 53083d8d     	ubfx	w13, w12, #8, #8
   24a64: 331f79ee     	bfi	w14, w15, #1, #31
   24a68: 53083e0f     	ubfx	w15, w16, #8, #8
   24a6c: 14000009     	b	0x24a90 <string_change+0x44c>
   24a70: 2a1f03e8     	mov	w8, wzr
   24a74: 2a1f03e9     	mov	w9, wzr
   24a78: 2a1f03ea     	mov	w10, wzr
   24a7c: 2a1f03eb     	mov	w11, wzr
   24a80: 2a1f03ec     	mov	w12, wzr
   24a84: 2a1f03ed     	mov	w13, wzr
   24a88: 2a1f03ee     	mov	w14, wzr
   24a8c: 2a1f03ef     	mov	w15, wzr
   24a90: 37f806f7     	tbnz	w23, #0x1f, 0x24b6c <string_change+0x528>
   24a94: 2a1703f0     	mov	w16, w23
   24a98: 93407e10     	sxtw	x16, w16
   24a9c: eb1002df     	cmp	x22, x16
   24aa0: 54000669     	b.ls	0x24b6c <string_change+0x528>
   24aa4: 310006f1     	adds	w17, w23, #0x1
   24aa8: 38306aae     	strb	w14, [x21, x16]
   24aac: 54000604     	b.mi	0x24b6c <string_change+0x528>
   24ab0: 93407e2e     	sxtw	x14, w17
   24ab4: eb0e02df     	cmp	x22, x14
   24ab8: 540005a9     	b.ls	0x24b6c <string_change+0x528>
   24abc: 31000af0     	adds	w16, w23, #0x2
   24ac0: 382e6aaf     	strb	w15, [x21, x14]
   24ac4: 54000544     	b.mi	0x24b6c <string_change+0x528>
   24ac8: 93407e0e     	sxtw	x14, w16
   24acc: eb0e02df     	cmp	x22, x14
   24ad0: 540004e9     	b.ls	0x24b6c <string_change+0x528>
   24ad4: 31000eef     	adds	w15, w23, #0x3
   24ad8: 382e6aac     	strb	w12, [x21, x14]
   24adc: 54000484     	b.mi	0x24b6c <string_change+0x528>
   24ae0: 93407dec     	sxtw	x12, w15
   24ae4: eb0c02df     	cmp	x22, x12
   24ae8: 54000429     	b.ls	0x24b6c <string_change+0x528>
   24aec: 310012ee     	adds	w14, w23, #0x4
   24af0: 382c6aad     	strb	w13, [x21, x12]
   24af4: 540003c4     	b.mi	0x24b6c <string_change+0x528>
   24af8: 93407dcc     	sxtw	x12, w14
   24afc: eb0c02df     	cmp	x22, x12
   24b00: 54000369     	b.ls	0x24b6c <string_change+0x528>
   24b04: 310016ed     	adds	w13, w23, #0x5
   24b08: 382c6aaa     	strb	w10, [x21, x12]
   24b0c: 54000304     	b.mi	0x24b6c <string_change+0x528>
   24b10: 93407daa     	sxtw	x10, w13
   24b14: eb0a02df     	cmp	x22, x10
   24b18: 540002a9     	b.ls	0x24b6c <string_change+0x528>
   24b1c: 31001aec     	adds	w12, w23, #0x6
   24b20: 382a6aab     	strb	w11, [x21, x10]
   24b24: 54000244     	b.mi	0x24b6c <string_change+0x528>
   24b28: 93407d8a     	sxtw	x10, w12
   24b2c: eb0a02df     	cmp	x22, x10
   24b30: 540001e9     	b.ls	0x24b6c <string_change+0x528>
   24b34: 31001eeb     	adds	w11, w23, #0x7
   24b38: 382a6aa8     	strb	w8, [x21, x10]
   24b3c: 54000184     	b.mi	0x24b6c <string_change+0x528>
   24b40: 93407d68     	sxtw	x8, w11
   24b44: eb0802df     	cmp	x22, x8
   24b48: 54000129     	b.ls	0x24b6c <string_change+0x528>
   24b4c: 110022f7     	add	w23, w23, #0x8
   24b50: 38286aa9     	strb	w9, [x21, x8]
   24b54: 17ffff38     	b	0x24834 <string_change+0x1f0>
   24b58: 2a1903f7     	mov	w23, w25
   24b5c: aa1403e0     	mov	x0, x20
   24b60: 94000000     	bl	0x24b60 <string_change+0x51c>
		0000000000024b60:  R_AARCH64_CALL26	kfree
   24b64: b9000277     	str	w23, [x19]
   24b68: 1400002b     	b	0x24c14 <string_change+0x5d0>
   24b6c: d4200020     	brk	#0x1
   24b70: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024b70:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   24b74: d5384114     	mrs	x20, SP_EL0
   24b78: f9402a96     	ldr	x22, [x20, #0x50]
   24b7c: f9400100     	ldr	x0, [x8]
		0000000000024b7c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   24b80: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024b80:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2d0
   24b84: 91000108     	add	x8, x8, #0x0
		0000000000024b84:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2d0
   24b88: 52819801     	mov	w1, #0xcc0              // =3264
   24b8c: 52800022     	mov	w2, #0x1                // =1
   24b90: f9002a88     	str	x8, [x20, #0x50]
   24b94: 94000000     	bl	0x24b94 <string_change+0x550>
		0000000000024b94:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   24b98: aa0003f5     	mov	x21, x0
   24b9c: f9002a96     	str	x22, [x20, #0x50]
   24ba0: b5ffe0f5     	cbnz	x21, 0x247bc <string_change+0x178>
   24ba4: 1400001b     	b	0x24c10 <string_change+0x5cc>
   24ba8: d5384117     	mrs	x23, SP_EL0
   24bac: f9402af8     	ldr	x24, [x23, #0x50]
   24bb0: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024bb0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x320
   24bb4: 91000108     	add	x8, x8, #0x0
		0000000000024bb4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x320
   24bb8: 910006c0     	add	x0, x22, #0x1
   24bbc: 52819801     	mov	w1, #0xcc0              // =3264
   24bc0: f9002ae8     	str	x8, [x23, #0x50]
   24bc4: 94000000     	bl	0x24bc4 <string_change+0x580>
		0000000000024bc4:  R_AARCH64_CALL26	__kmalloc_noprof
   24bc8: aa0003f4     	mov	x20, x0
   24bcc: f9002af8     	str	x24, [x23, #0x50]
   24bd0: b5ffd714     	cbnz	x20, 0x246b0 <string_change+0x6c>
   24bd4: aa1f03f5     	mov	x21, xzr
   24bd8: 1400000e     	b	0x24c10 <string_change+0x5cc>
   24bdc: d5384117     	mrs	x23, SP_EL0
   24be0: f9402af8     	ldr	x24, [x23, #0x50]
   24be4: 90000008     	adrp	x8, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024be4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x2f8
   24be8: 91000108     	add	x8, x8, #0x0
		0000000000024be8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x2f8
   24bec: aa1603e0     	mov	x0, x22
   24bf0: 52819801     	mov	w1, #0xcc0              // =3264
   24bf4: f9002ae8     	str	x8, [x23, #0x50]
   24bf8: 94000000     	bl	0x24bf8 <string_change+0x5b4>
		0000000000024bf8:  R_AARCH64_CALL26	__kmalloc_noprof
   24bfc: aa0003f5     	mov	x21, x0
   24c00: f9002af8     	str	x24, [x23, #0x50]
   24c04: aa1403e0     	mov	x0, x20
   24c08: b5ffd715     	cbnz	x21, 0x246e8 <string_change+0xa4>
   24c0c: 94000000     	bl	0x24c0c <string_change+0x5c8>
		0000000000024c0c:  R_AARCH64_CALL26	kfree
   24c10: b900027f     	str	wzr, [x19]
   24c14: d5384108     	mrs	x8, SP_EL0
   24c18: f9438908     	ldr	x8, [x8, #0x710]
   24c1c: f85f83a9     	ldur	x9, [x29, #-0x8]
   24c20: eb09011f     	cmp	x8, x9
   24c24: 54000161     	b.ne	0x24c50 <string_change+0x60c>
   24c28: aa1503e0     	mov	x0, x21
   24c2c: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
   24c30: a94957f6     	ldp	x22, x21, [sp, #0x90]
   24c34: a9485ff8     	ldp	x24, x23, [sp, #0x80]
   24c38: a94767fa     	ldp	x26, x25, [sp, #0x70]
   24c3c: a9466ffc     	ldp	x28, x27, [sp, #0x60]
   24c40: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   24c44: 9102c3ff     	add	sp, sp, #0xb0
   24c48: d50323bf     	autiasp
   24c4c: d65f03c0     	ret
   24c50: 94000000     	bl	0x24c50 <string_change+0x60c>
		0000000000024c50:  R_AARCH64_CALL26	__stack_chk_fail
