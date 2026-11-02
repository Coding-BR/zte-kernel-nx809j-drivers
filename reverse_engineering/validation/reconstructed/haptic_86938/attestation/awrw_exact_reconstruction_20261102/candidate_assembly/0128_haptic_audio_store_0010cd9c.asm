
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b234 <haptic_audio_store>:
    b234: d503233f     	paciasp
    b238: d101c3ff     	sub	sp, sp, #0x70
    b23c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    b240: f90023f7     	str	x23, [sp, #0x40]
    b244: a90557f6     	stp	x22, x21, [sp, #0x50]
    b248: a9064ff4     	stp	x20, x19, [sp, #0x60]
    b24c: 9100c3fd     	add	x29, sp, #0x30
    b250: d5384108     	mrs	x8, SP_EL0
    b254: aa0303f3     	mov	x19, x3
    b258: f9438908     	ldr	x8, [x8, #0x710]
    b25c: f81f83a8     	stur	x8, [x29, #-0x8]
    b260: f9404c16     	ldr	x22, [x0, #0x98]
    b264: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    b268: f9000bff     	str	xzr, [sp, #0x10]
    b26c: 3855e2c8     	ldurb	w8, [x22, #-0xa2]
    b270: 36000b68     	tbz	w8, #0x0, 0xb3dc <haptic_audio_store+0x1a8>
    b274: 910043e8     	add	x8, sp, #0x10
    b278: aa0203e0     	mov	x0, x2
    b27c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b27c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23a2
    b280: 91000021     	add	x1, x1, #0x0
		000000000000b280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23a2
    b284: 910043e2     	add	x2, sp, #0x10
    b288: b27e0103     	orr	x3, x8, #0x4
    b28c: 91002104     	add	x4, x8, #0x8
    b290: 91003105     	add	x5, x8, #0xc
    b294: 91004106     	add	x6, x8, #0x10
    b298: 91005107     	add	x7, x8, #0x14
    b29c: 94000000     	bl	0xb29c <haptic_audio_store+0x68>
		000000000000b29c:  R_AARCH64_CALL26	sscanf
    b2a0: 7100181f     	cmp	w0, #0x6
    b2a4: 54000821     	b.ne	0xb3a8 <haptic_audio_store+0x174>
    b2a8: b9401be6     	ldr	w6, [sp, #0x18]
    b2ac: 35000aa6     	cbnz	w6, 0xb400 <haptic_audio_store+0x1cc>
    b2b0: d503201f     	nop
    b2b4: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b2b4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b2b8: 5281b801     	mov	w1, #0xdc0              // =3520
    b2bc: 52800302     	mov	w2, #0x18               // =24
    b2c0: f9400100     	ldr	x0, [x8]
		000000000000b2c0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b2c4: 94000000     	bl	0xb2c4 <haptic_audio_store+0x90>
		000000000000b2c4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b2c8: aa0003f4     	mov	x20, x0
    b2cc: b40015d4     	cbz	x20, 0xb584 <haptic_audio_store+0x350>
    b2d0: 911122c0     	add	x0, x22, #0x448
    b2d4: 94000000     	bl	0xb2d4 <haptic_audio_store+0xa0>
		000000000000b2d4:  R_AARCH64_CALL26	mutex_lock
    b2d8: 294227e8     	ldp	w8, w9, [sp, #0x10]
    b2dc: 29442beb     	ldp	w11, w10, [sp, #0x20]
    b2e0: 39000288     	strb	w8, [x20]
    b2e4: 39000689     	strb	w9, [x20, #0x1]
    b2e8: 294327e8     	ldp	w8, w9, [sp, #0x18]
    b2ec: 39000e8b     	strb	w11, [x20, #0x3]
    b2f0: 39000a88     	strb	w8, [x20, #0x2]
    b2f4: 12001d48     	and	w8, w10, #0xff
    b2f8: 7102011f     	cmp	w8, #0x80
    b2fc: 12800fe8     	mov	w8, #-0x80              // =-128
    b300: 39001689     	strb	w9, [x20, #0x5]
    b304: 1a8a8108     	csel	w8, w8, w10, hi
    b308: 39001288     	strb	w8, [x20, #0x4]
    b30c: d503201f     	nop
    b310: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b310:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b314: 5281b801     	mov	w1, #0xdc0              // =3520
    b318: 52800302     	mov	w2, #0x18               // =24
    b31c: f9400100     	ldr	x0, [x8]
		000000000000b31c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b320: 94000000     	bl	0xb320 <haptic_audio_store+0xec>
		000000000000b320:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b324: d102a2d5     	sub	x21, x22, #0xa8
    b328: b40002c0     	cbz	x0, 0xb380 <haptic_audio_store+0x14c>
    b32c: 39400288     	ldrb	w8, [x20]
    b330: b8401289     	ldur	w9, [x20, #0x1]
    b334: 9113a2c1     	add	x1, x22, #0x4e8
    b338: 3940168a     	ldrb	w10, [x20, #0x5]
    b33c: 39000008     	strb	w8, [x0]
    b340: 91002008     	add	x8, x0, #0x8
    b344: b8001009     	stur	w9, [x0, #0x1]
    b348: 3900140a     	strb	w10, [x0, #0x5]
    b34c: f9000408     	str	x8, [x0, #0x8]
    b350: f9000808     	str	x8, [x0, #0x10]
    b354: f94276c2     	ldr	x2, [x22, #0x4e8]
    b358: f9400449     	ldr	x9, [x2, #0x8]
    b35c: eb01013f     	cmp	x9, x1
    b360: 54000f01     	b.ne	0xb540 <haptic_audio_store+0x30c>
    b364: eb01011f     	cmp	x8, x1
    b368: 54000ec0     	b.eq	0xb540 <haptic_audio_store+0x30c>
    b36c: eb08005f     	cmp	x2, x8
    b370: 54000e80     	b.eq	0xb540 <haptic_audio_store+0x30c>
    b374: f9000448     	str	x8, [x2, #0x8]
    b378: a9008402     	stp	x2, x1, [x0, #0x8]
    b37c: f9000028     	str	x8, [x1]
    b380: 39400688     	ldrb	w8, [x20, #0x1]
    b384: 7103fd1f     	cmp	w8, #0xff
    b388: 54000580     	b.eq	0xb438 <haptic_audio_store+0x204>
    b38c: 9111e2c0     	add	x0, x22, #0x478
    b390: 94000000     	bl	0xb390 <haptic_audio_store+0x15c>
		000000000000b390:  R_AARCH64_CALL26	hrtimer_active
    b394: 36000840     	tbz	w0, #0x0, 0xb49c <haptic_audio_store+0x268>
    b398: 911122c0     	add	x0, x22, #0x448
    b39c: 94000000     	bl	0xb39c <haptic_audio_store+0x168>
		000000000000b39c:  R_AARCH64_CALL26	mutex_unlock
    b3a0: aa1403e0     	mov	x0, x20
    b3a4: 94000000     	bl	0xb3a4 <haptic_audio_store+0x170>
		000000000000b3a4:  R_AARCH64_CALL26	kfree
    b3a8: d5384108     	mrs	x8, SP_EL0
    b3ac: f9438908     	ldr	x8, [x8, #0x710]
    b3b0: f85f83a9     	ldur	x9, [x29, #-0x8]
    b3b4: eb09011f     	cmp	x8, x9
    b3b8: 54000ca1     	b.ne	0xb54c <haptic_audio_store+0x318>
    b3bc: aa1303e0     	mov	x0, x19
    b3c0: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    b3c4: f94023f7     	ldr	x23, [sp, #0x40]
    b3c8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    b3cc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    b3d0: 9101c3ff     	add	sp, sp, #0x70
    b3d4: d50323bf     	autiasp
    b3d8: d65f03c0     	ret
    b3dc: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b3dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46f4
    b3e0: 91000000     	add	x0, x0, #0x0
		000000000000b3e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46f4
    b3e4: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b3e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b3e8: 91000021     	add	x1, x1, #0x0
		000000000000b3e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b3ec: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b3ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b3f0: 91000063     	add	x3, x3, #0x0
		000000000000b3f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b3f4: 52817522     	mov	w2, #0xba9              // =2985
    b3f8: 94000000     	bl	0xb3f8 <haptic_audio_store+0x1c4>
		000000000000b3f8:  R_AARCH64_CALL26	_printk
    b3fc: 17ffffeb     	b	0xb3a8 <haptic_audio_store+0x174>
    b400: 294217e4     	ldp	w4, w5, [sp, #0x10]
    b404: 2943a3e7     	ldp	w7, w8, [sp, #0x1c]
    b408: b94027e9     	ldr	w9, [sp, #0x24]
    b40c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b40c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d3a
    b410: 91000000     	add	x0, x0, #0x0
		000000000000b410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d3a
    b414: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b418: 91000021     	add	x1, x1, #0x0
		000000000000b418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b41c: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b41c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b420: 91000063     	add	x3, x3, #0x0
		000000000000b420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b424: 52817622     	mov	w2, #0xbb1              // =2993
    b428: b9000be9     	str	w9, [sp, #0x8]
    b42c: b90003e8     	str	w8, [sp]
    b430: 94000000     	bl	0xb430 <haptic_audio_store+0x1fc>
		000000000000b430:  R_AARCH64_CALL26	_printk
    b434: 17ffff9f     	b	0xb2b0 <haptic_audio_store+0x7c>
    b438: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x395a
    b43c: 91000000     	add	x0, x0, #0x0
		000000000000b43c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x395a
    b440: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b444: 91000021     	add	x1, x1, #0x0
		000000000000b444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b448: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b44c: 91000063     	add	x3, x3, #0x0
		000000000000b44c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b450: 52817942     	mov	w2, #0xbca              // =3018
    b454: 94000000     	bl	0xb454 <haptic_audio_store+0x220>
		000000000000b454:  R_AARCH64_CALL26	_printk
    b458: 9111e2c0     	add	x0, x22, #0x478
    b45c: 94000000     	bl	0xb45c <haptic_audio_store+0x228>
		000000000000b45c:  R_AARCH64_CALL26	hrtimer_active
    b460: 3607f9c0     	tbz	w0, #0x0, 0xb398 <haptic_audio_store+0x164>
    b464: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d80
    b468: 91000000     	add	x0, x0, #0x0
		000000000000b468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d80
    b46c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b46c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b470: 91000021     	add	x1, x1, #0x0
		000000000000b470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b474: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b478: 91000063     	add	x3, x3, #0x0
		000000000000b478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b47c: 52817982     	mov	w2, #0xbcc              // =3020
    b480: 94000000     	bl	0xb480 <haptic_audio_store+0x24c>
		000000000000b480:  R_AARCH64_CALL26	_printk
    b484: 9111e2c0     	add	x0, x22, #0x478
    b488: 94000000     	bl	0xb488 <haptic_audio_store+0x254>
		000000000000b488:  R_AARCH64_CALL26	hrtimer_cancel
    b48c: aa1503e0     	mov	x0, x21
    b490: 3913e2df     	strb	wzr, [x22, #0x4f8]
    b494: 94000053     	bl	0xb5e0 <haptic_audio_store+0x3ac>
		000000000000b494:  R_AARCH64_CALL26	audio_off
    b498: 17ffffc0     	b	0xb398 <haptic_audio_store+0x164>
    b49c: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b49c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e3e
    b4a0: 91000000     	add	x0, x0, #0x0
		000000000000b4a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e3e
    b4a4: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b4a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b4a8: 91000021     	add	x1, x1, #0x0
		000000000000b4a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b4ac: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b4ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b4b0: 91000063     	add	x3, x3, #0x0
		000000000000b4b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b4b4: 52817aa2     	mov	w2, #0xbd5              // =3029
    b4b8: 94000000     	bl	0xb4b8 <haptic_audio_store+0x284>
		000000000000b4b8:  R_AARCH64_CALL26	_printk
    b4bc: f94292c8     	ldr	x8, [x22, #0x520]
    b4c0: aa1503e0     	mov	x0, x21
    b4c4: 52800021     	mov	w1, #0x1                // =1
    b4c8: 2a1f03e2     	mov	w2, wzr
    b4cc: f9406108     	ldr	x8, [x8, #0xc0]
    b4d0: b85fc110     	ldur	w16, [x8, #-0x4]
    b4d4: 728fccb1     	movk	w17, #0x7e65
    b4d8: 72af70f1     	movk	w17, #0x7b87, lsl #16
    b4dc: 6b11021f     	cmp	w16, w17
    b4e0: 54000040     	b.eq	0xb4e8 <haptic_audio_store+0x2b4>
    b4e4: d4304500     	brk	#0x8228
    b4e8: d63f0100     	blr	x8
    b4ec: b94432c8     	ldr	w8, [x22, #0x430]
    b4f0: 529bd069     	mov	w9, #0xde83             // =56963
    b4f4: 9111e2c0     	add	x0, x22, #0x478
    b4f8: 72a86369     	movk	w9, #0x431b, lsl #16
    b4fc: aa1f03e2     	mov	x2, xzr
    b500: 52800023     	mov	w3, #0x1                // =1
    b504: 9b297d09     	smull	x9, w8, w9
    b508: d37ffd2a     	lsr	x10, x9, #63
    b50c: 9372fd29     	asr	x9, x9, #50
    b510: 0b0a0129     	add	w9, w9, w10
    b514: 5288480a     	mov	w10, #0x4240            // =16960
    b518: 72a001ea     	movk	w10, #0xf, lsl #16
    b51c: 1b0aa128     	msub	w8, w9, w10, w8
    b520: 52807d0a     	mov	w10, #0x3e8             // =1000
    b524: 1b0a7d08     	mul	w8, w8, w10
    b528: 5299400a     	mov	w10, #0xca00            // =51712
    b52c: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    b530: 93407d08     	sxtw	x8, w8
    b534: 9b2a2121     	smaddl	x1, w9, w10, x8
    b538: 94000000     	bl	0xb538 <haptic_audio_store+0x304>
		000000000000b538:  R_AARCH64_CALL26	hrtimer_start_range_ns
    b53c: 17ffff97     	b	0xb398 <haptic_audio_store+0x164>
    b540: aa0803e0     	mov	x0, x8
    b544: 94000000     	bl	0xb544 <haptic_audio_store+0x310>
		000000000000b544:  R_AARCH64_CALL26	__list_add_valid_or_report
    b548: 17ffff8e     	b	0xb380 <haptic_audio_store+0x14c>
    b54c: 94000000     	bl	0xb54c <haptic_audio_store+0x318>
		000000000000b54c:  R_AARCH64_CALL26	__stack_chk_fail
    b550: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b550:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b554: d5384115     	mrs	x21, SP_EL0
    b558: f9402ab7     	ldr	x23, [x21, #0x50]
    b55c: f9400100     	ldr	x0, [x8]
		000000000000b55c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b560: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b560:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x320
    b564: 91000108     	add	x8, x8, #0x0
		000000000000b564:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x320
    b568: 5281b801     	mov	w1, #0xdc0              // =3520
    b56c: 52800302     	mov	w2, #0x18               // =24
    b570: f9002aa8     	str	x8, [x21, #0x50]
    b574: 94000000     	bl	0xb574 <haptic_audio_store+0x340>
		000000000000b574:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b578: aa0003f4     	mov	x20, x0
    b57c: f9002ab7     	str	x23, [x21, #0x50]
    b580: b5ffea94     	cbnz	x20, 0xb2d0 <haptic_audio_store+0x9c>
    b584: 90000000     	adrp	x0, 0xb000 <osc_cali_store+0x1c0>
		000000000000b584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355c
    b588: 91000000     	add	x0, x0, #0x0
		000000000000b588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355c
    b58c: 90000001     	adrp	x1, 0xb000 <osc_cali_store+0x1c0>
		000000000000b58c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    b590: 91000021     	add	x1, x1, #0x0
		000000000000b590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    b594: 90000003     	adrp	x3, 0xb000 <osc_cali_store+0x1c0>
		000000000000b594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bd4
    b598: 91000063     	add	x3, x3, #0x0
		000000000000b598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bd4
    b59c: 528176e2     	mov	w2, #0xbb7              // =2999
    b5a0: 94000000     	bl	0xb5a0 <haptic_audio_store+0x36c>
		000000000000b5a0:  R_AARCH64_CALL26	_printk
    b5a4: 17ffff81     	b	0xb3a8 <haptic_audio_store+0x174>
    b5a8: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b5a8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    b5ac: d5384115     	mrs	x21, SP_EL0
    b5b0: f9402ab7     	ldr	x23, [x21, #0x50]
    b5b4: f9400100     	ldr	x0, [x8]
		000000000000b5b4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    b5b8: 90000008     	adrp	x8, 0xb000 <osc_cali_store+0x1c0>
		000000000000b5b8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x348
    b5bc: 91000108     	add	x8, x8, #0x0
		000000000000b5bc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x348
    b5c0: 5281b801     	mov	w1, #0xdc0              // =3520
    b5c4: 52800302     	mov	w2, #0x18               // =24
    b5c8: f9002aa8     	str	x8, [x21, #0x50]
    b5cc: 94000000     	bl	0xb5cc <haptic_audio_store+0x398>
		000000000000b5cc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    b5d0: f9002ab7     	str	x23, [x21, #0x50]
    b5d4: d102a2d5     	sub	x21, x22, #0xa8
    b5d8: b5ffeaa0     	cbnz	x0, 0xb32c <haptic_audio_store+0xf8>
    b5dc: 17ffff69     	b	0xb380 <haptic_audio_store+0x14c>
