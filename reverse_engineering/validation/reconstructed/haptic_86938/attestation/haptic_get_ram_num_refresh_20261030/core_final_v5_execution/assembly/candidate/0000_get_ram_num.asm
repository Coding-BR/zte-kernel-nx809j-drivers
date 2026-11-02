
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
    2364: 36000a88     	tbz	w8, #0x0, 0x24b4 <get_ram_num+0x17c>
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
		0000000000002424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125b
    2428: 91000294     	add	x20, x20, #0x0
		0000000000002428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125b
    242c: 90000015     	adrp	x21, 0x2000 <ram_load+0x34>
		000000000000242c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1265
    2430: 910002b5     	add	x21, x21, #0x0
		0000000000002430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1265
    2434: 5ac00504     	rev16	w4, w8
    2438: 2a2903e8     	mvn	w8, w9
    243c: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		000000000000243c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1231
    2440: 91000000     	add	x0, x0, #0x0
		0000000000002440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1231
    2444: 0b080088     	add	w8, w4, w8
    2448: aa1403e1     	mov	x1, x20
    244c: 53027d08     	lsr	w8, w8, #2
    2450: 52804ee2     	mov	w2, #0x277              // =631
    2454: aa1503e3     	mov	x3, x21
    2458: 39117268     	strb	w8, [x19, #0x45c]
    245c: 94000000     	bl	0x245c <get_ram_num+0x124>
		000000000000245c:  R_AARCH64_CALL26	_printk
    2460: 39517264     	ldrb	w4, [x19, #0x45c]
    2464: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		0000000000002464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac5
    2468: 91000000     	add	x0, x0, #0x0
		0000000000002468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac5
    246c: aa1403e1     	mov	x1, x20
    2470: 52804f02     	mov	w2, #0x278              // =632
    2474: aa1503e3     	mov	x3, x21
    2478: 94000000     	bl	0x2478 <get_ram_num+0x140>
		0000000000002478:  R_AARCH64_CALL26	_printk
    247c: f942e668     	ldr	x8, [x19, #0x5c8]
    2480: aa1303e0     	mov	x0, x19
    2484: 2a1f03e1     	mov	w1, wzr
    2488: f9403508     	ldr	x8, [x8, #0x68]
    248c: b85fc110     	ldur	w16, [x8, #-0x4]
    2490: 729bedd1     	movk	w17, #0xdf6e
    2494: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    2498: 6b11021f     	cmp	w16, w17
    249c: 54000040     	b.eq	0x24a4 <get_ram_num+0x16c>
    24a0: d4304500     	brk	#0x8228
    24a4: d63f0100     	blr	x8
    24a8: 910bc260     	add	x0, x19, #0x2f0
    24ac: 94000000     	bl	0x24ac <get_ram_num+0x174>
		00000000000024ac:  R_AARCH64_CALL26	mutex_unlock
    24b0: 14000009     	b	0x24d4 <get_ram_num+0x19c>
    24b4: 90000000     	adrp	x0, 0x2000 <ram_load+0x34>
		00000000000024b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1203
    24b8: 91000000     	add	x0, x0, #0x0
		00000000000024b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1203
    24bc: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		00000000000024bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125b
    24c0: 91000021     	add	x1, x1, #0x0
		00000000000024c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125b
    24c4: 90000003     	adrp	x3, 0x2000 <ram_load+0x34>
		00000000000024c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1265
    24c8: 91000063     	add	x3, x3, #0x0
		00000000000024c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1265
    24cc: 52804d02     	mov	w2, #0x268              // =616
    24d0: 94000000     	bl	0x24d0 <get_ram_num+0x198>
		00000000000024d0:  R_AARCH64_CALL26	_printk
    24d4: d5384108     	mrs	x8, SP_EL0
    24d8: f9438908     	ldr	x8, [x8, #0x710]
    24dc: f94007e9     	ldr	x9, [sp, #0x8]
    24e0: eb09011f     	cmp	x8, x9
    24e4: 540000e1     	b.ne	0x2500 <get_ram_num+0x1c8>
    24e8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    24ec: f94013f5     	ldr	x21, [sp, #0x20]
    24f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    24f4: 910103ff     	add	sp, sp, #0x40
    24f8: d50323bf     	autiasp
    24fc: d65f03c0     	ret
    2500: 94000000     	bl	0x2500 <get_ram_num+0x1c8>
		0000000000002500:  R_AARCH64_CALL26	__stack_chk_fail
