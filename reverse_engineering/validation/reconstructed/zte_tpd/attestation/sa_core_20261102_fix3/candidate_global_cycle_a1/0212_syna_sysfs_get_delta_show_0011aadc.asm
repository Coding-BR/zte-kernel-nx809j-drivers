
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000236cc <syna_sysfs_get_delta_show>:
   236cc: d503233f     	paciasp
   236d0: d10343ff     	sub	sp, sp, #0xd0
   236d4: a9077bfd     	stp	x29, x30, [sp, #0x70]
   236d8: a9086ffc     	stp	x28, x27, [sp, #0x80]
   236dc: a90967fa     	stp	x26, x25, [sp, #0x90]
   236e0: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   236e4: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   236e8: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   236ec: 9101c3fd     	add	x29, sp, #0x70
   236f0: d5384108     	mrs	x8, SP_EL0
   236f4: aa0203f3     	mov	x19, x2
   236f8: 52800241     	mov	w1, #0x12               // =18
   236fc: f9438908     	ldr	x8, [x8, #0x710]
   23700: 52800022     	mov	w2, #0x1                // =1
   23704: 52800143     	mov	w3, #0xa                // =10
   23708: f81f83a8     	stur	x8, [x29, #-0x8]
   2370c: f9400c08     	ldr	x8, [x0, #0x18]
   23710: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   23714: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   23718: f9404d16     	ldr	x22, [x8, #0x98]
   2371c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   23720: f9001bff     	str	xzr, [sp, #0x30]
   23724: f94002d4     	ldr	x20, [x22]
   23728: aa1403e0     	mov	x0, x20
   2372c: 94000000     	bl	0x2372c <syna_sysfs_get_delta_show+0x60>
		000000000002372c:  R_AARCH64_CALL26	syna_tcm_enable_report
   23730: 37f81a00     	tbnz	w0, #0x1f, 0x23a70 <syna_sysfs_get_delta_show+0x3a4>
   23734: a9004ff6     	stp	x22, x19, [sp]
   23738: b4001c74     	cbz	x20, 0x23ac4 <syna_sysfs_get_delta_show+0x3f8>
   2373c: f9402695     	ldr	x21, [x20, #0x48]
   23740: b4001ef5     	cbz	x21, 0x23b1c <syna_sysfs_get_delta_show+0x450>
   23744: f9401ea8     	ldr	x8, [x21, #0x38]
   23748: b40001e8     	cbz	x8, 0x23784 <syna_sysfs_get_delta_show+0xb8>
   2374c: 91014280     	add	x0, x20, #0x50
   23750: 94000000     	bl	0x23750 <syna_sysfs_get_delta_show+0x84>
		0000000000023750:  R_AARCH64_CALL26	mutex_lock
   23754: f9401ea8     	ldr	x8, [x21, #0x38]
   23758: aa1503e0     	mov	x0, x21
   2375c: 2a1f03e1     	mov	w1, wzr
   23760: b85fc110     	ldur	w16, [x8, #-0x4]
   23764: 728c3631     	movk	w17, #0x61b1
   23768: 72a685d1     	movk	w17, #0x342e, lsl #16
   2376c: 6b11021f     	cmp	w16, w17
   23770: 54000040     	b.eq	0x23778 <syna_sysfs_get_delta_show+0xac>
   23774: d4304500     	brk	#0x8228
   23778: d63f0100     	blr	x8
   2377c: 91014280     	add	x0, x20, #0x50
   23780: 94000000     	bl	0x23780 <syna_sysfs_get_delta_show+0xb4>
		0000000000023780:  R_AARCH64_CALL26	mutex_unlock
   23784: 910083e8     	add	x8, sp, #0x20
   23788: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   2378c: 91000021     	add	x1, x1, #0x0
		000000000002378c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   23790: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023790:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6418
   23794: 91000042     	add	x2, x2, #0x0
		0000000000023794:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6418
   23798: 91004100     	add	x0, x8, #0x10
   2379c: 390183ff     	strb	wzr, [sp, #0x60]
   237a0: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   237a4: 94000000     	bl	0x237a4 <syna_sysfs_get_delta_show+0xd8>
		00000000000237a4:  R_AARCH64_CALL26	__mutex_init
   237a8: 2a1f03f3     	mov	w19, wzr
   237ac: 2a1f03fa     	mov	w26, wzr
   237b0: 90000015     	adrp	x21, 0x23000 <syna_spi_power_on+0x218>
		00000000000237b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c99d
   237b4: 910002b5     	add	x21, x21, #0x0
		00000000000237b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c99d
   237b8: 9000001c     	adrp	x28, 0x23000 <syna_spi_power_on+0x218>
		00000000000237b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1777d
   237bc: 9100039c     	add	x28, x28, #0x0
		00000000000237bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1777d
   237c0: 910083e2     	add	x2, sp, #0x20
   237c4: aa1403e0     	mov	x0, x20
   237c8: 52800241     	mov	w1, #0x12               // =18
   237cc: 52800c83     	mov	w3, #0x64               // =100
   237d0: 52807d04     	mov	w4, #0x3e8              // =1000
   237d4: 94000000     	bl	0x237d4 <syna_sysfs_get_delta_show+0x108>
		00000000000237d4:  R_AARCH64_CALL26	syna_tcm_wait_for_report
   237d8: 37f80060     	tbnz	w0, #0x1f, 0x237e4 <syna_sysfs_get_delta_show+0x118>
   237dc: b9402fe8     	ldr	w8, [sp, #0x2c]
   237e0: 350000e8     	cbnz	w8, 0x237fc <syna_sysfs_get_delta_show+0x130>
   237e4: 1100075a     	add	w26, w26, #0x1
   237e8: 7100067f     	cmp	w19, #0x1
   237ec: 54000ee8     	b.hi	0x239c8 <syna_sysfs_get_delta_show+0x2fc>
   237f0: 7100175f     	cmp	w26, #0x5
   237f4: 54fffe63     	b.lo	0x237c0 <syna_sysfs_get_delta_show+0xf4>
   237f8: 14000074     	b	0x239c8 <syna_sysfs_get_delta_show+0x2fc>
   237fc: 11000673     	add	w19, w19, #0x1
   23800: aa1503e0     	mov	x0, x21
   23804: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c154
   23808: 91000021     	add	x1, x1, #0x0
		0000000000023808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c154
   2380c: 2a1303e2     	mov	w2, w19
   23810: 94000000     	bl	0x23810 <syna_sysfs_get_delta_show+0x144>
		0000000000023810:  R_AARCH64_CALL26	_printk
   23814: b9401e88     	ldr	w8, [x20, #0x1c]
   23818: 34fffe88     	cbz	w8, 0x237e8 <syna_sysfs_get_delta_show+0x11c>
   2381c: f94013f7     	ldr	x23, [sp, #0x20]
   23820: b90013f3     	str	w19, [sp, #0x10]
   23824: 2a1f03f3     	mov	w19, wzr
   23828: b90017f3     	str	w19, [sp, #0x14]
   2382c: b9402293     	ldr	w19, [x20, #0x20]
   23830: 94000000     	bl	0x23830 <syna_sysfs_get_delta_show+0x164>
		0000000000023830:  R_AARCH64_CALL26	syna_request_managed_device
   23834: b5000080     	cbnz	x0, 0x23844 <syna_sysfs_get_delta_show+0x178>
   23838: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2383c: 91000000     	add	x0, x0, #0x0
		000000000002383c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23840: 14000007     	b	0x2385c <syna_sysfs_get_delta_show+0x190>
   23844: 0b130668     	add	w8, w19, w19, lsl #1
   23848: 531f7916     	lsl	w22, w8, #1
   2384c: 710002df     	cmp	w22, #0x0
   23850: 5400016c     	b.gt	0x2387c <syna_sysfs_get_delta_show+0x1b0>
   23854: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   23858: 91000000     	add	x0, x0, #0x0
		0000000000023858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   2385c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		000000000002385c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   23860: 91000021     	add	x1, x1, #0x0
		0000000000023860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   23864: 94000000     	bl	0x23864 <syna_sysfs_get_delta_show+0x198>
		0000000000023864:  R_AARCH64_CALL26	_printk
   23868: aa1f03f6     	mov	x22, xzr
   2386c: aa1f03fb     	mov	x27, xzr
   23870: b9402288     	ldr	w8, [x20, #0x20]
   23874: 34000108     	cbz	w8, 0x23894 <syna_sysfs_get_delta_show+0x1c8>
   23878: 14000018     	b	0x238d8 <syna_sysfs_get_delta_show+0x20c>
   2387c: aa1603e1     	mov	x1, x22
   23880: 5281b802     	mov	w2, #0xdc0              // =3520
   23884: 94000000     	bl	0x23884 <syna_sysfs_get_delta_show+0x1b8>
		0000000000023884:  R_AARCH64_CALL26	devm_kmalloc
   23888: aa0003fb     	mov	x27, x0
   2388c: b9402288     	ldr	w8, [x20, #0x20]
   23890: 35000248     	cbnz	w8, 0x238d8 <syna_sysfs_get_delta_show+0x20c>
   23894: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198ec
   23898: 91000000     	add	x0, x0, #0x0
		0000000000023898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198ec
   2389c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		000000000002389c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c154
   238a0: 91000021     	add	x1, x1, #0x0
		00000000000238a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c154
   238a4: aa1b03e2     	mov	x2, x27
   238a8: 94000000     	bl	0x238a8 <syna_sysfs_get_delta_show+0x1dc>
		00000000000238a8:  R_AARCH64_CALL26	_printk
   238ac: 94000000     	bl	0x238ac <syna_sysfs_get_delta_show+0x1e0>
		00000000000238ac:  R_AARCH64_CALL26	syna_request_managed_device
   238b0: b4000760     	cbz	x0, 0x2399c <syna_sysfs_get_delta_show+0x2d0>
   238b4: b94017f3     	ldr	w19, [sp, #0x14]
   238b8: b400007b     	cbz	x27, 0x238c4 <syna_sysfs_get_delta_show+0x1f8>
   238bc: aa1b03e1     	mov	x1, x27
   238c0: 94000000     	bl	0x238c0 <syna_sysfs_get_delta_show+0x1f4>
		00000000000238c0:  R_AARCH64_CALL26	devm_kfree
   238c4: b9401e88     	ldr	w8, [x20, #0x1c]
   238c8: 11000673     	add	w19, w19, #0x1
   238cc: 6b08027f     	cmp	w19, w8
   238d0: 54fffac3     	b.lo	0x23828 <syna_sysfs_get_delta_show+0x15c>
   238d4: 14000039     	b	0x239b8 <syna_sysfs_get_delta_show+0x2ec>
   238d8: 2a1f03f3     	mov	w19, wzr
   238dc: 14000007     	b	0x238f8 <syna_sysfs_get_delta_show+0x22c>
   238e0: 38356b7f     	strb	wzr, [x27, x21]
   238e4: b9402295     	ldr	w21, [x20, #0x20]
   238e8: 11000673     	add	w19, w19, #0x1
   238ec: 91000af7     	add	x23, x23, #0x2
   238f0: 6b15027f     	cmp	w19, w21
   238f4: 54fffd02     	b.hs	0x23894 <syna_sysfs_get_delta_show+0x1c8>
   238f8: 79003bff     	strh	wzr, [sp, #0x1c]
   238fc: 910063e0     	add	x0, sp, #0x18
   23900: 528000c1     	mov	w1, #0x6                // =6
   23904: b9001bff     	str	wzr, [sp, #0x18]
   23908: aa1c03e2     	mov	x2, x28
   2390c: 79c002e3     	ldrsh	w3, [x23]
   23910: 94000000     	bl	0x23910 <syna_sysfs_get_delta_show+0x244>
		0000000000023910:  R_AARCH64_CALL26	snprintf
   23914: b9402295     	ldr	w21, [x20, #0x20]
   23918: aa1b03e0     	mov	x0, x27
   2391c: 0b1506a8     	add	w8, w21, w21, lsl #1
   23920: 531f7919     	lsl	w25, w8, #1
   23924: aa1903e1     	mov	x1, x25
   23928: 94000000     	bl	0x23928 <syna_sysfs_get_delta_show+0x25c>
		0000000000023928:  R_AARCH64_CALL26	strnlen
   2392c: aa0003f8     	mov	x24, x0
   23930: b100041f     	cmn	x0, #0x1
   23934: 540010c0     	b.eq	0x23b4c <syna_sysfs_get_delta_show+0x480>
   23938: 910063e0     	add	x0, sp, #0x18
   2393c: 528000c1     	mov	w1, #0x6                // =6
   23940: 94000000     	bl	0x23940 <syna_sysfs_get_delta_show+0x274>
		0000000000023940:  R_AARCH64_CALL26	strnlen
   23944: f1001c1f     	cmp	x0, #0x7
   23948: 540010a2     	b.hs	0x23b5c <syna_sysfs_get_delta_show+0x490>
   2394c: f100181f     	cmp	x0, #0x6
   23950: 540010e0     	b.eq	0x23b6c <syna_sysfs_get_delta_show+0x4a0>
   23954: eb19031f     	cmp	x24, x25
   23958: 54fffc82     	b.hs	0x238e8 <syna_sysfs_get_delta_show+0x21c>
   2395c: 8b180008     	add	x8, x0, x24
   23960: d1000729     	sub	x9, x25, #0x1
   23964: eb19011f     	cmp	x8, x25
   23968: 9a893115     	csel	x21, x8, x9, lo
   2396c: b10006bf     	cmn	x21, #0x1
   23970: 54001060     	b.eq	0x23b7c <syna_sysfs_get_delta_show+0x4b0>
   23974: aa3803e9     	mvn	x9, x24
   23978: eb19011f     	cmp	x8, x25
   2397c: 910063e1     	add	x1, sp, #0x18
   23980: 8b190129     	add	x9, x9, x25
   23984: 9a893002     	csel	x2, x0, x9, lo
   23988: 8b180360     	add	x0, x27, x24
   2398c: 94000000     	bl	0x2398c <syna_sysfs_get_delta_show+0x2c0>
		000000000002398c:  R_AARCH64_CALL26	memcpy
   23990: eb1502df     	cmp	x22, x21
   23994: 54fffa68     	b.hi	0x238e0 <syna_sysfs_get_delta_show+0x214>
   23998: 1400007d     	b	0x23b8c <syna_sysfs_get_delta_show+0x4c0>
   2399c: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		000000000002399c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   239a0: 91000000     	add	x0, x0, #0x0
		00000000000239a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   239a4: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		00000000000239a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   239a8: 91000021     	add	x1, x1, #0x0
		00000000000239a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   239ac: 94000000     	bl	0x239ac <syna_sysfs_get_delta_show+0x2e0>
		00000000000239ac:  R_AARCH64_CALL26	_printk
   239b0: b94017f3     	ldr	w19, [sp, #0x14]
   239b4: 17ffffc4     	b	0x238c4 <syna_sysfs_get_delta_show+0x1f8>
   239b8: b94013f3     	ldr	w19, [sp, #0x10]
   239bc: 90000015     	adrp	x21, 0x23000 <syna_spi_power_on+0x218>
		00000000000239bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c99d
   239c0: 910002b5     	add	x21, x21, #0x0
		00000000000239c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c99d
   239c4: 17ffff89     	b	0x237e8 <syna_sysfs_get_delta_show+0x11c>
   239c8: f94003e8     	ldr	x8, [sp]
   239cc: 52800241     	mov	w1, #0x12               // =18
   239d0: 2a1f03e2     	mov	w2, wzr
   239d4: 52800143     	mov	w3, #0xa                // =10
   239d8: f9400100     	ldr	x0, [x8]
   239dc: 94000000     	bl	0x239dc <syna_sysfs_get_delta_show+0x310>
		00000000000239dc:  R_AARCH64_CALL26	syna_tcm_enable_report
   239e0: b4000794     	cbz	x20, 0x23ad0 <syna_sysfs_get_delta_show+0x404>
   239e4: f9402695     	ldr	x21, [x20, #0x48]
   239e8: f94007f3     	ldr	x19, [sp, #0x8]
   239ec: b4000a55     	cbz	x21, 0x23b34 <syna_sysfs_get_delta_show+0x468>
   239f0: f9401ea8     	ldr	x8, [x21, #0x38]
   239f4: b40001e8     	cbz	x8, 0x23a30 <syna_sysfs_get_delta_show+0x364>
   239f8: 91014280     	add	x0, x20, #0x50
   239fc: 94000000     	bl	0x239fc <syna_sysfs_get_delta_show+0x330>
		00000000000239fc:  R_AARCH64_CALL26	mutex_lock
   23a00: f9401ea8     	ldr	x8, [x21, #0x38]
   23a04: aa1503e0     	mov	x0, x21
   23a08: 52800021     	mov	w1, #0x1                // =1
   23a0c: b85fc110     	ldur	w16, [x8, #-0x4]
   23a10: 728c3631     	movk	w17, #0x61b1
   23a14: 72a685d1     	movk	w17, #0x342e, lsl #16
   23a18: 6b11021f     	cmp	w16, w17
   23a1c: 54000040     	b.eq	0x23a24 <syna_sysfs_get_delta_show+0x358>
   23a20: d4304500     	brk	#0x8228
   23a24: d63f0100     	blr	x8
   23a28: 91014280     	add	x0, x20, #0x50
   23a2c: 94000000     	bl	0x23a2c <syna_sysfs_get_delta_show+0x360>
		0000000000023a2c:  R_AARCH64_CALL26	mutex_unlock
   23a30: 394183e2     	ldrb	w2, [sp, #0x60]
   23a34: 350005c2     	cbnz	w2, 0x23aec <syna_sysfs_get_delta_show+0x420>
   23a38: f94013f4     	ldr	x20, [sp, #0x20]
   23a3c: 94000000     	bl	0x23a3c <syna_sysfs_get_delta_show+0x370>
		0000000000023a3c:  R_AARCH64_CALL26	syna_request_managed_device
   23a40: b4000620     	cbz	x0, 0x23b04 <syna_sysfs_get_delta_show+0x438>
   23a44: b4000074     	cbz	x20, 0x23a50 <syna_sysfs_get_delta_show+0x384>
   23a48: aa1403e1     	mov	x1, x20
   23a4c: 94000000     	bl	0x23a4c <syna_sysfs_get_delta_show+0x380>
		0000000000023a4c:  R_AARCH64_CALL26	devm_kfree
   23a50: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c38c
   23a54: 91000042     	add	x2, x2, #0x0
		0000000000023a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c38c
   23a58: aa1303e0     	mov	x0, x19
   23a5c: 52820001     	mov	w1, #0x1000             // =4096
   23a60: f90017ff     	str	xzr, [sp, #0x28]
   23a64: 390183ff     	strb	wzr, [sp, #0x60]
   23a68: 94000000     	bl	0x23a68 <syna_sysfs_get_delta_show+0x39c>
		0000000000023a68:  R_AARCH64_CALL26	scnprintf
   23a6c: 14000007     	b	0x23a88 <syna_sysfs_get_delta_show+0x3bc>
   23a70: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a93a
   23a74: 91000042     	add	x2, x2, #0x0
		0000000000023a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a93a
   23a78: aa1303e0     	mov	x0, x19
   23a7c: 52820001     	mov	w1, #0x1000             // =4096
   23a80: 52800243     	mov	w3, #0x12               // =18
   23a84: 94000000     	bl	0x23a84 <syna_sysfs_get_delta_show+0x3b8>
		0000000000023a84:  R_AARCH64_CALL26	scnprintf
   23a88: d5384108     	mrs	x8, SP_EL0
   23a8c: f9438908     	ldr	x8, [x8, #0x710]
   23a90: f85f83a9     	ldur	x9, [x29, #-0x8]
   23a94: eb09011f     	cmp	x8, x9
   23a98: 540007c1     	b.ne	0x23b90 <syna_sysfs_get_delta_show+0x4c4>
   23a9c: 93407c00     	sxtw	x0, w0
   23aa0: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   23aa4: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   23aa8: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   23aac: a94967fa     	ldp	x26, x25, [sp, #0x90]
   23ab0: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   23ab4: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   23ab8: 910343ff     	add	sp, sp, #0xd0
   23abc: d50323bf     	autiasp
   23ac0: d65f03c0     	ret
   23ac4: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
   23ac8: 91000000     	add	x0, x0, #0x0
		0000000000023ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
   23acc: 14000016     	b	0x23b24 <syna_sysfs_get_delta_show+0x458>
   23ad0: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
   23ad4: 91000000     	add	x0, x0, #0x0
		0000000000023ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
   23ad8: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c16e
   23adc: 91000021     	add	x1, x1, #0x0
		0000000000023adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c16e
   23ae0: 94000000     	bl	0x23ae0 <syna_sysfs_get_delta_show+0x414>
		0000000000023ae0:  R_AARCH64_CALL26	_printk
   23ae4: f94007f3     	ldr	x19, [sp, #0x8]
   23ae8: 17ffffd2     	b	0x23a30 <syna_sysfs_get_delta_show+0x364>
   23aec: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   23af0: 91000000     	add	x0, x0, #0x0
		0000000000023af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   23af4: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   23af8: 91000021     	add	x1, x1, #0x0
		0000000000023af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   23afc: 94000000     	bl	0x23afc <syna_sysfs_get_delta_show+0x430>
		0000000000023afc:  R_AARCH64_CALL26	_printk
   23b00: 17ffffce     	b	0x23a38 <syna_sysfs_get_delta_show+0x36c>
   23b04: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23b08: 91000000     	add	x0, x0, #0x0
		0000000000023b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23b0c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   23b10: 91000021     	add	x1, x1, #0x0
		0000000000023b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23b14: 94000000     	bl	0x23b14 <syna_sysfs_get_delta_show+0x448>
		0000000000023b14:  R_AARCH64_CALL26	_printk
   23b18: 17ffffce     	b	0x23a50 <syna_sysfs_get_delta_show+0x384>
   23b1c: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a22f
   23b20: 91000000     	add	x0, x0, #0x0
		0000000000023b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a22f
   23b24: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c16e
   23b28: 91000021     	add	x1, x1, #0x0
		0000000000023b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c16e
   23b2c: 94000000     	bl	0x23b2c <syna_sysfs_get_delta_show+0x460>
		0000000000023b2c:  R_AARCH64_CALL26	_printk
   23b30: 17ffff15     	b	0x23784 <syna_sysfs_get_delta_show+0xb8>
   23b34: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a22f
   23b38: 91000000     	add	x0, x0, #0x0
		0000000000023b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a22f
   23b3c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c16e
   23b40: 91000021     	add	x1, x1, #0x0
		0000000000023b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c16e
   23b44: 94000000     	bl	0x23b44 <syna_sysfs_get_delta_show+0x478>
		0000000000023b44:  R_AARCH64_CALL26	_printk
   23b48: 17ffffba     	b	0x23a30 <syna_sysfs_get_delta_show+0x364>
   23b4c: 91000702     	add	x2, x24, #0x1
   23b50: 52800040     	mov	w0, #0x2                // =2
   23b54: 92800001     	mov	x1, #-0x1               // =-1
   23b58: 94000000     	bl	0x23b58 <syna_sysfs_get_delta_show+0x48c>
		0000000000023b58:  R_AARCH64_CALL26	__fortify_panic
   23b5c: 91000402     	add	x2, x0, #0x1
   23b60: 52800040     	mov	w0, #0x2                // =2
   23b64: 528000c1     	mov	w1, #0x6                // =6
   23b68: 94000000     	bl	0x23b68 <syna_sysfs_get_delta_show+0x49c>
		0000000000023b68:  R_AARCH64_CALL26	__fortify_panic
   23b6c: 52800080     	mov	w0, #0x4                // =4
   23b70: 528000c1     	mov	w1, #0x6                // =6
   23b74: 528000e2     	mov	w2, #0x7                // =7
   23b78: 94000000     	bl	0x23b78 <syna_sysfs_get_delta_show+0x4ac>
		0000000000023b78:  R_AARCH64_CALL26	__fortify_panic
   23b7c: 910006a2     	add	x2, x21, #0x1
   23b80: 52800120     	mov	w0, #0x9                // =9
   23b84: 92800001     	mov	x1, #-0x1               // =-1
   23b88: 94000000     	bl	0x23b88 <syna_sysfs_get_delta_show+0x4bc>
		0000000000023b88:  R_AARCH64_CALL26	__fortify_panic
   23b8c: d4200020     	brk	#0x1
   23b90: 94000000     	bl	0x23b90 <syna_sysfs_get_delta_show+0x4c4>
		0000000000023b90:  R_AARCH64_CALL26	__stack_chk_fail
