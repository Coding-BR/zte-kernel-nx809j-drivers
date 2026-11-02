
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024250 <syna_tcm_buf_copy>:
   24250: d503233f     	paciasp
   24254: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   24258: f9000bf7     	str	x23, [sp, #0x10]
   2425c: a90257f6     	stp	x22, x21, [sp, #0x20]
   24260: a9034ff4     	stp	x20, x19, [sp, #0x30]
   24264: 910003fd     	mov	x29, sp
   24268: 39410002     	ldrb	w2, [x0, #0x40]
   2426c: aa0003f3     	mov	x19, x0
   24270: aa0103f4     	mov	x20, x1
   24274: 350009e2     	cbnz	w2, 0x243b0 <syna_tcm_buf_copy+0x160>
   24278: 91004260     	add	x0, x19, #0x10
   2427c: 94000000     	bl	0x2427c <syna_tcm_buf_copy+0x2c>
		000000000002427c:  R_AARCH64_CALL26	mutex_lock
   24280: 39410268     	ldrb	w8, [x19, #0x40]
   24284: 11000508     	add	w8, w8, #0x1
   24288: 39010268     	strb	w8, [x19, #0x40]
   2428c: 39410282     	ldrb	w2, [x20, #0x40]
   24290: 350009c2     	cbnz	w2, 0x243c8 <syna_tcm_buf_copy+0x178>
   24294: 91004280     	add	x0, x20, #0x10
   24298: 94000000     	bl	0x24298 <syna_tcm_buf_copy+0x48>
		0000000000024298:  R_AARCH64_CALL26	mutex_lock
   2429c: 39410288     	ldrb	w8, [x20, #0x40]
   242a0: b9400e95     	ldr	w21, [x20, #0xc]
   242a4: 11000508     	add	w8, w8, #0x1
   242a8: 39010288     	strb	w8, [x20, #0x40]
   242ac: b9400a63     	ldr	w3, [x19, #0x8]
   242b0: 6b15007f     	cmp	w3, w21
   242b4: 540003c2     	b.hs	0x2432c <syna_tcm_buf_copy+0xdc>
   242b8: 110006b6     	add	w22, w21, #0x1
   242bc: f9400260     	ldr	x0, [x19]
   242c0: 6b16007f     	cmp	w3, w22
   242c4: 54000262     	b.hs	0x24310 <syna_tcm_buf_copy+0xc0>
   242c8: b40000c0     	cbz	x0, 0x242e0 <syna_tcm_buf_copy+0x90>
   242cc: aa0003f7     	mov	x23, x0
   242d0: 94000000     	bl	0x242d0 <syna_tcm_buf_copy+0x80>
		00000000000242d0:  R_AARCH64_CALL26	syna_request_managed_device
   242d4: b4000c60     	cbz	x0, 0x24460 <syna_tcm_buf_copy+0x210>
   242d8: aa1703e1     	mov	x1, x23
   242dc: 94000000     	bl	0x242dc <syna_tcm_buf_copy+0x8c>
		00000000000242dc:  R_AARCH64_CALL26	devm_kfree
   242e0: 94000000     	bl	0x242e0 <syna_tcm_buf_copy+0x90>
		00000000000242e0:  R_AARCH64_CALL26	syna_request_managed_device
   242e4: b4000cc0     	cbz	x0, 0x2447c <syna_tcm_buf_copy+0x22c>
   242e8: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   242ec: 6b0802bf     	cmp	w21, w8
   242f0: 54000b22     	b.hs	0x24454 <syna_tcm_buf_copy+0x204>
   242f4: aa1603e1     	mov	x1, x22
   242f8: 5281b802     	mov	w2, #0xdc0              // =3520
   242fc: 94000000     	bl	0x242fc <syna_tcm_buf_copy+0xac>
		00000000000242fc:  R_AARCH64_CALL26	devm_kmalloc
   24300: f9000260     	str	x0, [x19]
   24304: b4000c80     	cbz	x0, 0x24494 <syna_tcm_buf_copy+0x244>
   24308: b9000a76     	str	w22, [x19, #0x8]
   2430c: 14000002     	b	0x24314 <syna_tcm_buf_copy+0xc4>
   24310: aa0303f6     	mov	x22, x3
   24314: 2a1f03e1     	mov	w1, wzr
   24318: aa1603e2     	mov	x2, x22
   2431c: 94000000     	bl	0x2431c <syna_tcm_buf_copy+0xcc>
		000000000002431c:  R_AARCH64_CALL26	memset
   24320: b9000e7f     	str	wzr, [x19, #0xc]
   24324: b9400a63     	ldr	w3, [x19, #0x8]
   24328: b9400e95     	ldr	w21, [x20, #0xc]
   2432c: f9400260     	ldr	x0, [x19]
   24330: b4000860     	cbz	x0, 0x2443c <syna_tcm_buf_copy+0x1ec>
   24334: f9400281     	ldr	x1, [x20]
   24338: b4000821     	cbz	x1, 0x2443c <syna_tcm_buf_copy+0x1ec>
   2433c: b9400a82     	ldr	w2, [x20, #0x8]
   24340: 6b0302bf     	cmp	w21, w3
   24344: 540006e8     	b.hi	0x24420 <syna_tcm_buf_copy+0x1d0>
   24348: 6b0202bf     	cmp	w21, w2
   2434c: 540006a8     	b.hi	0x24420 <syna_tcm_buf_copy+0x1d0>
   24350: 2a1503e2     	mov	w2, w21
   24354: 94000000     	bl	0x24354 <syna_tcm_buf_copy+0x104>
		0000000000024354:  R_AARCH64_CALL26	memcpy
   24358: b9400e88     	ldr	w8, [x20, #0xc]
   2435c: b9000e68     	str	w8, [x19, #0xc]
   24360: 39410282     	ldrb	w2, [x20, #0x40]
   24364: 7100045f     	cmp	w2, #0x1
   24368: 540004c1     	b.ne	0x24400 <syna_tcm_buf_copy+0x1b0>
   2436c: 2a1f03e8     	mov	w8, wzr
   24370: 91004280     	add	x0, x20, #0x10
   24374: 39010288     	strb	w8, [x20, #0x40]
   24378: 94000000     	bl	0x24378 <syna_tcm_buf_copy+0x128>
		0000000000024378:  R_AARCH64_CALL26	mutex_unlock
   2437c: 39410262     	ldrb	w2, [x19, #0x40]
   24380: 7100045f     	cmp	w2, #0x1
   24384: 540002e1     	b.ne	0x243e0 <syna_tcm_buf_copy+0x190>
   24388: 2a1f03e8     	mov	w8, wzr
   2438c: 91004260     	add	x0, x19, #0x10
   24390: 39010268     	strb	w8, [x19, #0x40]
   24394: 94000000     	bl	0x24394 <syna_tcm_buf_copy+0x144>
		0000000000024394:  R_AARCH64_CALL26	mutex_unlock
   24398: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   2439c: f9400bf7     	ldr	x23, [sp, #0x10]
   243a0: a94257f6     	ldp	x22, x21, [sp, #0x20]
   243a4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   243a8: d50323bf     	autiasp
   243ac: d65f03c0     	ret
   243b0: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000243b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   243b4: 91000000     	add	x0, x0, #0x0
		00000000000243b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   243b8: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000243b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   243bc: 91000021     	add	x1, x1, #0x0
		00000000000243bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   243c0: 94000000     	bl	0x243c0 <syna_tcm_buf_copy+0x170>
		00000000000243c0:  R_AARCH64_CALL26	_printk
   243c4: 17ffffad     	b	0x24278 <syna_tcm_buf_copy+0x28>
   243c8: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000243c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   243cc: 91000000     	add	x0, x0, #0x0
		00000000000243cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   243d0: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000243d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   243d4: 91000021     	add	x1, x1, #0x0
		00000000000243d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   243d8: 94000000     	bl	0x243d8 <syna_tcm_buf_copy+0x188>
		00000000000243d8:  R_AARCH64_CALL26	_printk
   243dc: 17ffffae     	b	0x24294 <syna_tcm_buf_copy+0x44>
   243e0: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000243e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   243e4: 91000000     	add	x0, x0, #0x0
		00000000000243e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   243e8: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000243e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   243ec: 91000021     	add	x1, x1, #0x0
		00000000000243ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   243f0: 94000000     	bl	0x243f0 <syna_tcm_buf_copy+0x1a0>
		00000000000243f0:  R_AARCH64_CALL26	_printk
   243f4: 39410268     	ldrb	w8, [x19, #0x40]
   243f8: 51000508     	sub	w8, w8, #0x1
   243fc: 17ffffe4     	b	0x2438c <syna_tcm_buf_copy+0x13c>
   24400: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   24404: 91000000     	add	x0, x0, #0x0
		0000000000024404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   24408: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   2440c: 91000021     	add	x1, x1, #0x0
		000000000002440c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   24410: 94000000     	bl	0x24410 <syna_tcm_buf_copy+0x1c0>
		0000000000024410:  R_AARCH64_CALL26	_printk
   24414: 39410288     	ldrb	w8, [x20, #0x40]
   24418: 51000508     	sub	w8, w8, #0x1
   2441c: 17ffffd5     	b	0x24370 <syna_tcm_buf_copy+0x120>
   24420: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac4c
   24424: 91000000     	add	x0, x0, #0x0
		0000000000024424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac4c
   24428: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd6
   2442c: 91000021     	add	x1, x1, #0x0
		000000000002442c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd6
   24430: 2a1503e4     	mov	w4, w21
   24434: 94000000     	bl	0x24434 <syna_tcm_buf_copy+0x1e4>
		0000000000024434:  R_AARCH64_CALL26	_printk
   24438: b9400e95     	ldr	w21, [x20, #0xc]
   2443c: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002443c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ebf
   24440: 91000000     	add	x0, x0, #0x0
		0000000000024440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ebf
   24444: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d28
   24448: 91000021     	add	x1, x1, #0x0
		0000000000024448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d28
   2444c: 2a1503e2     	mov	w2, w21
   24450: 1400001e     	b	0x244c8 <syna_tcm_buf_copy+0x278>
   24454: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   24458: 91000000     	add	x0, x0, #0x0
		0000000000024458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   2445c: 1400000a     	b	0x24484 <syna_tcm_buf_copy+0x234>
   24460: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   24464: 91000000     	add	x0, x0, #0x0
		0000000000024464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   24468: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2446c: 91000021     	add	x1, x1, #0x0
		000000000002446c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   24470: 94000000     	bl	0x24470 <syna_tcm_buf_copy+0x220>
		0000000000024470:  R_AARCH64_CALL26	_printk
   24474: 94000000     	bl	0x24474 <syna_tcm_buf_copy+0x224>
		0000000000024474:  R_AARCH64_CALL26	syna_request_managed_device
   24478: b5fff380     	cbnz	x0, 0x242e8 <syna_tcm_buf_copy+0x98>
   2447c: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002447c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   24480: 91000000     	add	x0, x0, #0x0
		0000000000024480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   24484: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   24488: 91000021     	add	x1, x1, #0x0
		0000000000024488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   2448c: 94000000     	bl	0x2448c <syna_tcm_buf_copy+0x23c>
		000000000002448c:  R_AARCH64_CALL26	_printk
   24490: f900027f     	str	xzr, [x19]
   24494: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   24498: 91000000     	add	x0, x0, #0x0
		0000000000024498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   2449c: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002449c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   244a0: 91000021     	add	x1, x1, #0x0
		00000000000244a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   244a4: 2a1603e2     	mov	w2, w22
   244a8: 94000000     	bl	0x244a8 <syna_tcm_buf_copy+0x258>
		00000000000244a8:  R_AARCH64_CALL26	_printk
   244ac: f900067f     	str	xzr, [x19, #0x8]
   244b0: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000244b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0bd
   244b4: 91000000     	add	x0, x0, #0x0
		00000000000244b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0bd
   244b8: b9400e88     	ldr	w8, [x20, #0xc]
   244bc: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000244bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d28
   244c0: 91000021     	add	x1, x1, #0x0
		00000000000244c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d28
   244c4: 11000502     	add	w2, w8, #0x1
   244c8: 94000000     	bl	0x244c8 <syna_tcm_buf_copy+0x278>
		00000000000244c8:  R_AARCH64_CALL26	_printk
   244cc: 17ffffa5     	b	0x24360 <syna_tcm_buf_copy+0x110>
