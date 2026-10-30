
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021d84 <syna_tcm_parse_touch_report>:
   21d84: d503233f     	paciasp
   21d88: d10283ff     	sub	sp, sp, #0xa0
   21d8c: a9047bfd     	stp	x29, x30, [sp, #0x40]
   21d90: a9056ffc     	stp	x28, x27, [sp, #0x50]
   21d94: a90667fa     	stp	x26, x25, [sp, #0x60]
   21d98: a9075ff8     	stp	x24, x23, [sp, #0x70]
   21d9c: a90857f6     	stp	x22, x21, [sp, #0x80]
   21da0: a9094ff4     	stp	x20, x19, [sp, #0x90]
   21da4: 910103fd     	add	x29, sp, #0x40
   21da8: f90013e3     	str	x3, [sp, #0x20]
   21dac: b81ec3a2     	stur	w2, [x29, #-0x14]
   21db0: d5384108     	mrs	x8, SP_EL0
   21db4: f9438908     	ldr	x8, [x8, #0x710]
   21db8: f81f83a8     	stur	x8, [x29, #-0x8]
   21dbc: b400c1a0     	cbz	x0, 0x235f0 <syna_tcm_parse_touch_report+0x186c>
   21dc0: aa0103f5     	mov	x21, x1
   21dc4: b400c1c1     	cbz	x1, 0x235fc <syna_tcm_parse_touch_report+0x1878>
   21dc8: f94013e8     	ldr	x8, [sp, #0x20]
   21dcc: b400c1e8     	cbz	x8, 0x23608 <syna_tcm_parse_touch_report+0x1884>
   21dd0: b9401808     	ldr	w8, [x0, #0x18]
   21dd4: aa0003f6     	mov	x22, x0
   21dd8: 3400c1e8     	cbz	w8, 0x23614 <syna_tcm_parse_touch_report+0x1890>
   21ddc: b9438ec8     	ldr	w8, [x22, #0x38c]
   21de0: 7100051f     	cmp	w8, #0x1
   21de4: 5400c400     	b.eq	0x23664 <syna_tcm_parse_touch_report+0x18e0>
   21de8: f94013e8     	ldr	x8, [sp, #0x20]
   21dec: f940cad8     	ldr	x24, [x22, #0x190]
   21df0: 91002108     	add	x8, x8, #0x8
   21df4: f9000fe8     	str	x8, [sp, #0x18]
   21df8: b400c458     	cbz	x24, 0x23680 <syna_tcm_parse_touch_report+0x18fc>
   21dfc: b9419edc     	ldr	w28, [x22, #0x19c]
   21e00: 3400c41c     	cbz	w28, 0x23680 <syna_tcm_parse_touch_report+0x18fc>
   21e04: f9400fe0     	ldr	x0, [sp, #0x18]
   21e08: 2a1f03e1     	mov	w1, wzr
   21e0c: 52804102     	mov	w2, #0x208              // =520
   21e10: 94000000     	bl	0x21e10 <syna_tcm_parse_touch_report+0x8c>
		0000000000021e10:  R_AARCH64_CALL26	memset
   21e14: b941dacc     	ldr	w12, [x22, #0x1d8]
   21e18: b941e6cd     	ldr	w13, [x22, #0x1e4]
   21e1c: 2a1f03f9     	mov	w25, wzr
   21e20: b941e2cb     	ldr	w11, [x22, #0x1e0]
   21e24: 2a1f03e1     	mov	w1, wzr
   21e28: 2a1f03e8     	mov	w8, wzr
   21e2c: b90017ec     	str	w12, [sp, #0x14]
   21e30: b85ec3ac     	ldur	w12, [x29, #-0x14]
   21e34: 2a1f03e9     	mov	w9, wzr
   21e38: 2a1f03ea     	mov	w10, wzr
   21e3c: 0b0d016b     	add	w11, w11, w13
   21e40: f90007ff     	str	xzr, [sp, #0x8]
   21e44: 531d718c     	lsl	w12, w12, #3
   21e48: f81f03bf     	stur	xzr, [x29, #-0x10]
   21e4c: b90007ed     	str	w13, [sp, #0x4]
   21e50: b81e83ac     	stur	w12, [x29, #-0x18]
   21e54: b90013eb     	str	w11, [sp, #0x10]
   21e58: 14000006     	b	0x21e70 <syna_tcm_parse_touch_report+0xec>
   21e5c: b94017e8     	ldr	w8, [sp, #0x14]
   21e60: b81f43a8     	stur	w8, [x29, #-0xc]
   21e64: 2a1a03e8     	mov	w8, w26
   21e68: 2a1303e9     	mov	w9, w19
   21e6c: 2a1703ea     	mov	w10, w23
   21e70: 2a0a03f7     	mov	w23, w10
   21e74: 2a0903f3     	mov	w19, w9
   21e78: 2a0803fa     	mov	w26, w8
   21e7c: b85f43a9     	ldur	w9, [x29, #-0xc]
   21e80: 6b1c013f     	cmp	w9, w28
   21e84: 5400bb22     	b.hs	0x235e8 <syna_tcm_parse_touch_report+0x1864>
   21e88: 91000528     	add	x8, x9, #0x1
   21e8c: b81f43a8     	stur	w8, [x29, #-0xc]
   21e90: 38696b1b     	ldrb	w27, [x24, x9]
   21e94: 71007b7f     	cmp	w27, #0x1e
   21e98: 54000449     	b.ls	0x21f20 <syna_tcm_parse_touch_report+0x19c>
   21e9c: f941e2c9     	ldr	x9, [x22, #0x3c0]
   21ea0: 2a0103f4     	mov	w20, w1
   21ea4: b4000249     	cbz	x9, 0x21eec <syna_tcm_parse_touch_report+0x168>
   21ea8: f941dec6     	ldr	x6, [x22, #0x3b8]
   21eac: b85ec3a5     	ldur	w5, [x29, #-0x14]
   21eb0: d10033a2     	sub	x2, x29, #0xc
   21eb4: d10043a4     	sub	x4, x29, #0x10
   21eb8: 2a1b03e0     	mov	w0, w27
   21ebc: aa1803e1     	mov	x1, x24
   21ec0: aa1503e3     	mov	x3, x21
   21ec4: b85fc130     	ldur	w16, [x9, #-0x4]
   21ec8: 729031f1     	movk	w17, #0x818f
   21ecc: 72aa8c91     	movk	w17, #0x5464, lsl #16
   21ed0: 6b11021f     	cmp	w16, w17
   21ed4: 54000040     	b.eq	0x21edc <syna_tcm_parse_touch_report+0x158>
   21ed8: d4304520     	brk	#0x8229
   21edc: d63f0120     	blr	x9
   21ee0: 2a1403e1     	mov	w1, w20
   21ee4: 36fffcc0     	tbz	w0, #0x1f, 0x21e7c <syna_tcm_parse_touch_report+0xf8>
   21ee8: b85f43a8     	ldur	w8, [x29, #-0xc]
   21eec: 71032b7f     	cmp	w27, #0xca
   21ef0: 5400a441     	b.ne	0x23378 <syna_tcm_parse_touch_report+0x15f4>
   21ef4: 11000509     	add	w9, w8, #0x1
   21ef8: 2a1703ea     	mov	w10, w23
   21efc: 2a1403e1     	mov	w1, w20
   21f00: b81f43a9     	stur	w9, [x29, #-0xc]
   21f04: b85f03a9     	ldur	w9, [x29, #-0x10]
   21f08: 38684b08     	ldrb	w8, [x24, w8, uxtw]
   21f0c: 0b080128     	add	w8, w9, w8
   21f10: 2a1303e9     	mov	w9, w19
   21f14: b81f03a8     	stur	w8, [x29, #-0x10]
   21f18: 2a1a03e8     	mov	w8, w26
   21f1c: 17ffffd5     	b	0x21e70 <syna_tcm_parse_touch_report+0xec>
   21f20: 9000000c     	adrp	x12, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4818
   21f24: 9100018c     	add	x12, x12, #0x0
		0000000000021f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4818
   21f28: 1000008a     	adr	x10, 0x21f38 <syna_tcm_parse_touch_report+0x1b4>
   21f2c: 787b798b     	ldrh	w11, [x12, x27, lsl #1]
   21f30: 8b0b094a     	add	x10, x10, x11, lsl #2
   21f34: d61f0140     	br	x10
   21f38: b85e83aa     	ldur	w10, [x29, #-0x18]
   21f3c: b94013eb     	ldr	w11, [sp, #0x10]
   21f40: 2a1f03e9     	mov	w9, wzr
   21f44: 6b0a017f     	cmp	w11, w10
   21f48: 5280002a     	mov	w10, #0x1               // =1
   21f4c: 54fff923     	b.lo	0x21e70 <syna_tcm_parse_touch_report+0xec>
   21f50: 17ffffc3     	b	0x21e5c <syna_tcm_parse_touch_report+0xd8>
   21f54: f941eaca     	ldr	x10, [x22, #0x3d0]
   21f58: b400962a     	cbz	x10, 0x2321c <syna_tcm_parse_touch_report+0x1498>
   21f5c: f941e6c6     	ldr	x6, [x22, #0x3c8]
   21f60: b85ec3a5     	ldur	w5, [x29, #-0x14]
   21f64: d10033a2     	sub	x2, x29, #0xc
   21f68: d10043a4     	sub	x4, x29, #0x10
   21f6c: 52800360     	mov	w0, #0x1b               // =27
   21f70: 2a0103f4     	mov	w20, w1
   21f74: aa1803e1     	mov	x1, x24
   21f78: aa1503e3     	mov	x3, x21
   21f7c: b85fc150     	ldur	w16, [x10, #-0x4]
   21f80: 729031f1     	movk	w17, #0x818f
   21f84: 72aa8c91     	movk	w17, #0x5464, lsl #16
   21f88: 6b11021f     	cmp	w16, w17
   21f8c: 54000040     	b.eq	0x21f94 <syna_tcm_parse_touch_report+0x210>
   21f90: d4304540     	brk	#0x822a
   21f94: d63f0140     	blr	x10
   21f98: 2a1403e1     	mov	w1, w20
   21f9c: 2a1a03e8     	mov	w8, w26
   21fa0: 2a1303e9     	mov	w9, w19
   21fa4: 2a1703ea     	mov	w10, w23
   21fa8: 36fff640     	tbz	w0, #0x1f, 0x21e70 <syna_tcm_parse_touch_report+0xec>
   21fac: 14000681     	b	0x239b0 <syna_tcm_parse_touch_report+0x1c2c>
   21fb0: f941eaca     	ldr	x10, [x22, #0x3d0]
   21fb4: b400954a     	cbz	x10, 0x2325c <syna_tcm_parse_touch_report+0x14d8>
   21fb8: f941e6c6     	ldr	x6, [x22, #0x3c8]
   21fbc: b85ec3a5     	ldur	w5, [x29, #-0x14]
   21fc0: d10033a2     	sub	x2, x29, #0xc
   21fc4: d10043a4     	sub	x4, x29, #0x10
   21fc8: 52800200     	mov	w0, #0x10               // =16
   21fcc: 2a0103f4     	mov	w20, w1
   21fd0: aa1803e1     	mov	x1, x24
   21fd4: aa1503e3     	mov	x3, x21
   21fd8: b85fc150     	ldur	w16, [x10, #-0x4]
   21fdc: 729031f1     	movk	w17, #0x818f
   21fe0: 72aa8c91     	movk	w17, #0x5464, lsl #16
   21fe4: 6b11021f     	cmp	w16, w17
   21fe8: 54000040     	b.eq	0x21ff0 <syna_tcm_parse_touch_report+0x26c>
   21fec: d4304540     	brk	#0x822a
   21ff0: d63f0140     	blr	x10
   21ff4: 2a1403e1     	mov	w1, w20
   21ff8: 140004cf     	b	0x23334 <syna_tcm_parse_touch_report+0x15b0>
   21ffc: 11000929     	add	w9, w9, #0x2
   22000: b81f43a9     	stur	w9, [x29, #-0xc]
   22004: 38686b02     	ldrb	w2, [x24, x8]
   22008: 51008448     	sub	w8, w2, #0x21
   2200c: 3100811f     	cmn	w8, #0x20
   22010: 5400bea3     	b.lo	0x237e4 <syna_tcm_parse_touch_report+0x1a60>
   22014: b85f03a9     	ldur	w9, [x29, #-0x10]
   22018: b85e83aa     	ldur	w10, [x29, #-0x18]
   2201c: 0b020128     	add	w8, w9, w2
   22020: 6b0a011f     	cmp	w8, w10
   22024: 54002a89     	b.ls	0x22574 <syna_tcm_parse_touch_report+0x7f0>
   22028: 2a1f03f9     	mov	w25, wzr
   2202c: 1400016f     	b	0x225e8 <syna_tcm_parse_touch_report+0x864>
   22030: 11000929     	add	w9, w9, #0x2
   22034: b81f43a9     	stur	w9, [x29, #-0xc]
   22038: 38686b02     	ldrb	w2, [x24, x8]
   2203c: 51008448     	sub	w8, w2, #0x21
   22040: 3100811f     	cmn	w8, #0x20
   22044: 5400ca63     	b.lo	0x23990 <syna_tcm_parse_touch_report+0x1c0c>
   22048: b85f03a9     	ldur	w9, [x29, #-0x10]
   2204c: b85e83aa     	ldur	w10, [x29, #-0x18]
   22050: 0b020128     	add	w8, w9, w2
   22054: 6b0a011f     	cmp	w8, w10
   22058: 54002d49     	b.ls	0x22600 <syna_tcm_parse_touch_report+0x87c>
   2205c: 2a1f03f9     	mov	w25, wzr
   22060: 14000185     	b	0x22674 <syna_tcm_parse_touch_report+0x8f0>
   22064: b85f03a8     	ldur	w8, [x29, #-0x10]
   22068: 11001d08     	add	w8, w8, #0x7
   2206c: 121d7108     	and	w8, w8, #0xfffffff8
   22070: b81f03a8     	stur	w8, [x29, #-0x10]
   22074: 17ffff7c     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   22078: 11000929     	add	w9, w9, #0x2
   2207c: b81f43a9     	stur	w9, [x29, #-0xc]
   22080: 38686b02     	ldrb	w2, [x24, x8]
   22084: 51008448     	sub	w8, w2, #0x21
   22088: 3100811f     	cmn	w8, #0x20
   2208c: 5400b4c3     	b.lo	0x23724 <syna_tcm_parse_touch_report+0x19a0>
   22090: b85f03a9     	ldur	w9, [x29, #-0x10]
   22094: b85e83aa     	ldur	w10, [x29, #-0x18]
   22098: 0b020128     	add	w8, w9, w2
   2209c: 6b0a011f     	cmp	w8, w10
   220a0: 54002f69     	b.ls	0x2268c <syna_tcm_parse_touch_report+0x908>
   220a4: 2a1f03f9     	mov	w25, wzr
   220a8: 14000196     	b	0x22700 <syna_tcm_parse_touch_report+0x97c>
   220ac: 11000929     	add	w9, w9, #0x2
   220b0: b81f43a9     	stur	w9, [x29, #-0xc]
   220b4: 38686b02     	ldrb	w2, [x24, x8]
   220b8: 51008448     	sub	w8, w2, #0x21
   220bc: 3100811f     	cmn	w8, #0x20
   220c0: 5400b423     	b.lo	0x23744 <syna_tcm_parse_touch_report+0x19c0>
   220c4: b85f03a9     	ldur	w9, [x29, #-0x10]
   220c8: b85e83aa     	ldur	w10, [x29, #-0x18]
   220cc: 0b020128     	add	w8, w9, w2
   220d0: 6b0a011f     	cmp	w8, w10
   220d4: 54003229     	b.ls	0x22718 <syna_tcm_parse_touch_report+0x994>
   220d8: 2a1f03f9     	mov	w25, wzr
   220dc: 140001ac     	b	0x2278c <syna_tcm_parse_touch_report+0xa08>
   220e0: 11000929     	add	w9, w9, #0x2
   220e4: b81f43a9     	stur	w9, [x29, #-0xc]
   220e8: 38686b02     	ldrb	w2, [x24, x8]
   220ec: 51008448     	sub	w8, w2, #0x21
   220f0: 3100811f     	cmn	w8, #0x20
   220f4: 5400c2e3     	b.lo	0x23950 <syna_tcm_parse_touch_report+0x1bcc>
   220f8: b85f03a8     	ldur	w8, [x29, #-0x10]
   220fc: b85e83a9     	ldur	w9, [x29, #-0x18]
   22100: 0b02010b     	add	w11, w8, w2
   22104: 6b09017f     	cmp	w11, w9
   22108: 540034e9     	b.ls	0x227a4 <syna_tcm_parse_touch_report+0xa20>
   2210c: 2a1f03f9     	mov	w25, wzr
   22110: 140001c2     	b	0x22818 <syna_tcm_parse_touch_report+0xa94>
   22114: 11000929     	add	w9, w9, #0x2
   22118: b81f43a9     	stur	w9, [x29, #-0xc]
   2211c: 38686b02     	ldrb	w2, [x24, x8]
   22120: 51008448     	sub	w8, w2, #0x21
   22124: 3100811f     	cmn	w8, #0x20
   22128: 5400bc43     	b.lo	0x238b0 <syna_tcm_parse_touch_report+0x1b2c>
   2212c: b85f03a8     	ldur	w8, [x29, #-0x10]
   22130: b85e83aa     	ldur	w10, [x29, #-0x18]
   22134: 0b020109     	add	w9, w8, w2
   22138: 6b0a013f     	cmp	w9, w10
   2213c: 54003749     	b.ls	0x22824 <syna_tcm_parse_touch_report+0xaa0>
   22140: f94013e8     	ldr	x8, [sp, #0x20]
   22144: b81f03a9     	stur	w9, [x29, #-0x10]
   22148: b900051f     	str	wzr, [x8, #0x4]
   2214c: 140001dc     	b	0x228bc <syna_tcm_parse_touch_report+0xb38>
   22150: b85e83aa     	ldur	w10, [x29, #-0x18]
   22154: b94013eb     	ldr	w11, [sp, #0x10]
   22158: 2a1f03e9     	mov	w9, wzr
   2215c: 6b0a017f     	cmp	w11, w10
   22160: 2a1f03ea     	mov	w10, wzr
   22164: 54ffe863     	b.lo	0x21e70 <syna_tcm_parse_touch_report+0xec>
   22168: 17ffff3d     	b	0x21e5c <syna_tcm_parse_touch_report+0xd8>
   2216c: 11000929     	add	w9, w9, #0x2
   22170: b81f43a9     	stur	w9, [x29, #-0xc]
   22174: 38686b02     	ldrb	w2, [x24, x8]
   22178: 51008448     	sub	w8, w2, #0x21
   2217c: 3100811f     	cmn	w8, #0x20
   22180: 5400b123     	b.lo	0x237a4 <syna_tcm_parse_touch_report+0x1a20>
   22184: b85f03a8     	ldur	w8, [x29, #-0x10]
   22188: b85e83a9     	ldur	w9, [x29, #-0x18]
   2218c: 0b02010b     	add	w11, w8, w2
   22190: 6b09017f     	cmp	w11, w9
   22194: 54003a09     	b.ls	0x228d4 <syna_tcm_parse_touch_report+0xb50>
   22198: 2a1f03f9     	mov	w25, wzr
   2219c: 140001eb     	b	0x22948 <syna_tcm_parse_touch_report+0xbc4>
   221a0: b85f03a0     	ldur	w0, [x29, #-0x10]
   221a4: b94007e8     	ldr	w8, [sp, #0x4]
   221a8: b85e83a9     	ldur	w9, [x29, #-0x18]
   221ac: 0b080008     	add	w8, w0, w8
   221b0: 6b09011f     	cmp	w8, w9
   221b4: 5400a3c8     	b.hi	0x2362c <syna_tcm_parse_touch_report+0x18a8>
   221b8: 54ffe520     	b.eq	0x21e5c <syna_tcm_parse_touch_report+0xd8>
   221bc: 360086b7     	tbz	w23, #0x0, 0x23290 <syna_tcm_parse_touch_report+0x150c>
   221c0: b9400fe8     	ldr	w8, [sp, #0xc]
   221c4: 36008c28     	tbz	w8, #0x0, 0x23348 <syna_tcm_parse_touch_report+0x15c4>
   221c8: b9400be8     	ldr	w8, [sp, #0x8]
   221cc: 11000421     	add	w1, w1, #0x1
   221d0: 11000669     	add	w9, w19, #0x1
   221d4: 5280002a     	mov	w10, #0x1               // =1
   221d8: 6b08003f     	cmp	w1, w8
   221dc: 52800028     	mov	w8, #0x1                // =1
   221e0: b9000fe8     	str	w8, [sp, #0xc]
   221e4: 2a1a03e8     	mov	w8, w26
   221e8: 54ffe442     	b.hs	0x21e70 <syna_tcm_parse_touch_report+0xec>
   221ec: 52800028     	mov	w8, #0x1                // =1
   221f0: b81f43ba     	stur	w26, [x29, #-0xc]
   221f4: b9000fe8     	str	w8, [sp, #0xc]
   221f8: 2a1a03e8     	mov	w8, w26
   221fc: 17ffff1d     	b	0x21e70 <syna_tcm_parse_touch_report+0xec>
   22200: 11000929     	add	w9, w9, #0x2
   22204: b81f43a9     	stur	w9, [x29, #-0xc]
   22208: 38686b02     	ldrb	w2, [x24, x8]
   2220c: 51008448     	sub	w8, w2, #0x21
   22210: 3100811f     	cmn	w8, #0x20
   22214: 5400b1e3     	b.lo	0x23850 <syna_tcm_parse_touch_report+0x1acc>
   22218: b85f03a9     	ldur	w9, [x29, #-0x10]
   2221c: b85e83aa     	ldur	w10, [x29, #-0x18]
   22220: 0b020128     	add	w8, w9, w2
   22224: 6b0a011f     	cmp	w8, w10
   22228: 54003969     	b.ls	0x22954 <syna_tcm_parse_touch_report+0xbd0>
   2222c: 2a1f03f9     	mov	w25, wzr
   22230: 140001e6     	b	0x229c8 <syna_tcm_parse_touch_report+0xc44>
   22234: 11000929     	add	w9, w9, #0x2
   22238: b81f43a9     	stur	w9, [x29, #-0xc]
   2223c: 38686b02     	ldrb	w2, [x24, x8]
   22240: 51008448     	sub	w8, w2, #0x21
   22244: 3100811f     	cmn	w8, #0x20
   22248: 5400b943     	b.lo	0x23970 <syna_tcm_parse_touch_report+0x1bec>
   2224c: b85f03a8     	ldur	w8, [x29, #-0x10]
   22250: b85e83a9     	ldur	w9, [x29, #-0x18]
   22254: 0b02010b     	add	w11, w8, w2
   22258: 6b09017f     	cmp	w11, w9
   2225c: 54003c29     	b.ls	0x229e0 <syna_tcm_parse_touch_report+0xc5c>
   22260: 2a1f03f9     	mov	w25, wzr
   22264: 140001fc     	b	0x22a54 <syna_tcm_parse_touch_report+0xcd0>
   22268: 11000929     	add	w9, w9, #0x2
   2226c: b81f43a9     	stur	w9, [x29, #-0xc]
   22270: 38686b02     	ldrb	w2, [x24, x8]
   22274: 51008448     	sub	w8, w2, #0x21
   22278: 3100811f     	cmn	w8, #0x20
   2227c: 5400aa43     	b.lo	0x237c4 <syna_tcm_parse_touch_report+0x1a40>
   22280: b85f03a8     	ldur	w8, [x29, #-0x10]
   22284: b85e83a9     	ldur	w9, [x29, #-0x18]
   22288: 0b02010b     	add	w11, w8, w2
   2228c: 6b09017f     	cmp	w11, w9
   22290: 54003e89     	b.ls	0x22a60 <syna_tcm_parse_touch_report+0xcdc>
   22294: 2a1f03f9     	mov	w25, wzr
   22298: 1400020f     	b	0x22ad4 <syna_tcm_parse_touch_report+0xd50>
   2229c: 11000929     	add	w9, w9, #0x2
   222a0: b81f43a9     	stur	w9, [x29, #-0xc]
   222a4: 38686b02     	ldrb	w2, [x24, x8]
   222a8: 51008448     	sub	w8, w2, #0x21
   222ac: 3100811f     	cmn	w8, #0x20
   222b0: 5400b203     	b.lo	0x238f0 <syna_tcm_parse_touch_report+0x1b6c>
   222b4: b85f03a8     	ldur	w8, [x29, #-0x10]
   222b8: b85e83a9     	ldur	w9, [x29, #-0x18]
   222bc: 0b02010b     	add	w11, w8, w2
   222c0: 6b09017f     	cmp	w11, w9
   222c4: 540040e9     	b.ls	0x22ae0 <syna_tcm_parse_touch_report+0xd5c>
   222c8: 2a1f03f9     	mov	w25, wzr
   222cc: 14000222     	b	0x22b54 <syna_tcm_parse_touch_report+0xdd0>
   222d0: 11000929     	add	w9, w9, #0x2
   222d4: b81f43a9     	stur	w9, [x29, #-0xc]
   222d8: 38686b02     	ldrb	w2, [x24, x8]
   222dc: 51008448     	sub	w8, w2, #0x21
   222e0: 3100811f     	cmn	w8, #0x20
   222e4: 5400ac63     	b.lo	0x23870 <syna_tcm_parse_touch_report+0x1aec>
   222e8: b85f03a8     	ldur	w8, [x29, #-0x10]
   222ec: b85e83a9     	ldur	w9, [x29, #-0x18]
   222f0: 0b02010b     	add	w11, w8, w2
   222f4: 6b09017f     	cmp	w11, w9
   222f8: 54004349     	b.ls	0x22b60 <syna_tcm_parse_touch_report+0xddc>
   222fc: 2a1f03f9     	mov	w25, wzr
   22300: 14000235     	b	0x22bd4 <syna_tcm_parse_touch_report+0xe50>
   22304: 11000929     	add	w9, w9, #0x2
   22308: b81f43a9     	stur	w9, [x29, #-0xc]
   2230c: 38686b02     	ldrb	w2, [x24, x8]
   22310: 51008448     	sub	w8, w2, #0x21
   22314: 3100811f     	cmn	w8, #0x20
   22318: 5400adc3     	b.lo	0x238d0 <syna_tcm_parse_touch_report+0x1b4c>
   2231c: b85f03a9     	ldur	w9, [x29, #-0x10]
   22320: b85e83aa     	ldur	w10, [x29, #-0x18]
   22324: 0b020128     	add	w8, w9, w2
   22328: 6b0a011f     	cmp	w8, w10
   2232c: 540045a9     	b.ls	0x22be0 <syna_tcm_parse_touch_report+0xe5c>
   22330: 2a1f03f9     	mov	w25, wzr
   22334: 14000248     	b	0x22c54 <syna_tcm_parse_touch_report+0xed0>
   22338: 11000929     	add	w9, w9, #0x2
   2233c: b81f43a9     	stur	w9, [x29, #-0xc]
   22340: 38686b02     	ldrb	w2, [x24, x8]
   22344: 51008448     	sub	w8, w2, #0x21
   22348: 3100811f     	cmn	w8, #0x20
   2234c: 5400a723     	b.lo	0x23830 <syna_tcm_parse_touch_report+0x1aac>
   22350: b85f03a8     	ldur	w8, [x29, #-0x10]
   22354: b85e83a9     	ldur	w9, [x29, #-0x18]
   22358: 0b02010b     	add	w11, w8, w2
   2235c: 6b09017f     	cmp	w11, w9
   22360: 54004869     	b.ls	0x22c6c <syna_tcm_parse_touch_report+0xee8>
   22364: 2a1f03f9     	mov	w25, wzr
   22368: 1400025e     	b	0x22ce0 <syna_tcm_parse_touch_report+0xf5c>
   2236c: 11000929     	add	w9, w9, #0x2
   22370: b81f43a9     	stur	w9, [x29, #-0xc]
   22374: 38686b02     	ldrb	w2, [x24, x8]
   22378: 51008448     	sub	w8, w2, #0x21
   2237c: 3100811f     	cmn	w8, #0x20
   22380: 5400a423     	b.lo	0x23804 <syna_tcm_parse_touch_report+0x1a80>
   22384: b85f03a8     	ldur	w8, [x29, #-0x10]
   22388: b85e83a9     	ldur	w9, [x29, #-0x18]
   2238c: 0b02010b     	add	w11, w8, w2
   22390: 6b09017f     	cmp	w11, w9
   22394: 54004b09     	b.ls	0x22cf4 <syna_tcm_parse_touch_report+0xf70>
   22398: 2a1f03f9     	mov	w25, wzr
   2239c: 14000273     	b	0x22d68 <syna_tcm_parse_touch_report+0xfe4>
   223a0: 11000929     	add	w9, w9, #0x2
   223a4: b81f43a9     	stur	w9, [x29, #-0xc]
   223a8: 38686b02     	ldrb	w2, [x24, x8]
   223ac: 51008448     	sub	w8, w2, #0x21
   223b0: 3100811f     	cmn	w8, #0x20
   223b4: 54009783     	b.lo	0x236a4 <syna_tcm_parse_touch_report+0x1920>
   223b8: b85f03a9     	ldur	w9, [x29, #-0x10]
   223bc: b85e83aa     	ldur	w10, [x29, #-0x18]
   223c0: 0b020128     	add	w8, w9, w2
   223c4: 6b0a011f     	cmp	w8, w10
   223c8: 54004d69     	b.ls	0x22d74 <syna_tcm_parse_touch_report+0xff0>
   223cc: 2a1f03f9     	mov	w25, wzr
   223d0: 14000286     	b	0x22de8 <syna_tcm_parse_touch_report+0x1064>
   223d4: 11000929     	add	w9, w9, #0x2
   223d8: b81f43a9     	stur	w9, [x29, #-0xc]
   223dc: 38686b02     	ldrb	w2, [x24, x8]
   223e0: 51008448     	sub	w8, w2, #0x21
   223e4: 3100811f     	cmn	w8, #0x20
   223e8: 5400a943     	b.lo	0x23910 <syna_tcm_parse_touch_report+0x1b8c>
   223ec: b85f03a9     	ldur	w9, [x29, #-0x10]
   223f0: b85e83aa     	ldur	w10, [x29, #-0x18]
   223f4: 0b020128     	add	w8, w9, w2
   223f8: 6b0a011f     	cmp	w8, w10
   223fc: 54005029     	b.ls	0x22e00 <syna_tcm_parse_touch_report+0x107c>
   22400: 2a1f03f9     	mov	w25, wzr
   22404: 1400029c     	b	0x22e74 <syna_tcm_parse_touch_report+0x10f0>
   22408: 11000929     	add	w9, w9, #0x2
   2240c: b81f43a9     	stur	w9, [x29, #-0xc]
   22410: 38686b02     	ldrb	w2, [x24, x8]
   22414: 51008448     	sub	w8, w2, #0x21
   22418: 3100811f     	cmn	w8, #0x20
   2241c: 54009b43     	b.lo	0x23784 <syna_tcm_parse_touch_report+0x1a00>
   22420: b85f03a8     	ldur	w8, [x29, #-0x10]
   22424: b85e83a9     	ldur	w9, [x29, #-0x18]
   22428: 0b02010b     	add	w11, w8, w2
   2242c: 6b09017f     	cmp	w11, w9
   22430: 540052e9     	b.ls	0x22e8c <syna_tcm_parse_touch_report+0x1108>
   22434: 2a1f03f9     	mov	w25, wzr
   22438: 140002b2     	b	0x22f00 <syna_tcm_parse_touch_report+0x117c>
   2243c: 11000929     	add	w9, w9, #0x2
   22440: b81f43a9     	stur	w9, [x29, #-0xc]
   22444: 38686b02     	ldrb	w2, [x24, x8]
   22448: 51008448     	sub	w8, w2, #0x21
   2244c: 3100811f     	cmn	w8, #0x20
   22450: 540093a3     	b.lo	0x236c4 <syna_tcm_parse_touch_report+0x1940>
   22454: b85f03a8     	ldur	w8, [x29, #-0x10]
   22458: b85e83a9     	ldur	w9, [x29, #-0x18]
   2245c: 0b02010b     	add	w11, w8, w2
   22460: 6b09017f     	cmp	w11, w9
   22464: 54005549     	b.ls	0x22f0c <syna_tcm_parse_touch_report+0x1188>
   22468: 2a1f03f9     	mov	w25, wzr
   2246c: 140002c5     	b	0x22f80 <syna_tcm_parse_touch_report+0x11fc>
   22470: 11000929     	add	w9, w9, #0x2
   22474: b81f43a9     	stur	w9, [x29, #-0xc]
   22478: 38686b02     	ldrb	w2, [x24, x8]
   2247c: 51008448     	sub	w8, w2, #0x21
   22480: 3100811f     	cmn	w8, #0x20
   22484: 54009703     	b.lo	0x23764 <syna_tcm_parse_touch_report+0x19e0>
   22488: b85f03a8     	ldur	w8, [x29, #-0x10]
   2248c: b85e83a9     	ldur	w9, [x29, #-0x18]
   22490: 0b02010b     	add	w11, w8, w2
   22494: 6b09017f     	cmp	w11, w9
   22498: 540057a9     	b.ls	0x22f8c <syna_tcm_parse_touch_report+0x1208>
   2249c: 2a1f03f9     	mov	w25, wzr
   224a0: 140002d8     	b	0x23000 <syna_tcm_parse_touch_report+0x127c>
   224a4: 11000929     	add	w9, w9, #0x2
   224a8: b81f43a9     	stur	w9, [x29, #-0xc]
   224ac: 38686b02     	ldrb	w2, [x24, x8]
   224b0: 51008448     	sub	w8, w2, #0x21
   224b4: 3100811f     	cmn	w8, #0x20
   224b8: 5400a3c3     	b.lo	0x23930 <syna_tcm_parse_touch_report+0x1bac>
   224bc: b85f03a8     	ldur	w8, [x29, #-0x10]
   224c0: b85e83a9     	ldur	w9, [x29, #-0x18]
   224c4: 0b02010b     	add	w11, w8, w2
   224c8: 6b09017f     	cmp	w11, w9
   224cc: 54005a09     	b.ls	0x2300c <syna_tcm_parse_touch_report+0x1288>
   224d0: 2a1f03f9     	mov	w25, wzr
   224d4: 140002eb     	b	0x23080 <syna_tcm_parse_touch_report+0x12fc>
   224d8: 11000929     	add	w9, w9, #0x2
   224dc: b81f43a9     	stur	w9, [x29, #-0xc]
   224e0: 38686b02     	ldrb	w2, [x24, x8]
   224e4: 51008448     	sub	w8, w2, #0x21
   224e8: 3100811f     	cmn	w8, #0x20
   224ec: 540090c3     	b.lo	0x23704 <syna_tcm_parse_touch_report+0x1980>
   224f0: b85f03a8     	ldur	w8, [x29, #-0x10]
   224f4: b85e83a9     	ldur	w9, [x29, #-0x18]
   224f8: 0b02010b     	add	w11, w8, w2
   224fc: 6b09017f     	cmp	w11, w9
   22500: 54005c69     	b.ls	0x2308c <syna_tcm_parse_touch_report+0x1308>
   22504: 2a1f03f9     	mov	w25, wzr
   22508: 140002fe     	b	0x23100 <syna_tcm_parse_touch_report+0x137c>
   2250c: 11000929     	add	w9, w9, #0x2
   22510: b81f43a9     	stur	w9, [x29, #-0xc]
   22514: 38686b02     	ldrb	w2, [x24, x8]
   22518: 51008448     	sub	w8, w2, #0x21
   2251c: 3100811f     	cmn	w8, #0x20
   22520: 54009b83     	b.lo	0x23890 <syna_tcm_parse_touch_report+0x1b0c>
   22524: b85f03a8     	ldur	w8, [x29, #-0x10]
   22528: b85e83a9     	ldur	w9, [x29, #-0x18]
   2252c: 0b02010b     	add	w11, w8, w2
   22530: 6b09017f     	cmp	w11, w9
   22534: 54005ec9     	b.ls	0x2310c <syna_tcm_parse_touch_report+0x1388>
   22538: 2a1f03f9     	mov	w25, wzr
   2253c: 14000311     	b	0x23180 <syna_tcm_parse_touch_report+0x13fc>
   22540: 11000929     	add	w9, w9, #0x2
   22544: b81f43a9     	stur	w9, [x29, #-0xc]
   22548: 38686b02     	ldrb	w2, [x24, x8]
   2254c: 51008448     	sub	w8, w2, #0x21
   22550: 3100811f     	cmn	w8, #0x20
   22554: 54008c83     	b.lo	0x236e4 <syna_tcm_parse_touch_report+0x1960>
   22558: b85f03a8     	ldur	w8, [x29, #-0x10]
   2255c: b85e83a9     	ldur	w9, [x29, #-0x18]
   22560: 0b02010b     	add	w11, w8, w2
   22564: 6b09017f     	cmp	w11, w9
   22568: 54006129     	b.ls	0x2318c <syna_tcm_parse_touch_report+0x1408>
   2256c: 2a1f03f9     	mov	w25, wzr
   22570: 14000324     	b	0x23200 <syna_tcm_parse_touch_report+0x147c>
   22574: 1200092b     	and	w11, w9, #0x7
   22578: 5280010c     	mov	w12, #0x8               // =8
   2257c: d343fd2a     	lsr	x10, x9, #3
   22580: 4b0b0189     	sub	w9, w12, w11
   22584: 52801fee     	mov	w14, #0xff              // =255
   22588: 6b02013f     	cmp	w9, w2
   2258c: 386a6aad     	ldrb	w13, [x21, x10]
   22590: 1a823129     	csel	w9, w9, w2, lo
   22594: 4b09018c     	sub	w12, w12, w9
   22598: 1acb25ab     	lsr	w11, w13, w11
   2259c: 6b090049     	subs	w9, w2, w9
   225a0: 1acc25cc     	lsr	w12, w14, w12
   225a4: 0a0c0179     	and	w25, w11, w12
   225a8: 54000200     	b.eq	0x225e8 <syna_tcm_parse_touch_report+0x864>
   225ac: 1100054a     	add	w10, w10, #0x1
   225b0: 7100213f     	cmp	w9, #0x8
   225b4: 5280010b     	mov	w11, #0x8               // =8
   225b8: 52801fed     	mov	w13, #0xff              // =255
   225bc: 1a8b312c     	csel	w12, w9, w11, lo
   225c0: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   225c4: 1100054a     	add	w10, w10, #0x1
   225c8: 4b0c016b     	sub	w11, w11, w12
   225cc: 1acb25ab     	lsr	w11, w13, w11
   225d0: 4b09004d     	sub	w13, w2, w9
   225d4: 6b0c0129     	subs	w9, w9, w12
   225d8: 0a0e016b     	and	w11, w11, w14
   225dc: 1acd216b     	lsl	w11, w11, w13
   225e0: 2a190179     	orr	w25, w11, w25
   225e4: 54fffe61     	b.ne	0x225b0 <syna_tcm_parse_touch_report+0x82c>
   225e8: 52800689     	mov	w9, #0x34               // =52
   225ec: f9400fea     	ldr	x10, [sp, #0x18]
   225f0: b81f03a8     	stur	w8, [x29, #-0x10]
   225f4: 9ba92a69     	umaddl	x9, w19, w9, x10
   225f8: b9001d39     	str	w25, [x9, #0x1c]
   225fc: 17fffe1a     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   22600: 1200092b     	and	w11, w9, #0x7
   22604: 5280010c     	mov	w12, #0x8               // =8
   22608: d343fd2a     	lsr	x10, x9, #3
   2260c: 4b0b0189     	sub	w9, w12, w11
   22610: 52801fee     	mov	w14, #0xff              // =255
   22614: 6b02013f     	cmp	w9, w2
   22618: 386a6aad     	ldrb	w13, [x21, x10]
   2261c: 1a823129     	csel	w9, w9, w2, lo
   22620: 4b09018c     	sub	w12, w12, w9
   22624: 1acb25ab     	lsr	w11, w13, w11
   22628: 6b090049     	subs	w9, w2, w9
   2262c: 1acc25cc     	lsr	w12, w14, w12
   22630: 0a0c0179     	and	w25, w11, w12
   22634: 54000200     	b.eq	0x22674 <syna_tcm_parse_touch_report+0x8f0>
   22638: 1100054a     	add	w10, w10, #0x1
   2263c: 7100213f     	cmp	w9, #0x8
   22640: 5280010b     	mov	w11, #0x8               // =8
   22644: 52801fed     	mov	w13, #0xff              // =255
   22648: 1a8b312c     	csel	w12, w9, w11, lo
   2264c: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   22650: 1100054a     	add	w10, w10, #0x1
   22654: 4b0c016b     	sub	w11, w11, w12
   22658: 1acb25ab     	lsr	w11, w13, w11
   2265c: 4b09004d     	sub	w13, w2, w9
   22660: 6b0c0129     	subs	w9, w9, w12
   22664: 0a0e016b     	and	w11, w11, w14
   22668: 1acd216b     	lsl	w11, w11, w13
   2266c: 2a190179     	orr	w25, w11, w25
   22670: 54fffe61     	b.ne	0x2263c <syna_tcm_parse_touch_report+0x8b8>
   22674: 52800689     	mov	w9, #0x34               // =52
   22678: f9400fea     	ldr	x10, [sp, #0x18]
   2267c: b81f03a8     	stur	w8, [x29, #-0x10]
   22680: 9ba92a69     	umaddl	x9, w19, w9, x10
   22684: b9000d39     	str	w25, [x9, #0xc]
   22688: 17fffdf7     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   2268c: 1200092b     	and	w11, w9, #0x7
   22690: 5280010c     	mov	w12, #0x8               // =8
   22694: d343fd2a     	lsr	x10, x9, #3
   22698: 4b0b0189     	sub	w9, w12, w11
   2269c: 52801fee     	mov	w14, #0xff              // =255
   226a0: 6b02013f     	cmp	w9, w2
   226a4: 386a6aad     	ldrb	w13, [x21, x10]
   226a8: 1a823129     	csel	w9, w9, w2, lo
   226ac: 4b09018c     	sub	w12, w12, w9
   226b0: 1acb25ab     	lsr	w11, w13, w11
   226b4: 6b090049     	subs	w9, w2, w9
   226b8: 1acc25cc     	lsr	w12, w14, w12
   226bc: 0a0c0179     	and	w25, w11, w12
   226c0: 54000200     	b.eq	0x22700 <syna_tcm_parse_touch_report+0x97c>
   226c4: 1100054a     	add	w10, w10, #0x1
   226c8: 7100213f     	cmp	w9, #0x8
   226cc: 5280010b     	mov	w11, #0x8               // =8
   226d0: 52801fed     	mov	w13, #0xff              // =255
   226d4: 1a8b312c     	csel	w12, w9, w11, lo
   226d8: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   226dc: 1100054a     	add	w10, w10, #0x1
   226e0: 4b0c016b     	sub	w11, w11, w12
   226e4: 1acb25ab     	lsr	w11, w13, w11
   226e8: 4b09004d     	sub	w13, w2, w9
   226ec: 6b0c0129     	subs	w9, w9, w12
   226f0: 0a0e016b     	and	w11, w11, w14
   226f4: 1acd216b     	lsl	w11, w11, w13
   226f8: 2a190179     	orr	w25, w11, w25
   226fc: 54fffe61     	b.ne	0x226c8 <syna_tcm_parse_touch_report+0x944>
   22700: 52800689     	mov	w9, #0x34               // =52
   22704: f9400fea     	ldr	x10, [sp, #0x18]
   22708: b81f03a8     	stur	w8, [x29, #-0x10]
   2270c: 9ba92a69     	umaddl	x9, w19, w9, x10
   22710: b9001139     	str	w25, [x9, #0x10]
   22714: 17fffdd4     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   22718: 1200092b     	and	w11, w9, #0x7
   2271c: 5280010c     	mov	w12, #0x8               // =8
   22720: d343fd2a     	lsr	x10, x9, #3
   22724: 4b0b0189     	sub	w9, w12, w11
   22728: 52801fee     	mov	w14, #0xff              // =255
   2272c: 6b02013f     	cmp	w9, w2
   22730: 386a6aad     	ldrb	w13, [x21, x10]
   22734: 1a823129     	csel	w9, w9, w2, lo
   22738: 4b09018c     	sub	w12, w12, w9
   2273c: 1acb25ab     	lsr	w11, w13, w11
   22740: 6b090049     	subs	w9, w2, w9
   22744: 1acc25cc     	lsr	w12, w14, w12
   22748: 0a0c0179     	and	w25, w11, w12
   2274c: 54000200     	b.eq	0x2278c <syna_tcm_parse_touch_report+0xa08>
   22750: 1100054a     	add	w10, w10, #0x1
   22754: 7100213f     	cmp	w9, #0x8
   22758: 5280010b     	mov	w11, #0x8               // =8
   2275c: 52801fed     	mov	w13, #0xff              // =255
   22760: 1a8b312c     	csel	w12, w9, w11, lo
   22764: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   22768: 1100054a     	add	w10, w10, #0x1
   2276c: 4b0c016b     	sub	w11, w11, w12
   22770: 1acb25ab     	lsr	w11, w13, w11
   22774: 4b09004d     	sub	w13, w2, w9
   22778: 6b0c0129     	subs	w9, w9, w12
   2277c: 0a0e016b     	and	w11, w11, w14
   22780: 1acd216b     	lsl	w11, w11, w13
   22784: 2a190179     	orr	w25, w11, w25
   22788: 54fffe61     	b.ne	0x22754 <syna_tcm_parse_touch_report+0x9d0>
   2278c: 52800689     	mov	w9, #0x34               // =52
   22790: f9400fea     	ldr	x10, [sp, #0x18]
   22794: b81f03a8     	stur	w8, [x29, #-0x10]
   22798: 9ba92a69     	umaddl	x9, w19, w9, x10
   2279c: b9000939     	str	w25, [x9, #0x8]
   227a0: 17fffdb1     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   227a4: 1200090a     	and	w10, w8, #0x7
   227a8: 5280010c     	mov	w12, #0x8               // =8
   227ac: d343fd09     	lsr	x9, x8, #3
   227b0: 4b0a0188     	sub	w8, w12, w10
   227b4: 52801fee     	mov	w14, #0xff              // =255
   227b8: 6b02011f     	cmp	w8, w2
   227bc: 38696aad     	ldrb	w13, [x21, x9]
   227c0: 1a823108     	csel	w8, w8, w2, lo
   227c4: 4b08018c     	sub	w12, w12, w8
   227c8: 1aca25aa     	lsr	w10, w13, w10
   227cc: 6b080048     	subs	w8, w2, w8
   227d0: 1acc25cc     	lsr	w12, w14, w12
   227d4: 0a0c0159     	and	w25, w10, w12
   227d8: 54000200     	b.eq	0x22818 <syna_tcm_parse_touch_report+0xa94>
   227dc: 11000529     	add	w9, w9, #0x1
   227e0: 7100211f     	cmp	w8, #0x8
   227e4: 5280010a     	mov	w10, #0x8               // =8
   227e8: 52801fed     	mov	w13, #0xff              // =255
   227ec: 1a8a310c     	csel	w12, w8, w10, lo
   227f0: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   227f4: 11000529     	add	w9, w9, #0x1
   227f8: 4b0c014a     	sub	w10, w10, w12
   227fc: 1aca25aa     	lsr	w10, w13, w10
   22800: 4b08004d     	sub	w13, w2, w8
   22804: 6b0c0108     	subs	w8, w8, w12
   22808: 0a0e014a     	and	w10, w10, w14
   2280c: 1acd214a     	lsl	w10, w10, w13
   22810: 2a190159     	orr	w25, w10, w25
   22814: 54fffe61     	b.ne	0x227e0 <syna_tcm_parse_touch_report+0xa5c>
   22818: f94013e8     	ldr	x8, [sp, #0x20]
   2281c: b9024119     	str	w25, [x8, #0x240]
   22820: 1400027a     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22824: 1200090b     	and	w11, w8, #0x7
   22828: 5280010c     	mov	w12, #0x8               // =8
   2282c: d343fd0a     	lsr	x10, x8, #3
   22830: 4b0b0188     	sub	w8, w12, w11
   22834: 52801fee     	mov	w14, #0xff              // =255
   22838: 6b02011f     	cmp	w8, w2
   2283c: 386a6aad     	ldrb	w13, [x21, x10]
   22840: 1a823108     	csel	w8, w8, w2, lo
   22844: 4b08018c     	sub	w12, w12, w8
   22848: 1acb25ab     	lsr	w11, w13, w11
   2284c: 6b080048     	subs	w8, w2, w8
   22850: 1acc25cc     	lsr	w12, w14, w12
   22854: 0a0c0179     	and	w25, w11, w12
   22858: 54000200     	b.eq	0x22898 <syna_tcm_parse_touch_report+0xb14>
   2285c: 1100054a     	add	w10, w10, #0x1
   22860: 7100211f     	cmp	w8, #0x8
   22864: 5280010b     	mov	w11, #0x8               // =8
   22868: 52801fed     	mov	w13, #0xff              // =255
   2286c: 1a8b310c     	csel	w12, w8, w11, lo
   22870: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   22874: 1100054a     	add	w10, w10, #0x1
   22878: 4b0c016b     	sub	w11, w11, w12
   2287c: 1acb25ab     	lsr	w11, w13, w11
   22880: 4b08004d     	sub	w13, w2, w8
   22884: 6b0c0108     	subs	w8, w8, w12
   22888: 0a0e016b     	and	w11, w11, w14
   2288c: 1acd216b     	lsl	w11, w11, w13
   22890: 2a190179     	orr	w25, w11, w25
   22894: 54fffe61     	b.ne	0x22860 <syna_tcm_parse_touch_report+0xadc>
   22898: f94013e8     	ldr	x8, [sp, #0x20]
   2289c: b81f03a9     	stur	w9, [x29, #-0x10]
   228a0: 2a1303e9     	mov	w9, w19
   228a4: 2a1703ea     	mov	w10, w23
   228a8: b9000519     	str	w25, [x8, #0x4]
   228ac: 52800028     	mov	w8, #0x1                // =1
   228b0: 290123f9     	stp	w25, w8, [sp, #0x8]
   228b4: 2a1a03e8     	mov	w8, w26
   228b8: 35ffadd9     	cbnz	w25, 0x21e70 <syna_tcm_parse_touch_report+0xec>
   228bc: b94017e8     	ldr	w8, [sp, #0x14]
   228c0: 2a1f03f9     	mov	w25, wzr
   228c4: b81f43a8     	stur	w8, [x29, #-0xc]
   228c8: 52800028     	mov	w8, #0x1                // =1
   228cc: 290123ff     	stp	wzr, w8, [sp, #0x8]
   228d0: 17fffd65     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   228d4: 1200090a     	and	w10, w8, #0x7
   228d8: 5280010c     	mov	w12, #0x8               // =8
   228dc: d343fd09     	lsr	x9, x8, #3
   228e0: 4b0a0188     	sub	w8, w12, w10
   228e4: 52801fee     	mov	w14, #0xff              // =255
   228e8: 6b02011f     	cmp	w8, w2
   228ec: 38696aad     	ldrb	w13, [x21, x9]
   228f0: 1a823108     	csel	w8, w8, w2, lo
   228f4: 4b08018c     	sub	w12, w12, w8
   228f8: 1aca25aa     	lsr	w10, w13, w10
   228fc: 6b080048     	subs	w8, w2, w8
   22900: 1acc25cc     	lsr	w12, w14, w12
   22904: 0a0c0159     	and	w25, w10, w12
   22908: 54000200     	b.eq	0x22948 <syna_tcm_parse_touch_report+0xbc4>
   2290c: 11000529     	add	w9, w9, #0x1
   22910: 7100211f     	cmp	w8, #0x8
   22914: 5280010a     	mov	w10, #0x8               // =8
   22918: 52801fed     	mov	w13, #0xff              // =255
   2291c: 1a8a310c     	csel	w12, w8, w10, lo
   22920: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22924: 11000529     	add	w9, w9, #0x1
   22928: 4b0c014a     	sub	w10, w10, w12
   2292c: 1aca25aa     	lsr	w10, w13, w10
   22930: 4b08004d     	sub	w13, w2, w8
   22934: 6b0c0108     	subs	w8, w8, w12
   22938: 0a0e014a     	and	w10, w10, w14
   2293c: 1acd214a     	lsl	w10, w10, w13
   22940: 2a190159     	orr	w25, w10, w25
   22944: 54fffe61     	b.ne	0x22910 <syna_tcm_parse_touch_report+0xb8c>
   22948: f94013e8     	ldr	x8, [sp, #0x20]
   2294c: b9022119     	str	w25, [x8, #0x220]
   22950: 1400022e     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22954: 1200092b     	and	w11, w9, #0x7
   22958: 5280010c     	mov	w12, #0x8               // =8
   2295c: d343fd2a     	lsr	x10, x9, #3
   22960: 4b0b0189     	sub	w9, w12, w11
   22964: 52801fee     	mov	w14, #0xff              // =255
   22968: 6b02013f     	cmp	w9, w2
   2296c: 386a6aad     	ldrb	w13, [x21, x10]
   22970: 1a823129     	csel	w9, w9, w2, lo
   22974: 4b09018c     	sub	w12, w12, w9
   22978: 1acb25ab     	lsr	w11, w13, w11
   2297c: 6b090049     	subs	w9, w2, w9
   22980: 1acc25cc     	lsr	w12, w14, w12
   22984: 0a0c0179     	and	w25, w11, w12
   22988: 54000200     	b.eq	0x229c8 <syna_tcm_parse_touch_report+0xc44>
   2298c: 1100054a     	add	w10, w10, #0x1
   22990: 7100213f     	cmp	w9, #0x8
   22994: 5280010b     	mov	w11, #0x8               // =8
   22998: 52801fed     	mov	w13, #0xff              // =255
   2299c: 1a8b312c     	csel	w12, w9, w11, lo
   229a0: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   229a4: 1100054a     	add	w10, w10, #0x1
   229a8: 4b0c016b     	sub	w11, w11, w12
   229ac: 1acb25ab     	lsr	w11, w13, w11
   229b0: 4b09004d     	sub	w13, w2, w9
   229b4: 6b0c0129     	subs	w9, w9, w12
   229b8: 0a0e016b     	and	w11, w11, w14
   229bc: 1acd216b     	lsl	w11, w11, w13
   229c0: 2a190179     	orr	w25, w11, w25
   229c4: 54fffe61     	b.ne	0x22990 <syna_tcm_parse_touch_report+0xc0c>
   229c8: 52800689     	mov	w9, #0x34               // =52
   229cc: b81f03a8     	stur	w8, [x29, #-0x10]
   229d0: f9400fe8     	ldr	x8, [sp, #0x18]
   229d4: 9ba97e69     	umull	x9, w19, w9
   229d8: 38296919     	strb	w25, [x8, x9]
   229dc: 17fffd22     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   229e0: 1200090a     	and	w10, w8, #0x7
   229e4: 5280010c     	mov	w12, #0x8               // =8
   229e8: d343fd09     	lsr	x9, x8, #3
   229ec: 4b0a0188     	sub	w8, w12, w10
   229f0: 52801fee     	mov	w14, #0xff              // =255
   229f4: 6b02011f     	cmp	w8, w2
   229f8: 38696aad     	ldrb	w13, [x21, x9]
   229fc: 1a823108     	csel	w8, w8, w2, lo
   22a00: 4b08018c     	sub	w12, w12, w8
   22a04: 1aca25aa     	lsr	w10, w13, w10
   22a08: 6b080048     	subs	w8, w2, w8
   22a0c: 1acc25cc     	lsr	w12, w14, w12
   22a10: 0a0c0159     	and	w25, w10, w12
   22a14: 54000200     	b.eq	0x22a54 <syna_tcm_parse_touch_report+0xcd0>
   22a18: 11000529     	add	w9, w9, #0x1
   22a1c: 7100211f     	cmp	w8, #0x8
   22a20: 5280010a     	mov	w10, #0x8               // =8
   22a24: 52801fed     	mov	w13, #0xff              // =255
   22a28: 1a8a310c     	csel	w12, w8, w10, lo
   22a2c: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22a30: 11000529     	add	w9, w9, #0x1
   22a34: 4b0c014a     	sub	w10, w10, w12
   22a38: 1aca25aa     	lsr	w10, w13, w10
   22a3c: 4b08004d     	sub	w13, w2, w8
   22a40: 6b0c0108     	subs	w8, w8, w12
   22a44: 0a0e014a     	and	w10, w10, w14
   22a48: 1acd214a     	lsl	w10, w10, w13
   22a4c: 2a190159     	orr	w25, w10, w25
   22a50: 54fffe61     	b.ne	0x22a1c <syna_tcm_parse_touch_report+0xc98>
   22a54: f94013e8     	ldr	x8, [sp, #0x20]
   22a58: b9022519     	str	w25, [x8, #0x224]
   22a5c: 140001eb     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22a60: 1200090a     	and	w10, w8, #0x7
   22a64: 5280010c     	mov	w12, #0x8               // =8
   22a68: d343fd09     	lsr	x9, x8, #3
   22a6c: 4b0a0188     	sub	w8, w12, w10
   22a70: 52801fee     	mov	w14, #0xff              // =255
   22a74: 6b02011f     	cmp	w8, w2
   22a78: 38696aad     	ldrb	w13, [x21, x9]
   22a7c: 1a823108     	csel	w8, w8, w2, lo
   22a80: 4b08018c     	sub	w12, w12, w8
   22a84: 1aca25aa     	lsr	w10, w13, w10
   22a88: 6b080048     	subs	w8, w2, w8
   22a8c: 1acc25cc     	lsr	w12, w14, w12
   22a90: 0a0c0159     	and	w25, w10, w12
   22a94: 54000200     	b.eq	0x22ad4 <syna_tcm_parse_touch_report+0xd50>
   22a98: 11000529     	add	w9, w9, #0x1
   22a9c: 7100211f     	cmp	w8, #0x8
   22aa0: 5280010a     	mov	w10, #0x8               // =8
   22aa4: 52801fed     	mov	w13, #0xff              // =255
   22aa8: 1a8a310c     	csel	w12, w8, w10, lo
   22aac: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22ab0: 11000529     	add	w9, w9, #0x1
   22ab4: 4b0c014a     	sub	w10, w10, w12
   22ab8: 1aca25aa     	lsr	w10, w13, w10
   22abc: 4b08004d     	sub	w13, w2, w8
   22ac0: 6b0c0108     	subs	w8, w8, w12
   22ac4: 0a0e014a     	and	w10, w10, w14
   22ac8: 1acd214a     	lsl	w10, w10, w13
   22acc: 2a190159     	orr	w25, w10, w25
   22ad0: 54fffe61     	b.ne	0x22a9c <syna_tcm_parse_touch_report+0xd18>
   22ad4: f94013e8     	ldr	x8, [sp, #0x20]
   22ad8: b9023119     	str	w25, [x8, #0x230]
   22adc: 140001cb     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22ae0: 1200090a     	and	w10, w8, #0x7
   22ae4: 5280010c     	mov	w12, #0x8               // =8
   22ae8: d343fd09     	lsr	x9, x8, #3
   22aec: 4b0a0188     	sub	w8, w12, w10
   22af0: 52801fee     	mov	w14, #0xff              // =255
   22af4: 6b02011f     	cmp	w8, w2
   22af8: 38696aad     	ldrb	w13, [x21, x9]
   22afc: 1a823108     	csel	w8, w8, w2, lo
   22b00: 4b08018c     	sub	w12, w12, w8
   22b04: 1aca25aa     	lsr	w10, w13, w10
   22b08: 6b080048     	subs	w8, w2, w8
   22b0c: 1acc25cc     	lsr	w12, w14, w12
   22b10: 0a0c0159     	and	w25, w10, w12
   22b14: 54000200     	b.eq	0x22b54 <syna_tcm_parse_touch_report+0xdd0>
   22b18: 11000529     	add	w9, w9, #0x1
   22b1c: 7100211f     	cmp	w8, #0x8
   22b20: 5280010a     	mov	w10, #0x8               // =8
   22b24: 52801fed     	mov	w13, #0xff              // =255
   22b28: 1a8a310c     	csel	w12, w8, w10, lo
   22b2c: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22b30: 11000529     	add	w9, w9, #0x1
   22b34: 4b0c014a     	sub	w10, w10, w12
   22b38: 1aca25aa     	lsr	w10, w13, w10
   22b3c: 4b08004d     	sub	w13, w2, w8
   22b40: 6b0c0108     	subs	w8, w8, w12
   22b44: 0a0e014a     	and	w10, w10, w14
   22b48: 1acd214a     	lsl	w10, w10, w13
   22b4c: 2a190159     	orr	w25, w10, w25
   22b50: 54fffe61     	b.ne	0x22b1c <syna_tcm_parse_touch_report+0xd98>
   22b54: f94013e8     	ldr	x8, [sp, #0x20]
   22b58: b9021d19     	str	w25, [x8, #0x21c]
   22b5c: 140001ab     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22b60: 1200090a     	and	w10, w8, #0x7
   22b64: 5280010c     	mov	w12, #0x8               // =8
   22b68: d343fd09     	lsr	x9, x8, #3
   22b6c: 4b0a0188     	sub	w8, w12, w10
   22b70: 52801fee     	mov	w14, #0xff              // =255
   22b74: 6b02011f     	cmp	w8, w2
   22b78: 38696aad     	ldrb	w13, [x21, x9]
   22b7c: 1a823108     	csel	w8, w8, w2, lo
   22b80: 4b08018c     	sub	w12, w12, w8
   22b84: 1aca25aa     	lsr	w10, w13, w10
   22b88: 6b080048     	subs	w8, w2, w8
   22b8c: 1acc25cc     	lsr	w12, w14, w12
   22b90: 0a0c0159     	and	w25, w10, w12
   22b94: 54000200     	b.eq	0x22bd4 <syna_tcm_parse_touch_report+0xe50>
   22b98: 11000529     	add	w9, w9, #0x1
   22b9c: 7100211f     	cmp	w8, #0x8
   22ba0: 5280010a     	mov	w10, #0x8               // =8
   22ba4: 52801fed     	mov	w13, #0xff              // =255
   22ba8: 1a8a310c     	csel	w12, w8, w10, lo
   22bac: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22bb0: 11000529     	add	w9, w9, #0x1
   22bb4: 4b0c014a     	sub	w10, w10, w12
   22bb8: 1aca25aa     	lsr	w10, w13, w10
   22bbc: 4b08004d     	sub	w13, w2, w8
   22bc0: 6b0c0108     	subs	w8, w8, w12
   22bc4: 0a0e014a     	and	w10, w10, w14
   22bc8: 1acd214a     	lsl	w10, w10, w13
   22bcc: 2a190159     	orr	w25, w10, w25
   22bd0: 54fffe61     	b.ne	0x22b9c <syna_tcm_parse_touch_report+0xe18>
   22bd4: f94013e8     	ldr	x8, [sp, #0x20]
   22bd8: b9023519     	str	w25, [x8, #0x234]
   22bdc: 1400018b     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22be0: 1200092b     	and	w11, w9, #0x7
   22be4: 5280010c     	mov	w12, #0x8               // =8
   22be8: d343fd2a     	lsr	x10, x9, #3
   22bec: 4b0b0189     	sub	w9, w12, w11
   22bf0: 52801fee     	mov	w14, #0xff              // =255
   22bf4: 6b02013f     	cmp	w9, w2
   22bf8: 386a6aad     	ldrb	w13, [x21, x10]
   22bfc: 1a823129     	csel	w9, w9, w2, lo
   22c00: 4b09018c     	sub	w12, w12, w9
   22c04: 1acb25ab     	lsr	w11, w13, w11
   22c08: 6b090049     	subs	w9, w2, w9
   22c0c: 1acc25cc     	lsr	w12, w14, w12
   22c10: 0a0c0179     	and	w25, w11, w12
   22c14: 54000200     	b.eq	0x22c54 <syna_tcm_parse_touch_report+0xed0>
   22c18: 1100054a     	add	w10, w10, #0x1
   22c1c: 7100213f     	cmp	w9, #0x8
   22c20: 5280010b     	mov	w11, #0x8               // =8
   22c24: 52801fed     	mov	w13, #0xff              // =255
   22c28: 1a8b312c     	csel	w12, w9, w11, lo
   22c2c: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   22c30: 1100054a     	add	w10, w10, #0x1
   22c34: 4b0c016b     	sub	w11, w11, w12
   22c38: 1acb25ab     	lsr	w11, w13, w11
   22c3c: 4b09004d     	sub	w13, w2, w9
   22c40: 6b0c0129     	subs	w9, w9, w12
   22c44: 0a0e016b     	and	w11, w11, w14
   22c48: 1acd216b     	lsl	w11, w11, w13
   22c4c: 2a190179     	orr	w25, w11, w25
   22c50: 54fffe61     	b.ne	0x22c1c <syna_tcm_parse_touch_report+0xe98>
   22c54: 52800689     	mov	w9, #0x34               // =52
   22c58: f9400fea     	ldr	x10, [sp, #0x18]
   22c5c: b81f03a8     	stur	w8, [x29, #-0x10]
   22c60: 9ba92a69     	umaddl	x9, w19, w9, x10
   22c64: b9001939     	str	w25, [x9, #0x18]
   22c68: 17fffc7f     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   22c6c: 1200090a     	and	w10, w8, #0x7
   22c70: 5280010c     	mov	w12, #0x8               // =8
   22c74: d343fd09     	lsr	x9, x8, #3
   22c78: 4b0a0188     	sub	w8, w12, w10
   22c7c: 52801fee     	mov	w14, #0xff              // =255
   22c80: 6b02011f     	cmp	w8, w2
   22c84: 38696aad     	ldrb	w13, [x21, x9]
   22c88: 1a823108     	csel	w8, w8, w2, lo
   22c8c: 4b08018c     	sub	w12, w12, w8
   22c90: 1aca25aa     	lsr	w10, w13, w10
   22c94: 6b080048     	subs	w8, w2, w8
   22c98: 1acc25cc     	lsr	w12, w14, w12
   22c9c: 0a0c0159     	and	w25, w10, w12
   22ca0: 54000200     	b.eq	0x22ce0 <syna_tcm_parse_touch_report+0xf5c>
   22ca4: 11000529     	add	w9, w9, #0x1
   22ca8: 7100211f     	cmp	w8, #0x8
   22cac: 5280010a     	mov	w10, #0x8               // =8
   22cb0: 52801fed     	mov	w13, #0xff              // =255
   22cb4: 1a8a310c     	csel	w12, w8, w10, lo
   22cb8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22cbc: 11000529     	add	w9, w9, #0x1
   22cc0: 4b0c014a     	sub	w10, w10, w12
   22cc4: 1aca25aa     	lsr	w10, w13, w10
   22cc8: 4b08004d     	sub	w13, w2, w8
   22ccc: 6b0c0108     	subs	w8, w8, w12
   22cd0: 0a0e014a     	and	w10, w10, w14
   22cd4: 1acd214a     	lsl	w10, w10, w13
   22cd8: 2a190159     	orr	w25, w10, w25
   22cdc: 54fffe61     	b.ne	0x22ca8 <syna_tcm_parse_touch_report+0xf24>
   22ce0: f94013e8     	ldr	x8, [sp, #0x20]
   22ce4: 2a1903e9     	mov	w9, w25
   22ce8: b9000119     	str	w25, [x8]
   22cec: 2a1a03e8     	mov	w8, w26
   22cf0: 14000148     	b	0x23210 <syna_tcm_parse_touch_report+0x148c>
   22cf4: 1200090a     	and	w10, w8, #0x7
   22cf8: 5280010c     	mov	w12, #0x8               // =8
   22cfc: d343fd09     	lsr	x9, x8, #3
   22d00: 4b0a0188     	sub	w8, w12, w10
   22d04: 52801fee     	mov	w14, #0xff              // =255
   22d08: 6b02011f     	cmp	w8, w2
   22d0c: 38696aad     	ldrb	w13, [x21, x9]
   22d10: 1a823108     	csel	w8, w8, w2, lo
   22d14: 4b08018c     	sub	w12, w12, w8
   22d18: 1aca25aa     	lsr	w10, w13, w10
   22d1c: 6b080048     	subs	w8, w2, w8
   22d20: 1acc25cc     	lsr	w12, w14, w12
   22d24: 0a0c0159     	and	w25, w10, w12
   22d28: 54000200     	b.eq	0x22d68 <syna_tcm_parse_touch_report+0xfe4>
   22d2c: 11000529     	add	w9, w9, #0x1
   22d30: 7100211f     	cmp	w8, #0x8
   22d34: 5280010a     	mov	w10, #0x8               // =8
   22d38: 52801fed     	mov	w13, #0xff              // =255
   22d3c: 1a8a310c     	csel	w12, w8, w10, lo
   22d40: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22d44: 11000529     	add	w9, w9, #0x1
   22d48: 4b0c014a     	sub	w10, w10, w12
   22d4c: 1aca25aa     	lsr	w10, w13, w10
   22d50: 4b08004d     	sub	w13, w2, w8
   22d54: 6b0c0108     	subs	w8, w8, w12
   22d58: 0a0e014a     	and	w10, w10, w14
   22d5c: 1acd214a     	lsl	w10, w10, w13
   22d60: 2a190159     	orr	w25, w10, w25
   22d64: 54fffe61     	b.ne	0x22d30 <syna_tcm_parse_touch_report+0xfac>
   22d68: f94013e8     	ldr	x8, [sp, #0x20]
   22d6c: b9022919     	str	w25, [x8, #0x228]
   22d70: 14000126     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22d74: 1200092b     	and	w11, w9, #0x7
   22d78: 5280010c     	mov	w12, #0x8               // =8
   22d7c: d343fd2a     	lsr	x10, x9, #3
   22d80: 4b0b0189     	sub	w9, w12, w11
   22d84: 52801fee     	mov	w14, #0xff              // =255
   22d88: 6b02013f     	cmp	w9, w2
   22d8c: 386a6aad     	ldrb	w13, [x21, x10]
   22d90: 1a823129     	csel	w9, w9, w2, lo
   22d94: 4b09018c     	sub	w12, w12, w9
   22d98: 1acb25ab     	lsr	w11, w13, w11
   22d9c: 6b090049     	subs	w9, w2, w9
   22da0: 1acc25cc     	lsr	w12, w14, w12
   22da4: 0a0c0179     	and	w25, w11, w12
   22da8: 54000200     	b.eq	0x22de8 <syna_tcm_parse_touch_report+0x1064>
   22dac: 1100054a     	add	w10, w10, #0x1
   22db0: 7100213f     	cmp	w9, #0x8
   22db4: 5280010b     	mov	w11, #0x8               // =8
   22db8: 52801fed     	mov	w13, #0xff              // =255
   22dbc: 1a8b312c     	csel	w12, w9, w11, lo
   22dc0: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   22dc4: 1100054a     	add	w10, w10, #0x1
   22dc8: 4b0c016b     	sub	w11, w11, w12
   22dcc: 1acb25ab     	lsr	w11, w13, w11
   22dd0: 4b09004d     	sub	w13, w2, w9
   22dd4: 6b0c0129     	subs	w9, w9, w12
   22dd8: 0a0e016b     	and	w11, w11, w14
   22ddc: 1acd216b     	lsl	w11, w11, w13
   22de0: 2a190179     	orr	w25, w11, w25
   22de4: 54fffe61     	b.ne	0x22db0 <syna_tcm_parse_touch_report+0x102c>
   22de8: 52800689     	mov	w9, #0x34               // =52
   22dec: f9400fea     	ldr	x10, [sp, #0x18]
   22df0: b81f03a8     	stur	w8, [x29, #-0x10]
   22df4: 9ba92a69     	umaddl	x9, w19, w9, x10
   22df8: b9001539     	str	w25, [x9, #0x14]
   22dfc: 17fffc1a     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   22e00: 1200092b     	and	w11, w9, #0x7
   22e04: 5280010c     	mov	w12, #0x8               // =8
   22e08: d343fd2a     	lsr	x10, x9, #3
   22e0c: 4b0b0189     	sub	w9, w12, w11
   22e10: 52801fee     	mov	w14, #0xff              // =255
   22e14: 6b02013f     	cmp	w9, w2
   22e18: 386a6aad     	ldrb	w13, [x21, x10]
   22e1c: 1a823129     	csel	w9, w9, w2, lo
   22e20: 4b09018c     	sub	w12, w12, w9
   22e24: 1acb25ab     	lsr	w11, w13, w11
   22e28: 6b090049     	subs	w9, w2, w9
   22e2c: 1acc25cc     	lsr	w12, w14, w12
   22e30: 0a0c0179     	and	w25, w11, w12
   22e34: 54000200     	b.eq	0x22e74 <syna_tcm_parse_touch_report+0x10f0>
   22e38: 1100054a     	add	w10, w10, #0x1
   22e3c: 7100213f     	cmp	w9, #0x8
   22e40: 5280010b     	mov	w11, #0x8               // =8
   22e44: 52801fed     	mov	w13, #0xff              // =255
   22e48: 1a8b312c     	csel	w12, w9, w11, lo
   22e4c: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   22e50: 1100054a     	add	w10, w10, #0x1
   22e54: 4b0c016b     	sub	w11, w11, w12
   22e58: 1acb25ab     	lsr	w11, w13, w11
   22e5c: 4b09004d     	sub	w13, w2, w9
   22e60: 6b0c0129     	subs	w9, w9, w12
   22e64: 0a0e016b     	and	w11, w11, w14
   22e68: 1acd216b     	lsl	w11, w11, w13
   22e6c: 2a190179     	orr	w25, w11, w25
   22e70: 54fffe61     	b.ne	0x22e3c <syna_tcm_parse_touch_report+0x10b8>
   22e74: 52800689     	mov	w9, #0x34               // =52
   22e78: f9400fea     	ldr	x10, [sp, #0x18]
   22e7c: b81f03a8     	stur	w8, [x29, #-0x10]
   22e80: 9ba92a69     	umaddl	x9, w19, w9, x10
   22e84: b9000539     	str	w25, [x9, #0x4]
   22e88: 17fffbf7     	b	0x21e64 <syna_tcm_parse_touch_report+0xe0>
   22e8c: 1200090a     	and	w10, w8, #0x7
   22e90: 5280010c     	mov	w12, #0x8               // =8
   22e94: d343fd09     	lsr	x9, x8, #3
   22e98: 4b0a0188     	sub	w8, w12, w10
   22e9c: 52801fee     	mov	w14, #0xff              // =255
   22ea0: 6b02011f     	cmp	w8, w2
   22ea4: 38696aad     	ldrb	w13, [x21, x9]
   22ea8: 1a823108     	csel	w8, w8, w2, lo
   22eac: 4b08018c     	sub	w12, w12, w8
   22eb0: 1aca25aa     	lsr	w10, w13, w10
   22eb4: 6b080048     	subs	w8, w2, w8
   22eb8: 1acc25cc     	lsr	w12, w14, w12
   22ebc: 0a0c0159     	and	w25, w10, w12
   22ec0: 54000200     	b.eq	0x22f00 <syna_tcm_parse_touch_report+0x117c>
   22ec4: 11000529     	add	w9, w9, #0x1
   22ec8: 7100211f     	cmp	w8, #0x8
   22ecc: 5280010a     	mov	w10, #0x8               // =8
   22ed0: 52801fed     	mov	w13, #0xff              // =255
   22ed4: 1a8a310c     	csel	w12, w8, w10, lo
   22ed8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22edc: 11000529     	add	w9, w9, #0x1
   22ee0: 4b0c014a     	sub	w10, w10, w12
   22ee4: 1aca25aa     	lsr	w10, w13, w10
   22ee8: 4b08004d     	sub	w13, w2, w8
   22eec: 6b0c0108     	subs	w8, w8, w12
   22ef0: 0a0e014a     	and	w10, w10, w14
   22ef4: 1acd214a     	lsl	w10, w10, w13
   22ef8: 2a190159     	orr	w25, w10, w25
   22efc: 54fffe61     	b.ne	0x22ec8 <syna_tcm_parse_touch_report+0x1144>
   22f00: f94013e8     	ldr	x8, [sp, #0x20]
   22f04: b9025119     	str	w25, [x8, #0x250]
   22f08: 140000c0     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22f0c: 1200090a     	and	w10, w8, #0x7
   22f10: 5280010c     	mov	w12, #0x8               // =8
   22f14: d343fd09     	lsr	x9, x8, #3
   22f18: 4b0a0188     	sub	w8, w12, w10
   22f1c: 52801fee     	mov	w14, #0xff              // =255
   22f20: 6b02011f     	cmp	w8, w2
   22f24: 38696aad     	ldrb	w13, [x21, x9]
   22f28: 1a823108     	csel	w8, w8, w2, lo
   22f2c: 4b08018c     	sub	w12, w12, w8
   22f30: 1aca25aa     	lsr	w10, w13, w10
   22f34: 6b080048     	subs	w8, w2, w8
   22f38: 1acc25cc     	lsr	w12, w14, w12
   22f3c: 0a0c0159     	and	w25, w10, w12
   22f40: 54000200     	b.eq	0x22f80 <syna_tcm_parse_touch_report+0x11fc>
   22f44: 11000529     	add	w9, w9, #0x1
   22f48: 7100211f     	cmp	w8, #0x8
   22f4c: 5280010a     	mov	w10, #0x8               // =8
   22f50: 52801fed     	mov	w13, #0xff              // =255
   22f54: 1a8a310c     	csel	w12, w8, w10, lo
   22f58: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22f5c: 11000529     	add	w9, w9, #0x1
   22f60: 4b0c014a     	sub	w10, w10, w12
   22f64: 1aca25aa     	lsr	w10, w13, w10
   22f68: 4b08004d     	sub	w13, w2, w8
   22f6c: 6b0c0108     	subs	w8, w8, w12
   22f70: 0a0e014a     	and	w10, w10, w14
   22f74: 1acd214a     	lsl	w10, w10, w13
   22f78: 2a190159     	orr	w25, w10, w25
   22f7c: 54fffe61     	b.ne	0x22f48 <syna_tcm_parse_touch_report+0x11c4>
   22f80: f94013e8     	ldr	x8, [sp, #0x20]
   22f84: b9023919     	str	w25, [x8, #0x238]
   22f88: 140000a0     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   22f8c: 1200090a     	and	w10, w8, #0x7
   22f90: 5280010c     	mov	w12, #0x8               // =8
   22f94: d343fd09     	lsr	x9, x8, #3
   22f98: 4b0a0188     	sub	w8, w12, w10
   22f9c: 52801fee     	mov	w14, #0xff              // =255
   22fa0: 6b02011f     	cmp	w8, w2
   22fa4: 38696aad     	ldrb	w13, [x21, x9]
   22fa8: 1a823108     	csel	w8, w8, w2, lo
   22fac: 4b08018c     	sub	w12, w12, w8
   22fb0: 1aca25aa     	lsr	w10, w13, w10
   22fb4: 6b080048     	subs	w8, w2, w8
   22fb8: 1acc25cc     	lsr	w12, w14, w12
   22fbc: 0a0c0159     	and	w25, w10, w12
   22fc0: 54000200     	b.eq	0x23000 <syna_tcm_parse_touch_report+0x127c>
   22fc4: 11000529     	add	w9, w9, #0x1
   22fc8: 7100211f     	cmp	w8, #0x8
   22fcc: 5280010a     	mov	w10, #0x8               // =8
   22fd0: 52801fed     	mov	w13, #0xff              // =255
   22fd4: 1a8a310c     	csel	w12, w8, w10, lo
   22fd8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   22fdc: 11000529     	add	w9, w9, #0x1
   22fe0: 4b0c014a     	sub	w10, w10, w12
   22fe4: 1aca25aa     	lsr	w10, w13, w10
   22fe8: 4b08004d     	sub	w13, w2, w8
   22fec: 6b0c0108     	subs	w8, w8, w12
   22ff0: 0a0e014a     	and	w10, w10, w14
   22ff4: 1acd214a     	lsl	w10, w10, w13
   22ff8: 2a190159     	orr	w25, w10, w25
   22ffc: 54fffe61     	b.ne	0x22fc8 <syna_tcm_parse_touch_report+0x1244>
   23000: f94013e8     	ldr	x8, [sp, #0x20]
   23004: b9022d19     	str	w25, [x8, #0x22c]
   23008: 14000080     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   2300c: 1200090a     	and	w10, w8, #0x7
   23010: 5280010c     	mov	w12, #0x8               // =8
   23014: d343fd09     	lsr	x9, x8, #3
   23018: 4b0a0188     	sub	w8, w12, w10
   2301c: 52801fee     	mov	w14, #0xff              // =255
   23020: 6b02011f     	cmp	w8, w2
   23024: 38696aad     	ldrb	w13, [x21, x9]
   23028: 1a823108     	csel	w8, w8, w2, lo
   2302c: 4b08018c     	sub	w12, w12, w8
   23030: 1aca25aa     	lsr	w10, w13, w10
   23034: 6b080048     	subs	w8, w2, w8
   23038: 1acc25cc     	lsr	w12, w14, w12
   2303c: 0a0c0159     	and	w25, w10, w12
   23040: 54000200     	b.eq	0x23080 <syna_tcm_parse_touch_report+0x12fc>
   23044: 11000529     	add	w9, w9, #0x1
   23048: 7100211f     	cmp	w8, #0x8
   2304c: 5280010a     	mov	w10, #0x8               // =8
   23050: 52801fed     	mov	w13, #0xff              // =255
   23054: 1a8a310c     	csel	w12, w8, w10, lo
   23058: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   2305c: 11000529     	add	w9, w9, #0x1
   23060: 4b0c014a     	sub	w10, w10, w12
   23064: 1aca25aa     	lsr	w10, w13, w10
   23068: 4b08004d     	sub	w13, w2, w8
   2306c: 6b0c0108     	subs	w8, w8, w12
   23070: 0a0e014a     	and	w10, w10, w14
   23074: 1acd214a     	lsl	w10, w10, w13
   23078: 2a190159     	orr	w25, w10, w25
   2307c: 54fffe61     	b.ne	0x23048 <syna_tcm_parse_touch_report+0x12c4>
   23080: f94013e8     	ldr	x8, [sp, #0x20]
   23084: b9023d19     	str	w25, [x8, #0x23c]
   23088: 14000060     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   2308c: 1200090a     	and	w10, w8, #0x7
   23090: 5280010c     	mov	w12, #0x8               // =8
   23094: d343fd09     	lsr	x9, x8, #3
   23098: 4b0a0188     	sub	w8, w12, w10
   2309c: 52801fee     	mov	w14, #0xff              // =255
   230a0: 6b02011f     	cmp	w8, w2
   230a4: 38696aad     	ldrb	w13, [x21, x9]
   230a8: 1a823108     	csel	w8, w8, w2, lo
   230ac: 4b08018c     	sub	w12, w12, w8
   230b0: 1aca25aa     	lsr	w10, w13, w10
   230b4: 6b080048     	subs	w8, w2, w8
   230b8: 1acc25cc     	lsr	w12, w14, w12
   230bc: 0a0c0159     	and	w25, w10, w12
   230c0: 54000200     	b.eq	0x23100 <syna_tcm_parse_touch_report+0x137c>
   230c4: 11000529     	add	w9, w9, #0x1
   230c8: 7100211f     	cmp	w8, #0x8
   230cc: 5280010a     	mov	w10, #0x8               // =8
   230d0: 52801fed     	mov	w13, #0xff              // =255
   230d4: 1a8a310c     	csel	w12, w8, w10, lo
   230d8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   230dc: 11000529     	add	w9, w9, #0x1
   230e0: 4b0c014a     	sub	w10, w10, w12
   230e4: 1aca25aa     	lsr	w10, w13, w10
   230e8: 4b08004d     	sub	w13, w2, w8
   230ec: 6b0c0108     	subs	w8, w8, w12
   230f0: 0a0e014a     	and	w10, w10, w14
   230f4: 1acd214a     	lsl	w10, w10, w13
   230f8: 2a190159     	orr	w25, w10, w25
   230fc: 54fffe61     	b.ne	0x230c8 <syna_tcm_parse_touch_report+0x1344>
   23100: f94013e8     	ldr	x8, [sp, #0x20]
   23104: b9024919     	str	w25, [x8, #0x248]
   23108: 14000040     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   2310c: 1200090a     	and	w10, w8, #0x7
   23110: 5280010c     	mov	w12, #0x8               // =8
   23114: d343fd09     	lsr	x9, x8, #3
   23118: 4b0a0188     	sub	w8, w12, w10
   2311c: 52801fee     	mov	w14, #0xff              // =255
   23120: 6b02011f     	cmp	w8, w2
   23124: 38696aad     	ldrb	w13, [x21, x9]
   23128: 1a823108     	csel	w8, w8, w2, lo
   2312c: 4b08018c     	sub	w12, w12, w8
   23130: 1aca25aa     	lsr	w10, w13, w10
   23134: 6b080048     	subs	w8, w2, w8
   23138: 1acc25cc     	lsr	w12, w14, w12
   2313c: 0a0c0159     	and	w25, w10, w12
   23140: 54000200     	b.eq	0x23180 <syna_tcm_parse_touch_report+0x13fc>
   23144: 11000529     	add	w9, w9, #0x1
   23148: 7100211f     	cmp	w8, #0x8
   2314c: 5280010a     	mov	w10, #0x8               // =8
   23150: 52801fed     	mov	w13, #0xff              // =255
   23154: 1a8a310c     	csel	w12, w8, w10, lo
   23158: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   2315c: 11000529     	add	w9, w9, #0x1
   23160: 4b0c014a     	sub	w10, w10, w12
   23164: 1aca25aa     	lsr	w10, w13, w10
   23168: 4b08004d     	sub	w13, w2, w8
   2316c: 6b0c0108     	subs	w8, w8, w12
   23170: 0a0e014a     	and	w10, w10, w14
   23174: 1acd214a     	lsl	w10, w10, w13
   23178: 2a190159     	orr	w25, w10, w25
   2317c: 54fffe61     	b.ne	0x23148 <syna_tcm_parse_touch_report+0x13c4>
   23180: f94013e8     	ldr	x8, [sp, #0x20]
   23184: b9024d19     	str	w25, [x8, #0x24c]
   23188: 14000020     	b	0x23208 <syna_tcm_parse_touch_report+0x1484>
   2318c: 1200090a     	and	w10, w8, #0x7
   23190: 5280010c     	mov	w12, #0x8               // =8
   23194: d343fd09     	lsr	x9, x8, #3
   23198: 4b0a0188     	sub	w8, w12, w10
   2319c: 52801fee     	mov	w14, #0xff              // =255
   231a0: 6b02011f     	cmp	w8, w2
   231a4: 38696aad     	ldrb	w13, [x21, x9]
   231a8: 1a823108     	csel	w8, w8, w2, lo
   231ac: 4b08018c     	sub	w12, w12, w8
   231b0: 1aca25aa     	lsr	w10, w13, w10
   231b4: 6b080048     	subs	w8, w2, w8
   231b8: 1acc25cc     	lsr	w12, w14, w12
   231bc: 0a0c0159     	and	w25, w10, w12
   231c0: 54000200     	b.eq	0x23200 <syna_tcm_parse_touch_report+0x147c>
   231c4: 11000529     	add	w9, w9, #0x1
   231c8: 7100211f     	cmp	w8, #0x8
   231cc: 5280010a     	mov	w10, #0x8               // =8
   231d0: 52801fed     	mov	w13, #0xff              // =255
   231d4: 1a8a310c     	csel	w12, w8, w10, lo
   231d8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
   231dc: 11000529     	add	w9, w9, #0x1
   231e0: 4b0c014a     	sub	w10, w10, w12
   231e4: 1aca25aa     	lsr	w10, w13, w10
   231e8: 4b08004d     	sub	w13, w2, w8
   231ec: 6b0c0108     	subs	w8, w8, w12
   231f0: 0a0e014a     	and	w10, w10, w14
   231f4: 1acd214a     	lsl	w10, w10, w13
   231f8: 2a190159     	orr	w25, w10, w25
   231fc: 54fffe61     	b.ne	0x231c8 <syna_tcm_parse_touch_report+0x1444>
   23200: f94013e8     	ldr	x8, [sp, #0x20]
   23204: b9024519     	str	w25, [x8, #0x244]
   23208: 2a1a03e8     	mov	w8, w26
   2320c: 2a1303e9     	mov	w9, w19
   23210: 2a1703ea     	mov	w10, w23
   23214: b81f03ab     	stur	w11, [x29, #-0x10]
   23218: 17fffb16     	b	0x21e70 <syna_tcm_parse_touch_report+0xec>
   2321c: 11000929     	add	w9, w9, #0x2
   23220: b81f43a9     	stur	w9, [x29, #-0xc]
   23224: 297da7aa     	ldp	w10, w9, [x29, #-0x14]
   23228: 38686b1b     	ldrb	w27, [x24, x8]
   2322c: 0b1b0128     	add	w8, w9, w27
   23230: 6b480d5f     	cmp	w10, w8, lsr #3
   23234: 54ff71e3     	b.lo	0x22070 <syna_tcm_parse_touch_report+0x2ec>
   23238: 6b09011f     	cmp	w8, w9
   2323c: 54001b09     	b.ls	0x2359c <syna_tcm_parse_touch_report+0x1818>
   23240: b85e83aa     	ldur	w10, [x29, #-0x18]
   23244: 1100412b     	add	w11, w9, #0x10
   23248: 6b0a017f     	cmp	w11, w10
   2324c: 1200092a     	and	w10, w9, #0x7
   23250: 54000a69     	b.ls	0x2339c <syna_tcm_parse_touch_report+0x1618>
   23254: 2a1f03ec     	mov	w12, wzr
   23258: 14000066     	b	0x233f0 <syna_tcm_parse_touch_report+0x166c>
   2325c: 11000929     	add	w9, w9, #0x2
   23260: b81f43a9     	stur	w9, [x29, #-0xc]
   23264: 38686b1b     	ldrb	w27, [x24, x8]
   23268: 51008768     	sub	w8, w27, #0x21
   2326c: 3100851f     	cmn	w8, #0x21
   23270: 54001129     	b.ls	0x23494 <syna_tcm_parse_touch_report+0x1710>
   23274: b85f03a9     	ldur	w9, [x29, #-0x10]
   23278: b85e83aa     	ldur	w10, [x29, #-0x18]
   2327c: 0b1b0128     	add	w8, w9, w27
   23280: 6b0a011f     	cmp	w8, w10
   23284: 54000169     	b.ls	0x232b0 <syna_tcm_parse_touch_report+0x152c>
   23288: 2a1f03f9     	mov	w25, wzr
   2328c: 14000026     	b	0x23324 <syna_tcm_parse_touch_report+0x15a0>
   23290: b9401ac8     	ldr	w8, [x22, #0x18]
   23294: 11000669     	add	w9, w19, #0x1
   23298: 2a1f03ea     	mov	w10, wzr
   2329c: 6b08013f     	cmp	w9, w8
   232a0: 2a1a03e8     	mov	w8, w26
   232a4: 54ff5e62     	b.hs	0x21e70 <syna_tcm_parse_touch_report+0xec>
   232a8: 2a1f03ea     	mov	w10, wzr
   232ac: 14000030     	b	0x2336c <syna_tcm_parse_touch_report+0x15e8>
   232b0: 1200092b     	and	w11, w9, #0x7
   232b4: 5280010c     	mov	w12, #0x8               // =8
   232b8: d343fd2a     	lsr	x10, x9, #3
   232bc: 4b0b0189     	sub	w9, w12, w11
   232c0: 52801fee     	mov	w14, #0xff              // =255
   232c4: 6b1b013f     	cmp	w9, w27
   232c8: 386a6aad     	ldrb	w13, [x21, x10]
   232cc: 1a9b3129     	csel	w9, w9, w27, lo
   232d0: 4b09018c     	sub	w12, w12, w9
   232d4: 1acb25ab     	lsr	w11, w13, w11
   232d8: 6b090369     	subs	w9, w27, w9
   232dc: 1acc25cc     	lsr	w12, w14, w12
   232e0: 0a0c0179     	and	w25, w11, w12
   232e4: 54000200     	b.eq	0x23324 <syna_tcm_parse_touch_report+0x15a0>
   232e8: 1100054a     	add	w10, w10, #0x1
   232ec: 7100213f     	cmp	w9, #0x8
   232f0: 5280010b     	mov	w11, #0x8               // =8
   232f4: 52801fed     	mov	w13, #0xff              // =255
   232f8: 1a8b312c     	csel	w12, w9, w11, lo
   232fc: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
   23300: 1100054a     	add	w10, w10, #0x1
   23304: 4b0c016b     	sub	w11, w11, w12
   23308: 1acb25ab     	lsr	w11, w13, w11
   2330c: 4b09036d     	sub	w13, w27, w9
   23310: 6b0c0129     	subs	w9, w9, w12
   23314: 0a0e016b     	and	w11, w11, w14
   23318: 1acd216b     	lsl	w11, w11, w13
   2331c: 2a190179     	orr	w25, w11, w25
   23320: 54fffe61     	b.ne	0x232ec <syna_tcm_parse_touch_report+0x1568>
   23324: 2a1f03e0     	mov	w0, wzr
   23328: f94013e9     	ldr	x9, [sp, #0x20]
   2332c: b81f03a8     	stur	w8, [x29, #-0x10]
   23330: b9021139     	str	w25, [x9, #0x210]
   23334: 2a1a03e8     	mov	w8, w26
   23338: 2a1303e9     	mov	w9, w19
   2333c: 2a1703ea     	mov	w10, w23
   23340: 36ff5980     	tbz	w0, #0x1f, 0x21e70 <syna_tcm_parse_touch_report+0xec>
   23344: 14000138     	b	0x23824 <syna_tcm_parse_touch_report+0x1aa0>
   23348: b85e83a8     	ldur	w8, [x29, #-0x18]
   2334c: 5280002a     	mov	w10, #0x1               // =1
   23350: 2a1303e9     	mov	w9, w19
   23354: b9000fff     	str	wzr, [sp, #0xc]
   23358: 6b08001f     	cmp	w0, w8
   2335c: 2a1a03e8     	mov	w8, w26
   23360: 54ff5882     	b.hs	0x21e70 <syna_tcm_parse_touch_report+0xec>
   23364: b9000fff     	str	wzr, [sp, #0xc]
   23368: 11000669     	add	w9, w19, #0x1
   2336c: b81f43ba     	stur	w26, [x29, #-0xc]
   23370: 2a1a03e8     	mov	w8, w26
   23374: 17fffabf     	b	0x21e70 <syna_tcm_parse_touch_report+0xec>
   23378: 38684b03     	ldrb	w3, [x24, w8, uxtw]
   2337c: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002337c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cb1
   23380: 91000000     	add	x0, x0, #0x0
		0000000000023380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cb1
   23384: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93c6
   23388: 91000021     	add	x1, x1, #0x0
		0000000000023388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93c6
   2338c: 2a1b03e2     	mov	w2, w27
   23390: 94000000     	bl	0x23390 <syna_tcm_parse_touch_report+0x160c>
		0000000000023390:  R_AARCH64_CALL26	_printk
   23394: b85f43a8     	ldur	w8, [x29, #-0xc]
   23398: 17fffad7     	b	0x21ef4 <syna_tcm_parse_touch_report+0x170>
   2339c: d343fd2e     	lsr	x14, x9, #3
   233a0: 321d712d     	orr	w13, w9, #0xfffffff8
   233a4: 110041ad     	add	w13, w13, #0x10
   233a8: 386e6aac     	ldrb	w12, [x21, x14]
   233ac: 110005ce     	add	w14, w14, #0x1
   233b0: 1aca258c     	lsr	w12, w12, w10
   233b4: 710021bf     	cmp	w13, #0x8
   233b8: 5280010f     	mov	w15, #0x8               // =8
   233bc: 52801ff1     	mov	w17, #0xff              // =255
   233c0: 1a8f31b0     	csel	w16, w13, w15, lo
   233c4: 386e4aa0     	ldrb	w0, [x21, w14, uxtw]
   233c8: 110005ce     	add	w14, w14, #0x1
   233cc: 4b1001ef     	sub	w15, w15, w16
   233d0: 1acf262f     	lsr	w15, w17, w15
   233d4: 52800211     	mov	w17, #0x10              // =16
   233d8: 4b0d0231     	sub	w17, w17, w13
   233dc: 6b1001ad     	subs	w13, w13, w16
   233e0: 0a0001ef     	and	w15, w15, w0
   233e4: 1ad121ef     	lsl	w15, w15, w17
   233e8: 2a0c01ec     	orr	w12, w15, w12
   233ec: 54fffe41     	b.ne	0x233b4 <syna_tcm_parse_touch_report+0x1630>
   233f0: f94013ed     	ldr	x13, [sp, #0x20]
   233f4: 6b08017f     	cmp	w11, w8
   233f8: 790429ac     	strh	w12, [x13, #0x214]
   233fc: 54000d02     	b.hs	0x2359c <syna_tcm_parse_touch_report+0x1818>
   23400: b85e83ad     	ldur	w13, [x29, #-0x18]
   23404: 1100812c     	add	w12, w9, #0x20
   23408: 6b0d019f     	cmp	w12, w13
   2340c: 54000069     	b.ls	0x23418 <syna_tcm_parse_touch_report+0x1694>
   23410: 2a1f03eb     	mov	w11, wzr
   23414: 14000016     	b	0x2346c <syna_tcm_parse_touch_report+0x16e8>
   23418: d343fd6e     	lsr	x14, x11, #3
   2341c: 321d712d     	orr	w13, w9, #0xfffffff8
   23420: 110041ad     	add	w13, w13, #0x10
   23424: 386e6aab     	ldrb	w11, [x21, x14]
   23428: 110005ce     	add	w14, w14, #0x1
   2342c: 1aca256b     	lsr	w11, w11, w10
   23430: 710021bf     	cmp	w13, #0x8
   23434: 5280010f     	mov	w15, #0x8               // =8
   23438: 52801ff1     	mov	w17, #0xff              // =255
   2343c: 1a8f31b0     	csel	w16, w13, w15, lo
   23440: 386e4aa0     	ldrb	w0, [x21, w14, uxtw]
   23444: 110005ce     	add	w14, w14, #0x1
   23448: 4b1001ef     	sub	w15, w15, w16
   2344c: 1acf262f     	lsr	w15, w17, w15
   23450: 52800211     	mov	w17, #0x10              // =16
   23454: 4b0d0231     	sub	w17, w17, w13
   23458: 6b1001ad     	subs	w13, w13, w16
   2345c: 0a0001ef     	and	w15, w15, w0
   23460: 1ad121ef     	lsl	w15, w15, w17
   23464: 2a0b01eb     	orr	w11, w15, w11
   23468: 54fffe41     	b.ne	0x23430 <syna_tcm_parse_touch_report+0x16ac>
   2346c: f94013ed     	ldr	x13, [sp, #0x20]
   23470: 6b08019f     	cmp	w12, w8
   23474: 79042dab     	strh	w11, [x13, #0x216]
   23478: 54000922     	b.hs	0x2359c <syna_tcm_parse_touch_report+0x1818>
   2347c: b85e83ad     	ldur	w13, [x29, #-0x18]
   23480: 1100c12b     	add	w11, w9, #0x30
   23484: 6b0d017f     	cmp	w11, w13
   23488: 540001e9     	b.ls	0x234c4 <syna_tcm_parse_touch_report+0x1740>
   2348c: 2a1f03ec     	mov	w12, wzr
   23490: 14000022     	b	0x23518 <syna_tcm_parse_touch_report+0x1794>
   23494: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23498: 91000000     	add	x0, x0, #0x0
		0000000000023498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2349c: 2a0103f4     	mov	w20, w1
   234a0: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000234a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   234a4: 91000021     	add	x1, x1, #0x0
		00000000000234a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   234a8: 2a1b03e2     	mov	w2, w27
   234ac: 94000000     	bl	0x234ac <syna_tcm_parse_touch_report+0x1728>
		00000000000234ac:  R_AARCH64_CALL26	_printk
   234b0: b85f03a8     	ldur	w8, [x29, #-0x10]
   234b4: 2a1403e1     	mov	w1, w20
   234b8: 12801e00     	mov	w0, #-0xf1              // =-241
   234bc: 0b1b0108     	add	w8, w8, w27
   234c0: 17ffff9a     	b	0x23328 <syna_tcm_parse_touch_report+0x15a4>
   234c4: d343fd8e     	lsr	x14, x12, #3
   234c8: 321d712d     	orr	w13, w9, #0xfffffff8
   234cc: 110041ad     	add	w13, w13, #0x10
   234d0: 386e6aac     	ldrb	w12, [x21, x14]
   234d4: 110005ce     	add	w14, w14, #0x1
   234d8: 1aca258c     	lsr	w12, w12, w10
   234dc: 710021bf     	cmp	w13, #0x8
   234e0: 5280010f     	mov	w15, #0x8               // =8
   234e4: 52801ff1     	mov	w17, #0xff              // =255
   234e8: 1a8f31b0     	csel	w16, w13, w15, lo
   234ec: 386e4aa0     	ldrb	w0, [x21, w14, uxtw]
   234f0: 110005ce     	add	w14, w14, #0x1
   234f4: 4b1001ef     	sub	w15, w15, w16
   234f8: 1acf262f     	lsr	w15, w17, w15
   234fc: 52800211     	mov	w17, #0x10              // =16
   23500: 4b0d0231     	sub	w17, w17, w13
   23504: 6b1001ad     	subs	w13, w13, w16
   23508: 0a0001ef     	and	w15, w15, w0
   2350c: 1ad121ef     	lsl	w15, w15, w17
   23510: 2a0c01ec     	orr	w12, w15, w12
   23514: 54fffe41     	b.ne	0x234dc <syna_tcm_parse_touch_report+0x1758>
   23518: f94013ed     	ldr	x13, [sp, #0x20]
   2351c: 6b08017f     	cmp	w11, w8
   23520: 790431ac     	strh	w12, [x13, #0x218]
   23524: 540003c2     	b.hs	0x2359c <syna_tcm_parse_touch_report+0x1818>
   23528: b85e83ad     	ldur	w13, [x29, #-0x18]
   2352c: 1101012c     	add	w12, w9, #0x40
   23530: 6b0d019f     	cmp	w12, w13
   23534: 54000069     	b.ls	0x23540 <syna_tcm_parse_touch_report+0x17bc>
   23538: 2a1f03e9     	mov	w9, wzr
   2353c: 14000016     	b	0x23594 <syna_tcm_parse_touch_report+0x1810>
   23540: d343fd6b     	lsr	x11, x11, #3
   23544: 321d712d     	orr	w13, w9, #0xfffffff8
   23548: 386b6aac     	ldrb	w12, [x21, x11]
   2354c: 1100056b     	add	w11, w11, #0x1
   23550: 1aca2589     	lsr	w9, w12, w10
   23554: 110041aa     	add	w10, w13, #0x10
   23558: 7100215f     	cmp	w10, #0x8
   2355c: 5280010c     	mov	w12, #0x8               // =8
   23560: 52801fee     	mov	w14, #0xff              // =255
   23564: 1a8c314d     	csel	w13, w10, w12, lo
   23568: 386b4aaf     	ldrb	w15, [x21, w11, uxtw]
   2356c: 1100056b     	add	w11, w11, #0x1
   23570: 4b0d018c     	sub	w12, w12, w13
   23574: 1acc25cc     	lsr	w12, w14, w12
   23578: 5280020e     	mov	w14, #0x10              // =16
   2357c: 4b0a01ce     	sub	w14, w14, w10
   23580: 6b0d014a     	subs	w10, w10, w13
   23584: 0a0f018c     	and	w12, w12, w15
   23588: 1ace218c     	lsl	w12, w12, w14
   2358c: 2a090189     	orr	w9, w12, w9
   23590: 54fffe41     	b.ne	0x23558 <syna_tcm_parse_touch_report+0x17d4>
   23594: f94013ea     	ldr	x10, [sp, #0x20]
   23598: 79043549     	strh	w9, [x10, #0x21a]
   2359c: f94013e9     	ldr	x9, [sp, #0x20]
   235a0: b9421122     	ldr	w2, [x9, #0x210]
   235a4: 71001c5f     	cmp	w2, #0x7
   235a8: 540000c8     	b.hi	0x235c0 <syna_tcm_parse_touch_report+0x183c>
   235ac: 52800029     	mov	w9, #0x1                // =1
   235b0: 528018ea     	mov	w10, #0xc7              // =199
   235b4: 1ac22129     	lsl	w9, w9, w2
   235b8: 6a0a013f     	tst	w9, w10
   235bc: 54ff55a1     	b.ne	0x22070 <syna_tcm_parse_touch_report+0x2ec>
   235c0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000235c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x898a
   235c4: 91000000     	add	x0, x0, #0x0
		00000000000235c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x898a
   235c8: 2a0103f4     	mov	w20, w1
   235cc: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000235cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4337
   235d0: 91000021     	add	x1, x1, #0x0
		00000000000235d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4337
   235d4: 94000000     	bl	0x235d4 <syna_tcm_parse_touch_report+0x1850>
		00000000000235d4:  R_AARCH64_CALL26	_printk
   235d8: b85f03a8     	ldur	w8, [x29, #-0x10]
   235dc: 2a1403e1     	mov	w1, w20
   235e0: 0b1b0108     	add	w8, w8, w27
   235e4: 17fffaa3     	b	0x22070 <syna_tcm_parse_touch_report+0x2ec>
   235e8: b85f03a0     	ldur	w0, [x29, #-0x10]
   235ec: 14000010     	b	0x2362c <syna_tcm_parse_touch_report+0x18a8>
   235f0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000235f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   235f4: 91000000     	add	x0, x0, #0x0
		00000000000235f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   235f8: 14000009     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   235fc: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000235fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f4a
   23600: 91000000     	add	x0, x0, #0x0
		0000000000023600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f4a
   23604: 14000006     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23608: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e20
   2360c: 91000000     	add	x0, x0, #0x0
		000000000002360c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e20
   23610: 14000003     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23614: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef0
   23618: 91000000     	add	x0, x0, #0x0
		0000000000023618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef0
   2361c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002361c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93c6
   23620: 91000021     	add	x1, x1, #0x0
		0000000000023620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93c6
   23624: 94000000     	bl	0x23624 <syna_tcm_parse_touch_report+0x18a0>
		0000000000023624:  R_AARCH64_CALL26	_printk
   23628: 12801e00     	mov	w0, #-0xf1              // =-241
   2362c: d5384108     	mrs	x8, SP_EL0
   23630: f9438908     	ldr	x8, [x8, #0x710]
   23634: f85f83a9     	ldur	x9, [x29, #-0x8]
   23638: eb09011f     	cmp	x8, x9
   2363c: 54001cc1     	b.ne	0x239d4 <syna_tcm_parse_touch_report+0x1c50>
   23640: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   23644: a94857f6     	ldp	x22, x21, [sp, #0x80]
   23648: a9475ff8     	ldp	x24, x23, [sp, #0x70]
   2364c: a94667fa     	ldp	x26, x25, [sp, #0x60]
   23650: a9456ffc     	ldp	x28, x27, [sp, #0x50]
   23654: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   23658: 910283ff     	add	sp, sp, #0xa0
   2365c: d50323bf     	autiasp
   23660: d65f03c0     	ret
   23664: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f6d
   23668: 91000000     	add	x0, x0, #0x0
		0000000000023668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f6d
   2366c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002366c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93c6
   23670: 91000021     	add	x1, x1, #0x0
		0000000000023670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93c6
   23674: 94000000     	bl	0x23674 <syna_tcm_parse_touch_report+0x18f0>
		0000000000023674:  R_AARCH64_CALL26	_printk
   23678: 2a1f03e0     	mov	w0, wzr
   2367c: 17ffffec     	b	0x2362c <syna_tcm_parse_touch_report+0x18a8>
   23680: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66d1
   23684: 91000000     	add	x0, x0, #0x0
		0000000000023684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66d1
   23688: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93c6
   2368c: 91000021     	add	x1, x1, #0x0
		000000000002368c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93c6
   23690: 94000000     	bl	0x23690 <syna_tcm_parse_touch_report+0x190c>
		0000000000023690:  R_AARCH64_CALL26	_printk
   23694: 528002bc     	mov	w28, #0x15              // =21
   23698: 90000018     	adrp	x24, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023698:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x1388
   2369c: 91000318     	add	x24, x24, #0x0
		000000000002369c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x1388
   236a0: 17fff9d9     	b	0x21e04 <syna_tcm_parse_touch_report+0x80>
   236a4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   236a8: 91000000     	add	x0, x0, #0x0
		00000000000236a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   236ac: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   236b0: 91000021     	add	x1, x1, #0x0
		00000000000236b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   236b4: 94000000     	bl	0x236b4 <syna_tcm_parse_touch_report+0x1930>
		00000000000236b4:  R_AARCH64_CALL26	_printk
   236b8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d5
   236bc: 91000000     	add	x0, x0, #0x0
		00000000000236bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d5
   236c0: 17ffffd7     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   236c4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   236c8: 91000000     	add	x0, x0, #0x0
		00000000000236c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   236cc: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   236d0: 91000021     	add	x1, x1, #0x0
		00000000000236d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   236d4: 94000000     	bl	0x236d4 <syna_tcm_parse_touch_report+0x1950>
		00000000000236d4:  R_AARCH64_CALL26	_printk
   236d8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb6
   236dc: 91000000     	add	x0, x0, #0x0
		00000000000236dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb6
   236e0: 17ffffcf     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   236e4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   236e8: 91000000     	add	x0, x0, #0x0
		00000000000236e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   236ec: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   236f0: 91000021     	add	x1, x1, #0x0
		00000000000236f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   236f4: 94000000     	bl	0x236f4 <syna_tcm_parse_touch_report+0x1970>
		00000000000236f4:  R_AARCH64_CALL26	_printk
   236f8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000236f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x596e
   236fc: 91000000     	add	x0, x0, #0x0
		00000000000236fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x596e
   23700: 17ffffc7     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23704: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23708: 91000000     	add	x0, x0, #0x0
		0000000000023708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2370c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002370c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   23710: 91000021     	add	x1, x1, #0x0
		0000000000023710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23714: 94000000     	bl	0x23714 <syna_tcm_parse_touch_report+0x1990>
		0000000000023714:  R_AARCH64_CALL26	_printk
   23718: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23c1
   2371c: 91000000     	add	x0, x0, #0x0
		000000000002371c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23c1
   23720: 17ffffbf     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23724: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23728: 91000000     	add	x0, x0, #0x0
		0000000000023728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2372c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002372c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   23730: 91000021     	add	x1, x1, #0x0
		0000000000023730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23734: 94000000     	bl	0x23734 <syna_tcm_parse_touch_report+0x19b0>
		0000000000023734:  R_AARCH64_CALL26	_printk
   23738: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb757
   2373c: 91000000     	add	x0, x0, #0x0
		000000000002373c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb757
   23740: 17ffffb7     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23744: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23748: 91000000     	add	x0, x0, #0x0
		0000000000023748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2374c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002374c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   23750: 91000021     	add	x1, x1, #0x0
		0000000000023750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23754: 94000000     	bl	0x23754 <syna_tcm_parse_touch_report+0x19d0>
		0000000000023754:  R_AARCH64_CALL26	_printk
   23758: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35a8
   2375c: 91000000     	add	x0, x0, #0x0
		000000000002375c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35a8
   23760: 17ffffaf     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23764: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23768: 91000000     	add	x0, x0, #0x0
		0000000000023768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2376c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002376c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   23770: 91000021     	add	x1, x1, #0x0
		0000000000023770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23774: 94000000     	bl	0x23774 <syna_tcm_parse_touch_report+0x19f0>
		0000000000023774:  R_AARCH64_CALL26	_printk
   23778: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c8f
   2377c: 91000000     	add	x0, x0, #0x0
		000000000002377c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c8f
   23780: 17ffffa7     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23784: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23788: 91000000     	add	x0, x0, #0x0
		0000000000023788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2378c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002378c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   23790: 91000021     	add	x1, x1, #0x0
		0000000000023790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23794: 94000000     	bl	0x23794 <syna_tcm_parse_touch_report+0x1a10>
		0000000000023794:  R_AARCH64_CALL26	_printk
   23798: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa90
   2379c: 91000000     	add	x0, x0, #0x0
		000000000002379c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa90
   237a0: 17ffff9f     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   237a4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   237a8: 91000000     	add	x0, x0, #0x0
		00000000000237a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   237ac: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   237b0: 91000021     	add	x1, x1, #0x0
		00000000000237b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   237b4: 94000000     	bl	0x237b4 <syna_tcm_parse_touch_report+0x1a30>
		00000000000237b4:  R_AARCH64_CALL26	_printk
   237b8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5f
   237bc: 91000000     	add	x0, x0, #0x0
		00000000000237bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5f
   237c0: 17ffff97     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   237c4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   237c8: 91000000     	add	x0, x0, #0x0
		00000000000237c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   237cc: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   237d0: 91000021     	add	x1, x1, #0x0
		00000000000237d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   237d4: 94000000     	bl	0x237d4 <syna_tcm_parse_touch_report+0x1a50>
		00000000000237d4:  R_AARCH64_CALL26	_printk
   237d8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6707
   237dc: 91000000     	add	x0, x0, #0x0
		00000000000237dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6707
   237e0: 17ffff8f     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   237e4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   237e8: 91000000     	add	x0, x0, #0x0
		00000000000237e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   237ec: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   237f0: 91000021     	add	x1, x1, #0x0
		00000000000237f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   237f4: 94000000     	bl	0x237f4 <syna_tcm_parse_touch_report+0x1a70>
		00000000000237f4:  R_AARCH64_CALL26	_printk
   237f8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000237f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15db
   237fc: 91000000     	add	x0, x0, #0x0
		00000000000237fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15db
   23800: 17ffff87     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23804: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23808: 91000000     	add	x0, x0, #0x0
		0000000000023808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   2380c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		000000000002380c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   23810: 91000021     	add	x1, x1, #0x0
		0000000000023810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23814: 94000000     	bl	0x23814 <syna_tcm_parse_touch_report+0x1a90>
		0000000000023814:  R_AARCH64_CALL26	_printk
   23818: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1609
   2381c: 91000000     	add	x0, x0, #0x0
		000000000002381c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1609
   23820: 17ffff7f     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23824: 90000008     	adrp	x8, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c5a
   23828: 91000108     	add	x8, x8, #0x0
		0000000000023828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c5a
   2382c: 14000063     	b	0x239b8 <syna_tcm_parse_touch_report+0x1c34>
   23830: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23834: 91000000     	add	x0, x0, #0x0
		0000000000023834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23838: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2383c: 91000021     	add	x1, x1, #0x0
		000000000002383c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23840: 94000000     	bl	0x23840 <syna_tcm_parse_touch_report+0x1abc>
		0000000000023840:  R_AARCH64_CALL26	_printk
   23844: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f1d
   23848: 91000000     	add	x0, x0, #0x0
		0000000000023848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f1d
   2384c: 17ffff74     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23850: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23854: 91000000     	add	x0, x0, #0x0
		0000000000023854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23858: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2385c: 91000021     	add	x1, x1, #0x0
		000000000002385c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23860: 94000000     	bl	0x23860 <syna_tcm_parse_touch_report+0x1adc>
		0000000000023860:  R_AARCH64_CALL26	_printk
   23864: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93e2
   23868: 91000000     	add	x0, x0, #0x0
		0000000000023868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93e2
   2386c: 17ffff6c     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23870: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23874: 91000000     	add	x0, x0, #0x0
		0000000000023874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23878: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2387c: 91000021     	add	x1, x1, #0x0
		000000000002387c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23880: 94000000     	bl	0x23880 <syna_tcm_parse_touch_report+0x1afc>
		0000000000023880:  R_AARCH64_CALL26	_printk
   23884: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8b
   23888: 91000000     	add	x0, x0, #0x0
		0000000000023888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8b
   2388c: 17ffff64     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23890: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23894: 91000000     	add	x0, x0, #0x0
		0000000000023894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23898: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2389c: 91000021     	add	x1, x1, #0x0
		000000000002389c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   238a0: 94000000     	bl	0x238a0 <syna_tcm_parse_touch_report+0x1b1c>
		00000000000238a0:  R_AARCH64_CALL26	_printk
   238a4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3c4
   238a8: 91000000     	add	x0, x0, #0x0
		00000000000238a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3c4
   238ac: 17ffff5c     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   238b0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   238b4: 91000000     	add	x0, x0, #0x0
		00000000000238b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   238b8: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   238bc: 91000021     	add	x1, x1, #0x0
		00000000000238bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   238c0: 94000000     	bl	0x238c0 <syna_tcm_parse_touch_report+0x1b3c>
		00000000000238c0:  R_AARCH64_CALL26	_printk
   238c4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50c
   238c8: 91000000     	add	x0, x0, #0x0
		00000000000238c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50c
   238cc: 17ffff54     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   238d0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   238d4: 91000000     	add	x0, x0, #0x0
		00000000000238d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   238d8: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   238dc: 91000021     	add	x1, x1, #0x0
		00000000000238dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   238e0: 94000000     	bl	0x238e0 <syna_tcm_parse_touch_report+0x1b5c>
		00000000000238e0:  R_AARCH64_CALL26	_printk
   238e4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c31
   238e8: 91000000     	add	x0, x0, #0x0
		00000000000238e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c31
   238ec: 17ffff4c     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   238f0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   238f4: 91000000     	add	x0, x0, #0x0
		00000000000238f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   238f8: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000238f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   238fc: 91000021     	add	x1, x1, #0x0
		00000000000238fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23900: 94000000     	bl	0x23900 <syna_tcm_parse_touch_report+0x1b7c>
		0000000000023900:  R_AARCH64_CALL26	_printk
   23904: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c69
   23908: 91000000     	add	x0, x0, #0x0
		0000000000023908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c69
   2390c: 17ffff44     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23910: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23914: 91000000     	add	x0, x0, #0x0
		0000000000023914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23918: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2391c: 91000021     	add	x1, x1, #0x0
		000000000002391c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23920: 94000000     	bl	0x23920 <syna_tcm_parse_touch_report+0x1b9c>
		0000000000023920:  R_AARCH64_CALL26	_printk
   23924: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb115
   23928: 91000000     	add	x0, x0, #0x0
		0000000000023928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb115
   2392c: 17ffff3c     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23930: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23934: 91000000     	add	x0, x0, #0x0
		0000000000023934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23938: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2393c: 91000021     	add	x1, x1, #0x0
		000000000002393c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23940: 94000000     	bl	0x23940 <syna_tcm_parse_touch_report+0x1bbc>
		0000000000023940:  R_AARCH64_CALL26	_printk
   23944: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5949
   23948: 91000000     	add	x0, x0, #0x0
		0000000000023948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5949
   2394c: 17ffff34     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23950: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23954: 91000000     	add	x0, x0, #0x0
		0000000000023954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23958: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2395c: 91000021     	add	x1, x1, #0x0
		000000000002395c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23960: 94000000     	bl	0x23960 <syna_tcm_parse_touch_report+0x1bdc>
		0000000000023960:  R_AARCH64_CALL26	_printk
   23964: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb142
   23968: 91000000     	add	x0, x0, #0x0
		0000000000023968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb142
   2396c: 17ffff2c     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23970: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23974: 91000000     	add	x0, x0, #0x0
		0000000000023974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23978: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2397c: 91000021     	add	x1, x1, #0x0
		000000000002397c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   23980: 94000000     	bl	0x23980 <syna_tcm_parse_touch_report+0x1bfc>
		0000000000023980:  R_AARCH64_CALL26	_printk
   23984: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5923
   23988: 91000000     	add	x0, x0, #0x0
		0000000000023988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5923
   2398c: 17ffff24     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   23990: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   23994: 91000000     	add	x0, x0, #0x0
		0000000000023994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   23998: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   2399c: 91000021     	add	x1, x1, #0x0
		000000000002399c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   239a0: 94000000     	bl	0x239a0 <syna_tcm_parse_touch_report+0x1c1c>
		00000000000239a0:  R_AARCH64_CALL26	_printk
   239a4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000239a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b1
   239a8: 91000000     	add	x0, x0, #0x0
		00000000000239a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b1
   239ac: 17ffff1c     	b	0x2361c <syna_tcm_parse_touch_report+0x1898>
   239b0: 90000008     	adrp	x8, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000239b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ce
   239b4: 91000108     	add	x8, x8, #0x0
		00000000000239b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ce
   239b8: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000239b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93c6
   239bc: 91000021     	add	x1, x1, #0x0
		00000000000239bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93c6
   239c0: 2a0003f3     	mov	w19, w0
   239c4: aa0803e0     	mov	x0, x8
   239c8: 94000000     	bl	0x239c8 <syna_tcm_parse_touch_report+0x1c44>
		00000000000239c8:  R_AARCH64_CALL26	_printk
   239cc: 2a1303e0     	mov	w0, w19
   239d0: 17ffff17     	b	0x2362c <syna_tcm_parse_touch_report+0x18a8>
   239d4: 94000000     	bl	0x239d4 <syna_tcm_parse_touch_report+0x1c50>
		00000000000239d4:  R_AARCH64_CALL26	__stack_chk_fail
