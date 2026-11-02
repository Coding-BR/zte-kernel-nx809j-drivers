
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000022ec <aw22xxx_alloc_name_array>:
    22ec: d503233f     	paciasp
    22f0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    22f4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    22f8: a90257f6     	stp	x22, x21, [sp, #0x20]
    22fc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2300: 910003fd     	mov	x29, sp
    2304: d503201f     	nop
    2308: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002308:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    230c: 52819801     	mov	w1, #0xcc0              // =3264
    2310: 52800b02     	mov	w2, #0x58               // =88
    2314: f9400100     	ldr	x0, [x8]
		0000000000002314:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    2318: 94000000     	bl	0x2318 <aw22xxx_alloc_name_array+0x2c>
		0000000000002318:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    231c: 90000013     	adrp	x19, 0x2000 <aw22xxx_irq+0x20>
		000000000000231c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61c0
    2320: f9000260     	str	x0, [x19]
		0000000000002320:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    2324: b4000cc0     	cbz	x0, 0x24bc <aw22xxx_alloc_name_array+0x1d0>
    2328: aa1f03f4     	mov	x20, xzr
    232c: 90000015     	adrp	x21, 0x2000 <aw22xxx_irq+0x20>
		000000000000232c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
    2330: 90000017     	adrp	x23, 0x2000 <aw22xxx_irq+0x20>
		0000000000002330:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_alloc_name_array._alloc_tag.171
    2334: 910002f7     	add	x23, x23, #0x0
		0000000000002334:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_alloc_name_array._alloc_tag.171
    2338: d5384116     	mrs	x22, SP_EL0
    233c: d503201f     	nop
    2340: f94002a0     	ldr	x0, [x21]
		0000000000002340:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    2344: 52819801     	mov	w1, #0xcc0              // =3264
    2348: 52800802     	mov	w2, #0x40               // =64
    234c: 94000000     	bl	0x234c <aw22xxx_alloc_name_array+0x60>
		000000000000234c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    2350: aa0003e8     	mov	x8, x0
    2354: f9400260     	ldr	x0, [x19]
		0000000000002354:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    2358: f8347808     	str	x8, [x0, x20, lsl #3]
    235c: b4000be8     	cbz	x8, 0x24d8 <aw22xxx_alloc_name_array+0x1ec>
    2360: 91000694     	add	x20, x20, #0x1
    2364: f1002e9f     	cmp	x20, #0xb
    2368: 54fffea1     	b.ne	0x233c <aw22xxx_alloc_name_array+0x50>
    236c: 1400000a     	b	0x2394 <aw22xxx_alloc_name_array+0xa8>
    2370: f94002a0     	ldr	x0, [x21]
		0000000000002370:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    2374: f9402ad8     	ldr	x24, [x22, #0x50]
    2378: 52819801     	mov	w1, #0xcc0              // =3264
    237c: 52800802     	mov	w2, #0x40               // =64
    2380: f9002ad7     	str	x23, [x22, #0x50]
    2384: 94000000     	bl	0x2384 <aw22xxx_alloc_name_array+0x98>
		0000000000002384:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    2388: aa0003e8     	mov	x8, x0
    238c: f9002ad8     	str	x24, [x22, #0x50]
    2390: 17fffff1     	b	0x2354 <aw22xxx_alloc_name_array+0x68>
    2394: 90000009     	adrp	x9, 0x2000 <aw22xxx_irq+0x20>
		0000000000002394:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x18ac
    2398: 91000129     	add	x9, x9, #0x0
		0000000000002398:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x18ac
    239c: f9400008     	ldr	x8, [x0]
    23a0: f940012a     	ldr	x10, [x9]
    23a4: f8406129     	ldur	x9, [x9, #0x6]
    23a8: 9000000b     	adrp	x11, 0x2000 <aw22xxx_irq+0x20>
		00000000000023a8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1537
    23ac: 9100016b     	add	x11, x11, #0x0
		00000000000023ac:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1537
    23b0: 9000000d     	adrp	x13, 0x2000 <aw22xxx_irq+0x20>
		00000000000023b0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xaca
    23b4: 910001ad     	add	x13, x13, #0x0
		00000000000023b4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xaca
    23b8: f900010a     	str	x10, [x8]
    23bc: 90000010     	adrp	x16, 0x2000 <aw22xxx_irq+0x20>
		00000000000023bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x415
    23c0: 91000210     	add	x16, x16, #0x0
		00000000000023c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x415
    23c4: f940026a     	ldr	x10, [x19]
		00000000000023c4:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    23c8: f8006109     	stur	x9, [x8, #0x6]
    23cc: f9400168     	ldr	x8, [x11]
    23d0: f840716b     	ldur	x11, [x11, #0x7]
    23d4: a9400211     	ldp	x17, x0, [x16]
    23d8: f9400549     	ldr	x9, [x10, #0x8]
    23dc: f840f210     	ldur	x16, [x16, #0xf]
    23e0: f9000128     	str	x8, [x9]
    23e4: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		00000000000023e4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x405
    23e8: 91000108     	add	x8, x8, #0x0
		00000000000023e8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x405
    23ec: f800712b     	stur	x11, [x9, #0x7]
    23f0: 9000000b     	adrp	x11, 0x2000 <aw22xxx_irq+0x20>
		00000000000023f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd40
    23f4: 9100016b     	add	x11, x11, #0x0
		00000000000023f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd40
    23f8: f9400949     	ldr	x9, [x10, #0x10]
    23fc: a940210a     	ldp	x10, x8, [x8]
    2400: a9402d6c     	ldp	x12, x11, [x11]
    2404: a900212a     	stp	x10, x8, [x9]
    2408: 52800dc8     	mov	w8, #0x6e               // =110
    240c: f940026a     	ldr	x10, [x19]
		000000000000240c:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    2410: f9400d49     	ldr	x9, [x10, #0x18]
    2414: 79002128     	strh	w8, [x9, #0x10]
    2418: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002418:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x274
    241c: 91000108     	add	x8, x8, #0x0
		000000000000241c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x274
    2420: a9002d2c     	stp	x12, x11, [x9]
    2424: f9400109     	ldr	x9, [x8]
    2428: f8407108     	ldur	x8, [x8, #0x7]
    242c: f940114a     	ldr	x10, [x10, #0x20]
    2430: 9000000b     	adrp	x11, 0x2000 <aw22xxx_irq+0x20>
		0000000000002430:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x16ec
    2434: 9100016b     	add	x11, x11, #0x0
		0000000000002434:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x16ec
    2438: f840e16c     	ldur	x12, [x11, #0xe]
    243c: f9000149     	str	x9, [x10]
    2440: f9400269     	ldr	x9, [x19]
		0000000000002440:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    2444: f8007148     	stur	x8, [x10, #0x7]
    2448: a940296b     	ldp	x11, x10, [x11]
    244c: f9401528     	ldr	x8, [x9, #0x28]
    2450: a900290b     	stp	x11, x10, [x8]
    2454: f800e10c     	stur	x12, [x8, #0xe]
    2458: f9401928     	ldr	x8, [x9, #0x30]
    245c: a94039a9     	ldp	x9, x14, [x13]
    2460: f94009ad     	ldr	x13, [x13, #0x10]
    2464: a9003909     	stp	x9, x14, [x8]
    2468: f940026f     	ldr	x15, [x19]
		0000000000002468:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    246c: f900090d     	str	x13, [x8, #0x10]
    2470: f9401de8     	ldr	x8, [x15, #0x38]
    2474: a9000111     	stp	x17, x0, [x8]
    2478: f800f110     	stur	x16, [x8, #0xf]
    247c: f94021e8     	ldr	x8, [x15, #0x40]
    2480: a900290b     	stp	x11, x10, [x8]
    2484: f940026a     	ldr	x10, [x19]
		0000000000002484:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    2488: f800e10c     	stur	x12, [x8, #0xe]
    248c: f9402548     	ldr	x8, [x10, #0x48]
    2490: a9003909     	stp	x9, x14, [x8]
    2494: f900090d     	str	x13, [x8, #0x10]
    2498: f9402948     	ldr	x8, [x10, #0x50]
    249c: a9000111     	stp	x17, x0, [x8]
    24a0: f800f110     	stur	x16, [x8, #0xf]
    24a4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    24a8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    24ac: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    24b0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    24b4: d50323bf     	autiasp
    24b8: d65f03c0     	ret
    24bc: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		00000000000024bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x2e3
    24c0: 91000000     	add	x0, x0, #0x0
		00000000000024c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x2e3
    24c4: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000024c4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1646
    24c8: 91000021     	add	x1, x1, #0x0
		00000000000024c8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1646
    24cc: 5280d0e2     	mov	w2, #0x687              // =1671
    24d0: 94000000     	bl	0x24d0 <aw22xxx_alloc_name_array+0x1e4>
		00000000000024d0:  R_AARCH64_CALL26	_printk
    24d4: 17fffff4     	b	0x24a4 <aw22xxx_alloc_name_array+0x1b8>
    24d8: b4000154     	cbz	x20, 0x2500 <aw22xxx_alloc_name_array+0x214>
    24dc: 91000694     	add	x20, x20, #0x1
    24e0: f9400268     	ldr	x8, [x19]
		00000000000024e0:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    24e4: 51000a89     	sub	w9, w20, #0x2
    24e8: f8695900     	ldr	x0, [x8, w9, uxtw #3]
    24ec: 94000000     	bl	0x24ec <aw22xxx_alloc_name_array+0x200>
		00000000000024ec:  R_AARCH64_CALL26	kfree
    24f0: d1000694     	sub	x20, x20, #0x1
    24f4: f100069f     	cmp	x20, #0x1
    24f8: 54ffff4c     	b.gt	0x24e0 <aw22xxx_alloc_name_array+0x1f4>
    24fc: f9400260     	ldr	x0, [x19]
		00000000000024fc:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    2500: 94000000     	bl	0x2500 <aw22xxx_alloc_name_array+0x214>
		0000000000002500:  R_AARCH64_CALL26	kfree
    2504: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002504:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x2e3
    2508: 91000000     	add	x0, x0, #0x0
		0000000000002508:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x2e3
    250c: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		000000000000250c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1646
    2510: 91000021     	add	x1, x1, #0x0
		0000000000002510:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1646
    2514: 5280d242     	mov	w2, #0x692              // =1682
    2518: 94000000     	bl	0x2518 <aw22xxx_alloc_name_array+0x22c>
		0000000000002518:  R_AARCH64_CALL26	_printk
    251c: 17ffffe2     	b	0x24a4 <aw22xxx_alloc_name_array+0x1b8>
    2520: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002520:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    2524: d5384113     	mrs	x19, SP_EL0
    2528: f9402a74     	ldr	x20, [x19, #0x50]
    252c: f9400100     	ldr	x0, [x8]
		000000000000252c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    2530: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		0000000000002530:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_alloc_name_array._alloc_tag
    2534: 91000108     	add	x8, x8, #0x0
		0000000000002534:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_alloc_name_array._alloc_tag
    2538: 52819801     	mov	w1, #0xcc0              // =3264
    253c: 52800b02     	mov	w2, #0x58               // =88
    2540: f9002a68     	str	x8, [x19, #0x50]
    2544: 94000000     	bl	0x2544 <aw22xxx_alloc_name_array+0x258>
		0000000000002544:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    2548: f9002a74     	str	x20, [x19, #0x50]
    254c: 17ffff74     	b	0x231c <aw22xxx_alloc_name_array+0x30>
