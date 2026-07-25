
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cd20 <syna_testing_pt05_zte>:
   1cd20: d503233f     	paciasp
   1cd24: d10343ff     	sub	sp, sp, #0xd0
   1cd28: a9077bfd     	stp	x29, x30, [sp, #0x70]
   1cd2c: a9086ffc     	stp	x28, x27, [sp, #0x80]
   1cd30: a90967fa     	stp	x26, x25, [sp, #0x90]
   1cd34: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   1cd38: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   1cd3c: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   1cd40: 9101c3fd     	add	x29, sp, #0x70
   1cd44: d5384108     	mrs	x8, SP_EL0
   1cd48: aa0003f4     	mov	x20, x0
   1cd4c: f9438908     	ldr	x8, [x8, #0x710]
   1cd50: f81f83a8     	stur	x8, [x29, #-0x8]
   1cd54: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1cd58: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1cd5c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1cd60: f9001bff     	str	xzr, [sp, #0x30]
   1cd64: b9000fff     	str	wzr, [sp, #0xc]
   1cd68: b9001fff     	str	wzr, [sp, #0x1c]
   1cd6c: d503201f     	nop
   1cd70: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cd70:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cd74: 5281b801     	mov	w1, #0xdc0              // =3520
   1cd78: 52820002     	mov	w2, #0x1000             // =4096
   1cd7c: f9400100     	ldr	x0, [x8]
		000000000001cd7c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cd80: 94000000     	bl	0x1cd80 <syna_testing_pt05_zte+0x60>
		000000000001cd80:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cd84: aa0003f3     	mov	x19, x0
   1cd88: b4001693     	cbz	x19, 0x1d058 <syna_testing_pt05_zte+0x338>
   1cd8c: 39560a88     	ldrb	w8, [x20, #0x582]
   1cd90: 360013c8     	tbz	w8, #0x0, 0x1d008 <syna_testing_pt05_zte+0x2e8>
   1cd94: 94000000     	bl	0x1cd94 <syna_testing_pt05_zte+0x74>
		000000000001cd94:  R_AARCH64_CALL26	syna_tcm_get_testing_0500
   1cd98: b4000e20     	cbz	x0, 0x1cf5c <syna_testing_pt05_zte+0x23c>
   1cd9c: f9400288     	ldr	x8, [x20]
   1cda0: 910083f7     	add	x23, sp, #0x20
   1cda4: aa0003f5     	mov	x21, x0
   1cda8: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cda8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49fa
   1cdac: 91000021     	add	x1, x1, #0x0
		000000000001cdac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49fa
   1cdb0: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cdb0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x143c
   1cdb4: 91000042     	add	x2, x2, #0x0
		000000000001cdb4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x143c
   1cdb8: b9402108     	ldr	w8, [x8, #0x20]
   1cdbc: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1cdc0: b9002408     	str	w8, [x0, #0x24]
   1cdc4: f9400288     	ldr	x8, [x20]
   1cdc8: b9401d08     	ldr	w8, [x8, #0x1c]
   1cdcc: b9002008     	str	w8, [x0, #0x20]
   1cdd0: 910003e8     	mov	x8, sp
   1cdd4: 910042e0     	add	x0, x23, #0x10
   1cdd8: 390183ff     	strb	wzr, [sp, #0x60]
   1cddc: 91004116     	add	x22, x8, #0x10
   1cde0: 94000000     	bl	0x1cde0 <syna_testing_pt05_zte+0xc0>
		000000000001cde0:  R_AARCH64_CALL26	__mutex_init
   1cde4: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cde4:  R_AARCH64_ADR_PREL_PG_HI21	pt05_hi_limits
   1cde8: 91000108     	add	x8, x8, #0x0
		000000000001cde8:  R_AARCH64_ADD_ABS_LO12_NC	pt05_hi_limits
   1cdec: 90000009     	adrp	x9, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cdec:  R_AARCH64_ADR_PREL_PG_HI21	pt05_lo_limits
   1cdf0: 91000129     	add	x9, x9, #0x0
		000000000001cdf0:  R_AARCH64_ADD_ABS_LO12_NC	pt05_lo_limits
   1cdf4: f9000be8     	str	x8, [sp, #0x10]
   1cdf8: 52819008     	mov	w8, #0xc80              // =3200
   1cdfc: b9001be8     	str	w8, [sp, #0x18]
   1ce00: aa1503e1     	mov	x1, x21
   1ce04: 2a1f03e2     	mov	w2, wzr
   1ce08: f90003e9     	str	x9, [sp]
   1ce0c: b9000be8     	str	w8, [sp, #0x8]
   1ce10: 910003e8     	mov	x8, sp
   1ce14: f9006eb7     	str	x23, [x21, #0xd8]
   1ce18: a903a2b6     	stp	x22, x8, [x21, #0x38]
   1ce1c: f9400ea8     	ldr	x8, [x21, #0x18]
   1ce20: f9400280     	ldr	x0, [x20]
   1ce24: b85fc110     	ldur	w16, [x8, #-0x4]
   1ce28: 72895251     	movk	w17, #0x4a92
   1ce2c: 72b03811     	movk	w17, #0x81c0, lsl #16
   1ce30: 6b11021f     	cmp	w16, w17
   1ce34: 54000040     	b.eq	0x1ce3c <syna_testing_pt05_zte+0x11c>
   1ce38: d4304500     	brk	#0x8228
   1ce3c: d63f0100     	blr	x8
   1ce40: 37f80ba0     	tbnz	w0, #0x1f, 0x1cfb4 <syna_testing_pt05_zte+0x294>
   1ce44: 394042a8     	ldrb	w8, [x21, #0x10]
   1ce48: 90000009     	adrp	x9, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ce48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3331
   1ce4c: 91000129     	add	x9, x9, #0x0
		000000000001ce4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3331
   1ce50: 7100011f     	cmp	w8, #0x0
   1ce54: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ce54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b45
   1ce58: 91000108     	add	x8, x8, #0x0
		000000000001ce58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b45
   1ce5c: 9a891105     	csel	x5, x8, x9, ne
   1ce60: f94006a3     	ldr	x3, [x21, #0x8]
   1ce64: b94002a4     	ldr	w4, [x21]
   1ce68: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ce68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc90
   1ce6c: 91000042     	add	x2, x2, #0x0
		000000000001ce6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc90
   1ce70: aa1303e0     	mov	x0, x19
   1ce74: 52820001     	mov	w1, #0x1000             // =4096
   1ce78: 94000000     	bl	0x1ce78 <syna_testing_pt05_zte+0x158>
		000000000001ce78:  R_AARCH64_CALL26	scnprintf
   1ce7c: b9402fe8     	ldr	w8, [sp, #0x2c]
   1ce80: 2a0003f6     	mov	w22, w0
   1ce84: 340004e8     	cbz	w8, 0x1cf20 <syna_testing_pt05_zte+0x200>
   1ce88: b94022a8     	ldr	w8, [x21, #0x20]
   1ce8c: 340004a8     	cbz	w8, 0x1cf20 <syna_testing_pt05_zte+0x200>
   1ce90: f94013fa     	ldr	x26, [sp, #0x20]
   1ce94: 2a1f03f9     	mov	w25, wzr
   1ce98: 90000017     	adrp	x23, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ce98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a9
   1ce9c: 910002f7     	add	x23, x23, #0x0
		000000000001ce9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a9
   1cea0: 5282001b     	mov	w27, #0x1000            // =4096
   1cea4: 90000018     	adrp	x24, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4610
   1cea8: 91000318     	add	x24, x24, #0x0
		000000000001cea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4610
   1ceac: 1400000b     	b	0x1ced8 <syna_testing_pt05_zte+0x1b8>
   1ceb0: 2a1603e8     	mov	w8, w22
   1ceb4: aa1703e2     	mov	x2, x23
   1ceb8: cb080361     	sub	x1, x27, x8
   1cebc: 8b080260     	add	x0, x19, x8
   1cec0: 94000000     	bl	0x1cec0 <syna_testing_pt05_zte+0x1a0>
		000000000001cec0:  R_AARCH64_CALL26	scnprintf
   1cec4: b94022a8     	ldr	w8, [x21, #0x20]
   1cec8: 11000739     	add	w25, w25, #0x1
   1cecc: 0b160016     	add	w22, w0, w22
   1ced0: 6b08033f     	cmp	w25, w8
   1ced4: 54000262     	b.hs	0x1cf20 <syna_testing_pt05_zte+0x200>
   1ced8: b94026a8     	ldr	w8, [x21, #0x24]
   1cedc: 34fffea8     	cbz	w8, 0x1ceb0 <syna_testing_pt05_zte+0x190>
   1cee0: 2a1f03fc     	mov	w28, wzr
   1cee4: f9400288     	ldr	x8, [x20]
   1cee8: 2a1603e9     	mov	w9, w22
   1ceec: aa1803e2     	mov	x2, x24
   1cef0: cb090361     	sub	x1, x27, x9
   1cef4: 8b090260     	add	x0, x19, x9
   1cef8: b9402108     	ldr	w8, [x8, #0x20]
   1cefc: 1b087328     	madd	w8, w25, w8, w28
   1cf00: 78685b43     	ldrh	w3, [x26, w8, uxtw #1]
   1cf04: 94000000     	bl	0x1cf04 <syna_testing_pt05_zte+0x1e4>
		000000000001cf04:  R_AARCH64_CALL26	scnprintf
   1cf08: b94026a8     	ldr	w8, [x21, #0x24]
   1cf0c: 1100079c     	add	w28, w28, #0x1
   1cf10: 0b160016     	add	w22, w0, w22
   1cf14: 6b08039f     	cmp	w28, w8
   1cf18: 54fffe63     	b.lo	0x1cee4 <syna_testing_pt05_zte+0x1c4>
   1cf1c: 17ffffe5     	b	0x1ceb0 <syna_testing_pt05_zte+0x190>
   1cf20: aa1303e0     	mov	x0, x19
   1cf24: 94000000     	bl	0x1cf24 <syna_testing_pt05_zte+0x204>
		000000000001cf24:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   1cf28: 394183e2     	ldrb	w2, [sp, #0x60]
   1cf2c: 35000562     	cbnz	w2, 0x1cfd8 <syna_testing_pt05_zte+0x2b8>
   1cf30: f94013f4     	ldr	x20, [sp, #0x20]
   1cf34: 94000000     	bl	0x1cf34 <syna_testing_pt05_zte+0x214>
		000000000001cf34:  R_AARCH64_CALL26	syna_request_managed_device
   1cf38: b40005c0     	cbz	x0, 0x1cff0 <syna_testing_pt05_zte+0x2d0>
   1cf3c: b4000074     	cbz	x20, 0x1cf48 <syna_testing_pt05_zte+0x228>
   1cf40: aa1403e1     	mov	x1, x20
   1cf44: 94000000     	bl	0x1cf44 <syna_testing_pt05_zte+0x224>
		000000000001cf44:  R_AARCH64_CALL26	devm_kfree
   1cf48: aa1303e0     	mov	x0, x19
   1cf4c: f90017ff     	str	xzr, [sp, #0x28]
   1cf50: 390183ff     	strb	wzr, [sp, #0x60]
   1cf54: 94000000     	bl	0x1cf54 <syna_testing_pt05_zte+0x234>
		000000000001cf54:  R_AARCH64_CALL26	kfree
   1cf58: 14000008     	b	0x1cf78 <syna_testing_pt05_zte+0x258>
   1cf5c: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cf5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48ac
   1cf60: 91000042     	add	x2, x2, #0x0
		000000000001cf60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48ac
   1cf64: aa1303e0     	mov	x0, x19
   1cf68: 52820001     	mov	w1, #0x1000             // =4096
   1cf6c: 5280a003     	mov	w3, #0x500              // =1280
   1cf70: 94000000     	bl	0x1cf70 <syna_testing_pt05_zte+0x250>
		000000000001cf70:  R_AARCH64_CALL26	scnprintf
   1cf74: 2a0003f6     	mov	w22, w0
   1cf78: d5384108     	mrs	x8, SP_EL0
   1cf7c: f9438908     	ldr	x8, [x8, #0x710]
   1cf80: f85f83a9     	ldur	x9, [x29, #-0x8]
   1cf84: eb09011f     	cmp	x8, x9
   1cf88: 540004c1     	b.ne	0x1d020 <syna_testing_pt05_zte+0x300>
   1cf8c: 2a1603e0     	mov	w0, w22
   1cf90: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   1cf94: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   1cf98: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   1cf9c: a94967fa     	ldp	x26, x25, [sp, #0x90]
   1cfa0: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   1cfa4: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   1cfa8: 910343ff     	add	sp, sp, #0xd0
   1cfac: d50323bf     	autiasp
   1cfb0: d65f03c0     	ret
   1cfb4: f94006a2     	ldr	x2, [x21, #0x8]
   1cfb8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cfb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53fa
   1cfbc: 91000000     	add	x0, x0, #0x0
		000000000001cfbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53fa
   1cfc0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cfc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2216
   1cfc4: 91000021     	add	x1, x1, #0x0
		000000000001cfc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2216
   1cfc8: 94000000     	bl	0x1cfc8 <syna_testing_pt05_zte+0x2a8>
		000000000001cfc8:  R_AARCH64_CALL26	_printk
   1cfcc: 90000005     	adrp	x5, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cfcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3331
   1cfd0: 910000a5     	add	x5, x5, #0x0
		000000000001cfd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3331
   1cfd4: 17ffffa3     	b	0x1ce60 <syna_testing_pt05_zte+0x140>
   1cfd8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cfd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f1
   1cfdc: 91000000     	add	x0, x0, #0x0
		000000000001cfdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f1
   1cfe0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cfe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ddc
   1cfe4: 91000021     	add	x1, x1, #0x0
		000000000001cfe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ddc
   1cfe8: 94000000     	bl	0x1cfe8 <syna_testing_pt05_zte+0x2c8>
		000000000001cfe8:  R_AARCH64_CALL26	_printk
   1cfec: 17ffffd1     	b	0x1cf30 <syna_testing_pt05_zte+0x210>
   1cff0: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bce
   1cff4: 91000000     	add	x0, x0, #0x0
		000000000001cff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bce
   1cff8: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4442
   1cffc: 91000021     	add	x1, x1, #0x0
		000000000001cffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4442
   1d000: 94000000     	bl	0x1d000 <syna_testing_pt05_zte+0x2e0>
		000000000001d000:  R_AARCH64_CALL26	_printk
   1d004: 17ffffd1     	b	0x1cf48 <syna_testing_pt05_zte+0x228>
   1d008: 90000002     	adrp	x2, 0x1d000 <syna_testing_pt05_zte+0x2e0>
		000000000001d008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5392
   1d00c: 91000042     	add	x2, x2, #0x0
		000000000001d00c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5392
   1d010: aa1303e0     	mov	x0, x19
   1d014: 52820001     	mov	w1, #0x1000             // =4096
   1d018: 94000000     	bl	0x1d018 <syna_testing_pt05_zte+0x2f8>
		000000000001d018:  R_AARCH64_CALL26	scnprintf
   1d01c: 17ffffd6     	b	0x1cf74 <syna_testing_pt05_zte+0x254>
   1d020: 94000000     	bl	0x1d020 <syna_testing_pt05_zte+0x300>
		000000000001d020:  R_AARCH64_CALL26	__stack_chk_fail
   1d024: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt05_zte+0x2e0>
		000000000001d024:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x190
   1d028: 91000108     	add	x8, x8, #0x0
		000000000001d028:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x190
   1d02c: d5384115     	mrs	x21, SP_EL0
   1d030: f9402ab6     	ldr	x22, [x21, #0x50]
   1d034: f9002aa8     	str	x8, [x21, #0x50]
   1d038: 90000008     	adrp	x8, 0x1d000 <syna_testing_pt05_zte+0x2e0>
		000000000001d038:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d03c: f9400100     	ldr	x0, [x8]
		000000000001d03c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d040: 5281b801     	mov	w1, #0xdc0              // =3520
   1d044: 52820002     	mov	w2, #0x1000             // =4096
   1d048: 94000000     	bl	0x1d048 <syna_testing_pt05_zte+0x328>
		000000000001d048:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d04c: aa0003f3     	mov	x19, x0
   1d050: f9002ab6     	str	x22, [x21, #0x50]
   1d054: b5ffe9d3     	cbnz	x19, 0x1cd8c <syna_testing_pt05_zte+0x6c>
   1d058: 90000000     	adrp	x0, 0x1d000 <syna_testing_pt05_zte+0x2e0>
		000000000001d058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf4
   1d05c: 91000000     	add	x0, x0, #0x0
		000000000001d05c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf4
   1d060: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt05_zte+0x2e0>
		000000000001d060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2216
   1d064: 91000021     	add	x1, x1, #0x0
		000000000001d064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2216
   1d068: 94000000     	bl	0x1d068 <syna_testing_pt05_zte+0x348>
		000000000001d068:  R_AARCH64_CALL26	_printk
   1d06c: 12800176     	mov	w22, #-0xc              // =-12
   1d070: 17ffffc2     	b	0x1cf78 <syna_testing_pt05_zte+0x258>
