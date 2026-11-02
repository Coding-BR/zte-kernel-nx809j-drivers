
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002394 <reg_show>:
    2394: d503233f     	paciasp
    2398: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    239c: a9016ffc     	stp	x28, x27, [sp, #0x10]
    23a0: a90267fa     	stp	x26, x25, [sp, #0x20]
    23a4: a9035ff8     	stp	x24, x23, [sp, #0x30]
    23a8: a90457f6     	stp	x22, x21, [sp, #0x40]
    23ac: a9054ff4     	stp	x20, x19, [sp, #0x50]
    23b0: 910003fd     	mov	x29, sp
    23b4: d11483ff     	sub	sp, sp, #0x520
    23b8: d5384108     	mrs	x8, SP_EL0
    23bc: aa0203f4     	mov	x20, x2
    23c0: aa0103f5     	mov	x21, x1
    23c4: f9438908     	ldr	x8, [x8, #0x710]
    23c8: 910013e0     	add	x0, sp, #0x4
    23cc: 2a1f03e1     	mov	w1, wzr
    23d0: 5280a282     	mov	w2, #0x514              // =1300
    23d4: aa0303f3     	mov	x19, x3
    23d8: 910013fa     	add	x26, sp, #0x4
    23dc: f81f83a8     	stur	x8, [x29, #-0x8]
    23e0: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		00000000000023e0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    23e4: f9400117     	ldr	x23, [x8]
		00000000000023e4:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    23e8: 790003ff     	strh	wzr, [sp]
    23ec: 94000000     	bl	0x23ec <reg_show+0x58>
		00000000000023ec:  R_AARCH64_CALL26	memset
    23f0: f9400268     	ldr	x8, [x19]
    23f4: b4000208     	cbz	x8, 0x2434 <reg_show+0xa0>
    23f8: aa1f03e0     	mov	x0, xzr
    23fc: d5384108     	mrs	x8, SP_EL0
    2400: f9438908     	ldr	x8, [x8, #0x710]
    2404: f85f83a9     	ldur	x9, [x29, #-0x8]
    2408: eb09011f     	cmp	x8, x9
    240c: 54000601     	b.ne	0x24cc <reg_show+0x138>
    2410: 911483ff     	add	sp, sp, #0x520
    2414: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2418: a94457f6     	ldp	x22, x21, [sp, #0x40]
    241c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2420: a94267fa     	ldp	x26, x25, [sp, #0x20]
    2424: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    2428: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    242c: d50323bf     	autiasp
    2430: d65f03c0     	ret
    2434: 2a1f03f8     	mov	w24, wzr
    2438: aa1f03f6     	mov	x22, xzr
    243c: 5282001b     	mov	w27, #0x1000            // =4096
    2440: 90000019     	adrp	x25, 0x2000 <speed_store+0x8>
		0000000000002440:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xac7
    2444: 91000339     	add	x25, x25, #0x0
		0000000000002444:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xac7
    2448: 910003e2     	mov	x2, sp
    244c: aa1703e0     	mov	x0, x23
    2450: 2a1803e1     	mov	w1, w24
    2454: 97fff868     	bl	0x5f4 <haptic_i2c_read>
		0000000000002454:  R_AARCH64_CALL26	haptic_i2c_read
    2458: f11456df     	cmp	x22, #0x515
    245c: 54000362     	b.hs	0x24c8 <reg_show+0x134>
    2460: 794003e4     	ldrh	w4, [sp]
    2464: cb160361     	sub	x1, x27, x22
    2468: 8b160340     	add	x0, x26, x22
    246c: aa1903e2     	mov	x2, x25
    2470: 2a1803e3     	mov	w3, w24
    2474: 94000000     	bl	0x2474 <reg_show+0xe0>
		0000000000002474:  R_AARCH64_CALL26	snprintf
    2478: 11000718     	add	w24, w24, #0x1
    247c: 8b20c2d6     	add	x22, x22, w0, sxtw
    2480: 7100e71f     	cmp	w24, #0x39
    2484: 54fffe21     	b.ne	0x2448 <reg_show+0xb4>
    2488: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002488:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xcbb
    248c: 91000000     	add	x0, x0, #0x0
		000000000000248c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xcbb
    2490: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002490:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    2494: 91000021     	add	x1, x1, #0x0
		0000000000002494:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    2498: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		0000000000002498:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xd7f
    249c: 91000063     	add	x3, x3, #0x0
		000000000000249c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xd7f
    24a0: 910013e4     	add	x4, sp, #0x4
    24a4: 52807442     	mov	w2, #0x3a2              // =930
    24a8: 94000000     	bl	0x24a8 <reg_show+0x114>
		00000000000024a8:  R_AARCH64_CALL26	_printk
    24ac: 910013e3     	add	x3, sp, #0x4
    24b0: aa1503e0     	mov	x0, x21
    24b4: aa1403e1     	mov	x1, x20
    24b8: aa1303e2     	mov	x2, x19
    24bc: aa1603e4     	mov	x4, x22
    24c0: 94000000     	bl	0x24c0 <reg_show+0x12c>
		00000000000024c0:  R_AARCH64_CALL26	simple_read_from_buffer
    24c4: 17ffffce     	b	0x23fc <reg_show+0x68>
    24c8: d42aa240     	brk	#0x5512
    24cc: 94000000     	bl	0x24cc <reg_show+0x138>
		00000000000024cc:  R_AARCH64_CALL26	__stack_chk_fail
