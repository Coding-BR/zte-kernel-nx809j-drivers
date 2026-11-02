
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b264 <haptic_audio_store>:
    b264: d503233f     	paciasp
    b268: d101c3ff     	sub	sp, sp, #0x70
    b26c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    b270: f90023f7     	str	x23, [sp, #0x40]
    b274: a90557f6     	stp	x22, x21, [sp, #0x50]
    b278: a9064ff4     	stp	x20, x19, [sp, #0x60]
    b27c: 9100c3fd     	add	x29, sp, #0x30
    b280: d5384108     	mrs	x8, SP_EL0
    b284: aa0303f3     	mov	x19, x3
    b288: f9438908     	ldr	x8, [x8, #0x710]
    b28c: f81f83a8     	stur	x8, [x29, #-0x8]
    b290: f9404c16     	ldr	x22, [x0, #0x98]
    b294: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    b298: f9000bff     	str	xzr, [sp, #0x10]
    b29c: 3855e2c8     	ldurb	w8, [x22, #-0xa2]
    b2a0: 36000b68     	tbz	w8, #0x0, 0xb40c <haptic_audio_store+0x1a8>
    b2a4: 910043e8     	add	x8, sp, #0x10
    b2a8: aa0203e0     	mov	x0, x2
    b2ac: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b2ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23a2
    b2b0: 91000021     	add	x1, x1, #0x0
		000000000000b2b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23a2
    b2b4: 910043e2     	add	x2, sp, #0x10
    b2b8: b27e0103     	orr	x3, x8, #0x4
    b2bc: 91002104     	add	x4, x8, #0x8
    b2c0: 91003105     	add	x5, x8, #0xc
    b2c4: 91004106     	add	x6, x8, #0x10
    b2c8: 91005107     	add	x7, x8, #0x14
    b2cc: 94000000     	bl	0xb2cc <haptic_audio_store+0x68>
		000000000000b2cc:  R_AARCH64_CALL26	sscanf
    b2d0: 7100181f     	cmp	w0, #0x6
    b2d4: 54000821     	b.ne	0xb3d8 <haptic_audio_store+0x174>
    b2d8: b9401be6     	ldr	w6, [sp, #0x18]
    b2dc: 35000aa6     	cbnz	w6, 0xb430 <haptic_audio_store+0x1cc>
    b2e0: d503201f     	nop
    b2e4: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b2e4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b2e8: 5281b801     	mov	w1, #0xdc0              // =3520
    b2ec: 52800302     	mov	w2, #0x18               // =24
    b2f0: f9400100     	ldr	x0, [x8]
		000000000000b2f0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b2f4: 94000000     	bl	0xb2f4 <haptic_audio_store+0x90>
		000000000000b2f4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b2f8: aa0003f4     	mov	x20, x0
    b2fc: b40015d4     	cbz	x20, 0xb5b4 <haptic_audio_store+0x350>
    b300: 911122c0     	add	x0, x22, #0x448
    b304: 94000000     	bl	0xb304 <haptic_audio_store+0xa0>
		000000000000b304:  R_AARCH64_CALL26	mutex_lock
    b308: 294227e8     	ldp	w8, w9, [sp, #0x10]
    b30c: 29442beb     	ldp	w11, w10, [sp, #0x20]
    b310: 39000288     	strb	w8, [x20]
    b314: 39000689     	strb	w9, [x20, #0x1]
    b318: 294327e8     	ldp	w8, w9, [sp, #0x18]
    b31c: 39000e8b     	strb	w11, [x20, #0x3]
    b320: 39000a88     	strb	w8, [x20, #0x2]
    b324: 12001d48     	and	w8, w10, #0xff
    b328: 7102011f     	cmp	w8, #0x80
    b32c: 12800fe8     	mov	w8, #-0x80              // =-128
    b330: 39001689     	strb	w9, [x20, #0x5]
    b334: 1a8a8108     	csel	w8, w8, w10, hi
    b338: 39001288     	strb	w8, [x20, #0x4]
    b33c: d503201f     	nop
    b340: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b340:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b344: 5281b801     	mov	w1, #0xdc0              // =3520
    b348: 52800302     	mov	w2, #0x18               // =24
    b34c: f9400100     	ldr	x0, [x8]
		000000000000b34c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b350: 94000000     	bl	0xb350 <haptic_audio_store+0xec>
		000000000000b350:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b354: d102a2d5     	sub	x21, x22, #0xa8
    b358: b40002c0     	cbz	x0, 0xb3b0 <haptic_audio_store+0x14c>
    b35c: 39400288     	ldrb	w8, [x20]
    b360: b8401289     	ldur	w9, [x20, #0x1]
    b364: 9113a2c1     	add	x1, x22, #0x4e8
    b368: 3940168a     	ldrb	w10, [x20, #0x5]
    b36c: 39000008     	strb	w8, [x0]
    b370: 91002008     	add	x8, x0, #0x8
    b374: b8001009     	stur	w9, [x0, #0x1]
    b378: 3900140a     	strb	w10, [x0, #0x5]
    b37c: f9000408     	str	x8, [x0, #0x8]
    b380: f9000808     	str	x8, [x0, #0x10]
    b384: f94276c2     	ldr	x2, [x22, #0x4e8]
    b388: f9400449     	ldr	x9, [x2, #0x8]
    b38c: eb01013f     	cmp	x9, x1
    b390: 54000f01     	b.ne	0xb570 <haptic_audio_store+0x30c>
    b394: eb01011f     	cmp	x8, x1
    b398: 54000ec0     	b.eq	0xb570 <haptic_audio_store+0x30c>
    b39c: eb08005f     	cmp	x2, x8
    b3a0: 54000e80     	b.eq	0xb570 <haptic_audio_store+0x30c>
    b3a4: f9000448     	str	x8, [x2, #0x8]
    b3a8: a9008402     	stp	x2, x1, [x0, #0x8]
    b3ac: f9000028     	str	x8, [x1]
    b3b0: 39400688     	ldrb	w8, [x20, #0x1]
    b3b4: 7103fd1f     	cmp	w8, #0xff
    b3b8: 54000580     	b.eq	0xb468 <haptic_audio_store+0x204>
    b3bc: 9111e2c0     	add	x0, x22, #0x478
    b3c0: 94000000     	bl	0xb3c0 <haptic_audio_store+0x15c>
		000000000000b3c0:  R_AARCH64_CALL26	hrtimer_active
    b3c4: 36000840     	tbz	w0, #0x0, 0xb4cc <haptic_audio_store+0x268>
    b3c8: 911122c0     	add	x0, x22, #0x448
    b3cc: 94000000     	bl	0xb3cc <haptic_audio_store+0x168>
		000000000000b3cc:  R_AARCH64_CALL26	mutex_unlock
    b3d0: aa1403e0     	mov	x0, x20
    b3d4: 94000000     	bl	0xb3d4 <haptic_audio_store+0x170>
		000000000000b3d4:  R_AARCH64_CALL26	kfree
    b3d8: d5384108     	mrs	x8, SP_EL0
    b3dc: f9438908     	ldr	x8, [x8, #0x710]
    b3e0: f85f83a9     	ldur	x9, [x29, #-0x8]
    b3e4: eb09011f     	cmp	x8, x9
    b3e8: 54000ca1     	b.ne	0xb57c <haptic_audio_store+0x318>
    b3ec: aa1303e0     	mov	x0, x19
    b3f0: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    b3f4: f94023f7     	ldr	x23, [sp, #0x40]
    b3f8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    b3fc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    b400: 9101c3ff     	add	sp, sp, #0x70
    b404: d50323bf     	autiasp
    b408: d65f03c0     	ret
    b40c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b40c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46f4
    b410: 91000000     	add	x0, x0, #0x0
		000000000000b410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46f4
    b414: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b418: 91000021     	add	x1, x1, #0x0
		000000000000b418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b41c: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b41c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b420: 91000063     	add	x3, x3, #0x0
		000000000000b420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b424: 52817522     	mov	w2, #0xba9              // =2985
    b428: 94000000     	bl	0xb428 <haptic_audio_store+0x1c4>
		000000000000b428:  R_AARCH64_CALL26	_printk
    b42c: 17ffffeb     	b	0xb3d8 <haptic_audio_store+0x174>
    b430: 294217e4     	ldp	w4, w5, [sp, #0x10]
    b434: 2943a3e7     	ldp	w7, w8, [sp, #0x1c]
    b438: b94027e9     	ldr	w9, [sp, #0x24]
    b43c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b43c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d3a
    b440: 91000000     	add	x0, x0, #0x0
		000000000000b440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d3a
    b444: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b448: 91000021     	add	x1, x1, #0x0
		000000000000b448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b44c: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b44c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b450: 91000063     	add	x3, x3, #0x0
		000000000000b450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b454: 52817622     	mov	w2, #0xbb1              // =2993
    b458: b9000be9     	str	w9, [sp, #0x8]
    b45c: b90003e8     	str	w8, [sp]
    b460: 94000000     	bl	0xb460 <haptic_audio_store+0x1fc>
		000000000000b460:  R_AARCH64_CALL26	_printk
    b464: 17ffff9f     	b	0xb2e0 <haptic_audio_store+0x7c>
    b468: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x395a
    b46c: 91000000     	add	x0, x0, #0x0
		000000000000b46c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x395a
    b470: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b474: 91000021     	add	x1, x1, #0x0
		000000000000b474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b478: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b47c: 91000063     	add	x3, x3, #0x0
		000000000000b47c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b480: 52817942     	mov	w2, #0xbca              // =3018
    b484: 94000000     	bl	0xb484 <haptic_audio_store+0x220>
		000000000000b484:  R_AARCH64_CALL26	_printk
    b488: 9111e2c0     	add	x0, x22, #0x478
    b48c: 94000000     	bl	0xb48c <haptic_audio_store+0x228>
		000000000000b48c:  R_AARCH64_CALL26	hrtimer_active
    b490: 3607f9c0     	tbz	w0, #0x0, 0xb3c8 <haptic_audio_store+0x164>
    b494: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d80
    b498: 91000000     	add	x0, x0, #0x0
		000000000000b498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d80
    b49c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b49c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b4a0: 91000021     	add	x1, x1, #0x0
		000000000000b4a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b4a4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b4a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b4a8: 91000063     	add	x3, x3, #0x0
		000000000000b4a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b4ac: 52817982     	mov	w2, #0xbcc              // =3020
    b4b0: 94000000     	bl	0xb4b0 <haptic_audio_store+0x24c>
		000000000000b4b0:  R_AARCH64_CALL26	_printk
    b4b4: 9111e2c0     	add	x0, x22, #0x478
    b4b8: 94000000     	bl	0xb4b8 <haptic_audio_store+0x254>
		000000000000b4b8:  R_AARCH64_CALL26	hrtimer_cancel
    b4bc: aa1503e0     	mov	x0, x21
    b4c0: 3913e2df     	strb	wzr, [x22, #0x4f8]
    b4c4: 94000053     	bl	0xb610 <haptic_audio_store+0x3ac>
		000000000000b4c4:  R_AARCH64_CALL26	audio_off
    b4c8: 17ffffc0     	b	0xb3c8 <haptic_audio_store+0x164>
    b4cc: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b4cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e3e
    b4d0: 91000000     	add	x0, x0, #0x0
		000000000000b4d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e3e
    b4d4: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b4d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b4d8: 91000021     	add	x1, x1, #0x0
		000000000000b4d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b4dc: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b4dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b4e0: 91000063     	add	x3, x3, #0x0
		000000000000b4e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b4e4: 52817aa2     	mov	w2, #0xbd5              // =3029
    b4e8: 94000000     	bl	0xb4e8 <haptic_audio_store+0x284>
		000000000000b4e8:  R_AARCH64_CALL26	_printk
    b4ec: f94292c8     	ldr	x8, [x22, #0x520]
    b4f0: aa1503e0     	mov	x0, x21
    b4f4: 52800021     	mov	w1, #0x1                // =1
    b4f8: 2a1f03e2     	mov	w2, wzr
    b4fc: f9406108     	ldr	x8, [x8, #0xc0]
    b500: b85fc110     	ldur	w16, [x8, #-0x4]
    b504: 728fccb1     	movk	w17, #0x7e65
    b508: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b50c: 6b11021f     	cmp	w16, w17
    b510: 54000040     	b.eq	0xb518 <haptic_audio_store+0x2b4>
    b514: d4304500     	brk	#0x8228
    b518: d63f0100     	blr	x8
    b51c: b94432c8     	ldr	w8, [x22, #0x430]
    b520: 529bd069     	mov	w9, #0xde83             // =56963
    b524: 9111e2c0     	add	x0, x22, #0x478
    b528: 72a86369     	movk	w9, #0x431b, lsl #16
    b52c: aa1f03e2     	mov	x2, xzr
    b530: 52800023     	mov	w3, #0x1                // =1
    b534: 9b297d09     	smull	x9, w8, w9
    b538: d37ffd2a     	lsr	x10, x9, #63
    b53c: 9372fd29     	asr	x9, x9, #50
    b540: 0b0a0129     	add	w9, w9, w10
    b544: 5288480a     	mov	w10, #0x4240            // =16960
    b548: 72a001ea     	movk	w10, #0xf, lsl #16
    b54c: 1b0aa128     	msub	w8, w9, w10, w8
    b550: 52807d0a     	mov	w10, #0x3e8             // =1000
    b554: 1b0a7d08     	mul	w8, w8, w10
    b558: 5299400a     	mov	w10, #0xca00            // =51712
    b55c: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    b560: 93407d08     	sxtw	x8, w8
    b564: 9b2a2121     	smaddl	x1, w9, w10, x8
    b568: 94000000     	bl	0xb568 <haptic_audio_store+0x304>
		000000000000b568:  R_AARCH64_CALL26	hrtimer_start_range_ns
    b56c: 17ffff97     	b	0xb3c8 <haptic_audio_store+0x164>
    b570: aa0803e0     	mov	x0, x8
    b574: 94000000     	bl	0xb574 <haptic_audio_store+0x310>
		000000000000b574:  R_AARCH64_CALL26	__list_add_valid_or_report
    b578: 17ffff8e     	b	0xb3b0 <haptic_audio_store+0x14c>
    b57c: 94000000     	bl	0xb57c <haptic_audio_store+0x318>
		000000000000b57c:  R_AARCH64_CALL26	__stack_chk_fail
    b580: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b580:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b584: d5384115     	mrs	x21, SP_EL0
    b588: f9402ab7     	ldr	x23, [x21, #0x50]
    b58c: f9400100     	ldr	x0, [x8]
		000000000000b58c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b590: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b590:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x320
    b594: 91000108     	add	x8, x8, #0x0
		000000000000b594:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x320
    b598: 5281b801     	mov	w1, #0xdc0              // =3520
    b59c: 52800302     	mov	w2, #0x18               // =24
    b5a0: f9002aa8     	str	x8, [x21, #0x50]
    b5a4: 94000000     	bl	0xb5a4 <haptic_audio_store+0x340>
		000000000000b5a4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b5a8: aa0003f4     	mov	x20, x0
    b5ac: f9002ab7     	str	x23, [x21, #0x50]
    b5b0: b5ffea94     	cbnz	x20, 0xb300 <haptic_audio_store+0x9c>
    b5b4: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x190>
		000000000000b5b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355c
    b5b8: 91000000     	add	x0, x0, #0x0
		000000000000b5b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355c
    b5bc: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x190>
		000000000000b5bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b5c0: 91000021     	add	x1, x1, #0x0
		000000000000b5c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b5c4: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x190>
		000000000000b5c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b5c8: 91000063     	add	x3, x3, #0x0
		000000000000b5c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b5cc: 528176e2     	mov	w2, #0xbb7              // =2999
    b5d0: 94000000     	bl	0xb5d0 <haptic_audio_store+0x36c>
		000000000000b5d0:  R_AARCH64_CALL26	_printk
    b5d4: 17ffff81     	b	0xb3d8 <haptic_audio_store+0x174>
    b5d8: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b5d8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b5dc: d5384115     	mrs	x21, SP_EL0
    b5e0: f9402ab7     	ldr	x23, [x21, #0x50]
    b5e4: f9400100     	ldr	x0, [x8]
		000000000000b5e4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b5e8: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x190>
		000000000000b5e8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x348
    b5ec: 91000108     	add	x8, x8, #0x0
		000000000000b5ec:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x348
    b5f0: 5281b801     	mov	w1, #0xdc0              // =3520
    b5f4: 52800302     	mov	w2, #0x18               // =24
    b5f8: f9002aa8     	str	x8, [x21, #0x50]
    b5fc: 94000000     	bl	0xb5fc <haptic_audio_store+0x398>
		000000000000b5fc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b600: f9002ab7     	str	x23, [x21, #0x50]
    b604: d102a2d5     	sub	x21, x22, #0xa8
    b608: b5ffeaa0     	cbnz	x0, 0xb35c <haptic_audio_store+0xf8>
    b60c: 17ffff69     	b	0xb3b0 <haptic_audio_store+0x14c>
