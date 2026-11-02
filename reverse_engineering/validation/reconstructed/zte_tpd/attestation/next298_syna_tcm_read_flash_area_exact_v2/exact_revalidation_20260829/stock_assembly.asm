
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e22c <syna_tcm_read_flash_area>:
   1e22c: d503233f     	paciasp
   1e230: d10543ff     	sub	sp, sp, #0x150
   1e234: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
   1e238: f90083fc     	str	x28, [sp, #0x100]
   1e23c: a91167fa     	stp	x26, x25, [sp, #0x110]
   1e240: a9125ff8     	stp	x24, x23, [sp, #0x120]
   1e244: a91357f6     	stp	x22, x21, [sp, #0x130]
   1e248: a9144ff4     	stp	x20, x19, [sp, #0x140]
   1e24c: 9103c3fd     	add	x29, sp, #0xf0
   1e250: d5384108     	mrs	x8, SP_EL0
   1e254: f9438908     	ldr	x8, [x8, #0x710]
   1e258: f81f83a8     	stur	x8, [x29, #-0x8]
   1e25c: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   1e260: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   1e264: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   1e268: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1e26c: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   1e270: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1e274: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   1e278: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1e27c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1e280: f90007ff     	str	xzr, [sp, #0x8]
   1e284: b5000080     	cbnz	x0, 0x1e294 <syna_tcm_read_flash_area+0x68>
   1e288: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1e28c: 91000000     	add	x0, x0, #0x0
		000000000001e28c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1e290: 14000004     	b	0x1e2a0 <syna_tcm_read_flash_area+0x74>
   1e294: b50002a2     	cbnz	x2, 0x1e2e8 <syna_tcm_read_flash_area+0xbc>
   1e298: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bb1
   1e29c: 91000000     	add	x0, x0, #0x0
		000000000001e29c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bb1
   1e2a0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e2a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cdf
   1e2a4: 91000021     	add	x1, x1, #0x0
		000000000001e2a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cdf
   1e2a8: 94000000     	bl	0x1e2a8 <syna_tcm_read_flash_area+0x7c>
		000000000001e2a8:  R_AARCH64_CALL26	_printk
   1e2ac: 12801e00     	mov	w0, #-0xf1              // =-241
   1e2b0: d5384108     	mrs	x8, SP_EL0
   1e2b4: f9438908     	ldr	x8, [x8, #0x710]
   1e2b8: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e2bc: eb09011f     	cmp	x8, x9
   1e2c0: 54002d21     	b.ne	0x1e864 <syna_tcm_read_flash_area+0x638>
   1e2c4: a9544ff4     	ldp	x20, x19, [sp, #0x140]
   1e2c8: f94083fc     	ldr	x28, [sp, #0x100]
   1e2cc: a95357f6     	ldp	x22, x21, [sp, #0x130]
   1e2d0: a9525ff8     	ldp	x24, x23, [sp, #0x120]
   1e2d4: a95167fa     	ldp	x26, x25, [sp, #0x110]
   1e2d8: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
   1e2dc: 910543ff     	add	sp, sp, #0x150
   1e2e0: d50323bf     	autiasp
   1e2e4: d65f03c0     	ret
   1e2e8: 2a0303f3     	mov	w19, w3
   1e2ec: aa0003f4     	mov	x20, x0
   1e2f0: 2a0103f5     	mov	w21, w1
   1e2f4: aa0203fa     	mov	x26, x2
   1e2f8: 35000063     	cbnz	w3, 0x1e304 <syna_tcm_read_flash_area+0xd8>
   1e2fc: 2a1f03e3     	mov	w3, wzr
   1e300: 14000002     	b	0x1e308 <syna_tcm_read_flash_area+0xdc>
   1e304: b941ea83     	ldr	w3, [x20, #0x1e8]
   1e308: 39402699     	ldrb	w25, [x20, #0x9]
   1e30c: 71002f3f     	cmp	w25, #0xb
   1e310: 540001e0     	b.eq	0x1e34c <syna_tcm_read_flash_area+0x120>
   1e314: 910023e1     	add	x1, sp, #0x8
   1e318: aa1403e0     	mov	x0, x20
   1e31c: 2a1303e2     	mov	w2, w19
   1e320: 97fffe4f     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   1e324: 36f80140     	tbz	w0, #0x1f, 0x1e34c <syna_tcm_read_flash_area+0x120>
   1e328: 90000008     	adrp	x8, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   1e32c: 91000108     	add	x8, x8, #0x0
		000000000001e32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   1e330: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cdf
   1e334: 91000021     	add	x1, x1, #0x0
		000000000001e334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cdf
   1e338: 2a0003f3     	mov	w19, w0
   1e33c: aa0803e0     	mov	x0, x8
   1e340: 94000000     	bl	0x1e340 <syna_tcm_read_flash_area+0x114>
		000000000001e340:  R_AARCH64_CALL26	_printk
   1e344: 2a1303e0     	mov	w0, w19
   1e348: 17ffffda     	b	0x1e2b0 <syna_tcm_read_flash_area+0x84>
   1e34c: 910023e8     	add	x8, sp, #0x8
   1e350: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1e354: 91000021     	add	x1, x1, #0x0
		000000000001e354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   1e358: 90000002     	adrp	x2, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e358:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   1e35c: 91000042     	add	x2, x2, #0x0
		000000000001e35c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   1e360: 91014100     	add	x0, x8, #0x50
   1e364: 390223ff     	strb	wzr, [sp, #0x88]
   1e368: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1e36c: 94000000     	bl	0x1e36c <syna_tcm_read_flash_area+0x140>
		000000000001e36c:  R_AARCH64_CALL26	__mutex_init
   1e370: 2a1503e8     	mov	w8, w21
   1e374: 710052bf     	cmp	w21, #0x14
   1e378: 5400020d     	b.le	0x1e3b8 <syna_tcm_read_flash_area+0x18c>
   1e37c: 7100551f     	cmp	w8, #0x15
   1e380: aa1a03e2     	mov	x2, x26
   1e384: 54000360     	b.eq	0x1e3f0 <syna_tcm_read_flash_area+0x1c4>
   1e388: 7100591f     	cmp	w8, #0x16
   1e38c: 54000440     	b.eq	0x1e414 <syna_tcm_read_flash_area+0x1e8>
   1e390: 71005d1f     	cmp	w8, #0x17
   1e394: 54000761     	b.ne	0x1e480 <syna_tcm_read_flash_area+0x254>
   1e398: 910023e1     	add	x1, sp, #0x8
   1e39c: aa1403e0     	mov	x0, x20
   1e3a0: 2a1f03e3     	mov	w3, wzr
   1e3a4: 2a1f03e4     	mov	w4, wzr
   1e3a8: 2a1303e5     	mov	w5, w19
   1e3ac: 94000379     	bl	0x1f190 <syna_tcm_read_flash_mtp_config>
   1e3b0: 37f802e0     	tbnz	w0, #0x1f, 0x1e40c <syna_tcm_read_flash_area+0x1e0>
   1e3b4: 1400017d     	b	0x1e9a8 <syna_tcm_read_flash_area+0x77c>
   1e3b8: 71000d1f     	cmp	w8, #0x3
   1e3bc: aa1a03e2     	mov	x2, x26
   1e3c0: 540004a0     	b.eq	0x1e454 <syna_tcm_read_flash_area+0x228>
   1e3c4: 7100191f     	cmp	w8, #0x6
   1e3c8: 540005c1     	b.ne	0x1e480 <syna_tcm_read_flash_area+0x254>
   1e3cc: 910023e1     	add	x1, sp, #0x8
   1e3d0: aa1403e0     	mov	x0, x20
   1e3d4: 2a1303e3     	mov	w3, w19
   1e3d8: 9400018c     	bl	0x1ea08 <syna_tcm_read_flash_boot_config>
   1e3dc: 36f82e60     	tbz	w0, #0x1f, 0x1e9a8 <syna_tcm_read_flash_area+0x77c>
   1e3e0: 2a0003f5     	mov	w21, w0
   1e3e4: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e3e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ab
   1e3e8: 91000000     	add	x0, x0, #0x0
		000000000001e3e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ab
   1e3ec: 1400015c     	b	0x1e95c <syna_tcm_read_flash_area+0x730>
   1e3f0: 910023e1     	add	x1, sp, #0x8
   1e3f4: aa1403e0     	mov	x0, x20
   1e3f8: 2a1f03e3     	mov	w3, wzr
   1e3fc: 2a1f03e4     	mov	w4, wzr
   1e400: 2a1303e5     	mov	w5, w19
   1e404: 9400020c     	bl	0x1ec34 <syna_tcm_read_flash_boot_cs_config>
   1e408: 36f82d00     	tbz	w0, #0x1f, 0x1e9a8 <syna_tcm_read_flash_area+0x77c>
   1e40c: 2a0003f5     	mov	w21, w0
   1e410: 14000151     	b	0x1e954 <syna_tcm_read_flash_area+0x728>
   1e414: 39402688     	ldrb	w8, [x20, #0x9]
   1e418: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
   1e41c: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
   1e420: 7100051f     	cmp	w8, #0x1
   1e424: a93cffbf     	stp	xzr, xzr, [x29, #-0x38]
   1e428: a93bffbf     	stp	xzr, xzr, [x29, #-0x48]
   1e42c: f81b03bf     	stur	xzr, [x29, #-0x50]
   1e430: 540003a1     	b.ne	0x1e4a4 <syna_tcm_read_flash_area+0x278>
   1e434: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7da3
   1e438: 91000000     	add	x0, x0, #0x0
		000000000001e438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7da3
   1e43c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e43c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d66
   1e440: 91000021     	add	x1, x1, #0x0
		000000000001e440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d66
   1e444: 52800022     	mov	w2, #0x1                // =1
   1e448: 94000000     	bl	0x1e448 <syna_tcm_read_flash_area+0x21c>
		000000000001e448:  R_AARCH64_CALL26	_printk
   1e44c: 12801e17     	mov	w23, #-0xf1             // =-241
   1e450: 14000140     	b	0x1e950 <syna_tcm_read_flash_area+0x724>
   1e454: 39402688     	ldrb	w8, [x20, #0x9]
   1e458: 7100051f     	cmp	w8, #0x1
   1e45c: 540004e1     	b.ne	0x1e4f8 <syna_tcm_read_flash_area+0x2cc>
   1e460: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4883
   1e464: 91000000     	add	x0, x0, #0x0
		000000000001e464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4883
   1e468: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x785c
   1e46c: 91000021     	add	x1, x1, #0x0
		000000000001e46c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x785c
   1e470: 52800022     	mov	w2, #0x1                // =1
   1e474: 94000000     	bl	0x1e474 <syna_tcm_read_flash_area+0x248>
		000000000001e474:  R_AARCH64_CALL26	_printk
   1e478: 12801e15     	mov	w21, #-0xf1             // =-241
   1e47c: 140000e1     	b	0x1e800 <syna_tcm_read_flash_area+0x5d4>
   1e480: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28a9
   1e484: 91000000     	add	x0, x0, #0x0
		000000000001e484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28a9
   1e488: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cdf
   1e48c: 91000021     	add	x1, x1, #0x0
		000000000001e48c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cdf
   1e490: 94000000     	bl	0x1e490 <syna_tcm_read_flash_area+0x264>
		000000000001e490:  R_AARCH64_CALL26	_printk
   1e494: 12801e15     	mov	w21, #-0xf1             // =-241
   1e498: 7100073f     	cmp	w25, #0x1
   1e49c: 540026a0     	b.eq	0x1e970 <syna_tcm_read_flash_area+0x744>
   1e4a0: 14000138     	b	0x1e980 <syna_tcm_read_flash_area+0x754>
   1e4a4: d10143a8     	sub	x8, x29, #0x50
   1e4a8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e4a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1e4ac: 91000021     	add	x1, x1, #0x0
		000000000001e4ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   1e4b0: 90000002     	adrp	x2, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e4b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   1e4b4: 91000042     	add	x2, x2, #0x0
		000000000001e4b4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   1e4b8: 91004100     	add	x0, x8, #0x10
   1e4bc: a93b7fbf     	stp	xzr, xzr, [x29, #-0x50]
   1e4c0: 94000000     	bl	0x1e4c0 <syna_tcm_read_flash_area+0x294>
		000000000001e4c0:  R_AARCH64_CALL26	__mutex_init
   1e4c4: 910023e1     	add	x1, sp, #0x8
   1e4c8: d10143a2     	sub	x2, x29, #0x50
   1e4cc: aa1403e0     	mov	x0, x20
   1e4d0: 2a1303e3     	mov	w3, w19
   1e4d4: 9400014d     	bl	0x1ea08 <syna_tcm_read_flash_boot_config>
   1e4d8: 36f80380     	tbz	w0, #0x1f, 0x1e548 <syna_tcm_read_flash_area+0x31c>
   1e4dc: 2a0003f7     	mov	w23, w0
   1e4e0: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e73
   1e4e4: 91000000     	add	x0, x0, #0x0
		000000000001e4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e73
   1e4e8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e4e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d66
   1e4ec: 91000021     	add	x1, x1, #0x0
		000000000001e4ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d66
   1e4f0: 94000000     	bl	0x1e4f0 <syna_tcm_read_flash_area+0x2c4>
		000000000001e4f0:  R_AARCH64_CALL26	_printk
   1e4f4: 14000103     	b	0x1e900 <syna_tcm_read_flash_area+0x6d4>
   1e4f8: 79417288     	ldrh	w8, [x20, #0xb8]
   1e4fc: b94037e9     	ldr	w9, [sp, #0x34]
   1e500: 1b097d17     	mul	w23, w8, w9
   1e504: 340003f7     	cbz	w23, 0x1e580 <syna_tcm_read_flash_area+0x354>
   1e508: 79417696     	ldrh	w22, [x20, #0xba]
   1e50c: 340003b6     	cbz	w22, 0x1e580 <syna_tcm_read_flash_area+0x354>
   1e510: b9400848     	ldr	w8, [x2, #0x8]
   1e514: f9400040     	ldr	x0, [x2]
   1e518: 6b16011f     	cmp	w8, w22
   1e51c: 540014c2     	b.hs	0x1e7b4 <syna_tcm_read_flash_area+0x588>
   1e520: b4001080     	cbz	x0, 0x1e730 <syna_tcm_read_flash_area+0x504>
   1e524: aa0003f8     	mov	x24, x0
   1e528: 94000000     	bl	0x1e528 <syna_tcm_read_flash_area+0x2fc>
		000000000001e528:  R_AARCH64_CALL26	syna_request_managed_device
   1e52c: b5000fe0     	cbnz	x0, 0x1e728 <syna_tcm_read_flash_area+0x4fc>
   1e530: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1e534: 91000000     	add	x0, x0, #0x0
		000000000001e534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1e538: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1e53c: 91000021     	add	x1, x1, #0x0
		000000000001e53c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1e540: 94000000     	bl	0x1e540 <syna_tcm_read_flash_area+0x314>
		000000000001e540:  R_AARCH64_CALL26	_printk
   1e544: 1400007b     	b	0x1e730 <syna_tcm_read_flash_area+0x504>
   1e548: b9400b56     	ldr	w22, [x26, #0x8]
   1e54c: f9400340     	ldr	x0, [x26]
   1e550: 71001edf     	cmp	w22, #0x7
   1e554: 540006a8     	b.hi	0x1e628 <syna_tcm_read_flash_area+0x3fc>
   1e558: b4000260     	cbz	x0, 0x1e5a4 <syna_tcm_read_flash_area+0x378>
   1e55c: aa0003f6     	mov	x22, x0
   1e560: 94000000     	bl	0x1e560 <syna_tcm_read_flash_area+0x334>
		000000000001e560:  R_AARCH64_CALL26	syna_request_managed_device
   1e564: b50001c0     	cbnz	x0, 0x1e59c <syna_tcm_read_flash_area+0x370>
   1e568: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1e56c: 91000000     	add	x0, x0, #0x0
		000000000001e56c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1e570: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1e574: 91000021     	add	x1, x1, #0x0
		000000000001e574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1e578: 94000000     	bl	0x1e578 <syna_tcm_read_flash_area+0x34c>
		000000000001e578:  R_AARCH64_CALL26	_printk
   1e57c: 1400000a     	b	0x1e5a4 <syna_tcm_read_flash_area+0x378>
   1e580: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa30f
   1e584: 91000000     	add	x0, x0, #0x0
		000000000001e584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa30f
   1e588: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x785c
   1e58c: 91000021     	add	x1, x1, #0x0
		000000000001e58c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x785c
   1e590: 94000000     	bl	0x1e590 <syna_tcm_read_flash_area+0x364>
		000000000001e590:  R_AARCH64_CALL26	_printk
   1e594: 12801e15     	mov	w21, #-0xf1             // =-241
   1e598: 1400009a     	b	0x1e800 <syna_tcm_read_flash_area+0x5d4>
   1e59c: aa1603e1     	mov	x1, x22
   1e5a0: 94000000     	bl	0x1e5a0 <syna_tcm_read_flash_area+0x374>
		000000000001e5a0:  R_AARCH64_CALL26	devm_kfree
   1e5a4: 94000000     	bl	0x1e5a4 <syna_tcm_read_flash_area+0x378>
		000000000001e5a4:  R_AARCH64_CALL26	syna_request_managed_device
   1e5a8: b5000120     	cbnz	x0, 0x1e5cc <syna_tcm_read_flash_area+0x3a0>
   1e5ac: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e5ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1e5b0: 91000000     	add	x0, x0, #0x0
		000000000001e5b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1e5b4: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e5b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1e5b8: 91000021     	add	x1, x1, #0x0
		000000000001e5b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1e5bc: 94000000     	bl	0x1e5bc <syna_tcm_read_flash_area+0x390>
		000000000001e5bc:  R_AARCH64_CALL26	_printk
   1e5c0: aa1a03e8     	mov	x8, x26
   1e5c4: f900035f     	str	xzr, [x26]
   1e5c8: 14000008     	b	0x1e5e8 <syna_tcm_read_flash_area+0x3bc>
   1e5cc: 52800101     	mov	w1, #0x8                // =8
   1e5d0: 5281b802     	mov	w2, #0xdc0              // =3520
   1e5d4: 52800116     	mov	w22, #0x8               // =8
   1e5d8: 94000000     	bl	0x1e5d8 <syna_tcm_read_flash_area+0x3ac>
		000000000001e5d8:  R_AARCH64_CALL26	devm_kmalloc
   1e5dc: aa1a03e8     	mov	x8, x26
   1e5e0: f9000340     	str	x0, [x26]
   1e5e4: b5000200     	cbnz	x0, 0x1e624 <syna_tcm_read_flash_area+0x3f8>
   1e5e8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e5e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1e5ec: 91000000     	add	x0, x0, #0x0
		000000000001e5ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1e5f0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1e5f4: 91000021     	add	x1, x1, #0x0
		000000000001e5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1e5f8: 52800102     	mov	w2, #0x8                // =8
   1e5fc: aa0803f6     	mov	x22, x8
   1e600: 94000000     	bl	0x1e600 <syna_tcm_read_flash_area+0x3d4>
		000000000001e600:  R_AARCH64_CALL26	_printk
   1e604: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286f
   1e608: 91000000     	add	x0, x0, #0x0
		000000000001e608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286f
   1e60c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d66
   1e610: 91000021     	add	x1, x1, #0x0
		000000000001e610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d66
   1e614: f90006df     	str	xzr, [x22, #0x8]
   1e618: 94000000     	bl	0x1e618 <syna_tcm_read_flash_area+0x3ec>
		000000000001e618:  R_AARCH64_CALL26	_printk
   1e61c: 12801e57     	mov	w23, #-0xf3             // =-243
   1e620: 140000b8     	b	0x1e900 <syna_tcm_read_flash_area+0x6d4>
   1e624: b9000916     	str	w22, [x8, #0x8]
   1e628: 2a1603e2     	mov	w2, w22
   1e62c: 2a1f03e1     	mov	w1, wzr
   1e630: 94000000     	bl	0x1e630 <syna_tcm_read_flash_area+0x404>
		000000000001e630:  R_AARCH64_CALL26	memset
   1e634: b85bc3aa     	ldur	w10, [x29, #-0x44]
   1e638: f85b03a8     	ldur	x8, [x29, #-0x50]
   1e63c: aa1a03e9     	mov	x9, x26
   1e640: b9000f5f     	str	wzr, [x26, #0xc]
   1e644: 51001d4b     	sub	w11, w10, #0x7
   1e648: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
   1e64c: 37f8066b     	tbnz	w11, #0x1f, 0x1e718 <syna_tcm_read_flash_area+0x4ec>
   1e650: 51003d4b     	sub	w11, w10, #0xf
   1e654: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
   1e658: 37f8064b     	tbnz	w11, #0x1f, 0x1e720 <syna_tcm_read_flash_area+0x4f4>
   1e65c: 51005d4b     	sub	w11, w10, #0x17
   1e660: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
   1e664: 37f80d8b     	tbnz	w11, #0x1f, 0x1e814 <syna_tcm_read_flash_area+0x5e8>
   1e668: 51007d4b     	sub	w11, w10, #0x1f
   1e66c: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
   1e670: 37f80d6b     	tbnz	w11, #0x1f, 0x1e81c <syna_tcm_read_flash_area+0x5f0>
   1e674: 51009d4b     	sub	w11, w10, #0x27
   1e678: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
   1e67c: 37f80d4b     	tbnz	w11, #0x1f, 0x1e824 <syna_tcm_read_flash_area+0x5f8>
   1e680: 5100bd4b     	sub	w11, w10, #0x2f
   1e684: 38ebc90b     	ldrsb	w11, [x8, w11, sxtw]
   1e688: 37f80d2b     	tbnz	w11, #0x1f, 0x1e82c <syna_tcm_read_flash_area+0x600>
   1e68c: 5100dd49     	sub	w9, w10, #0x37
   1e690: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e694: 37f80d09     	tbnz	w9, #0x1f, 0x1e834 <syna_tcm_read_flash_area+0x608>
   1e698: 5100fd49     	sub	w9, w10, #0x3f
   1e69c: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6a0: 37f80ce9     	tbnz	w9, #0x1f, 0x1e83c <syna_tcm_read_flash_area+0x610>
   1e6a4: 51011d49     	sub	w9, w10, #0x47
   1e6a8: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6ac: 37f80cc9     	tbnz	w9, #0x1f, 0x1e844 <syna_tcm_read_flash_area+0x618>
   1e6b0: 51013d49     	sub	w9, w10, #0x4f
   1e6b4: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6b8: 37f80ca9     	tbnz	w9, #0x1f, 0x1e84c <syna_tcm_read_flash_area+0x620>
   1e6bc: 51015d49     	sub	w9, w10, #0x57
   1e6c0: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6c4: 37f80c89     	tbnz	w9, #0x1f, 0x1e854 <syna_tcm_read_flash_area+0x628>
   1e6c8: 51017d49     	sub	w9, w10, #0x5f
   1e6cc: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6d0: 37f80c69     	tbnz	w9, #0x1f, 0x1e85c <syna_tcm_read_flash_area+0x630>
   1e6d4: 51019d49     	sub	w9, w10, #0x67
   1e6d8: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6dc: 37f80c69     	tbnz	w9, #0x1f, 0x1e868 <syna_tcm_read_flash_area+0x63c>
   1e6e0: 5101bd49     	sub	w9, w10, #0x6f
   1e6e4: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6e8: 37f80c49     	tbnz	w9, #0x1f, 0x1e870 <syna_tcm_read_flash_area+0x644>
   1e6ec: 5101dd49     	sub	w9, w10, #0x77
   1e6f0: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e6f4: 37f80c29     	tbnz	w9, #0x1f, 0x1e878 <syna_tcm_read_flash_area+0x64c>
   1e6f8: 5101fd49     	sub	w9, w10, #0x7f
   1e6fc: 12800feb     	mov	w11, #-0x80             // =-128
   1e700: 38e9c909     	ldrsb	w9, [x8, w9, sxtw]
   1e704: 7100013f     	cmp	w9, #0x0
   1e708: 128010e9     	mov	w9, #-0x88              // =-136
   1e70c: 1a89b169     	csel	w9, w11, w9, lt
   1e710: 0b0a012a     	add	w10, w9, w10
   1e714: 1400005a     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e718: 5100214a     	sub	w10, w10, #0x8
   1e71c: 14000059     	b	0x1e880 <syna_tcm_read_flash_area+0x654>
   1e720: 5100414a     	sub	w10, w10, #0x10
   1e724: 14000057     	b	0x1e880 <syna_tcm_read_flash_area+0x654>
   1e728: aa1803e1     	mov	x1, x24
   1e72c: 94000000     	bl	0x1e72c <syna_tcm_read_flash_area+0x500>
		000000000001e72c:  R_AARCH64_CALL26	devm_kfree
   1e730: 94000000     	bl	0x1e730 <syna_tcm_read_flash_area+0x504>
		000000000001e730:  R_AARCH64_CALL26	syna_request_managed_device
   1e734: b5000120     	cbnz	x0, 0x1e758 <syna_tcm_read_flash_area+0x52c>
   1e738: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1e73c: 91000000     	add	x0, x0, #0x0
		000000000001e73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1e740: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1e744: 91000021     	add	x1, x1, #0x0
		000000000001e744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   1e748: 94000000     	bl	0x1e748 <syna_tcm_read_flash_area+0x51c>
		000000000001e748:  R_AARCH64_CALL26	_printk
   1e74c: aa1a03e8     	mov	x8, x26
   1e750: f900035f     	str	xzr, [x26]
   1e754: 14000007     	b	0x1e770 <syna_tcm_read_flash_area+0x544>
   1e758: aa1603e1     	mov	x1, x22
   1e75c: 5281b802     	mov	w2, #0xdc0              // =3520
   1e760: 94000000     	bl	0x1e760 <syna_tcm_read_flash_area+0x534>
		000000000001e760:  R_AARCH64_CALL26	devm_kmalloc
   1e764: aa1a03e8     	mov	x8, x26
   1e768: f9000340     	str	x0, [x26]
   1e76c: b5000200     	cbnz	x0, 0x1e7ac <syna_tcm_read_flash_area+0x580>
   1e770: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1e774: 91000000     	add	x0, x0, #0x0
		000000000001e774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   1e778: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1e77c: 91000021     	add	x1, x1, #0x0
		000000000001e77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   1e780: 2a1603e2     	mov	w2, w22
   1e784: aa0803f5     	mov	x21, x8
   1e788: 94000000     	bl	0x1e788 <syna_tcm_read_flash_area+0x55c>
		000000000001e788:  R_AARCH64_CALL26	_printk
   1e78c: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e78c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286f
   1e790: 91000000     	add	x0, x0, #0x0
		000000000001e790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286f
   1e794: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x785c
   1e798: 91000021     	add	x1, x1, #0x0
		000000000001e798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x785c
   1e79c: f90006bf     	str	xzr, [x21, #0x8]
   1e7a0: 94000000     	bl	0x1e7a0 <syna_tcm_read_flash_area+0x574>
		000000000001e7a0:  R_AARCH64_CALL26	_printk
   1e7a4: 12801e55     	mov	w21, #-0xf3             // =-243
   1e7a8: 14000016     	b	0x1e800 <syna_tcm_read_flash_area+0x5d4>
   1e7ac: b9000916     	str	w22, [x8, #0x8]
   1e7b0: aa1603e8     	mov	x8, x22
   1e7b4: 2a1f03e1     	mov	w1, wzr
   1e7b8: aa0803e2     	mov	x2, x8
   1e7bc: 94000000     	bl	0x1e7bc <syna_tcm_read_flash_area+0x590>
		000000000001e7bc:  R_AARCH64_CALL26	memset
   1e7c0: f9400342     	ldr	x2, [x26]
   1e7c4: aa1403e0     	mov	x0, x20
   1e7c8: 2a1703e1     	mov	w1, w23
   1e7cc: 2a1603e3     	mov	w3, w22
   1e7d0: 2a1303e4     	mov	w4, w19
   1e7d4: b9000f5f     	str	wzr, [x26, #0xc]
   1e7d8: 97fffdda     	bl	0x1df40 <syna_tcm_read_flash>
   1e7dc: 36f80180     	tbz	w0, #0x1f, 0x1e80c <syna_tcm_read_flash_area+0x5e0>
   1e7e0: 2a0003f5     	mov	w21, w0
   1e7e4: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9381
   1e7e8: 91000000     	add	x0, x0, #0x0
		000000000001e7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9381
   1e7ec: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x785c
   1e7f0: 91000021     	add	x1, x1, #0x0
		000000000001e7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x785c
   1e7f4: 2a1703e2     	mov	w2, w23
   1e7f8: 2a1603e3     	mov	w3, w22
   1e7fc: 94000000     	bl	0x1e7fc <syna_tcm_read_flash_area+0x5d0>
		000000000001e7fc:  R_AARCH64_CALL26	_printk
   1e800: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7780
   1e804: 91000000     	add	x0, x0, #0x0
		000000000001e804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7780
   1e808: 14000055     	b	0x1e95c <syna_tcm_read_flash_area+0x730>
   1e80c: b9000f56     	str	w22, [x26, #0xc]
   1e810: 14000066     	b	0x1e9a8 <syna_tcm_read_flash_area+0x77c>
   1e814: 5100614a     	sub	w10, w10, #0x18
   1e818: 1400001a     	b	0x1e880 <syna_tcm_read_flash_area+0x654>
   1e81c: 5100814a     	sub	w10, w10, #0x20
   1e820: 14000018     	b	0x1e880 <syna_tcm_read_flash_area+0x654>
   1e824: 5100a14a     	sub	w10, w10, #0x28
   1e828: 14000016     	b	0x1e880 <syna_tcm_read_flash_area+0x654>
   1e82c: 5100c14a     	sub	w10, w10, #0x30
   1e830: 14000014     	b	0x1e880 <syna_tcm_read_flash_area+0x654>
   1e834: 5100e14a     	sub	w10, w10, #0x38
   1e838: 14000011     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e83c: 5101014a     	sub	w10, w10, #0x40
   1e840: 1400000f     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e844: 5101214a     	sub	w10, w10, #0x48
   1e848: 1400000d     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e84c: 5101414a     	sub	w10, w10, #0x50
   1e850: 1400000b     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e854: 5101614a     	sub	w10, w10, #0x58
   1e858: 14000009     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e85c: 5101814a     	sub	w10, w10, #0x60
   1e860: 14000007     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e864: 94000000     	bl	0x1e864 <syna_tcm_read_flash_area+0x638>
		000000000001e864:  R_AARCH64_CALL26	__stack_chk_fail
   1e868: 5101a14a     	sub	w10, w10, #0x68
   1e86c: 14000004     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e870: 5101c14a     	sub	w10, w10, #0x70
   1e874: 14000002     	b	0x1e87c <syna_tcm_read_flash_area+0x650>
   1e878: 5101e14a     	sub	w10, w10, #0x78
   1e87c: aa1a03e9     	mov	x9, x26
   1e880: f940012b     	ldr	x11, [x9]
   1e884: b40001ab     	cbz	x11, 0x1e8b8 <syna_tcm_read_flash_area+0x68c>
   1e888: 8b2ac108     	add	x8, x8, w10, sxtw
   1e88c: b4000168     	cbz	x8, 0x1e8b8 <syna_tcm_read_flash_area+0x68c>
   1e890: b9400923     	ldr	w3, [x9, #0x8]
   1e894: 71001c7f     	cmp	w3, #0x7
   1e898: 540001e8     	b.hi	0x1e8d4 <syna_tcm_read_flash_area+0x6a8>
   1e89c: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e89c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1e8a0: 91000000     	add	x0, x0, #0x0
		000000000001e8a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1e8a4: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e8a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1e8a8: 91000021     	add	x1, x1, #0x0
		000000000001e8a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1e8ac: 52800102     	mov	w2, #0x8                // =8
   1e8b0: 52800104     	mov	w4, #0x8                // =8
   1e8b4: 94000000     	bl	0x1e8b4 <syna_tcm_read_flash_area+0x688>
		000000000001e8b4:  R_AARCH64_CALL26	_printk
   1e8b8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e8b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71e8
   1e8bc: 91000000     	add	x0, x0, #0x0
		000000000001e8bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71e8
   1e8c0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e8c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d66
   1e8c4: 91000021     	add	x1, x1, #0x0
		000000000001e8c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d66
   1e8c8: 94000000     	bl	0x1e8c8 <syna_tcm_read_flash_area+0x69c>
		000000000001e8c8:  R_AARCH64_CALL26	_printk
   1e8cc: 128002b7     	mov	w23, #-0x16             // =-22
   1e8d0: 1400000c     	b	0x1e900 <syna_tcm_read_flash_area+0x6d4>
   1e8d4: f9400108     	ldr	x8, [x8]
   1e8d8: 5280010a     	mov	w10, #0x8               // =8
   1e8dc: 2a1f03f7     	mov	w23, wzr
   1e8e0: f9000168     	str	x8, [x11]
   1e8e4: b85bc3a8     	ldur	w8, [x29, #-0x44]
   1e8e8: f85b03ab     	ldur	x11, [x29, #-0x50]
   1e8ec: b9000d2a     	str	w10, [x9, #0xc]
   1e8f0: 51001d08     	sub	w8, w8, #0x7
   1e8f4: 3868c968     	ldrb	w8, [x11, w8, sxtw]
   1e8f8: 53077d08     	lsr	w8, w8, #7
   1e8fc: b9003688     	str	w8, [x20, #0x34]
   1e900: 385f03a2     	ldurb	w2, [x29, #-0x10]
   1e904: 340000c2     	cbz	w2, 0x1e91c <syna_tcm_read_flash_area+0x6f0>
   1e908: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1e90c: 91000000     	add	x0, x0, #0x0
		000000000001e90c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1e910: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1e914: 91000021     	add	x1, x1, #0x0
		000000000001e914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1e918: 94000000     	bl	0x1e918 <syna_tcm_read_flash_area+0x6ec>
		000000000001e918:  R_AARCH64_CALL26	_printk
   1e91c: f85b03b6     	ldur	x22, [x29, #-0x50]
   1e920: 94000000     	bl	0x1e920 <syna_tcm_read_flash_area+0x6f4>
		000000000001e920:  R_AARCH64_CALL26	syna_request_managed_device
   1e924: b50000e0     	cbnz	x0, 0x1e940 <syna_tcm_read_flash_area+0x714>
   1e928: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1e92c: 91000000     	add	x0, x0, #0x0
		000000000001e92c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1e930: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1e934: 91000021     	add	x1, x1, #0x0
		000000000001e934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1e938: 94000000     	bl	0x1e938 <syna_tcm_read_flash_area+0x70c>
		000000000001e938:  R_AARCH64_CALL26	_printk
   1e93c: 14000004     	b	0x1e94c <syna_tcm_read_flash_area+0x720>
   1e940: b4000076     	cbz	x22, 0x1e94c <syna_tcm_read_flash_area+0x720>
   1e944: aa1603e1     	mov	x1, x22
   1e948: 94000000     	bl	0x1e948 <syna_tcm_read_flash_area+0x71c>
		000000000001e948:  R_AARCH64_CALL26	devm_kfree
   1e94c: 36f802f7     	tbz	w23, #0x1f, 0x1e9a8 <syna_tcm_read_flash_area+0x77c>
   1e950: 2a1703f5     	mov	w21, w23
   1e954: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4840
   1e958: 91000000     	add	x0, x0, #0x0
		000000000001e958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4840
   1e95c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e95c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cdf
   1e960: 91000021     	add	x1, x1, #0x0
		000000000001e960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cdf
   1e964: 94000000     	bl	0x1e964 <syna_tcm_read_flash_area+0x738>
		000000000001e964:  R_AARCH64_CALL26	_printk
   1e968: 7100073f     	cmp	w25, #0x1
   1e96c: 540000a1     	b.ne	0x1e980 <syna_tcm_read_flash_area+0x754>
   1e970: aa1403e0     	mov	x0, x20
   1e974: 52800021     	mov	w1, #0x1                // =1
   1e978: 2a1303e2     	mov	w2, w19
   1e97c: 94000000     	bl	0x1e97c <syna_tcm_read_flash_area+0x750>
		000000000001e97c:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   1e980: 394223e2     	ldrb	w2, [sp, #0x88]
   1e984: 350002a2     	cbnz	w2, 0x1e9d8 <syna_tcm_read_flash_area+0x7ac>
   1e988: f94027f3     	ldr	x19, [sp, #0x48]
   1e98c: 94000000     	bl	0x1e98c <syna_tcm_read_flash_area+0x760>
		000000000001e98c:  R_AARCH64_CALL26	syna_request_managed_device
   1e990: b4000300     	cbz	x0, 0x1e9f0 <syna_tcm_read_flash_area+0x7c4>
   1e994: b4000073     	cbz	x19, 0x1e9a0 <syna_tcm_read_flash_area+0x774>
   1e998: aa1303e1     	mov	x1, x19
   1e99c: 94000000     	bl	0x1e99c <syna_tcm_read_flash_area+0x770>
		000000000001e99c:  R_AARCH64_CALL26	devm_kfree
   1e9a0: 2a1503e0     	mov	w0, w21
   1e9a4: 17fffe43     	b	0x1e2b0 <syna_tcm_read_flash_area+0x84>
   1e9a8: 2a1503e0     	mov	w0, w21
   1e9ac: 94000000     	bl	0x1e9ac <syna_tcm_read_flash_area+0x780>
		000000000001e9ac:  R_AARCH64_CALL26	syna_tcm_get_partition_id_string
   1e9b0: aa0003e2     	mov	x2, x0
   1e9b4: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e9b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71d1
   1e9b8: 91000000     	add	x0, x0, #0x0
		000000000001e9b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71d1
   1e9bc: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e9bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cdf
   1e9c0: 91000021     	add	x1, x1, #0x0
		000000000001e9c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cdf
   1e9c4: 94000000     	bl	0x1e9c4 <syna_tcm_read_flash_area+0x798>
		000000000001e9c4:  R_AARCH64_CALL26	_printk
   1e9c8: 2a1f03f5     	mov	w21, wzr
   1e9cc: 7100073f     	cmp	w25, #0x1
   1e9d0: 54fffd00     	b.eq	0x1e970 <syna_tcm_read_flash_area+0x744>
   1e9d4: 17ffffeb     	b	0x1e980 <syna_tcm_read_flash_area+0x754>
   1e9d8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e9d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1e9dc: 91000000     	add	x0, x0, #0x0
		000000000001e9dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1e9e0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e9e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   1e9e4: 91000021     	add	x1, x1, #0x0
		000000000001e9e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1e9e8: 94000000     	bl	0x1e9e8 <syna_tcm_read_flash_area+0x7bc>
		000000000001e9e8:  R_AARCH64_CALL26	_printk
   1e9ec: 17ffffe7     	b	0x1e988 <syna_tcm_read_flash_area+0x75c>
   1e9f0: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e9f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1e9f4: 91000000     	add	x0, x0, #0x0
		000000000001e9f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1e9f8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e9f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1e9fc: 91000021     	add	x1, x1, #0x0
		000000000001e9fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1ea00: 94000000     	bl	0x1ea00 <syna_tcm_read_flash_area+0x7d4>
		000000000001ea00:  R_AARCH64_CALL26	_printk
   1ea04: 17ffffe7     	b	0x1e9a0 <syna_tcm_read_flash_area+0x774>
