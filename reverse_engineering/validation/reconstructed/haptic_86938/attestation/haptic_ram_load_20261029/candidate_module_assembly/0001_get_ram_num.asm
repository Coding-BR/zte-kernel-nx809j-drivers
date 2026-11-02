
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002338 <get_ram_num>:
    2338: d503233f     	paciasp
    233c: d10103ff     	sub	sp, sp, #0x40
    2340: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2344: f90013f5     	str	x21, [sp, #0x20]
    2348: a9034ff4     	stp	x20, x19, [sp, #0x30]
    234c: 910043fd     	add	x29, sp, #0x10
    2350: d5384108     	mrs	x8, SP_EL0
    2354: f9438908     	ldr	x8, [x8, #0x710]
    2358: f90007e8     	str	x8, [sp, #0x8]
    235c: 39401808     	ldrb	w8, [x0, #0x6]
    2360: 79000bff     	strh	wzr, [sp, #0x4]
    2364: 36000be8     	tbz	w8, #0x0, 0x24e0 <get_ram_num+0x1a8>
    2368: aa0003f3     	mov	x19, x0
    236c: 910bc000     	add	x0, x0, #0x2f0
    2370: 94000000     	bl	0x2370 <get_ram_num+0x38>
		0000000000002370:  R_AARCH64_CALL26	mutex_lock
    2374: f942e668     	ldr	x8, [x19, #0x5c8]
    2378: aa1303e0     	mov	x0, x19
    237c: f9401d08     	ldr	x8, [x8, #0x38]
    2380: b85fc110     	ldur	w16, [x8, #-0x4]
    2384: 72810611     	movk	w17, #0x830
    2388: 72b08f51     	movk	w17, #0x847a, lsl #16
    238c: 6b11021f     	cmp	w16, w17
    2390: 54000040     	b.eq	0x2398 <get_ram_num+0x60>
    2394: d4304500     	brk	#0x8228
    2398: d63f0100     	blr	x8
    239c: f942e668     	ldr	x8, [x19, #0x5c8]
    23a0: aa1303e0     	mov	x0, x19
    23a4: 52800021     	mov	w1, #0x1                // =1
    23a8: f9403508     	ldr	x8, [x8, #0x68]
    23ac: b85fc110     	ldur	w16, [x8, #-0x4]
    23b0: 729bedd1     	movk	w17, #0xdf6e
    23b4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    23b8: 6b11021f     	cmp	w16, w17
    23bc: 54000040     	b.eq	0x23c4 <get_ram_num+0x8c>
    23c0: d4304500     	brk	#0x8228
    23c4: d63f0100     	blr	x8
    23c8: f942e668     	ldr	x8, [x19, #0x5c8]
    23cc: aa1303e0     	mov	x0, x19
    23d0: f9407d08     	ldr	x8, [x8, #0xf8]
    23d4: b85fc110     	ldur	w16, [x8, #-0x4]
    23d8: 72810611     	movk	w17, #0x830
    23dc: 72b08f51     	movk	w17, #0x847a, lsl #16
    23e0: 6b11021f     	cmp	w16, w17
    23e4: 54000040     	b.eq	0x23ec <get_ram_num+0xb4>
    23e8: d4304500     	brk	#0x8228
    23ec: d63f0100     	blr	x8
    23f0: f942e668     	ldr	x8, [x19, #0x5c8]
    23f4: 910013e1     	add	x1, sp, #0x4
    23f8: aa1303e0     	mov	x0, x19
    23fc: f9409908     	ldr	x8, [x8, #0x130]
    2400: b85fc110     	ldur	w16, [x8, #-0x4]
    2404: 729ad191     	movk	w17, #0xd68c
    2408: 72a27851     	movk	w17, #0x13c2, lsl #16
    240c: 6b11021f     	cmp	w16, w17
    2410: 54000040     	b.eq	0x2418 <get_ram_num+0xe0>
    2414: d4304500     	brk	#0x8228
    2418: d63f0100     	blr	x8
    241c: 79400be8     	ldrh	w8, [sp, #0x4]
    2420: b9445a69     	ldr	w9, [x19, #0x458]
    2424: 90000014     	adrp	x20, 0x2000 <ram_load+0x34>
		0000000000002424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    2428: 91000294     	add	x20, x20, #0x0
		0000000000002428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    242c: 90000015     	adrp	x21, 0x2000 <ram_load+0x34>
		000000000000242c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x607
    2430: 910002b5     	add	x21, x21, #0x0
		0000000000002430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x607
    2434: 5ac00908     	rev	w8, w8
    2438: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x613
    243c: 91000000     	add	x0, x0, #0x0
		000000000000243c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x613
    2440: 53107d04     	lsr	w4, w8, #16
    2444: 2a2903e8     	mvn	w8, w9
    2448: aa1403e1     	mov	x1, x20
    244c: 52804ee2     	mov	w2, #0x277              // =631
    2450: aa1503e3     	mov	x3, x21
    2454: 0b080088     	add	w8, w4, w8
    2458: 53027d08     	lsr	w8, w8, #2
    245c: 39117268     	strb	w8, [x19, #0x45c]
    2460: 94000000     	bl	0x2460 <get_ram_num+0x128>
		0000000000002460:  R_AARCH64_CALL26	_printk
    2464: 39517264     	ldrb	w4, [x19, #0x45c]
    2468: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45d
    246c: 91000000     	add	x0, x0, #0x0
		000000000000246c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45d
    2470: aa1403e1     	mov	x1, x20
    2474: 52804f02     	mov	w2, #0x278              // =632
    2478: aa1503e3     	mov	x3, x21
    247c: 94000000     	bl	0x247c <get_ram_num+0x144>
		000000000000247c:  R_AARCH64_CALL26	_printk
    2480: f942e668     	ldr	x8, [x19, #0x5c8]
    2484: aa1303e0     	mov	x0, x19
    2488: 2a1f03e1     	mov	w1, wzr
    248c: f9403508     	ldr	x8, [x8, #0x68]
    2490: b85fc110     	ldur	w16, [x8, #-0x4]
    2494: 729bedd1     	movk	w17, #0xdf6e
    2498: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    249c: 6b11021f     	cmp	w16, w17
    24a0: 54000040     	b.eq	0x24a8 <get_ram_num+0x170>
    24a4: d4304500     	brk	#0x8228
    24a8: d63f0100     	blr	x8
    24ac: 910bc260     	add	x0, x19, #0x2f0
    24b0: 94000000     	bl	0x24b0 <get_ram_num+0x178>
		00000000000024b0:  R_AARCH64_CALL26	mutex_unlock
    24b4: d5384108     	mrs	x8, SP_EL0
    24b8: f9438908     	ldr	x8, [x8, #0x710]
    24bc: f94007e9     	ldr	x9, [sp, #0x8]
    24c0: eb09011f     	cmp	x8, x9
    24c4: 54000201     	b.ne	0x2504 <get_ram_num+0x1cc>
    24c8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    24cc: f94013f5     	ldr	x21, [sp, #0x20]
    24d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    24d4: 910103ff     	add	sp, sp, #0x40
    24d8: d50323bf     	autiasp
    24dc: d65f03c0     	ret
    24e0: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		00000000000024e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3be
    24e4: 91000000     	add	x0, x0, #0x0
		00000000000024e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3be
    24e8: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		00000000000024e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    24ec: 91000021     	add	x1, x1, #0x0
		00000000000024ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    24f0: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		00000000000024f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x607
    24f4: 91000063     	add	x3, x3, #0x0
		00000000000024f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x607
    24f8: 52804d02     	mov	w2, #0x268              // =616
    24fc: 94000000     	bl	0x24fc <get_ram_num+0x1c4>
		00000000000024fc:  R_AARCH64_CALL26	_printk
    2500: 17ffffed     	b	0x24b4 <get_ram_num+0x17c>
    2504: 94000000     	bl	0x2504 <get_ram_num+0x1cc>
		0000000000002504:  R_AARCH64_CALL26	__stack_chk_fail
