
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023670 <syna_sysfs_get_delta_show>:
   23670: d503233f     	paciasp
   23674: d10343ff     	sub	sp, sp, #0xd0
   23678: a9077bfd     	stp	x29, x30, [sp, #0x70]
   2367c: a9086ffc     	stp	x28, x27, [sp, #0x80]
   23680: a90967fa     	stp	x26, x25, [sp, #0x90]
   23684: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   23688: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   2368c: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   23690: 9101c3fd     	add	x29, sp, #0x70
   23694: d5384108     	mrs	x8, SP_EL0
   23698: aa0203f3     	mov	x19, x2
   2369c: 52800241     	mov	w1, #0x12               // =18
   236a0: f9438908     	ldr	x8, [x8, #0x710]
   236a4: 52800022     	mov	w2, #0x1                // =1
   236a8: 52800143     	mov	w3, #0xa                // =10
   236ac: f81f83a8     	stur	x8, [x29, #-0x8]
   236b0: f9400c08     	ldr	x8, [x0, #0x18]
   236b4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   236b8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   236bc: f9404d16     	ldr	x22, [x8, #0x98]
   236c0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   236c4: f9001bff     	str	xzr, [sp, #0x30]
   236c8: f94002d4     	ldr	x20, [x22]
   236cc: aa1403e0     	mov	x0, x20
   236d0: 94000000     	bl	0x236d0 <syna_sysfs_get_delta_show+0x60>
		00000000000236d0:  R_AARCH64_CALL26	syna_tcm_enable_report
   236d4: 37f81a00     	tbnz	w0, #0x1f, 0x23a14 <syna_sysfs_get_delta_show+0x3a4>
   236d8: a9004ff6     	stp	x22, x19, [sp]
   236dc: b4001c74     	cbz	x20, 0x23a68 <syna_sysfs_get_delta_show+0x3f8>
   236e0: f9402695     	ldr	x21, [x20, #0x48]
   236e4: b4001ef5     	cbz	x21, 0x23ac0 <syna_sysfs_get_delta_show+0x450>
   236e8: f9401ea8     	ldr	x8, [x21, #0x38]
   236ec: b40001e8     	cbz	x8, 0x23728 <syna_sysfs_get_delta_show+0xb8>
   236f0: 91014280     	add	x0, x20, #0x50
   236f4: 94000000     	bl	0x236f4 <syna_sysfs_get_delta_show+0x84>
		00000000000236f4:  R_AARCH64_CALL26	mutex_lock
   236f8: f9401ea8     	ldr	x8, [x21, #0x38]
   236fc: aa1503e0     	mov	x0, x21
   23700: 2a1f03e1     	mov	w1, wzr
   23704: b85fc110     	ldur	w16, [x8, #-0x4]
   23708: 728c3631     	movk	w17, #0x61b1
   2370c: 72a685d1     	movk	w17, #0x342e, lsl #16
   23710: 6b11021f     	cmp	w16, w17
   23714: 54000040     	b.eq	0x2371c <syna_sysfs_get_delta_show+0xac>
   23718: d4304500     	brk	#0x8228
   2371c: d63f0100     	blr	x8
   23720: 91014280     	add	x0, x20, #0x50
   23724: 94000000     	bl	0x23724 <syna_sysfs_get_delta_show+0xb4>
		0000000000023724:  R_AARCH64_CALL26	mutex_unlock
   23728: 910083e8     	add	x8, sp, #0x20
   2372c: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002372c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   23730: 91000021     	add	x1, x1, #0x0
		0000000000023730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   23734: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023734:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6418
   23738: 91000042     	add	x2, x2, #0x0
		0000000000023738:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6418
   2373c: 91004100     	add	x0, x8, #0x10
   23740: 390183ff     	strb	wzr, [sp, #0x60]
   23744: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   23748: 94000000     	bl	0x23748 <syna_sysfs_get_delta_show+0xd8>
		0000000000023748:  R_AARCH64_CALL26	__mutex_init
   2374c: 2a1f03f3     	mov	w19, wzr
   23750: 2a1f03fa     	mov	w26, wzr
   23754: 90000015     	adrp	x21, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c984
   23758: 910002b5     	add	x21, x21, #0x0
		0000000000023758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c984
   2375c: 9000001c     	adrp	x28, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002375c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1777d
   23760: 9100039c     	add	x28, x28, #0x0
		0000000000023760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1777d
   23764: 910083e2     	add	x2, sp, #0x20
   23768: aa1403e0     	mov	x0, x20
   2376c: 52800241     	mov	w1, #0x12               // =18
   23770: 52800c83     	mov	w3, #0x64               // =100
   23774: 52807d04     	mov	w4, #0x3e8              // =1000
   23778: 94000000     	bl	0x23778 <syna_sysfs_get_delta_show+0x108>
		0000000000023778:  R_AARCH64_CALL26	syna_tcm_wait_for_report
   2377c: 37f80060     	tbnz	w0, #0x1f, 0x23788 <syna_sysfs_get_delta_show+0x118>
   23780: b9402fe8     	ldr	w8, [sp, #0x2c]
   23784: 350000e8     	cbnz	w8, 0x237a0 <syna_sysfs_get_delta_show+0x130>
   23788: 1100075a     	add	w26, w26, #0x1
   2378c: 7100067f     	cmp	w19, #0x1
   23790: 54000ee8     	b.hi	0x2396c <syna_sysfs_get_delta_show+0x2fc>
   23794: 7100175f     	cmp	w26, #0x5
   23798: 54fffe63     	b.lo	0x23764 <syna_sysfs_get_delta_show+0xf4>
   2379c: 14000074     	b	0x2396c <syna_sysfs_get_delta_show+0x2fc>
   237a0: 11000673     	add	w19, w19, #0x1
   237a4: aa1503e0     	mov	x0, x21
   237a8: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000237a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c154
   237ac: 91000021     	add	x1, x1, #0x0
		00000000000237ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c154
   237b0: 2a1303e2     	mov	w2, w19
   237b4: 94000000     	bl	0x237b4 <syna_sysfs_get_delta_show+0x144>
		00000000000237b4:  R_AARCH64_CALL26	_printk
   237b8: b9401e88     	ldr	w8, [x20, #0x1c]
   237bc: 34fffe88     	cbz	w8, 0x2378c <syna_sysfs_get_delta_show+0x11c>
   237c0: f94013f7     	ldr	x23, [sp, #0x20]
   237c4: b90013f3     	str	w19, [sp, #0x10]
   237c8: 2a1f03f3     	mov	w19, wzr
   237cc: b90017f3     	str	w19, [sp, #0x14]
   237d0: b9402293     	ldr	w19, [x20, #0x20]
   237d4: 94000000     	bl	0x237d4 <syna_sysfs_get_delta_show+0x164>
		00000000000237d4:  R_AARCH64_CALL26	syna_request_managed_device
   237d8: b5000080     	cbnz	x0, 0x237e8 <syna_sysfs_get_delta_show+0x178>
   237dc: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000237dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   237e0: 91000000     	add	x0, x0, #0x0
		00000000000237e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   237e4: 14000007     	b	0x23800 <syna_sysfs_get_delta_show+0x190>
   237e8: 0b130668     	add	w8, w19, w19, lsl #1
   237ec: 531f7916     	lsl	w22, w8, #1
   237f0: 710002df     	cmp	w22, #0x0
   237f4: 5400016c     	b.gt	0x23820 <syna_sysfs_get_delta_show+0x1b0>
   237f8: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000237f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   237fc: 91000000     	add	x0, x0, #0x0
		00000000000237fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   23800: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   23804: 91000021     	add	x1, x1, #0x0
		0000000000023804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   23808: 94000000     	bl	0x23808 <syna_sysfs_get_delta_show+0x198>
		0000000000023808:  R_AARCH64_CALL26	_printk
   2380c: aa1f03f6     	mov	x22, xzr
   23810: aa1f03fb     	mov	x27, xzr
   23814: b9402288     	ldr	w8, [x20, #0x20]
   23818: 34000108     	cbz	w8, 0x23838 <syna_sysfs_get_delta_show+0x1c8>
   2381c: 14000018     	b	0x2387c <syna_sysfs_get_delta_show+0x20c>
   23820: aa1603e1     	mov	x1, x22
   23824: 5281b802     	mov	w2, #0xdc0              // =3520
   23828: 94000000     	bl	0x23828 <syna_sysfs_get_delta_show+0x1b8>
		0000000000023828:  R_AARCH64_CALL26	devm_kmalloc
   2382c: aa0003fb     	mov	x27, x0
   23830: b9402288     	ldr	w8, [x20, #0x20]
   23834: 35000248     	cbnz	w8, 0x2387c <syna_sysfs_get_delta_show+0x20c>
   23838: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198ec
   2383c: 91000000     	add	x0, x0, #0x0
		000000000002383c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198ec
   23840: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c154
   23844: 91000021     	add	x1, x1, #0x0
		0000000000023844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c154
   23848: aa1b03e2     	mov	x2, x27
   2384c: 94000000     	bl	0x2384c <syna_sysfs_get_delta_show+0x1dc>
		000000000002384c:  R_AARCH64_CALL26	_printk
   23850: 94000000     	bl	0x23850 <syna_sysfs_get_delta_show+0x1e0>
		0000000000023850:  R_AARCH64_CALL26	syna_request_managed_device
   23854: b4000760     	cbz	x0, 0x23940 <syna_sysfs_get_delta_show+0x2d0>
   23858: b94017f3     	ldr	w19, [sp, #0x14]
   2385c: b400007b     	cbz	x27, 0x23868 <syna_sysfs_get_delta_show+0x1f8>
   23860: aa1b03e1     	mov	x1, x27
   23864: 94000000     	bl	0x23864 <syna_sysfs_get_delta_show+0x1f4>
		0000000000023864:  R_AARCH64_CALL26	devm_kfree
   23868: b9401e88     	ldr	w8, [x20, #0x1c]
   2386c: 11000673     	add	w19, w19, #0x1
   23870: 6b08027f     	cmp	w19, w8
   23874: 54fffac3     	b.lo	0x237cc <syna_sysfs_get_delta_show+0x15c>
   23878: 14000039     	b	0x2395c <syna_sysfs_get_delta_show+0x2ec>
   2387c: 2a1f03f3     	mov	w19, wzr
   23880: 14000007     	b	0x2389c <syna_sysfs_get_delta_show+0x22c>
   23884: 38356b7f     	strb	wzr, [x27, x21]
   23888: b9402295     	ldr	w21, [x20, #0x20]
   2388c: 11000673     	add	w19, w19, #0x1
   23890: 91000af7     	add	x23, x23, #0x2
   23894: 6b15027f     	cmp	w19, w21
   23898: 54fffd02     	b.hs	0x23838 <syna_sysfs_get_delta_show+0x1c8>
   2389c: 79003bff     	strh	wzr, [sp, #0x1c]
   238a0: 910063e0     	add	x0, sp, #0x18
   238a4: 528000c1     	mov	w1, #0x6                // =6
   238a8: b9001bff     	str	wzr, [sp, #0x18]
   238ac: aa1c03e2     	mov	x2, x28
   238b0: 79c002e3     	ldrsh	w3, [x23]
   238b4: 94000000     	bl	0x238b4 <syna_sysfs_get_delta_show+0x244>
		00000000000238b4:  R_AARCH64_CALL26	snprintf
   238b8: b9402295     	ldr	w21, [x20, #0x20]
   238bc: aa1b03e0     	mov	x0, x27
   238c0: 0b1506a8     	add	w8, w21, w21, lsl #1
   238c4: 531f7919     	lsl	w25, w8, #1
   238c8: aa1903e1     	mov	x1, x25
   238cc: 94000000     	bl	0x238cc <syna_sysfs_get_delta_show+0x25c>
		00000000000238cc:  R_AARCH64_CALL26	strnlen
   238d0: aa0003f8     	mov	x24, x0
   238d4: b100041f     	cmn	x0, #0x1
   238d8: 540010c0     	b.eq	0x23af0 <syna_sysfs_get_delta_show+0x480>
   238dc: 910063e0     	add	x0, sp, #0x18
   238e0: 528000c1     	mov	w1, #0x6                // =6
   238e4: 94000000     	bl	0x238e4 <syna_sysfs_get_delta_show+0x274>
		00000000000238e4:  R_AARCH64_CALL26	strnlen
   238e8: f1001c1f     	cmp	x0, #0x7
   238ec: 540010a2     	b.hs	0x23b00 <syna_sysfs_get_delta_show+0x490>
   238f0: f100181f     	cmp	x0, #0x6
   238f4: 540010e0     	b.eq	0x23b10 <syna_sysfs_get_delta_show+0x4a0>
   238f8: eb19031f     	cmp	x24, x25
   238fc: 54fffc82     	b.hs	0x2388c <syna_sysfs_get_delta_show+0x21c>
   23900: 8b180008     	add	x8, x0, x24
   23904: d1000729     	sub	x9, x25, #0x1
   23908: eb19011f     	cmp	x8, x25
   2390c: 9a893115     	csel	x21, x8, x9, lo
   23910: b10006bf     	cmn	x21, #0x1
   23914: 54001060     	b.eq	0x23b20 <syna_sysfs_get_delta_show+0x4b0>
   23918: aa3803e9     	mvn	x9, x24
   2391c: eb19011f     	cmp	x8, x25
   23920: 910063e1     	add	x1, sp, #0x18
   23924: 8b190129     	add	x9, x9, x25
   23928: 9a893002     	csel	x2, x0, x9, lo
   2392c: 8b180360     	add	x0, x27, x24
   23930: 94000000     	bl	0x23930 <syna_sysfs_get_delta_show+0x2c0>
		0000000000023930:  R_AARCH64_CALL26	memcpy
   23934: eb1502df     	cmp	x22, x21
   23938: 54fffa68     	b.hi	0x23884 <syna_sysfs_get_delta_show+0x214>
   2393c: 1400007d     	b	0x23b30 <syna_sysfs_get_delta_show+0x4c0>
   23940: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23944: 91000000     	add	x0, x0, #0x0
		0000000000023944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23948: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2394c: 91000021     	add	x1, x1, #0x0
		000000000002394c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23950: 94000000     	bl	0x23950 <syna_sysfs_get_delta_show+0x2e0>
		0000000000023950:  R_AARCH64_CALL26	_printk
   23954: b94017f3     	ldr	w19, [sp, #0x14]
   23958: 17ffffc4     	b	0x23868 <syna_sysfs_get_delta_show+0x1f8>
   2395c: b94013f3     	ldr	w19, [sp, #0x10]
   23960: 90000015     	adrp	x21, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c984
   23964: 910002b5     	add	x21, x21, #0x0
		0000000000023964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c984
   23968: 17ffff89     	b	0x2378c <syna_sysfs_get_delta_show+0x11c>
   2396c: f94003e8     	ldr	x8, [sp]
   23970: 52800241     	mov	w1, #0x12               // =18
   23974: 2a1f03e2     	mov	w2, wzr
   23978: 52800143     	mov	w3, #0xa                // =10
   2397c: f9400100     	ldr	x0, [x8]
   23980: 94000000     	bl	0x23980 <syna_sysfs_get_delta_show+0x310>
		0000000000023980:  R_AARCH64_CALL26	syna_tcm_enable_report
   23984: b4000794     	cbz	x20, 0x23a74 <syna_sysfs_get_delta_show+0x404>
   23988: f9402695     	ldr	x21, [x20, #0x48]
   2398c: f94007f3     	ldr	x19, [sp, #0x8]
   23990: b4000a55     	cbz	x21, 0x23ad8 <syna_sysfs_get_delta_show+0x468>
   23994: f9401ea8     	ldr	x8, [x21, #0x38]
   23998: b40001e8     	cbz	x8, 0x239d4 <syna_sysfs_get_delta_show+0x364>
   2399c: 91014280     	add	x0, x20, #0x50
   239a0: 94000000     	bl	0x239a0 <syna_sysfs_get_delta_show+0x330>
		00000000000239a0:  R_AARCH64_CALL26	mutex_lock
   239a4: f9401ea8     	ldr	x8, [x21, #0x38]
   239a8: aa1503e0     	mov	x0, x21
   239ac: 52800021     	mov	w1, #0x1                // =1
   239b0: b85fc110     	ldur	w16, [x8, #-0x4]
   239b4: 728c3631     	movk	w17, #0x61b1
   239b8: 72a685d1     	movk	w17, #0x342e, lsl #16
   239bc: 6b11021f     	cmp	w16, w17
   239c0: 54000040     	b.eq	0x239c8 <syna_sysfs_get_delta_show+0x358>
   239c4: d4304500     	brk	#0x8228
   239c8: d63f0100     	blr	x8
   239cc: 91014280     	add	x0, x20, #0x50
   239d0: 94000000     	bl	0x239d0 <syna_sysfs_get_delta_show+0x360>
		00000000000239d0:  R_AARCH64_CALL26	mutex_unlock
   239d4: 394183e2     	ldrb	w2, [sp, #0x60]
   239d8: 350005c2     	cbnz	w2, 0x23a90 <syna_sysfs_get_delta_show+0x420>
   239dc: f94013f4     	ldr	x20, [sp, #0x20]
   239e0: 94000000     	bl	0x239e0 <syna_sysfs_get_delta_show+0x370>
		00000000000239e0:  R_AARCH64_CALL26	syna_request_managed_device
   239e4: b4000620     	cbz	x0, 0x23aa8 <syna_sysfs_get_delta_show+0x438>
   239e8: b4000074     	cbz	x20, 0x239f4 <syna_sysfs_get_delta_show+0x384>
   239ec: aa1403e1     	mov	x1, x20
   239f0: 94000000     	bl	0x239f0 <syna_sysfs_get_delta_show+0x380>
		00000000000239f0:  R_AARCH64_CALL26	devm_kfree
   239f4: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000239f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c38c
   239f8: 91000042     	add	x2, x2, #0x0
		00000000000239f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c38c
   239fc: aa1303e0     	mov	x0, x19
   23a00: 52820001     	mov	w1, #0x1000             // =4096
   23a04: f90017ff     	str	xzr, [sp, #0x28]
   23a08: 390183ff     	strb	wzr, [sp, #0x60]
   23a0c: 94000000     	bl	0x23a0c <syna_sysfs_get_delta_show+0x39c>
		0000000000023a0c:  R_AARCH64_CALL26	scnprintf
   23a10: 14000007     	b	0x23a2c <syna_sysfs_get_delta_show+0x3bc>
   23a14: 90000002     	adrp	x2, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a93a
   23a18: 91000042     	add	x2, x2, #0x0
		0000000000023a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a93a
   23a1c: aa1303e0     	mov	x0, x19
   23a20: 52820001     	mov	w1, #0x1000             // =4096
   23a24: 52800243     	mov	w3, #0x12               // =18
   23a28: 94000000     	bl	0x23a28 <syna_sysfs_get_delta_show+0x3b8>
		0000000000023a28:  R_AARCH64_CALL26	scnprintf
   23a2c: d5384108     	mrs	x8, SP_EL0
   23a30: f9438908     	ldr	x8, [x8, #0x710]
   23a34: f85f83a9     	ldur	x9, [x29, #-0x8]
   23a38: eb09011f     	cmp	x8, x9
   23a3c: 540007c1     	b.ne	0x23b34 <syna_sysfs_get_delta_show+0x4c4>
   23a40: 93407c00     	sxtw	x0, w0
   23a44: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   23a48: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   23a4c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   23a50: a94967fa     	ldp	x26, x25, [sp, #0x90]
   23a54: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   23a58: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   23a5c: 910343ff     	add	sp, sp, #0xd0
   23a60: d50323bf     	autiasp
   23a64: d65f03c0     	ret
   23a68: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
   23a6c: 91000000     	add	x0, x0, #0x0
		0000000000023a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
   23a70: 14000016     	b	0x23ac8 <syna_sysfs_get_delta_show+0x458>
   23a74: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
   23a78: 91000000     	add	x0, x0, #0x0
		0000000000023a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
   23a7c: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c16e
   23a80: 91000021     	add	x1, x1, #0x0
		0000000000023a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c16e
   23a84: 94000000     	bl	0x23a84 <syna_sysfs_get_delta_show+0x414>
		0000000000023a84:  R_AARCH64_CALL26	_printk
   23a88: f94007f3     	ldr	x19, [sp, #0x8]
   23a8c: 17ffffd2     	b	0x239d4 <syna_sysfs_get_delta_show+0x364>
   23a90: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   23a94: 91000000     	add	x0, x0, #0x0
		0000000000023a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   23a98: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   23a9c: 91000021     	add	x1, x1, #0x0
		0000000000023a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   23aa0: 94000000     	bl	0x23aa0 <syna_sysfs_get_delta_show+0x430>
		0000000000023aa0:  R_AARCH64_CALL26	_printk
   23aa4: 17ffffce     	b	0x239dc <syna_sysfs_get_delta_show+0x36c>
   23aa8: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23aac: 91000000     	add	x0, x0, #0x0
		0000000000023aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23ab0: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   23ab4: 91000021     	add	x1, x1, #0x0
		0000000000023ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23ab8: 94000000     	bl	0x23ab8 <syna_sysfs_get_delta_show+0x448>
		0000000000023ab8:  R_AARCH64_CALL26	_printk
   23abc: 17ffffce     	b	0x239f4 <syna_sysfs_get_delta_show+0x384>
   23ac0: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a22f
   23ac4: 91000000     	add	x0, x0, #0x0
		0000000000023ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a22f
   23ac8: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c16e
   23acc: 91000021     	add	x1, x1, #0x0
		0000000000023acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c16e
   23ad0: 94000000     	bl	0x23ad0 <syna_sysfs_get_delta_show+0x460>
		0000000000023ad0:  R_AARCH64_CALL26	_printk
   23ad4: 17ffff15     	b	0x23728 <syna_sysfs_get_delta_show+0xb8>
   23ad8: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a22f
   23adc: 91000000     	add	x0, x0, #0x0
		0000000000023adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a22f
   23ae0: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c16e
   23ae4: 91000021     	add	x1, x1, #0x0
		0000000000023ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c16e
   23ae8: 94000000     	bl	0x23ae8 <syna_sysfs_get_delta_show+0x478>
		0000000000023ae8:  R_AARCH64_CALL26	_printk
   23aec: 17ffffba     	b	0x239d4 <syna_sysfs_get_delta_show+0x364>
   23af0: 91000702     	add	x2, x24, #0x1
   23af4: 52800040     	mov	w0, #0x2                // =2
   23af8: 92800001     	mov	x1, #-0x1               // =-1
   23afc: 94000000     	bl	0x23afc <syna_sysfs_get_delta_show+0x48c>
		0000000000023afc:  R_AARCH64_CALL26	__fortify_panic
   23b00: 91000402     	add	x2, x0, #0x1
   23b04: 52800040     	mov	w0, #0x2                // =2
   23b08: 528000c1     	mov	w1, #0x6                // =6
   23b0c: 94000000     	bl	0x23b0c <syna_sysfs_get_delta_show+0x49c>
		0000000000023b0c:  R_AARCH64_CALL26	__fortify_panic
   23b10: 52800080     	mov	w0, #0x4                // =4
   23b14: 528000c1     	mov	w1, #0x6                // =6
   23b18: 528000e2     	mov	w2, #0x7                // =7
   23b1c: 94000000     	bl	0x23b1c <syna_sysfs_get_delta_show+0x4ac>
		0000000000023b1c:  R_AARCH64_CALL26	__fortify_panic
   23b20: 910006a2     	add	x2, x21, #0x1
   23b24: 52800120     	mov	w0, #0x9                // =9
   23b28: 92800001     	mov	x1, #-0x1               // =-1
   23b2c: 94000000     	bl	0x23b2c <syna_sysfs_get_delta_show+0x4bc>
		0000000000023b2c:  R_AARCH64_CALL26	__fortify_panic
   23b30: d4200020     	brk	#0x1
   23b34: 94000000     	bl	0x23b34 <syna_sysfs_get_delta_show+0x4c4>
		0000000000023b34:  R_AARCH64_CALL26	__stack_chk_fail
