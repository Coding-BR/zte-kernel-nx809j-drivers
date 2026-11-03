
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000261e4 <syna_tcm_buf_copy>:
   261e4: d503233f     	paciasp
   261e8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   261ec: f9000bf7     	str	x23, [sp, #0x10]
   261f0: a90257f6     	stp	x22, x21, [sp, #0x20]
   261f4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   261f8: 910003fd     	mov	x29, sp
   261fc: 39410002     	ldrb	w2, [x0, #0x40]
   26200: aa0003f3     	mov	x19, x0
   26204: aa0103f4     	mov	x20, x1
   26208: 350009e2     	cbnz	w2, 0x26344 <syna_tcm_buf_copy+0x160>
   2620c: 91004260     	add	x0, x19, #0x10
   26210: 94000000     	bl	0x26210 <syna_tcm_buf_copy+0x2c>
		0000000000026210:  R_AARCH64_CALL26	mutex_lock
   26214: 39410268     	ldrb	w8, [x19, #0x40]
   26218: 11000508     	add	w8, w8, #0x1
   2621c: 39010268     	strb	w8, [x19, #0x40]
   26220: 39410282     	ldrb	w2, [x20, #0x40]
   26224: 350009c2     	cbnz	w2, 0x2635c <syna_tcm_buf_copy+0x178>
   26228: 91004280     	add	x0, x20, #0x10
   2622c: 94000000     	bl	0x2622c <syna_tcm_buf_copy+0x48>
		000000000002622c:  R_AARCH64_CALL26	mutex_lock
   26230: 39410288     	ldrb	w8, [x20, #0x40]
   26234: b9400e95     	ldr	w21, [x20, #0xc]
   26238: 11000508     	add	w8, w8, #0x1
   2623c: 39010288     	strb	w8, [x20, #0x40]
   26240: b9400a63     	ldr	w3, [x19, #0x8]
   26244: 6b15007f     	cmp	w3, w21
   26248: 540003c2     	b.hs	0x262c0 <syna_tcm_buf_copy+0xdc>
   2624c: 110006b6     	add	w22, w21, #0x1
   26250: f9400260     	ldr	x0, [x19]
   26254: 6b16007f     	cmp	w3, w22
   26258: 54000262     	b.hs	0x262a4 <syna_tcm_buf_copy+0xc0>
   2625c: b40000c0     	cbz	x0, 0x26274 <syna_tcm_buf_copy+0x90>
   26260: aa0003f7     	mov	x23, x0
   26264: 94000000     	bl	0x26264 <syna_tcm_buf_copy+0x80>
		0000000000026264:  R_AARCH64_CALL26	syna_request_managed_device
   26268: b4000c60     	cbz	x0, 0x263f4 <syna_tcm_buf_copy+0x210>
   2626c: aa1703e1     	mov	x1, x23
   26270: 94000000     	bl	0x26270 <syna_tcm_buf_copy+0x8c>
		0000000000026270:  R_AARCH64_CALL26	devm_kfree
   26274: 94000000     	bl	0x26274 <syna_tcm_buf_copy+0x90>
		0000000000026274:  R_AARCH64_CALL26	syna_request_managed_device
   26278: b4000cc0     	cbz	x0, 0x26410 <syna_tcm_buf_copy+0x22c>
   2627c: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   26280: 6b0802bf     	cmp	w21, w8
   26284: 54000b22     	b.hs	0x263e8 <syna_tcm_buf_copy+0x204>
   26288: aa1603e1     	mov	x1, x22
   2628c: 5281b802     	mov	w2, #0xdc0              // =3520
   26290: 94000000     	bl	0x26290 <syna_tcm_buf_copy+0xac>
		0000000000026290:  R_AARCH64_CALL26	devm_kmalloc
   26294: f9000260     	str	x0, [x19]
   26298: b4000c80     	cbz	x0, 0x26428 <syna_tcm_buf_copy+0x244>
   2629c: b9000a76     	str	w22, [x19, #0x8]
   262a0: 14000002     	b	0x262a8 <syna_tcm_buf_copy+0xc4>
   262a4: aa0303f6     	mov	x22, x3
   262a8: 2a1f03e1     	mov	w1, wzr
   262ac: aa1603e2     	mov	x2, x22
   262b0: 94000000     	bl	0x262b0 <syna_tcm_buf_copy+0xcc>
		00000000000262b0:  R_AARCH64_CALL26	memset
   262b4: b9000e7f     	str	wzr, [x19, #0xc]
   262b8: b9400a63     	ldr	w3, [x19, #0x8]
   262bc: b9400e95     	ldr	w21, [x20, #0xc]
   262c0: f9400260     	ldr	x0, [x19]
   262c4: b4000860     	cbz	x0, 0x263d0 <syna_tcm_buf_copy+0x1ec>
   262c8: f9400281     	ldr	x1, [x20]
   262cc: b4000821     	cbz	x1, 0x263d0 <syna_tcm_buf_copy+0x1ec>
   262d0: b9400a82     	ldr	w2, [x20, #0x8]
   262d4: 6b0302bf     	cmp	w21, w3
   262d8: 540006e8     	b.hi	0x263b4 <syna_tcm_buf_copy+0x1d0>
   262dc: 6b0202bf     	cmp	w21, w2
   262e0: 540006a8     	b.hi	0x263b4 <syna_tcm_buf_copy+0x1d0>
   262e4: 2a1503e2     	mov	w2, w21
   262e8: 94000000     	bl	0x262e8 <syna_tcm_buf_copy+0x104>
		00000000000262e8:  R_AARCH64_CALL26	memcpy
   262ec: b9400e88     	ldr	w8, [x20, #0xc]
   262f0: b9000e68     	str	w8, [x19, #0xc]
   262f4: 39410282     	ldrb	w2, [x20, #0x40]
   262f8: 7100045f     	cmp	w2, #0x1
   262fc: 540004c1     	b.ne	0x26394 <syna_tcm_buf_copy+0x1b0>
   26300: 2a1f03e8     	mov	w8, wzr
   26304: 91004280     	add	x0, x20, #0x10
   26308: 39010288     	strb	w8, [x20, #0x40]
   2630c: 94000000     	bl	0x2630c <syna_tcm_buf_copy+0x128>
		000000000002630c:  R_AARCH64_CALL26	mutex_unlock
   26310: 39410262     	ldrb	w2, [x19, #0x40]
   26314: 7100045f     	cmp	w2, #0x1
   26318: 540002e1     	b.ne	0x26374 <syna_tcm_buf_copy+0x190>
   2631c: 2a1f03e8     	mov	w8, wzr
   26320: 91004260     	add	x0, x19, #0x10
   26324: 39010268     	strb	w8, [x19, #0x40]
   26328: 94000000     	bl	0x26328 <syna_tcm_buf_copy+0x144>
		0000000000026328:  R_AARCH64_CALL26	mutex_unlock
   2632c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   26330: f9400bf7     	ldr	x23, [sp, #0x10]
   26334: a94257f6     	ldp	x22, x21, [sp, #0x20]
   26338: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   2633c: d50323bf     	autiasp
   26340: d65f03c0     	ret
   26344: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a325
   26348: 91000000     	add	x0, x0, #0x0
		0000000000026348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a325
   2634c: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		000000000002634c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a41b
   26350: 91000021     	add	x1, x1, #0x0
		0000000000026350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a41b
   26354: 94000000     	bl	0x26354 <syna_tcm_buf_copy+0x170>
		0000000000026354:  R_AARCH64_CALL26	_printk
   26358: 17ffffad     	b	0x2620c <syna_tcm_buf_copy+0x28>
   2635c: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		000000000002635c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a325
   26360: 91000000     	add	x0, x0, #0x0
		0000000000026360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a325
   26364: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a41b
   26368: 91000021     	add	x1, x1, #0x0
		0000000000026368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a41b
   2636c: 94000000     	bl	0x2636c <syna_tcm_buf_copy+0x188>
		000000000002636c:  R_AARCH64_CALL26	_printk
   26370: 17ffffae     	b	0x26228 <syna_tcm_buf_copy+0x44>
   26374: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a325
   26378: 91000000     	add	x0, x0, #0x0
		0000000000026378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a325
   2637c: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		000000000002637c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c352
   26380: 91000021     	add	x1, x1, #0x0
		0000000000026380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c352
   26384: 94000000     	bl	0x26384 <syna_tcm_buf_copy+0x1a0>
		0000000000026384:  R_AARCH64_CALL26	_printk
   26388: 39410268     	ldrb	w8, [x19, #0x40]
   2638c: 51000508     	sub	w8, w8, #0x1
   26390: 17ffffe4     	b	0x26320 <syna_tcm_buf_copy+0x13c>
   26394: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a325
   26398: 91000000     	add	x0, x0, #0x0
		0000000000026398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a325
   2639c: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		000000000002639c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c352
   263a0: 91000021     	add	x1, x1, #0x0
		00000000000263a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c352
   263a4: 94000000     	bl	0x263a4 <syna_tcm_buf_copy+0x1c0>
		00000000000263a4:  R_AARCH64_CALL26	_printk
   263a8: 39410288     	ldrb	w8, [x20, #0x40]
   263ac: 51000508     	sub	w8, w8, #0x1
   263b0: 17ffffd5     	b	0x26304 <syna_tcm_buf_copy+0x120>
   263b4: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab85
   263b8: 91000000     	add	x0, x0, #0x0
		00000000000263b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab85
   263bc: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17da8
   263c0: 91000021     	add	x1, x1, #0x0
		00000000000263c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17da8
   263c4: 2a1503e4     	mov	w4, w21
   263c8: 94000000     	bl	0x263c8 <syna_tcm_buf_copy+0x1e4>
		00000000000263c8:  R_AARCH64_CALL26	_printk
   263cc: b9400e95     	ldr	w21, [x20, #0xc]
   263d0: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e43
   263d4: 91000000     	add	x0, x0, #0x0
		00000000000263d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e43
   263d8: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17cfa
   263dc: 91000021     	add	x1, x1, #0x0
		00000000000263dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17cfa
   263e0: 2a1503e2     	mov	w2, w21
   263e4: 1400001e     	b	0x2645c <syna_tcm_buf_copy+0x278>
   263e8: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a355
   263ec: 91000000     	add	x0, x0, #0x0
		00000000000263ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a355
   263f0: 1400000a     	b	0x26418 <syna_tcm_buf_copy+0x234>
   263f4: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdf1
   263f8: 91000000     	add	x0, x0, #0x0
		00000000000263f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdf1
   263fc: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		00000000000263fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b80a
   26400: 91000021     	add	x1, x1, #0x0
		0000000000026400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b80a
   26404: 94000000     	bl	0x26404 <syna_tcm_buf_copy+0x220>
		0000000000026404:  R_AARCH64_CALL26	_printk
   26408: 94000000     	bl	0x26408 <syna_tcm_buf_copy+0x224>
		0000000000026408:  R_AARCH64_CALL26	syna_request_managed_device
   2640c: b5fff380     	cbnz	x0, 0x2627c <syna_tcm_buf_copy+0x98>
   26410: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdf1
   26414: 91000000     	add	x0, x0, #0x0
		0000000000026414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdf1
   26418: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19466
   2641c: 91000021     	add	x1, x1, #0x0
		000000000002641c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19466
   26420: 94000000     	bl	0x26420 <syna_tcm_buf_copy+0x23c>
		0000000000026420:  R_AARCH64_CALL26	_printk
   26424: f900027f     	str	xzr, [x19]
   26428: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b0c
   2642c: 91000000     	add	x0, x0, #0x0
		000000000002642c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b0c
   26430: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a727
   26434: 91000021     	add	x1, x1, #0x0
		0000000000026434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a727
   26438: 2a1603e2     	mov	w2, w22
   2643c: 94000000     	bl	0x2643c <syna_tcm_buf_copy+0x258>
		000000000002643c:  R_AARCH64_CALL26	_printk
   26440: f900067f     	str	xzr, [x19, #0x8]
   26444: 90000000     	adrp	x0, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a004
   26448: 91000000     	add	x0, x0, #0x0
		0000000000026448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a004
   2644c: b9400e88     	ldr	w8, [x20, #0xc]
   26450: 90000001     	adrp	x1, 0x26000 <syna_tcm_testing_noise+0x5c>
		0000000000026450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17cfa
   26454: 91000021     	add	x1, x1, #0x0
		0000000000026454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17cfa
   26458: 11000502     	add	w2, w8, #0x1
   2645c: 94000000     	bl	0x2645c <syna_tcm_buf_copy+0x278>
		000000000002645c:  R_AARCH64_CALL26	_printk
   26460: 17ffffa5     	b	0x262f4 <syna_tcm_buf_copy+0x110>
