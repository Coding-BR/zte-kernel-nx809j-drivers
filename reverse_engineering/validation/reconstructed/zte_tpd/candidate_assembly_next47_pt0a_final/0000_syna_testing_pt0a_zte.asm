
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d18c <syna_testing_pt0a_zte>:
   1d18c: d503233f     	paciasp
   1d190: d10343ff     	sub	sp, sp, #0xd0
   1d194: a9077bfd     	stp	x29, x30, [sp, #0x70]
   1d198: a9086ffc     	stp	x28, x27, [sp, #0x80]
   1d19c: a90967fa     	stp	x26, x25, [sp, #0x90]
   1d1a0: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   1d1a4: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   1d1a8: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   1d1ac: 9101c3fd     	add	x29, sp, #0x70
   1d1b0: d5384108     	mrs	x8, SP_EL0
   1d1b4: aa0003f4     	mov	x20, x0
   1d1b8: f9438908     	ldr	x8, [x8, #0x710]
   1d1bc: f81f83a8     	stur	x8, [x29, #-0x8]
   1d1c0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1d1c4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1d1c8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1d1cc: f9001bff     	str	xzr, [sp, #0x30]
   1d1d0: b9000fff     	str	wzr, [sp, #0xc]
   1d1d4: b9001fff     	str	wzr, [sp, #0x1c]
   1d1d8: d503201f     	nop
   1d1dc: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d1dc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d1e0: 5281b801     	mov	w1, #0xdc0              // =3520
   1d1e4: 52820002     	mov	w2, #0x1000             // =4096
   1d1e8: f9400100     	ldr	x0, [x8]
		000000000001d1e8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d1ec: 94000000     	bl	0x1d1ec <syna_testing_pt0a_zte+0x60>
		000000000001d1ec:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d1f0: aa0003f3     	mov	x19, x0
   1d1f4: b4001693     	cbz	x19, 0x1d4c4 <syna_testing_pt0a_zte+0x338>
   1d1f8: 39560a88     	ldrb	w8, [x20, #0x582]
   1d1fc: 360013c8     	tbz	w8, #0x0, 0x1d474 <syna_testing_pt0a_zte+0x2e8>
   1d200: 94000000     	bl	0x1d200 <syna_testing_pt0a_zte+0x74>
		000000000001d200:  R_AARCH64_CALL26	syna_tcm_get_testing_0A00
   1d204: b4000e20     	cbz	x0, 0x1d3c8 <syna_testing_pt0a_zte+0x23c>
   1d208: f9400288     	ldr	x8, [x20]
   1d20c: 910083f7     	add	x23, sp, #0x20
   1d210: aa0003f5     	mov	x21, x0
   1d214: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49fa
   1d218: 91000021     	add	x1, x1, #0x0
		000000000001d218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49fa
   1d21c: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d21c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x143c
   1d220: 91000042     	add	x2, x2, #0x0
		000000000001d220:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x143c
   1d224: b9402108     	ldr	w8, [x8, #0x20]
   1d228: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1d22c: b9002408     	str	w8, [x0, #0x24]
   1d230: f9400288     	ldr	x8, [x20]
   1d234: b9401d08     	ldr	w8, [x8, #0x1c]
   1d238: b9002008     	str	w8, [x0, #0x20]
   1d23c: 910003e8     	mov	x8, sp
   1d240: 910042e0     	add	x0, x23, #0x10
   1d244: 390183ff     	strb	wzr, [sp, #0x60]
   1d248: 91004116     	add	x22, x8, #0x10
   1d24c: 94000000     	bl	0x1d24c <syna_testing_pt0a_zte+0xc0>
		000000000001d24c:  R_AARCH64_CALL26	__mutex_init
   1d250: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d250:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_hi_limits
   1d254: 91000108     	add	x8, x8, #0x0
		000000000001d254:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_hi_limits
   1d258: 90000009     	adrp	x9, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d258:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_lo_limits
   1d25c: 91000129     	add	x9, x9, #0x0
		000000000001d25c:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_lo_limits
   1d260: f9000be8     	str	x8, [sp, #0x10]
   1d264: 52819008     	mov	w8, #0xc80              // =3200
   1d268: b9001be8     	str	w8, [sp, #0x18]
   1d26c: aa1503e1     	mov	x1, x21
   1d270: 2a1f03e2     	mov	w2, wzr
   1d274: f90003e9     	str	x9, [sp]
   1d278: b9000be8     	str	w8, [sp, #0x8]
   1d27c: 910003e8     	mov	x8, sp
   1d280: f9006eb7     	str	x23, [x21, #0xd8]
   1d284: a903a2b6     	stp	x22, x8, [x21, #0x38]
   1d288: f9400ea8     	ldr	x8, [x21, #0x18]
   1d28c: f9400280     	ldr	x0, [x20]
   1d290: b85fc110     	ldur	w16, [x8, #-0x4]
   1d294: 72895251     	movk	w17, #0x4a92
   1d298: 72b03811     	movk	w17, #0x81c0, lsl #16
   1d29c: 6b11021f     	cmp	w16, w17
   1d2a0: 54000040     	b.eq	0x1d2a8 <syna_testing_pt0a_zte+0x11c>
   1d2a4: d4304500     	brk	#0x8228
   1d2a8: d63f0100     	blr	x8
   1d2ac: 37f80ba0     	tbnz	w0, #0x1f, 0x1d420 <syna_testing_pt0a_zte+0x294>
   1d2b0: 394042a8     	ldrb	w8, [x21, #0x10]
   1d2b4: 90000009     	adrp	x9, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d2b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3331
   1d2b8: 91000129     	add	x9, x9, #0x0
		000000000001d2b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3331
   1d2bc: 7100011f     	cmp	w8, #0x0
   1d2c0: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d2c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b45
   1d2c4: 91000108     	add	x8, x8, #0x0
		000000000001d2c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b45
   1d2c8: 9a891105     	csel	x5, x8, x9, ne
   1d2cc: f94006a3     	ldr	x3, [x21, #0x8]
   1d2d0: b94002a4     	ldr	w4, [x21]
   1d2d4: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc90
   1d2d8: 91000042     	add	x2, x2, #0x0
		000000000001d2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc90
   1d2dc: aa1303e0     	mov	x0, x19
   1d2e0: 52820001     	mov	w1, #0x1000             // =4096
   1d2e4: 94000000     	bl	0x1d2e4 <syna_testing_pt0a_zte+0x158>
		000000000001d2e4:  R_AARCH64_CALL26	scnprintf
   1d2e8: b9402fe8     	ldr	w8, [sp, #0x2c]
   1d2ec: 2a0003f6     	mov	w22, w0
   1d2f0: 340004e8     	cbz	w8, 0x1d38c <syna_testing_pt0a_zte+0x200>
   1d2f4: b94022a8     	ldr	w8, [x21, #0x20]
   1d2f8: 340004a8     	cbz	w8, 0x1d38c <syna_testing_pt0a_zte+0x200>
   1d2fc: f94013fa     	ldr	x26, [sp, #0x20]
   1d300: 2a1f03f9     	mov	w25, wzr
   1d304: 90000017     	adrp	x23, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a9
   1d308: 910002f7     	add	x23, x23, #0x0
		000000000001d308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a9
   1d30c: 5282001b     	mov	w27, #0x1000            // =4096
   1d310: 90000018     	adrp	x24, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4610
   1d314: 91000318     	add	x24, x24, #0x0
		000000000001d314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4610
   1d318: 1400000b     	b	0x1d344 <syna_testing_pt0a_zte+0x1b8>
   1d31c: 2a1603e8     	mov	w8, w22
   1d320: aa1703e2     	mov	x2, x23
   1d324: cb080361     	sub	x1, x27, x8
   1d328: 8b080260     	add	x0, x19, x8
   1d32c: 94000000     	bl	0x1d32c <syna_testing_pt0a_zte+0x1a0>
		000000000001d32c:  R_AARCH64_CALL26	scnprintf
   1d330: b94022a8     	ldr	w8, [x21, #0x20]
   1d334: 11000739     	add	w25, w25, #0x1
   1d338: 0b160016     	add	w22, w0, w22
   1d33c: 6b08033f     	cmp	w25, w8
   1d340: 54000262     	b.hs	0x1d38c <syna_testing_pt0a_zte+0x200>
   1d344: b94026a8     	ldr	w8, [x21, #0x24]
   1d348: 34fffea8     	cbz	w8, 0x1d31c <syna_testing_pt0a_zte+0x190>
   1d34c: 2a1f03fc     	mov	w28, wzr
   1d350: f9400288     	ldr	x8, [x20]
   1d354: 2a1603e9     	mov	w9, w22
   1d358: aa1803e2     	mov	x2, x24
   1d35c: cb090361     	sub	x1, x27, x9
   1d360: 8b090260     	add	x0, x19, x9
   1d364: b9402108     	ldr	w8, [x8, #0x20]
   1d368: 1b087328     	madd	w8, w25, w8, w28
   1d36c: 78e85b43     	ldrsh	w3, [x26, w8, uxtw #1]
   1d370: 94000000     	bl	0x1d370 <syna_testing_pt0a_zte+0x1e4>
		000000000001d370:  R_AARCH64_CALL26	scnprintf
   1d374: b94026a8     	ldr	w8, [x21, #0x24]
   1d378: 1100079c     	add	w28, w28, #0x1
   1d37c: 0b160016     	add	w22, w0, w22
   1d380: 6b08039f     	cmp	w28, w8
   1d384: 54fffe63     	b.lo	0x1d350 <syna_testing_pt0a_zte+0x1c4>
   1d388: 17ffffe5     	b	0x1d31c <syna_testing_pt0a_zte+0x190>
   1d38c: aa1303e0     	mov	x0, x19
   1d390: 94000000     	bl	0x1d390 <syna_testing_pt0a_zte+0x204>
		000000000001d390:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   1d394: 394183e2     	ldrb	w2, [sp, #0x60]
   1d398: 35000562     	cbnz	w2, 0x1d444 <syna_testing_pt0a_zte+0x2b8>
   1d39c: f94013f4     	ldr	x20, [sp, #0x20]
   1d3a0: 94000000     	bl	0x1d3a0 <syna_testing_pt0a_zte+0x214>
		000000000001d3a0:  R_AARCH64_CALL26	syna_request_managed_device
   1d3a4: b40005c0     	cbz	x0, 0x1d45c <syna_testing_pt0a_zte+0x2d0>
   1d3a8: b4000074     	cbz	x20, 0x1d3b4 <syna_testing_pt0a_zte+0x228>
   1d3ac: aa1403e1     	mov	x1, x20
   1d3b0: 94000000     	bl	0x1d3b0 <syna_testing_pt0a_zte+0x224>
		000000000001d3b0:  R_AARCH64_CALL26	devm_kfree
   1d3b4: aa1303e0     	mov	x0, x19
   1d3b8: f90017ff     	str	xzr, [sp, #0x28]
   1d3bc: 390183ff     	strb	wzr, [sp, #0x60]
   1d3c0: 94000000     	bl	0x1d3c0 <syna_testing_pt0a_zte+0x234>
		000000000001d3c0:  R_AARCH64_CALL26	kfree
   1d3c4: 14000008     	b	0x1d3e4 <syna_testing_pt0a_zte+0x258>
   1d3c8: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d3c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48ac
   1d3cc: 91000042     	add	x2, x2, #0x0
		000000000001d3cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48ac
   1d3d0: aa1303e0     	mov	x0, x19
   1d3d4: 52820001     	mov	w1, #0x1000             // =4096
   1d3d8: 52814003     	mov	w3, #0xa00              // =2560
   1d3dc: 94000000     	bl	0x1d3dc <syna_testing_pt0a_zte+0x250>
		000000000001d3dc:  R_AARCH64_CALL26	scnprintf
   1d3e0: 2a0003f6     	mov	w22, w0
   1d3e4: d5384108     	mrs	x8, SP_EL0
   1d3e8: f9438908     	ldr	x8, [x8, #0x710]
   1d3ec: f85f83a9     	ldur	x9, [x29, #-0x8]
   1d3f0: eb09011f     	cmp	x8, x9
   1d3f4: 540004c1     	b.ne	0x1d48c <syna_testing_pt0a_zte+0x300>
   1d3f8: 2a1603e0     	mov	w0, w22
   1d3fc: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   1d400: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   1d404: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   1d408: a94967fa     	ldp	x26, x25, [sp, #0x90]
   1d40c: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   1d410: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   1d414: 910343ff     	add	sp, sp, #0xd0
   1d418: d50323bf     	autiasp
   1d41c: d65f03c0     	ret
   1d420: f94006a2     	ldr	x2, [x21, #0x8]
   1d424: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53fa
   1d428: 91000000     	add	x0, x0, #0x0
		000000000001d428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53fa
   1d42c: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d42c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1613
   1d430: 91000021     	add	x1, x1, #0x0
		000000000001d430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1613
   1d434: 94000000     	bl	0x1d434 <syna_testing_pt0a_zte+0x2a8>
		000000000001d434:  R_AARCH64_CALL26	_printk
   1d438: 90000005     	adrp	x5, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3331
   1d43c: 910000a5     	add	x5, x5, #0x0
		000000000001d43c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3331
   1d440: 17ffffa3     	b	0x1d2cc <syna_testing_pt0a_zte+0x140>
   1d444: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f1
   1d448: 91000000     	add	x0, x0, #0x0
		000000000001d448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f1
   1d44c: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d44c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ddc
   1d450: 91000021     	add	x1, x1, #0x0
		000000000001d450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ddc
   1d454: 94000000     	bl	0x1d454 <syna_testing_pt0a_zte+0x2c8>
		000000000001d454:  R_AARCH64_CALL26	_printk
   1d458: 17ffffd1     	b	0x1d39c <syna_testing_pt0a_zte+0x210>
   1d45c: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d45c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bce
   1d460: 91000000     	add	x0, x0, #0x0
		000000000001d460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bce
   1d464: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4442
   1d468: 91000021     	add	x1, x1, #0x0
		000000000001d468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4442
   1d46c: 94000000     	bl	0x1d46c <syna_testing_pt0a_zte+0x2e0>
		000000000001d46c:  R_AARCH64_CALL26	_printk
   1d470: 17ffffd1     	b	0x1d3b4 <syna_testing_pt0a_zte+0x228>
   1d474: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5392
   1d478: 91000042     	add	x2, x2, #0x0
		000000000001d478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5392
   1d47c: aa1303e0     	mov	x0, x19
   1d480: 52820001     	mov	w1, #0x1000             // =4096
   1d484: 94000000     	bl	0x1d484 <syna_testing_pt0a_zte+0x2f8>
		000000000001d484:  R_AARCH64_CALL26	scnprintf
   1d488: 17ffffd6     	b	0x1d3e0 <syna_testing_pt0a_zte+0x254>
   1d48c: 94000000     	bl	0x1d48c <syna_testing_pt0a_zte+0x300>
		000000000001d48c:  R_AARCH64_CALL26	__stack_chk_fail
   1d490: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d490:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x1b8
   1d494: 91000108     	add	x8, x8, #0x0
		000000000001d494:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x1b8
   1d498: d5384115     	mrs	x21, SP_EL0
   1d49c: f9402ab6     	ldr	x22, [x21, #0x50]
   1d4a0: f9002aa8     	str	x8, [x21, #0x50]
   1d4a4: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d4a4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d4a8: f9400100     	ldr	x0, [x8]
		000000000001d4a8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d4ac: 5281b801     	mov	w1, #0xdc0              // =3520
   1d4b0: 52820002     	mov	w2, #0x1000             // =4096
   1d4b4: 94000000     	bl	0x1d4b4 <syna_testing_pt0a_zte+0x328>
		000000000001d4b4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d4b8: aa0003f3     	mov	x19, x0
   1d4bc: f9002ab6     	str	x22, [x21, #0x50]
   1d4c0: b5ffe9d3     	cbnz	x19, 0x1d1f8 <syna_testing_pt0a_zte+0x6c>
   1d4c4: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d4c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf4
   1d4c8: 91000000     	add	x0, x0, #0x0
		000000000001d4c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf4
   1d4cc: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt0a_show+0x78>
		000000000001d4cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1613
   1d4d0: 91000021     	add	x1, x1, #0x0
		000000000001d4d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1613
   1d4d4: 94000000     	bl	0x1d4d4 <syna_testing_pt0a_zte+0x348>
		000000000001d4d4:  R_AARCH64_CALL26	_printk
   1d4d8: 12800176     	mov	w22, #-0xc              // =-12
   1d4dc: 17ffffc2     	b	0x1d3e4 <syna_testing_pt0a_zte+0x258>
