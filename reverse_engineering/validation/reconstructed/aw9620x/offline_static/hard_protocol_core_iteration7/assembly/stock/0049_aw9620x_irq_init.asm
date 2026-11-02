
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000082b8 <aw9620x_irq_init>:
    82b8: d503233f     	paciasp
    82bc: d10183ff     	sub	sp, sp, #0x60
    82c0: a9037bfd     	stp	x29, x30, [sp, #0x30]
    82c4: a90457f6     	stp	x22, x21, [sp, #0x40]
    82c8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    82cc: 9100c3fd     	add	x29, sp, #0x30
    82d0: d5384108     	mrs	x8, SP_EL0
    82d4: aa0003f3     	mov	x19, x0
    82d8: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000082d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    82dc: 91000042     	add	x2, x2, #0x0
		00000000000082dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    82e0: f9438908     	ldr	x8, [x8, #0x710]
    82e4: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000082e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    82e8: 91000063     	add	x3, x3, #0x0
		00000000000082e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    82ec: 52815584     	mov	w4, #0xaac              // =2732
    82f0: f81f83a8     	stur	x8, [x29, #-0x8]
    82f4: f9401801     	ldr	x1, [x0, #0x30]
    82f8: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000082f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    82fc: 91000000     	add	x0, x0, #0x0
		00000000000082fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8300: f801e3ff     	stur	xzr, [sp, #0x1e]
    8304: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    8308: f90007ff     	str	xzr, [sp, #0x8]
    830c: 94000000     	bl	0x830c <aw9620x_irq_init+0x54>
		000000000000830c:  R_AARCH64_CALL26	_dev_printk
    8310: b9400a63     	ldr	w3, [x19, #0x8]
    8314: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf3
    8318: 91000042     	add	x2, x2, #0x0
		0000000000008318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf3
    831c: 910023e0     	add	x0, sp, #0x8
    8320: 528003c1     	mov	w1, #0x1e               // =30
    8324: 94000000     	bl	0x8324 <aw9620x_irq_init+0x6c>
		0000000000008324:  R_AARCH64_CALL26	snprintf
    8328: b9400e68     	ldr	w8, [x19, #0xc]
    832c: f9401a61     	ldr	x1, [x19, #0x30]
    8330: 37f807c8     	tbnz	w8, #0x1f, 0x8428 <aw9620x_irq_init+0x170>
    8334: b9400a65     	ldr	w5, [x19, #0x8]
    8338: 90000015     	adrp	x21, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    833c: 910002b5     	add	x21, x21, #0x0
		000000000000833c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    8340: 90000016     	adrp	x22, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    8344: 910002d6     	add	x22, x22, #0x0
		0000000000008344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    8348: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x806
    834c: 91000042     	add	x2, x2, #0x0
		000000000000834c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x806
    8350: aa1503e0     	mov	x0, x21
    8354: aa1603e3     	mov	x3, x22
    8358: 52815644     	mov	w4, #0xab2              // =2738
    835c: 94000000     	bl	0x835c <aw9620x_irq_init+0xa4>
		000000000000835c:  R_AARCH64_CALL26	_dev_printk
    8360: b9400e60     	ldr	w0, [x19, #0xc]
    8364: 94000000     	bl	0x8364 <aw9620x_irq_init+0xac>
		0000000000008364:  R_AARCH64_CALL26	gpio_to_desc
    8368: 94000000     	bl	0x8368 <aw9620x_irq_init+0xb0>
		0000000000008368:  R_AARCH64_CALL26	gpiod_to_irq
    836c: f9401a61     	ldr	x1, [x19, #0x30]
    8370: b9400a65     	ldr	w5, [x19, #0x8]
    8374: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104f
    8378: 91000042     	add	x2, x2, #0x0
		0000000000008378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104f
    837c: b9001e60     	str	w0, [x19, #0x1c]
    8380: aa1503e0     	mov	x0, x21
    8384: aa1603e3     	mov	x3, x22
    8388: 52815684     	mov	w4, #0xab4              // =2740
    838c: 94000000     	bl	0x838c <aw9620x_irq_init+0xd4>
		000000000000838c:  R_AARCH64_CALL26	_dev_printk
    8390: f9401a60     	ldr	x0, [x19, #0x30]
    8394: b9400e61     	ldr	w1, [x19, #0xc]
    8398: 910023e3     	add	x3, sp, #0x8
    839c: 52800062     	mov	w2, #0x3                // =3
    83a0: 94000000     	bl	0x83a0 <aw9620x_irq_init+0xe8>
		00000000000083a0:  R_AARCH64_CALL26	devm_gpio_request_one
    83a4: f9401a61     	ldr	x1, [x19, #0x30]
    83a8: b9400a65     	ldr	w5, [x19, #0x8]
    83ac: 2a0003f4     	mov	w20, w0
    83b0: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000083b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106a
    83b4: 91000042     	add	x2, x2, #0x0
		00000000000083b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106a
    83b8: aa1503e0     	mov	x0, x21
    83bc: aa1603e3     	mov	x3, x22
    83c0: 52815724     	mov	w4, #0xab9              // =2745
    83c4: 94000000     	bl	0x83c4 <aw9620x_irq_init+0x10c>
		00000000000083c4:  R_AARCH64_CALL26	_dev_printk
    83c8: f9401a68     	ldr	x8, [x19, #0x30]
    83cc: 35000434     	cbnz	w20, 0x8450 <aw9620x_irq_init+0x198>
    83d0: b9401e61     	ldr	w1, [x19, #0x1c]
    83d4: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000083d4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xa4b4
    83d8: 91000063     	add	x3, x3, #0x0
		00000000000083d8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xa4b4
    83dc: 90000005     	adrp	x5, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000083dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x310e
    83e0: 910000a5     	add	x5, x5, #0x0
		00000000000083e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x310e
    83e4: aa0803e0     	mov	x0, x8
    83e8: aa1f03e2     	mov	x2, xzr
    83ec: 52840044     	mov	w4, #0x2002             // =8194
    83f0: aa1303e6     	mov	x6, x19
    83f4: 94000000     	bl	0x83f4 <aw9620x_irq_init+0x13c>
		00000000000083f4:  R_AARCH64_CALL26	devm_request_threaded_irq
    83f8: f9401a61     	ldr	x1, [x19, #0x30]
    83fc: 35000400     	cbnz	w0, 0x847c <aw9620x_irq_init+0x1c4>
    8400: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    8404: 91000000     	add	x0, x0, #0x0
		0000000000008404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    8408: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36b3
    840c: 91000042     	add	x2, x2, #0x0
		000000000000840c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36b3
    8410: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    8414: 91000063     	add	x3, x3, #0x0
		0000000000008414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    8418: 528159a4     	mov	w4, #0xacd              // =2765
    841c: 94000000     	bl	0x841c <aw9620x_irq_init+0x164>
		000000000000841c:  R_AARCH64_CALL26	_dev_printk
    8420: 2a1f03f4     	mov	w20, wzr
    8424: 14000021     	b	0x84a8 <aw9620x_irq_init+0x1f0>
    8428: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    842c: 91000000     	add	x0, x0, #0x0
		000000000000842c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    8430: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f50
    8434: 91000042     	add	x2, x2, #0x0
		0000000000008434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f50
    8438: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    843c: 91000063     	add	x3, x3, #0x0
		000000000000843c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    8440: 52815a44     	mov	w4, #0xad2              // =2770
    8444: 94000000     	bl	0x8444 <aw9620x_irq_init+0x18c>
		0000000000008444:  R_AARCH64_CALL26	_dev_printk
    8448: 12800014     	mov	w20, #-0x1              // =-1
    844c: 14000024     	b	0x84dc <aw9620x_irq_init+0x224>
    8450: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    8454: 91000000     	add	x0, x0, #0x0
		0000000000008454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    8458: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x330d
    845c: 91000042     	add	x2, x2, #0x0
		000000000000845c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x330d
    8460: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    8464: 91000063     	add	x3, x3, #0x0
		0000000000008464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    8468: aa0803e1     	mov	x1, x8
    846c: 52815784     	mov	w4, #0xabc              // =2748
    8470: 2a1403e5     	mov	w5, w20
    8474: 94000000     	bl	0x8474 <aw9620x_irq_init+0x1bc>
		0000000000008474:  R_AARCH64_CALL26	_dev_printk
    8478: 1400000b     	b	0x84a4 <aw9620x_irq_init+0x1ec>
    847c: b9401e65     	ldr	w5, [x19, #0x1c]
    8480: 2a0003e6     	mov	w6, w0
    8484: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    8488: 91000000     	add	x0, x0, #0x0
		0000000000008488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    848c: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		000000000000848c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d45
    8490: 91000042     	add	x2, x2, #0x0
		0000000000008490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d45
    8494: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		0000000000008494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    8498: 91000063     	add	x3, x3, #0x0
		0000000000008498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    849c: 52815924     	mov	w4, #0xac9              // =2761
    84a0: 94000000     	bl	0x84a0 <aw9620x_irq_init+0x1e8>
		00000000000084a0:  R_AARCH64_CALL26	_dev_printk
    84a4: 12800014     	mov	w20, #-0x1              // =-1
    84a8: f9401a61     	ldr	x1, [x19, #0x30]
    84ac: 90000000     	adrp	x0, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000084ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    84b0: 91000000     	add	x0, x0, #0x0
		00000000000084b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    84b4: 90000002     	adrp	x2, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000084b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x108f
    84b8: 91000042     	add	x2, x2, #0x0
		00000000000084b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x108f
    84bc: 90000003     	adrp	x3, 0x8000 <aw9620x_i2c_shutdown+0x8c>
		00000000000084bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c24
    84c0: 91000063     	add	x3, x3, #0x0
		00000000000084c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c24
    84c4: 52815ac4     	mov	w4, #0xad6              // =2774
    84c8: 94000000     	bl	0x84c8 <aw9620x_irq_init+0x210>
		00000000000084c8:  R_AARCH64_CALL26	_dev_printk
    84cc: b9401e60     	ldr	w0, [x19, #0x1c]
    84d0: 94000000     	bl	0x84d0 <aw9620x_irq_init+0x218>
		00000000000084d0:  R_AARCH64_CALL26	disable_irq
    84d4: 52800028     	mov	w8, #0x1                // =1
    84d8: 39001668     	strb	w8, [x19, #0x5]
    84dc: d5384108     	mrs	x8, SP_EL0
    84e0: f9438908     	ldr	x8, [x8, #0x710]
    84e4: f85f83a9     	ldur	x9, [x29, #-0x8]
    84e8: eb09011f     	cmp	x8, x9
    84ec: 54000101     	b.ne	0x850c <aw9620x_irq_init+0x254>
    84f0: 2a1403e0     	mov	w0, w20
    84f4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    84f8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    84fc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    8500: 910183ff     	add	sp, sp, #0x60
    8504: d50323bf     	autiasp
    8508: d65f03c0     	ret
    850c: 94000000     	bl	0x850c <aw9620x_irq_init+0x254>
		000000000000850c:  R_AARCH64_CALL26	__stack_chk_fail
