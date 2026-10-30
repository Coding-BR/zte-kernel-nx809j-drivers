
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252a4 <ghost_check_area>:
   252a4: 90000008     	adrp	x8, 0x25000 <tpd_touch_release+0x398>
		00000000000252a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   252a8: 79403009     	ldrh	w9, [x0, #0x18]
   252ac: f9400108     	ldr	x8, [x8]
		00000000000252ac:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   252b0: b940110c     	ldr	w12, [x8, #0x10]
   252b4: 321f018a     	orr	w10, w12, #0x2
   252b8: 71000d5f     	cmp	w10, #0x3
   252bc: 54000201     	b.ne	0x252fc <ghost_check_area+0x58>
   252c0: 7940380a     	ldrh	w10, [x0, #0x1c]
   252c4: b9449d0d     	ldr	w13, [x8, #0x49c]
   252c8: 6b0a01bf     	cmp	w13, w10
   252cc: 540005ac     	b.gt	0x25380 <ghost_check_area+0xdc>
   252d0: 7948890b     	ldrh	w11, [x8, #0x444]
   252d4: 4b0d016b     	sub	w11, w11, w13
   252d8: 6b0a017f     	cmp	w11, w10
   252dc: 5400052b     	b.lt	0x25380 <ghost_check_area+0xdc>
   252e0: 6b0901bf     	cmp	w13, w9
   252e4: 540004ec     	b.gt	0x25380 <ghost_check_area+0xdc>
   252e8: 7948850b     	ldrh	w11, [x8, #0x442]
   252ec: 4b0d016d     	sub	w13, w11, w13
   252f0: 6b0901bf     	cmp	w13, w9
   252f4: 5400014a     	b.ge	0x2531c <ghost_check_area+0x78>
   252f8: 14000022     	b	0x25380 <ghost_check_area+0xdc>
   252fc: b9449d0a     	ldr	w10, [x8, #0x49c]
   25300: 6b09015f     	cmp	w10, w9
   25304: 540003ec     	b.gt	0x25380 <ghost_check_area+0xdc>
   25308: 7948850b     	ldrh	w11, [x8, #0x442]
   2530c: 4b0a016a     	sub	w10, w11, w10
   25310: 6b09015f     	cmp	w10, w9
   25314: 5400036b     	b.lt	0x25380 <ghost_check_area+0xdc>
   25318: 7940380a     	ldrh	w10, [x0, #0x1c]
   2531c: 7100059f     	cmp	w12, #0x1
   25320: 52800020     	mov	w0, #0x1                // =1
   25324: 540000ac     	b.gt	0x25338 <ghost_check_area+0x94>
   25328: 3400032c     	cbz	w12, 0x2538c <ghost_check_area+0xe8>
   2532c: 7100059f     	cmp	w12, #0x1
   25330: 540000c0     	b.eq	0x25348 <ghost_check_area+0xa4>
   25334: 14000025     	b	0x253c8 <ghost_check_area+0x124>
   25338: 7100099f     	cmp	w12, #0x2
   2533c: 54000340     	b.eq	0x253a4 <ghost_check_area+0x100>
   25340: 71000d9f     	cmp	w12, #0x3
   25344: 54000421     	b.ne	0x253c8 <ghost_check_area+0x124>
   25348: b944a50c     	ldr	w12, [x8, #0x4a4]
   2534c: 6b09019f     	cmp	w12, w9
   25350: 5400008c     	b.gt	0x25360 <ghost_check_area+0xbc>
   25354: 4b0c016b     	sub	w11, w11, w12
   25358: 6b09017f     	cmp	w11, w9
   2535c: 5400036a     	b.ge	0x253c8 <ghost_check_area+0x124>
   25360: b944a109     	ldr	w9, [x8, #0x4a0]
   25364: 6b0a013f     	cmp	w9, w10
   25368: 5400032c     	b.gt	0x253cc <ghost_check_area+0x128>
   2536c: 79488908     	ldrh	w8, [x8, #0x444]
   25370: 4b090108     	sub	w8, w8, w9
   25374: 6b0a011f     	cmp	w8, w10
   25378: 5400028a     	b.ge	0x253c8 <ghost_check_area+0x124>
   2537c: 14000014     	b	0x253cc <ghost_check_area+0x128>
   25380: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x398>
		0000000000025380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12830
   25384: 91000000     	add	x0, x0, #0x0
		0000000000025384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12830
   25388: 14000013     	b	0x253d4 <ghost_check_area+0x130>
   2538c: 7948890c     	ldrh	w12, [x8, #0x444]
   25390: b944a50d     	ldr	w13, [x8, #0x4a4]
   25394: 4b0d018c     	sub	w12, w12, w13
   25398: 6b0a019f     	cmp	w12, w10
   2539c: 5400016a     	b.ge	0x253c8 <ghost_check_area+0x124>
   253a0: 14000004     	b	0x253b0 <ghost_check_area+0x10c>
   253a4: b944a50c     	ldr	w12, [x8, #0x4a4]
   253a8: 6b0a019f     	cmp	w12, w10
   253ac: 540000ed     	b.le	0x253c8 <ghost_check_area+0x124>
   253b0: b944a108     	ldr	w8, [x8, #0x4a0]
   253b4: 6b09011f     	cmp	w8, w9
   253b8: 540000ac     	b.gt	0x253cc <ghost_check_area+0x128>
   253bc: 4b080168     	sub	w8, w11, w8
   253c0: 6b09011f     	cmp	w8, w9
   253c4: 5400004b     	b.lt	0x253cc <ghost_check_area+0x128>
   253c8: d65f03c0     	ret
   253cc: 90000000     	adrp	x0, 0x25000 <tpd_touch_release+0x398>
		00000000000253cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca5c
   253d0: 91000000     	add	x0, x0, #0x0
		00000000000253d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca5c
   253d4: d503233f     	paciasp
   253d8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   253dc: 910003fd     	mov	x29, sp
   253e0: 94000000     	bl	0x253e0 <ghost_check_area+0x13c>
		00000000000253e0:  R_AARCH64_CALL26	_printk
   253e4: 2a1f03e0     	mov	w0, wzr
   253e8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   253ec: d50323bf     	autiasp
   253f0: d65f03c0     	ret
