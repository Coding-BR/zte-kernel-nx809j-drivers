
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015de4 <syna_testing_pt05_show>:
   15de4: d503233f     	paciasp
   15de8: d10343ff     	sub	sp, sp, #0xd0
   15dec: a9077bfd     	stp	x29, x30, [sp, #0x70]
   15df0: a9086ffc     	stp	x28, x27, [sp, #0x80]
   15df4: a90967fa     	stp	x26, x25, [sp, #0x90]
   15df8: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   15dfc: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   15e00: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   15e04: 9101c3fd     	add	x29, sp, #0x70
   15e08: d5384108     	mrs	x8, SP_EL0
   15e0c: aa0203f3     	mov	x19, x2
   15e10: f9438908     	ldr	x8, [x8, #0x710]
   15e14: f81f83a8     	stur	x8, [x29, #-0x8]
   15e18: f9400c08     	ldr	x8, [x0, #0x18]
   15e1c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   15e20: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   15e24: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   15e28: f9400d08     	ldr	x8, [x8, #0x18]
   15e2c: f9000fff     	str	xzr, [sp, #0x18]
   15e30: f90007ff     	str	xzr, [sp, #0x8]
   15e34: f9404d18     	ldr	x24, [x8, #0x98]
   15e38: f9001bff     	str	xzr, [sp, #0x30]
   15e3c: 39560b08     	ldrb	w8, [x24, #0x582]
   15e40: 36000c68     	tbz	w8, #0x0, 0x15fcc <syna_testing_pt05_show+0x1e8>
   15e44: 94000000     	bl	0x15e44 <syna_testing_pt05_show+0x60>
		0000000000015e44:  R_AARCH64_CALL26	syna_tcm_get_testing_0500
   15e48: b4000e20     	cbz	x0, 0x1600c <syna_testing_pt05_show+0x228>
   15e4c: f9400308     	ldr	x8, [x24]
   15e50: 910083f5     	add	x21, sp, #0x20
   15e54: aa0003f4     	mov	x20, x0
   15e58: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   15e5c: 91000021     	add	x1, x1, #0x0
		0000000000015e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   15e60: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015e60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   15e64: 91000042     	add	x2, x2, #0x0
		0000000000015e64:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   15e68: b9402108     	ldr	w8, [x8, #0x20]
   15e6c: b9002408     	str	w8, [x0, #0x24]
   15e70: f9400308     	ldr	x8, [x24]
   15e74: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   15e78: b9401d08     	ldr	w8, [x8, #0x1c]
   15e7c: b9002008     	str	w8, [x0, #0x20]
   15e80: 910042a0     	add	x0, x21, #0x10
   15e84: 390183ff     	strb	wzr, [sp, #0x60]
   15e88: 94000000     	bl	0x15e88 <syna_testing_pt05_show+0xa4>
		0000000000015e88:  R_AARCH64_CALL26	__mutex_init
   15e8c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2d08
   15e90: 91000108     	add	x8, x8, #0x0
		0000000000015e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2d08
   15e94: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3988
   15e98: 91000129     	add	x9, x9, #0x0
		0000000000015e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3988
   15e9c: f9000be8     	str	x8, [sp, #0x10]
   15ea0: 52819008     	mov	w8, #0xc80              // =3200
   15ea4: b9001be8     	str	w8, [sp, #0x18]
   15ea8: aa1403e1     	mov	x1, x20
   15eac: 2a1f03e2     	mov	w2, wzr
   15eb0: f90003e9     	str	x9, [sp]
   15eb4: 910043e9     	add	x9, sp, #0x10
   15eb8: b9000be8     	str	w8, [sp, #0x8]
   15ebc: 910003e8     	mov	x8, sp
   15ec0: f9006e95     	str	x21, [x20, #0xd8]
   15ec4: a903a289     	stp	x9, x8, [x20, #0x38]
   15ec8: f9400e88     	ldr	x8, [x20, #0x18]
   15ecc: f9400300     	ldr	x0, [x24]
   15ed0: b85fc110     	ldur	w16, [x8, #-0x4]
   15ed4: 72895251     	movk	w17, #0x4a92
   15ed8: 72b03811     	movk	w17, #0x81c0, lsl #16
   15edc: 6b11021f     	cmp	w16, w17
   15ee0: 54000040     	b.eq	0x15ee8 <syna_testing_pt05_show+0x104>
   15ee4: d4304500     	brk	#0x8228
   15ee8: d63f0100     	blr	x8
   15eec: 37f80ba0     	tbnz	w0, #0x1f, 0x16060 <syna_testing_pt05_show+0x27c>
   15ef0: 39404288     	ldrb	w8, [x20, #0x10]
   15ef4: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15ef8: 91000129     	add	x9, x9, #0x0
		0000000000015ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15efc: 7100011f     	cmp	w8, #0x0
   15f00: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   15f04: 91000108     	add	x8, x8, #0x0
		0000000000015f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   15f08: 9a891105     	csel	x5, x8, x9, ne
   15f0c: f9400683     	ldr	x3, [x20, #0x8]
   15f10: b9400284     	ldr	w4, [x20]
   15f14: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   15f18: 91000042     	add	x2, x2, #0x0
		0000000000015f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   15f1c: aa1303e0     	mov	x0, x19
   15f20: 52820001     	mov	w1, #0x1000             // =4096
   15f24: 94000000     	bl	0x15f24 <syna_testing_pt05_show+0x140>
		0000000000015f24:  R_AARCH64_CALL26	scnprintf
   15f28: b9402fe8     	ldr	w8, [sp, #0x2c]
   15f2c: 2a0003f5     	mov	w21, w0
   15f30: 340005a8     	cbz	w8, 0x15fe4 <syna_testing_pt05_show+0x200>
   15f34: b9402288     	ldr	w8, [x20, #0x20]
   15f38: 34000568     	cbz	w8, 0x15fe4 <syna_testing_pt05_show+0x200>
   15f3c: f94013fa     	ldr	x26, [sp, #0x20]
   15f40: 2a1f03f9     	mov	w25, wzr
   15f44: 90000016     	adrp	x22, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   15f48: 910002d6     	add	x22, x22, #0x0
		0000000000015f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   15f4c: 5282001b     	mov	w27, #0x1000            // =4096
   15f50: 90000017     	adrp	x23, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0ee
   15f54: 910002f7     	add	x23, x23, #0x0
		0000000000015f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0ee
   15f58: 1400000b     	b	0x15f84 <syna_testing_pt05_show+0x1a0>
   15f5c: 2a1503e8     	mov	w8, w21
   15f60: aa1603e2     	mov	x2, x22
   15f64: cb080361     	sub	x1, x27, x8
   15f68: 8b080260     	add	x0, x19, x8
   15f6c: 94000000     	bl	0x15f6c <syna_testing_pt05_show+0x188>
		0000000000015f6c:  R_AARCH64_CALL26	scnprintf
   15f70: b9402288     	ldr	w8, [x20, #0x20]
   15f74: 11000739     	add	w25, w25, #0x1
   15f78: 0b150015     	add	w21, w0, w21
   15f7c: 6b08033f     	cmp	w25, w8
   15f80: 54000322     	b.hs	0x15fe4 <syna_testing_pt05_show+0x200>
   15f84: b9402688     	ldr	w8, [x20, #0x24]
   15f88: 34fffea8     	cbz	w8, 0x15f5c <syna_testing_pt05_show+0x178>
   15f8c: 2a1f03fc     	mov	w28, wzr
   15f90: f9400308     	ldr	x8, [x24]
   15f94: 2a1503e9     	mov	w9, w21
   15f98: aa1703e2     	mov	x2, x23
   15f9c: cb090361     	sub	x1, x27, x9
   15fa0: 8b090260     	add	x0, x19, x9
   15fa4: b9402108     	ldr	w8, [x8, #0x20]
   15fa8: 1b087328     	madd	w8, w25, w8, w28
   15fac: 78685b43     	ldrh	w3, [x26, w8, uxtw #1]
   15fb0: 94000000     	bl	0x15fb0 <syna_testing_pt05_show+0x1cc>
		0000000000015fb0:  R_AARCH64_CALL26	scnprintf
   15fb4: b9402688     	ldr	w8, [x20, #0x24]
   15fb8: 1100079c     	add	w28, w28, #0x1
   15fbc: 0b150015     	add	w21, w0, w21
   15fc0: 6b08039f     	cmp	w28, w8
   15fc4: 54fffe63     	b.lo	0x15f90 <syna_testing_pt05_show+0x1ac>
   15fc8: 17ffffe5     	b	0x15f5c <syna_testing_pt05_show+0x178>
   15fcc: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   15fd0: 91000042     	add	x2, x2, #0x0
		0000000000015fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   15fd4: aa1303e0     	mov	x0, x19
   15fd8: 52820001     	mov	w1, #0x1000             // =4096
   15fdc: 94000000     	bl	0x15fdc <syna_testing_pt05_show+0x1f8>
		0000000000015fdc:  R_AARCH64_CALL26	scnprintf
   15fe0: 14000011     	b	0x16024 <syna_testing_pt05_show+0x240>
   15fe4: 394183e2     	ldrb	w2, [sp, #0x60]
   15fe8: 350004e2     	cbnz	w2, 0x16084 <syna_testing_pt05_show+0x2a0>
   15fec: f94013f3     	ldr	x19, [sp, #0x20]
   15ff0: 94000000     	bl	0x15ff0 <syna_testing_pt05_show+0x20c>
		0000000000015ff0:  R_AARCH64_CALL26	syna_request_managed_device
   15ff4: b4000540     	cbz	x0, 0x1609c <syna_testing_pt05_show+0x2b8>
   15ff8: b4000073     	cbz	x19, 0x16004 <syna_testing_pt05_show+0x220>
   15ffc: aa1303e1     	mov	x1, x19
   16000: 94000000     	bl	0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016000:  R_AARCH64_CALL26	devm_kfree
   16004: 2a1503e0     	mov	w0, w21
   16008: 14000008     	b	0x16028 <syna_testing_pt05_show+0x244>
   1600c: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001600c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   16010: 91000042     	add	x2, x2, #0x0
		0000000000016010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   16014: aa1303e0     	mov	x0, x19
   16018: 52820001     	mov	w1, #0x1000             // =4096
   1601c: 5280a003     	mov	w3, #0x500              // =1280
   16020: 94000000     	bl	0x16020 <syna_testing_pt05_show+0x23c>
		0000000000016020:  R_AARCH64_CALL26	scnprintf
   16024: 93407c00     	sxtw	x0, w0
   16028: d5384108     	mrs	x8, SP_EL0
   1602c: f9438908     	ldr	x8, [x8, #0x710]
   16030: f85f83a9     	ldur	x9, [x29, #-0x8]
   16034: eb09011f     	cmp	x8, x9
   16038: 540003e1     	b.ne	0x160b4 <syna_testing_pt05_show+0x2d0>
   1603c: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   16040: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   16044: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   16048: a94967fa     	ldp	x26, x25, [sp, #0x90]
   1604c: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   16050: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   16054: 910343ff     	add	sp, sp, #0xd0
   16058: d50323bf     	autiasp
   1605c: d65f03c0     	ret
   16060: f9400682     	ldr	x2, [x20, #0x8]
   16064: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   16068: 91000000     	add	x0, x0, #0x0
		0000000000016068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   1606c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001606c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4160
   16070: 91000021     	add	x1, x1, #0x0
		0000000000016070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4160
   16074: 94000000     	bl	0x16074 <syna_testing_pt05_show+0x290>
		0000000000016074:  R_AARCH64_CALL26	_printk
   16078: 90000005     	adrp	x5, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   1607c: 910000a5     	add	x5, x5, #0x0
		000000000001607c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   16080: 17ffffa3     	b	0x15f0c <syna_testing_pt05_show+0x128>
   16084: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   16088: 91000000     	add	x0, x0, #0x0
		0000000000016088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1608c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001608c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   16090: 91000021     	add	x1, x1, #0x0
		0000000000016090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   16094: 94000000     	bl	0x16094 <syna_testing_pt05_show+0x2b0>
		0000000000016094:  R_AARCH64_CALL26	_printk
   16098: 17ffffd5     	b	0x15fec <syna_testing_pt05_show+0x208>
   1609c: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001609c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   160a0: 91000000     	add	x0, x0, #0x0
		00000000000160a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   160a4: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000160a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   160a8: 91000021     	add	x1, x1, #0x0
		00000000000160a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   160ac: 94000000     	bl	0x160ac <syna_testing_pt05_show+0x2c8>
		00000000000160ac:  R_AARCH64_CALL26	_printk
   160b0: 17ffffd5     	b	0x16004 <syna_testing_pt05_show+0x220>
   160b4: 94000000     	bl	0x160b4 <syna_testing_pt05_show+0x2d0>
		00000000000160b4:  R_AARCH64_CALL26	__stack_chk_fail
