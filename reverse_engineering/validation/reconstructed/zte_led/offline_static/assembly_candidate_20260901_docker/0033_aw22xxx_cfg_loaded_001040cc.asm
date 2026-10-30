
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000022b4 <aw22xxx_cfg_loaded>:
    22b4: d503233f     	paciasp
    22b8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    22bc: f9000bfb     	str	x27, [sp, #0x10]
    22c0: a90267fa     	stp	x26, x25, [sp, #0x20]
    22c4: a9035ff8     	stp	x24, x23, [sp, #0x30]
    22c8: a90457f6     	stp	x22, x21, [sp, #0x40]
    22cc: a9054ff4     	stp	x20, x19, [sp, #0x50]
    22d0: 910003fd     	mov	x29, sp
    22d4: aa0103f3     	mov	x19, x1
    22d8: aa0003f4     	mov	x20, x0
    22dc: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000022dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    22e0: 91000000     	add	x0, x0, #0x0
		00000000000022e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    22e4: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000022e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x161b
    22e8: 91000021     	add	x1, x1, #0x0
		00000000000022e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x161b
    22ec: 94000000     	bl	0x22ec <aw22xxx_cfg_loaded+0x38>
		00000000000022ec:  R_AARCH64_CALL26	_printk
    22f0: b50000f4     	cbnz	x20, 0x230c <aw22xxx_cfg_loaded+0x58>
    22f4: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000022f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e9
    22f8: 91000000     	add	x0, x0, #0x0
		00000000000022f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e9
    22fc: 94000000     	bl	0x22fc <aw22xxx_cfg_loaded+0x48>
		00000000000022fc:  R_AARCH64_CALL26	_printk
    2300: aa1f03e0     	mov	x0, xzr
    2304: 94000000     	bl	0x2304 <aw22xxx_cfg_loaded+0x50>
		0000000000002304:  R_AARCH64_CALL26	release_firmware
    2308: 14000046     	b	0x2420 <aw22xxx_cfg_loaded+0x16c>
    230c: b9430262     	ldr	w2, [x19, #0x300]
    2310: f9400283     	ldr	x3, [x20]
    2314: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162e
    2318: 91000000     	add	x0, x0, #0x0
		0000000000002318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162e
    231c: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000231c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x161b
    2320: 91000021     	add	x1, x1, #0x0
		0000000000002320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x161b
    2324: 94000000     	bl	0x2324 <aw22xxx_cfg_loaded+0x70>
		0000000000002324:  R_AARCH64_CALL26	_printk
    2328: f9400288     	ldr	x8, [x20]
    232c: f100091f     	cmp	x8, #0x2
    2330: 540006e3     	b.lo	0x240c <aw22xxx_cfg_loaded+0x158>
    2334: 5295557a     	mov	w26, #0xaaab            // =43691
    2338: aa1f03f9     	mov	x25, xzr
    233c: 2a1f03f7     	mov	w23, wzr
    2340: 910c3278     	add	x24, x19, #0x30c
    2344: 72b5555a     	movk	w26, #0xaaaa, lsl #16
    2348: 5280021b     	mov	w27, #0x10              // =16
    234c: 1400000a     	b	0x2374 <aw22xxx_cfg_loaded+0xc0>
    2350: aa1303e0     	mov	x0, x19
    2354: 2a1503e1     	mov	w1, w21
    2358: 2a1603e2     	mov	w2, w22
    235c: 97fff741     	bl	0x60 <aw22xxx_i2c_write>
    2360: f9400288     	ldr	x8, [x20]
    2364: 91000f29     	add	x9, x25, #0x3
    2368: 91000b39     	add	x25, x25, #0x2
    236c: eb08013f     	cmp	x9, x8
    2370: 540004e2     	b.hs	0x240c <aw22xxx_cfg_loaded+0x158>
    2374: f9400688     	ldr	x8, [x20, #0x8]
    2378: 8b190108     	add	x8, x8, x25
    237c: 39400115     	ldrb	w21, [x8]
    2380: 39400516     	ldrb	w22, [x8, #0x1]
    2384: 394c1268     	ldrb	w8, [x19, #0x304]
    2388: 7103febf     	cmp	w21, #0xff
    238c: 1a9702d7     	csel	w23, w22, w23, eq
    2390: 7100051f     	cmp	w8, #0x1
    2394: 54000200     	b.eq	0x23d4 <aw22xxx_cfg_loaded+0x120>
    2398: 12001ee8     	and	w8, w23, #0xff
    239c: 7100051f     	cmp	w8, #0x1
    23a0: 540001a1     	b.ne	0x23d4 <aw22xxx_cfg_loaded+0x120>
    23a4: 510042a8     	sub	w8, w21, #0x10
    23a8: 7100691f     	cmp	w8, #0x1a
    23ac: 54fffd28     	b.hi	0x2350 <aw22xxx_cfg_loaded+0x9c>
    23b0: 510042a8     	sub	w8, w21, #0x10
    23b4: 9bba7d09     	umull	x9, w8, w26
    23b8: d361fd29     	lsr	x9, x9, #33
    23bc: 0b09052a     	add	w10, w9, w9, lsl #1
    23c0: b8697b09     	ldr	w9, [x24, x9, lsl #2]
    23c4: 4b0a0108     	sub	w8, w8, w10
    23c8: 4b080f68     	sub	w8, w27, w8, lsl #3
    23cc: 1ac82536     	lsr	w22, w9, w8
    23d0: 17ffffe0     	b	0x2350 <aw22xxx_cfg_loaded+0x9c>
    23d4: aa1303e0     	mov	x0, x19
    23d8: 2a1503e1     	mov	w1, w21
    23dc: 2a1603e2     	mov	w2, w22
    23e0: 97fff720     	bl	0x60 <aw22xxx_i2c_write>
    23e4: 71000abf     	cmp	w21, #0x2
    23e8: 54fffbc1     	b.ne	0x2360 <aw22xxx_cfg_loaded+0xac>
    23ec: 72001eff     	tst	w23, #0xff
    23f0: 54fffb81     	b.ne	0x2360 <aw22xxx_cfg_loaded+0xac>
    23f4: 3607fb76     	tbz	w22, #0x0, 0x2360 <aw22xxx_cfg_loaded+0xac>
    23f8: 5280fa00     	mov	w0, #0x7d0              // =2000
    23fc: 52813881     	mov	w1, #0x9c4              // =2500
    2400: 52800042     	mov	w2, #0x2                // =2
    2404: 94000000     	bl	0x2404 <aw22xxx_cfg_loaded+0x150>
		0000000000002404:  R_AARCH64_CALL26	usleep_range_state
    2408: 17ffffd6     	b	0x2360 <aw22xxx_cfg_loaded+0xac>
    240c: aa1403e0     	mov	x0, x20
    2410: 94000000     	bl	0x2410 <aw22xxx_cfg_loaded+0x15c>
		0000000000002410:  R_AARCH64_CALL26	release_firmware
    2414: b942f268     	ldr	w8, [x19, #0x2f0]
    2418: 7100311f     	cmp	w8, #0xc
    241c: 54000129     	b.ls	0x2440 <aw22xxx_cfg_loaded+0x18c>
    2420: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2424: f9400bfb     	ldr	x27, [sp, #0x10]
    2428: a94457f6     	ldp	x22, x21, [sp, #0x40]
    242c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2430: a94267fa     	ldp	x26, x25, [sp, #0x20]
    2434: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    2438: d50323bf     	autiasp
    243c: d65f03c0     	ret
    2440: 90000009     	adrp	x9, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1f8
    2444: 91000129     	add	x9, x9, #0x0
		0000000000002444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1f8
    2448: aa1303e0     	mov	x0, x19
    244c: 38686928     	ldrb	w8, [x9, x8]
    2450: 528001e9     	mov	w9, #0xf                // =15
    2454: 52801fe1     	mov	w1, #0xff               // =255
    2458: 2a1f03e2     	mov	w2, wzr
    245c: 71003d1f     	cmp	w8, #0xf
    2460: 1a893114     	csel	w20, w8, w9, lo
    2464: 97fff6ff     	bl	0x60 <aw22xxx_i2c_write>
    2468: aa1303e0     	mov	x0, x19
    246c: 52800161     	mov	w1, #0xb                // =11
    2470: 2a1403e2     	mov	w2, w20
    2474: 97fff6fb     	bl	0x60 <aw22xxx_i2c_write>
    2478: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
    247c: 91000000     	add	x0, x0, #0x0
		000000000000247c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
    2480: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x161b
    2484: 91000021     	add	x1, x1, #0x0
		0000000000002484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x161b
    2488: 94000000     	bl	0x2488 <aw22xxx_cfg_loaded+0x1d4>
		0000000000002488:  R_AARCH64_CALL26	_printk
    248c: 17ffffe5     	b	0x2420 <aw22xxx_cfg_loaded+0x16c>
