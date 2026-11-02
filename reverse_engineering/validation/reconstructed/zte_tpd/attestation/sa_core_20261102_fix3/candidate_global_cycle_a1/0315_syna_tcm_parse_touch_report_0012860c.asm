
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006c54 <syna_tcm_parse_touch_report>:
    6c54: d503233f     	paciasp
    6c58: d10283ff     	sub	sp, sp, #0xa0
    6c5c: a9047bfd     	stp	x29, x30, [sp, #0x40]
    6c60: a9056ffc     	stp	x28, x27, [sp, #0x50]
    6c64: a90667fa     	stp	x26, x25, [sp, #0x60]
    6c68: a9075ff8     	stp	x24, x23, [sp, #0x70]
    6c6c: a90857f6     	stp	x22, x21, [sp, #0x80]
    6c70: a9094ff4     	stp	x20, x19, [sp, #0x90]
    6c74: 910103fd     	add	x29, sp, #0x40
    6c78: f90013e3     	str	x3, [sp, #0x20]
    6c7c: b81ec3a2     	stur	w2, [x29, #-0x14]
    6c80: d5384108     	mrs	x8, SP_EL0
    6c84: f9438908     	ldr	x8, [x8, #0x710]
    6c88: f81f83a8     	stur	x8, [x29, #-0x8]
    6c8c: b400c1a0     	cbz	x0, 0x84c0 <syna_tcm_parse_touch_report+0x186c>
    6c90: aa0103f5     	mov	x21, x1
    6c94: b400c1c1     	cbz	x1, 0x84cc <syna_tcm_parse_touch_report+0x1878>
    6c98: f94013e8     	ldr	x8, [sp, #0x20]
    6c9c: b400c1e8     	cbz	x8, 0x84d8 <syna_tcm_parse_touch_report+0x1884>
    6ca0: b9401808     	ldr	w8, [x0, #0x18]
    6ca4: aa0003f6     	mov	x22, x0
    6ca8: 3400c1e8     	cbz	w8, 0x84e4 <syna_tcm_parse_touch_report+0x1890>
    6cac: b9438ec8     	ldr	w8, [x22, #0x38c]
    6cb0: 7100051f     	cmp	w8, #0x1
    6cb4: 5400c400     	b.eq	0x8534 <syna_tcm_parse_touch_report+0x18e0>
    6cb8: f94013e8     	ldr	x8, [sp, #0x20]
    6cbc: f940cad8     	ldr	x24, [x22, #0x190]
    6cc0: 91002108     	add	x8, x8, #0x8
    6cc4: f9000fe8     	str	x8, [sp, #0x18]
    6cc8: b400c458     	cbz	x24, 0x8550 <syna_tcm_parse_touch_report+0x18fc>
    6ccc: b9419edc     	ldr	w28, [x22, #0x19c]
    6cd0: 3400c41c     	cbz	w28, 0x8550 <syna_tcm_parse_touch_report+0x18fc>
    6cd4: f9400fe0     	ldr	x0, [sp, #0x18]
    6cd8: 2a1f03e1     	mov	w1, wzr
    6cdc: 52804102     	mov	w2, #0x208              // =520
    6ce0: 94000000     	bl	0x6ce0 <syna_tcm_parse_touch_report+0x8c>
		0000000000006ce0:  R_AARCH64_CALL26	memset
    6ce4: b941dacc     	ldr	w12, [x22, #0x1d8]
    6ce8: b941e6cd     	ldr	w13, [x22, #0x1e4]
    6cec: 2a1f03f9     	mov	w25, wzr
    6cf0: b941e2cb     	ldr	w11, [x22, #0x1e0]
    6cf4: 2a1f03e1     	mov	w1, wzr
    6cf8: 2a1f03e8     	mov	w8, wzr
    6cfc: b90017ec     	str	w12, [sp, #0x14]
    6d00: b85ec3ac     	ldur	w12, [x29, #-0x14]
    6d04: 2a1f03e9     	mov	w9, wzr
    6d08: 2a1f03ea     	mov	w10, wzr
    6d0c: 0b0d016b     	add	w11, w11, w13
    6d10: f90007ff     	str	xzr, [sp, #0x8]
    6d14: 531d718c     	lsl	w12, w12, #3
    6d18: f81f03bf     	stur	xzr, [x29, #-0x10]
    6d1c: b90007ed     	str	w13, [sp, #0x4]
    6d20: b81e83ac     	stur	w12, [x29, #-0x18]
    6d24: b90013eb     	str	w11, [sp, #0x10]
    6d28: 14000006     	b	0x6d40 <syna_tcm_parse_touch_report+0xec>
    6d2c: b94017e8     	ldr	w8, [sp, #0x14]
    6d30: b81f43a8     	stur	w8, [x29, #-0xc]
    6d34: 2a1a03e8     	mov	w8, w26
    6d38: 2a1303e9     	mov	w9, w19
    6d3c: 2a1703ea     	mov	w10, w23
    6d40: 2a0a03f7     	mov	w23, w10
    6d44: 2a0903f3     	mov	w19, w9
    6d48: 2a0803fa     	mov	w26, w8
    6d4c: b85f43a9     	ldur	w9, [x29, #-0xc]
    6d50: 6b1c013f     	cmp	w9, w28
    6d54: 5400bb22     	b.hs	0x84b8 <syna_tcm_parse_touch_report+0x1864>
    6d58: 91000528     	add	x8, x9, #0x1
    6d5c: b81f43a8     	stur	w8, [x29, #-0xc]
    6d60: 38696b1b     	ldrb	w27, [x24, x9]
    6d64: 71007b7f     	cmp	w27, #0x1e
    6d68: 54000449     	b.ls	0x6df0 <syna_tcm_parse_touch_report+0x19c>
    6d6c: f941e2c9     	ldr	x9, [x22, #0x3c0]
    6d70: 2a0103f4     	mov	w20, w1
    6d74: b4000249     	cbz	x9, 0x6dbc <syna_tcm_parse_touch_report+0x168>
    6d78: f941dec6     	ldr	x6, [x22, #0x3b8]
    6d7c: b85ec3a5     	ldur	w5, [x29, #-0x14]
    6d80: d10033a2     	sub	x2, x29, #0xc
    6d84: d10043a4     	sub	x4, x29, #0x10
    6d88: 2a1b03e0     	mov	w0, w27
    6d8c: aa1803e1     	mov	x1, x24
    6d90: aa1503e3     	mov	x3, x21
    6d94: b85fc130     	ldur	w16, [x9, #-0x4]
    6d98: 729031f1     	movk	w17, #0x818f
    6d9c: 72aa8c91     	movk	w17, #0x5464, lsl #16
    6da0: 6b11021f     	cmp	w16, w17
    6da4: 54000040     	b.eq	0x6dac <syna_tcm_parse_touch_report+0x158>
    6da8: d4304520     	brk	#0x8229
    6dac: d63f0120     	blr	x9
    6db0: 2a1403e1     	mov	w1, w20
    6db4: 36fffcc0     	tbz	w0, #0x1f, 0x6d4c <syna_tcm_parse_touch_report+0xf8>
    6db8: b85f43a8     	ldur	w8, [x29, #-0xc]
    6dbc: 71032b7f     	cmp	w27, #0xca
    6dc0: 5400a441     	b.ne	0x8248 <syna_tcm_parse_touch_report+0x15f4>
    6dc4: 11000509     	add	w9, w8, #0x1
    6dc8: 2a1703ea     	mov	w10, w23
    6dcc: 2a1403e1     	mov	w1, w20
    6dd0: b81f43a9     	stur	w9, [x29, #-0xc]
    6dd4: b85f03a9     	ldur	w9, [x29, #-0x10]
    6dd8: 38684b08     	ldrb	w8, [x24, w8, uxtw]
    6ddc: 0b080128     	add	w8, w9, w8
    6de0: 2a1303e9     	mov	w9, w19
    6de4: b81f03a8     	stur	w8, [x29, #-0x10]
    6de8: 2a1a03e8     	mov	w8, w26
    6dec: 17ffffd5     	b	0x6d40 <syna_tcm_parse_touch_report+0xec>
    6df0: 9000000c     	adrp	x12, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4818
    6df4: 9100018c     	add	x12, x12, #0x0
		0000000000006df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4818
    6df8: 1000008a     	adr	x10, 0x6e08 <syna_tcm_parse_touch_report+0x1b4>
    6dfc: 787b798b     	ldrh	w11, [x12, x27, lsl #1]
    6e00: 8b0b094a     	add	x10, x10, x11, lsl #2
    6e04: d61f0140     	br	x10
    6e08: b85e83aa     	ldur	w10, [x29, #-0x18]
    6e0c: b94013eb     	ldr	w11, [sp, #0x10]
    6e10: 2a1f03e9     	mov	w9, wzr
    6e14: 6b0a017f     	cmp	w11, w10
    6e18: 5280002a     	mov	w10, #0x1               // =1
    6e1c: 54fff923     	b.lo	0x6d40 <syna_tcm_parse_touch_report+0xec>
    6e20: 17ffffc3     	b	0x6d2c <syna_tcm_parse_touch_report+0xd8>
    6e24: f941eaca     	ldr	x10, [x22, #0x3d0]
    6e28: b400962a     	cbz	x10, 0x80ec <syna_tcm_parse_touch_report+0x1498>
    6e2c: f941e6c6     	ldr	x6, [x22, #0x3c8]
    6e30: b85ec3a5     	ldur	w5, [x29, #-0x14]
    6e34: d10033a2     	sub	x2, x29, #0xc
    6e38: d10043a4     	sub	x4, x29, #0x10
    6e3c: 52800360     	mov	w0, #0x1b               // =27
    6e40: 2a0103f4     	mov	w20, w1
    6e44: aa1803e1     	mov	x1, x24
    6e48: aa1503e3     	mov	x3, x21
    6e4c: b85fc150     	ldur	w16, [x10, #-0x4]
    6e50: 729031f1     	movk	w17, #0x818f
    6e54: 72aa8c91     	movk	w17, #0x5464, lsl #16
    6e58: 6b11021f     	cmp	w16, w17
    6e5c: 54000040     	b.eq	0x6e64 <syna_tcm_parse_touch_report+0x210>
    6e60: d4304540     	brk	#0x822a
    6e64: d63f0140     	blr	x10
    6e68: 2a1403e1     	mov	w1, w20
    6e6c: 2a1a03e8     	mov	w8, w26
    6e70: 2a1303e9     	mov	w9, w19
    6e74: 2a1703ea     	mov	w10, w23
    6e78: 36fff640     	tbz	w0, #0x1f, 0x6d40 <syna_tcm_parse_touch_report+0xec>
    6e7c: 14000681     	b	0x8880 <syna_tcm_parse_touch_report+0x1c2c>
    6e80: f941eaca     	ldr	x10, [x22, #0x3d0]
    6e84: b400954a     	cbz	x10, 0x812c <syna_tcm_parse_touch_report+0x14d8>
    6e88: f941e6c6     	ldr	x6, [x22, #0x3c8]
    6e8c: b85ec3a5     	ldur	w5, [x29, #-0x14]
    6e90: d10033a2     	sub	x2, x29, #0xc
    6e94: d10043a4     	sub	x4, x29, #0x10
    6e98: 52800200     	mov	w0, #0x10               // =16
    6e9c: 2a0103f4     	mov	w20, w1
    6ea0: aa1803e1     	mov	x1, x24
    6ea4: aa1503e3     	mov	x3, x21
    6ea8: b85fc150     	ldur	w16, [x10, #-0x4]
    6eac: 729031f1     	movk	w17, #0x818f
    6eb0: 72aa8c91     	movk	w17, #0x5464, lsl #16
    6eb4: 6b11021f     	cmp	w16, w17
    6eb8: 54000040     	b.eq	0x6ec0 <syna_tcm_parse_touch_report+0x26c>
    6ebc: d4304540     	brk	#0x822a
    6ec0: d63f0140     	blr	x10
    6ec4: 2a1403e1     	mov	w1, w20
    6ec8: 140004cf     	b	0x8204 <syna_tcm_parse_touch_report+0x15b0>
    6ecc: 11000929     	add	w9, w9, #0x2
    6ed0: b81f43a9     	stur	w9, [x29, #-0xc]
    6ed4: 38686b02     	ldrb	w2, [x24, x8]
    6ed8: 51008448     	sub	w8, w2, #0x21
    6edc: 3100811f     	cmn	w8, #0x20
    6ee0: 5400bea3     	b.lo	0x86b4 <syna_tcm_parse_touch_report+0x1a60>
    6ee4: b85f03a9     	ldur	w9, [x29, #-0x10]
    6ee8: b85e83aa     	ldur	w10, [x29, #-0x18]
    6eec: 0b020128     	add	w8, w9, w2
    6ef0: 6b0a011f     	cmp	w8, w10
    6ef4: 54002a89     	b.ls	0x7444 <syna_tcm_parse_touch_report+0x7f0>
    6ef8: 2a1f03f9     	mov	w25, wzr
    6efc: 1400016f     	b	0x74b8 <syna_tcm_parse_touch_report+0x864>
    6f00: 11000929     	add	w9, w9, #0x2
    6f04: b81f43a9     	stur	w9, [x29, #-0xc]
    6f08: 38686b02     	ldrb	w2, [x24, x8]
    6f0c: 51008448     	sub	w8, w2, #0x21
    6f10: 3100811f     	cmn	w8, #0x20
    6f14: 5400ca63     	b.lo	0x8860 <syna_tcm_parse_touch_report+0x1c0c>
    6f18: b85f03a9     	ldur	w9, [x29, #-0x10]
    6f1c: b85e83aa     	ldur	w10, [x29, #-0x18]
    6f20: 0b020128     	add	w8, w9, w2
    6f24: 6b0a011f     	cmp	w8, w10
    6f28: 54002d49     	b.ls	0x74d0 <syna_tcm_parse_touch_report+0x87c>
    6f2c: 2a1f03f9     	mov	w25, wzr
    6f30: 14000185     	b	0x7544 <syna_tcm_parse_touch_report+0x8f0>
    6f34: b85f03a8     	ldur	w8, [x29, #-0x10]
    6f38: 11001d08     	add	w8, w8, #0x7
    6f3c: 121d7108     	and	w8, w8, #0xfffffff8
    6f40: b81f03a8     	stur	w8, [x29, #-0x10]
    6f44: 17ffff7c     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    6f48: 11000929     	add	w9, w9, #0x2
    6f4c: b81f43a9     	stur	w9, [x29, #-0xc]
    6f50: 38686b02     	ldrb	w2, [x24, x8]
    6f54: 51008448     	sub	w8, w2, #0x21
    6f58: 3100811f     	cmn	w8, #0x20
    6f5c: 5400b4c3     	b.lo	0x85f4 <syna_tcm_parse_touch_report+0x19a0>
    6f60: b85f03a9     	ldur	w9, [x29, #-0x10]
    6f64: b85e83aa     	ldur	w10, [x29, #-0x18]
    6f68: 0b020128     	add	w8, w9, w2
    6f6c: 6b0a011f     	cmp	w8, w10
    6f70: 54002f69     	b.ls	0x755c <syna_tcm_parse_touch_report+0x908>
    6f74: 2a1f03f9     	mov	w25, wzr
    6f78: 14000196     	b	0x75d0 <syna_tcm_parse_touch_report+0x97c>
    6f7c: 11000929     	add	w9, w9, #0x2
    6f80: b81f43a9     	stur	w9, [x29, #-0xc]
    6f84: 38686b02     	ldrb	w2, [x24, x8]
    6f88: 51008448     	sub	w8, w2, #0x21
    6f8c: 3100811f     	cmn	w8, #0x20
    6f90: 5400b423     	b.lo	0x8614 <syna_tcm_parse_touch_report+0x19c0>
    6f94: b85f03a9     	ldur	w9, [x29, #-0x10]
    6f98: b85e83aa     	ldur	w10, [x29, #-0x18]
    6f9c: 0b020128     	add	w8, w9, w2
    6fa0: 6b0a011f     	cmp	w8, w10
    6fa4: 54003229     	b.ls	0x75e8 <syna_tcm_parse_touch_report+0x994>
    6fa8: 2a1f03f9     	mov	w25, wzr
    6fac: 140001ac     	b	0x765c <syna_tcm_parse_touch_report+0xa08>
    6fb0: 11000929     	add	w9, w9, #0x2
    6fb4: b81f43a9     	stur	w9, [x29, #-0xc]
    6fb8: 38686b02     	ldrb	w2, [x24, x8]
    6fbc: 51008448     	sub	w8, w2, #0x21
    6fc0: 3100811f     	cmn	w8, #0x20
    6fc4: 5400c2e3     	b.lo	0x8820 <syna_tcm_parse_touch_report+0x1bcc>
    6fc8: b85f03a8     	ldur	w8, [x29, #-0x10]
    6fcc: b85e83a9     	ldur	w9, [x29, #-0x18]
    6fd0: 0b02010b     	add	w11, w8, w2
    6fd4: 6b09017f     	cmp	w11, w9
    6fd8: 540034e9     	b.ls	0x7674 <syna_tcm_parse_touch_report+0xa20>
    6fdc: 2a1f03f9     	mov	w25, wzr
    6fe0: 140001c2     	b	0x76e8 <syna_tcm_parse_touch_report+0xa94>
    6fe4: 11000929     	add	w9, w9, #0x2
    6fe8: b81f43a9     	stur	w9, [x29, #-0xc]
    6fec: 38686b02     	ldrb	w2, [x24, x8]
    6ff0: 51008448     	sub	w8, w2, #0x21
    6ff4: 3100811f     	cmn	w8, #0x20
    6ff8: 5400bc43     	b.lo	0x8780 <syna_tcm_parse_touch_report+0x1b2c>
    6ffc: b85f03a8     	ldur	w8, [x29, #-0x10]
    7000: b85e83aa     	ldur	w10, [x29, #-0x18]
    7004: 0b020109     	add	w9, w8, w2
    7008: 6b0a013f     	cmp	w9, w10
    700c: 54003749     	b.ls	0x76f4 <syna_tcm_parse_touch_report+0xaa0>
    7010: f94013e8     	ldr	x8, [sp, #0x20]
    7014: b81f03a9     	stur	w9, [x29, #-0x10]
    7018: b900051f     	str	wzr, [x8, #0x4]
    701c: 140001dc     	b	0x778c <syna_tcm_parse_touch_report+0xb38>
    7020: b85e83aa     	ldur	w10, [x29, #-0x18]
    7024: b94013eb     	ldr	w11, [sp, #0x10]
    7028: 2a1f03e9     	mov	w9, wzr
    702c: 6b0a017f     	cmp	w11, w10
    7030: 2a1f03ea     	mov	w10, wzr
    7034: 54ffe863     	b.lo	0x6d40 <syna_tcm_parse_touch_report+0xec>
    7038: 17ffff3d     	b	0x6d2c <syna_tcm_parse_touch_report+0xd8>
    703c: 11000929     	add	w9, w9, #0x2
    7040: b81f43a9     	stur	w9, [x29, #-0xc]
    7044: 38686b02     	ldrb	w2, [x24, x8]
    7048: 51008448     	sub	w8, w2, #0x21
    704c: 3100811f     	cmn	w8, #0x20
    7050: 5400b123     	b.lo	0x8674 <syna_tcm_parse_touch_report+0x1a20>
    7054: b85f03a8     	ldur	w8, [x29, #-0x10]
    7058: b85e83a9     	ldur	w9, [x29, #-0x18]
    705c: 0b02010b     	add	w11, w8, w2
    7060: 6b09017f     	cmp	w11, w9
    7064: 54003a09     	b.ls	0x77a4 <syna_tcm_parse_touch_report+0xb50>
    7068: 2a1f03f9     	mov	w25, wzr
    706c: 140001eb     	b	0x7818 <syna_tcm_parse_touch_report+0xbc4>
    7070: b85f03a0     	ldur	w0, [x29, #-0x10]
    7074: b94007e8     	ldr	w8, [sp, #0x4]
    7078: b85e83a9     	ldur	w9, [x29, #-0x18]
    707c: 0b080008     	add	w8, w0, w8
    7080: 6b09011f     	cmp	w8, w9
    7084: 5400a3c8     	b.hi	0x84fc <syna_tcm_parse_touch_report+0x18a8>
    7088: 54ffe520     	b.eq	0x6d2c <syna_tcm_parse_touch_report+0xd8>
    708c: 360086b7     	tbz	w23, #0x0, 0x8160 <syna_tcm_parse_touch_report+0x150c>
    7090: b9400fe8     	ldr	w8, [sp, #0xc]
    7094: 36008c28     	tbz	w8, #0x0, 0x8218 <syna_tcm_parse_touch_report+0x15c4>
    7098: b9400be8     	ldr	w8, [sp, #0x8]
    709c: 11000421     	add	w1, w1, #0x1
    70a0: 11000669     	add	w9, w19, #0x1
    70a4: 5280002a     	mov	w10, #0x1               // =1
    70a8: 6b08003f     	cmp	w1, w8
    70ac: 52800028     	mov	w8, #0x1                // =1
    70b0: b9000fe8     	str	w8, [sp, #0xc]
    70b4: 2a1a03e8     	mov	w8, w26
    70b8: 54ffe442     	b.hs	0x6d40 <syna_tcm_parse_touch_report+0xec>
    70bc: 52800028     	mov	w8, #0x1                // =1
    70c0: b81f43ba     	stur	w26, [x29, #-0xc]
    70c4: b9000fe8     	str	w8, [sp, #0xc]
    70c8: 2a1a03e8     	mov	w8, w26
    70cc: 17ffff1d     	b	0x6d40 <syna_tcm_parse_touch_report+0xec>
    70d0: 11000929     	add	w9, w9, #0x2
    70d4: b81f43a9     	stur	w9, [x29, #-0xc]
    70d8: 38686b02     	ldrb	w2, [x24, x8]
    70dc: 51008448     	sub	w8, w2, #0x21
    70e0: 3100811f     	cmn	w8, #0x20
    70e4: 5400b1e3     	b.lo	0x8720 <syna_tcm_parse_touch_report+0x1acc>
    70e8: b85f03a9     	ldur	w9, [x29, #-0x10]
    70ec: b85e83aa     	ldur	w10, [x29, #-0x18]
    70f0: 0b020128     	add	w8, w9, w2
    70f4: 6b0a011f     	cmp	w8, w10
    70f8: 54003969     	b.ls	0x7824 <syna_tcm_parse_touch_report+0xbd0>
    70fc: 2a1f03f9     	mov	w25, wzr
    7100: 140001e6     	b	0x7898 <syna_tcm_parse_touch_report+0xc44>
    7104: 11000929     	add	w9, w9, #0x2
    7108: b81f43a9     	stur	w9, [x29, #-0xc]
    710c: 38686b02     	ldrb	w2, [x24, x8]
    7110: 51008448     	sub	w8, w2, #0x21
    7114: 3100811f     	cmn	w8, #0x20
    7118: 5400b943     	b.lo	0x8840 <syna_tcm_parse_touch_report+0x1bec>
    711c: b85f03a8     	ldur	w8, [x29, #-0x10]
    7120: b85e83a9     	ldur	w9, [x29, #-0x18]
    7124: 0b02010b     	add	w11, w8, w2
    7128: 6b09017f     	cmp	w11, w9
    712c: 54003c29     	b.ls	0x78b0 <syna_tcm_parse_touch_report+0xc5c>
    7130: 2a1f03f9     	mov	w25, wzr
    7134: 140001fc     	b	0x7924 <syna_tcm_parse_touch_report+0xcd0>
    7138: 11000929     	add	w9, w9, #0x2
    713c: b81f43a9     	stur	w9, [x29, #-0xc]
    7140: 38686b02     	ldrb	w2, [x24, x8]
    7144: 51008448     	sub	w8, w2, #0x21
    7148: 3100811f     	cmn	w8, #0x20
    714c: 5400aa43     	b.lo	0x8694 <syna_tcm_parse_touch_report+0x1a40>
    7150: b85f03a8     	ldur	w8, [x29, #-0x10]
    7154: b85e83a9     	ldur	w9, [x29, #-0x18]
    7158: 0b02010b     	add	w11, w8, w2
    715c: 6b09017f     	cmp	w11, w9
    7160: 54003e89     	b.ls	0x7930 <syna_tcm_parse_touch_report+0xcdc>
    7164: 2a1f03f9     	mov	w25, wzr
    7168: 1400020f     	b	0x79a4 <syna_tcm_parse_touch_report+0xd50>
    716c: 11000929     	add	w9, w9, #0x2
    7170: b81f43a9     	stur	w9, [x29, #-0xc]
    7174: 38686b02     	ldrb	w2, [x24, x8]
    7178: 51008448     	sub	w8, w2, #0x21
    717c: 3100811f     	cmn	w8, #0x20
    7180: 5400b203     	b.lo	0x87c0 <syna_tcm_parse_touch_report+0x1b6c>
    7184: b85f03a8     	ldur	w8, [x29, #-0x10]
    7188: b85e83a9     	ldur	w9, [x29, #-0x18]
    718c: 0b02010b     	add	w11, w8, w2
    7190: 6b09017f     	cmp	w11, w9
    7194: 540040e9     	b.ls	0x79b0 <syna_tcm_parse_touch_report+0xd5c>
    7198: 2a1f03f9     	mov	w25, wzr
    719c: 14000222     	b	0x7a24 <syna_tcm_parse_touch_report+0xdd0>
    71a0: 11000929     	add	w9, w9, #0x2
    71a4: b81f43a9     	stur	w9, [x29, #-0xc]
    71a8: 38686b02     	ldrb	w2, [x24, x8]
    71ac: 51008448     	sub	w8, w2, #0x21
    71b0: 3100811f     	cmn	w8, #0x20
    71b4: 5400ac63     	b.lo	0x8740 <syna_tcm_parse_touch_report+0x1aec>
    71b8: b85f03a8     	ldur	w8, [x29, #-0x10]
    71bc: b85e83a9     	ldur	w9, [x29, #-0x18]
    71c0: 0b02010b     	add	w11, w8, w2
    71c4: 6b09017f     	cmp	w11, w9
    71c8: 54004349     	b.ls	0x7a30 <syna_tcm_parse_touch_report+0xddc>
    71cc: 2a1f03f9     	mov	w25, wzr
    71d0: 14000235     	b	0x7aa4 <syna_tcm_parse_touch_report+0xe50>
    71d4: 11000929     	add	w9, w9, #0x2
    71d8: b81f43a9     	stur	w9, [x29, #-0xc]
    71dc: 38686b02     	ldrb	w2, [x24, x8]
    71e0: 51008448     	sub	w8, w2, #0x21
    71e4: 3100811f     	cmn	w8, #0x20
    71e8: 5400adc3     	b.lo	0x87a0 <syna_tcm_parse_touch_report+0x1b4c>
    71ec: b85f03a9     	ldur	w9, [x29, #-0x10]
    71f0: b85e83aa     	ldur	w10, [x29, #-0x18]
    71f4: 0b020128     	add	w8, w9, w2
    71f8: 6b0a011f     	cmp	w8, w10
    71fc: 540045a9     	b.ls	0x7ab0 <syna_tcm_parse_touch_report+0xe5c>
    7200: 2a1f03f9     	mov	w25, wzr
    7204: 14000248     	b	0x7b24 <syna_tcm_parse_touch_report+0xed0>
    7208: 11000929     	add	w9, w9, #0x2
    720c: b81f43a9     	stur	w9, [x29, #-0xc]
    7210: 38686b02     	ldrb	w2, [x24, x8]
    7214: 51008448     	sub	w8, w2, #0x21
    7218: 3100811f     	cmn	w8, #0x20
    721c: 5400a723     	b.lo	0x8700 <syna_tcm_parse_touch_report+0x1aac>
    7220: b85f03a8     	ldur	w8, [x29, #-0x10]
    7224: b85e83a9     	ldur	w9, [x29, #-0x18]
    7228: 0b02010b     	add	w11, w8, w2
    722c: 6b09017f     	cmp	w11, w9
    7230: 54004869     	b.ls	0x7b3c <syna_tcm_parse_touch_report+0xee8>
    7234: 2a1f03f9     	mov	w25, wzr
    7238: 1400025e     	b	0x7bb0 <syna_tcm_parse_touch_report+0xf5c>
    723c: 11000929     	add	w9, w9, #0x2
    7240: b81f43a9     	stur	w9, [x29, #-0xc]
    7244: 38686b02     	ldrb	w2, [x24, x8]
    7248: 51008448     	sub	w8, w2, #0x21
    724c: 3100811f     	cmn	w8, #0x20
    7250: 5400a423     	b.lo	0x86d4 <syna_tcm_parse_touch_report+0x1a80>
    7254: b85f03a8     	ldur	w8, [x29, #-0x10]
    7258: b85e83a9     	ldur	w9, [x29, #-0x18]
    725c: 0b02010b     	add	w11, w8, w2
    7260: 6b09017f     	cmp	w11, w9
    7264: 54004b09     	b.ls	0x7bc4 <syna_tcm_parse_touch_report+0xf70>
    7268: 2a1f03f9     	mov	w25, wzr
    726c: 14000273     	b	0x7c38 <syna_tcm_parse_touch_report+0xfe4>
    7270: 11000929     	add	w9, w9, #0x2
    7274: b81f43a9     	stur	w9, [x29, #-0xc]
    7278: 38686b02     	ldrb	w2, [x24, x8]
    727c: 51008448     	sub	w8, w2, #0x21
    7280: 3100811f     	cmn	w8, #0x20
    7284: 54009783     	b.lo	0x8574 <syna_tcm_parse_touch_report+0x1920>
    7288: b85f03a9     	ldur	w9, [x29, #-0x10]
    728c: b85e83aa     	ldur	w10, [x29, #-0x18]
    7290: 0b020128     	add	w8, w9, w2
    7294: 6b0a011f     	cmp	w8, w10
    7298: 54004d69     	b.ls	0x7c44 <syna_tcm_parse_touch_report+0xff0>
    729c: 2a1f03f9     	mov	w25, wzr
    72a0: 14000286     	b	0x7cb8 <syna_tcm_parse_touch_report+0x1064>
    72a4: 11000929     	add	w9, w9, #0x2
    72a8: b81f43a9     	stur	w9, [x29, #-0xc]
    72ac: 38686b02     	ldrb	w2, [x24, x8]
    72b0: 51008448     	sub	w8, w2, #0x21
    72b4: 3100811f     	cmn	w8, #0x20
    72b8: 5400a943     	b.lo	0x87e0 <syna_tcm_parse_touch_report+0x1b8c>
    72bc: b85f03a9     	ldur	w9, [x29, #-0x10]
    72c0: b85e83aa     	ldur	w10, [x29, #-0x18]
    72c4: 0b020128     	add	w8, w9, w2
    72c8: 6b0a011f     	cmp	w8, w10
    72cc: 54005029     	b.ls	0x7cd0 <syna_tcm_parse_touch_report+0x107c>
    72d0: 2a1f03f9     	mov	w25, wzr
    72d4: 1400029c     	b	0x7d44 <syna_tcm_parse_touch_report+0x10f0>
    72d8: 11000929     	add	w9, w9, #0x2
    72dc: b81f43a9     	stur	w9, [x29, #-0xc]
    72e0: 38686b02     	ldrb	w2, [x24, x8]
    72e4: 51008448     	sub	w8, w2, #0x21
    72e8: 3100811f     	cmn	w8, #0x20
    72ec: 54009b43     	b.lo	0x8654 <syna_tcm_parse_touch_report+0x1a00>
    72f0: b85f03a8     	ldur	w8, [x29, #-0x10]
    72f4: b85e83a9     	ldur	w9, [x29, #-0x18]
    72f8: 0b02010b     	add	w11, w8, w2
    72fc: 6b09017f     	cmp	w11, w9
    7300: 540052e9     	b.ls	0x7d5c <syna_tcm_parse_touch_report+0x1108>
    7304: 2a1f03f9     	mov	w25, wzr
    7308: 140002b2     	b	0x7dd0 <syna_tcm_parse_touch_report+0x117c>
    730c: 11000929     	add	w9, w9, #0x2
    7310: b81f43a9     	stur	w9, [x29, #-0xc]
    7314: 38686b02     	ldrb	w2, [x24, x8]
    7318: 51008448     	sub	w8, w2, #0x21
    731c: 3100811f     	cmn	w8, #0x20
    7320: 540093a3     	b.lo	0x8594 <syna_tcm_parse_touch_report+0x1940>
    7324: b85f03a8     	ldur	w8, [x29, #-0x10]
    7328: b85e83a9     	ldur	w9, [x29, #-0x18]
    732c: 0b02010b     	add	w11, w8, w2
    7330: 6b09017f     	cmp	w11, w9
    7334: 54005549     	b.ls	0x7ddc <syna_tcm_parse_touch_report+0x1188>
    7338: 2a1f03f9     	mov	w25, wzr
    733c: 140002c5     	b	0x7e50 <syna_tcm_parse_touch_report+0x11fc>
    7340: 11000929     	add	w9, w9, #0x2
    7344: b81f43a9     	stur	w9, [x29, #-0xc]
    7348: 38686b02     	ldrb	w2, [x24, x8]
    734c: 51008448     	sub	w8, w2, #0x21
    7350: 3100811f     	cmn	w8, #0x20
    7354: 54009703     	b.lo	0x8634 <syna_tcm_parse_touch_report+0x19e0>
    7358: b85f03a8     	ldur	w8, [x29, #-0x10]
    735c: b85e83a9     	ldur	w9, [x29, #-0x18]
    7360: 0b02010b     	add	w11, w8, w2
    7364: 6b09017f     	cmp	w11, w9
    7368: 540057a9     	b.ls	0x7e5c <syna_tcm_parse_touch_report+0x1208>
    736c: 2a1f03f9     	mov	w25, wzr
    7370: 140002d8     	b	0x7ed0 <syna_tcm_parse_touch_report+0x127c>
    7374: 11000929     	add	w9, w9, #0x2
    7378: b81f43a9     	stur	w9, [x29, #-0xc]
    737c: 38686b02     	ldrb	w2, [x24, x8]
    7380: 51008448     	sub	w8, w2, #0x21
    7384: 3100811f     	cmn	w8, #0x20
    7388: 5400a3c3     	b.lo	0x8800 <syna_tcm_parse_touch_report+0x1bac>
    738c: b85f03a8     	ldur	w8, [x29, #-0x10]
    7390: b85e83a9     	ldur	w9, [x29, #-0x18]
    7394: 0b02010b     	add	w11, w8, w2
    7398: 6b09017f     	cmp	w11, w9
    739c: 54005a09     	b.ls	0x7edc <syna_tcm_parse_touch_report+0x1288>
    73a0: 2a1f03f9     	mov	w25, wzr
    73a4: 140002eb     	b	0x7f50 <syna_tcm_parse_touch_report+0x12fc>
    73a8: 11000929     	add	w9, w9, #0x2
    73ac: b81f43a9     	stur	w9, [x29, #-0xc]
    73b0: 38686b02     	ldrb	w2, [x24, x8]
    73b4: 51008448     	sub	w8, w2, #0x21
    73b8: 3100811f     	cmn	w8, #0x20
    73bc: 540090c3     	b.lo	0x85d4 <syna_tcm_parse_touch_report+0x1980>
    73c0: b85f03a8     	ldur	w8, [x29, #-0x10]
    73c4: b85e83a9     	ldur	w9, [x29, #-0x18]
    73c8: 0b02010b     	add	w11, w8, w2
    73cc: 6b09017f     	cmp	w11, w9
    73d0: 54005c69     	b.ls	0x7f5c <syna_tcm_parse_touch_report+0x1308>
    73d4: 2a1f03f9     	mov	w25, wzr
    73d8: 140002fe     	b	0x7fd0 <syna_tcm_parse_touch_report+0x137c>
    73dc: 11000929     	add	w9, w9, #0x2
    73e0: b81f43a9     	stur	w9, [x29, #-0xc]
    73e4: 38686b02     	ldrb	w2, [x24, x8]
    73e8: 51008448     	sub	w8, w2, #0x21
    73ec: 3100811f     	cmn	w8, #0x20
    73f0: 54009b83     	b.lo	0x8760 <syna_tcm_parse_touch_report+0x1b0c>
    73f4: b85f03a8     	ldur	w8, [x29, #-0x10]
    73f8: b85e83a9     	ldur	w9, [x29, #-0x18]
    73fc: 0b02010b     	add	w11, w8, w2
    7400: 6b09017f     	cmp	w11, w9
    7404: 54005ec9     	b.ls	0x7fdc <syna_tcm_parse_touch_report+0x1388>
    7408: 2a1f03f9     	mov	w25, wzr
    740c: 14000311     	b	0x8050 <syna_tcm_parse_touch_report+0x13fc>
    7410: 11000929     	add	w9, w9, #0x2
    7414: b81f43a9     	stur	w9, [x29, #-0xc]
    7418: 38686b02     	ldrb	w2, [x24, x8]
    741c: 51008448     	sub	w8, w2, #0x21
    7420: 3100811f     	cmn	w8, #0x20
    7424: 54008c83     	b.lo	0x85b4 <syna_tcm_parse_touch_report+0x1960>
    7428: b85f03a8     	ldur	w8, [x29, #-0x10]
    742c: b85e83a9     	ldur	w9, [x29, #-0x18]
    7430: 0b02010b     	add	w11, w8, w2
    7434: 6b09017f     	cmp	w11, w9
    7438: 54006129     	b.ls	0x805c <syna_tcm_parse_touch_report+0x1408>
    743c: 2a1f03f9     	mov	w25, wzr
    7440: 14000324     	b	0x80d0 <syna_tcm_parse_touch_report+0x147c>
    7444: 1200092b     	and	w11, w9, #0x7
    7448: 5280010c     	mov	w12, #0x8               // =8
    744c: d343fd2a     	lsr	x10, x9, #3
    7450: 4b0b0189     	sub	w9, w12, w11
    7454: 52801fee     	mov	w14, #0xff              // =255
    7458: 6b02013f     	cmp	w9, w2
    745c: 386a6aad     	ldrb	w13, [x21, x10]
    7460: 1a823129     	csel	w9, w9, w2, lo
    7464: 4b09018c     	sub	w12, w12, w9
    7468: 1acb25ab     	lsr	w11, w13, w11
    746c: 6b090049     	subs	w9, w2, w9
    7470: 1acc25cc     	lsr	w12, w14, w12
    7474: 0a0c0179     	and	w25, w11, w12
    7478: 54000200     	b.eq	0x74b8 <syna_tcm_parse_touch_report+0x864>
    747c: 1100054a     	add	w10, w10, #0x1
    7480: 7100213f     	cmp	w9, #0x8
    7484: 5280010b     	mov	w11, #0x8               // =8
    7488: 52801fed     	mov	w13, #0xff              // =255
    748c: 1a8b312c     	csel	w12, w9, w11, lo
    7490: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7494: 1100054a     	add	w10, w10, #0x1
    7498: 4b0c016b     	sub	w11, w11, w12
    749c: 1acb25ab     	lsr	w11, w13, w11
    74a0: 4b09004d     	sub	w13, w2, w9
    74a4: 6b0c0129     	subs	w9, w9, w12
    74a8: 0a0e016b     	and	w11, w11, w14
    74ac: 1acd216b     	lsl	w11, w11, w13
    74b0: 2a190179     	orr	w25, w11, w25
    74b4: 54fffe61     	b.ne	0x7480 <syna_tcm_parse_touch_report+0x82c>
    74b8: 52800689     	mov	w9, #0x34               // =52
    74bc: f9400fea     	ldr	x10, [sp, #0x18]
    74c0: b81f03a8     	stur	w8, [x29, #-0x10]
    74c4: 9ba92a69     	umaddl	x9, w19, w9, x10
    74c8: b9001d39     	str	w25, [x9, #0x1c]
    74cc: 17fffe1a     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    74d0: 1200092b     	and	w11, w9, #0x7
    74d4: 5280010c     	mov	w12, #0x8               // =8
    74d8: d343fd2a     	lsr	x10, x9, #3
    74dc: 4b0b0189     	sub	w9, w12, w11
    74e0: 52801fee     	mov	w14, #0xff              // =255
    74e4: 6b02013f     	cmp	w9, w2
    74e8: 386a6aad     	ldrb	w13, [x21, x10]
    74ec: 1a823129     	csel	w9, w9, w2, lo
    74f0: 4b09018c     	sub	w12, w12, w9
    74f4: 1acb25ab     	lsr	w11, w13, w11
    74f8: 6b090049     	subs	w9, w2, w9
    74fc: 1acc25cc     	lsr	w12, w14, w12
    7500: 0a0c0179     	and	w25, w11, w12
    7504: 54000200     	b.eq	0x7544 <syna_tcm_parse_touch_report+0x8f0>
    7508: 1100054a     	add	w10, w10, #0x1
    750c: 7100213f     	cmp	w9, #0x8
    7510: 5280010b     	mov	w11, #0x8               // =8
    7514: 52801fed     	mov	w13, #0xff              // =255
    7518: 1a8b312c     	csel	w12, w9, w11, lo
    751c: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7520: 1100054a     	add	w10, w10, #0x1
    7524: 4b0c016b     	sub	w11, w11, w12
    7528: 1acb25ab     	lsr	w11, w13, w11
    752c: 4b09004d     	sub	w13, w2, w9
    7530: 6b0c0129     	subs	w9, w9, w12
    7534: 0a0e016b     	and	w11, w11, w14
    7538: 1acd216b     	lsl	w11, w11, w13
    753c: 2a190179     	orr	w25, w11, w25
    7540: 54fffe61     	b.ne	0x750c <syna_tcm_parse_touch_report+0x8b8>
    7544: 52800689     	mov	w9, #0x34               // =52
    7548: f9400fea     	ldr	x10, [sp, #0x18]
    754c: b81f03a8     	stur	w8, [x29, #-0x10]
    7550: 9ba92a69     	umaddl	x9, w19, w9, x10
    7554: b9000d39     	str	w25, [x9, #0xc]
    7558: 17fffdf7     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    755c: 1200092b     	and	w11, w9, #0x7
    7560: 5280010c     	mov	w12, #0x8               // =8
    7564: d343fd2a     	lsr	x10, x9, #3
    7568: 4b0b0189     	sub	w9, w12, w11
    756c: 52801fee     	mov	w14, #0xff              // =255
    7570: 6b02013f     	cmp	w9, w2
    7574: 386a6aad     	ldrb	w13, [x21, x10]
    7578: 1a823129     	csel	w9, w9, w2, lo
    757c: 4b09018c     	sub	w12, w12, w9
    7580: 1acb25ab     	lsr	w11, w13, w11
    7584: 6b090049     	subs	w9, w2, w9
    7588: 1acc25cc     	lsr	w12, w14, w12
    758c: 0a0c0179     	and	w25, w11, w12
    7590: 54000200     	b.eq	0x75d0 <syna_tcm_parse_touch_report+0x97c>
    7594: 1100054a     	add	w10, w10, #0x1
    7598: 7100213f     	cmp	w9, #0x8
    759c: 5280010b     	mov	w11, #0x8               // =8
    75a0: 52801fed     	mov	w13, #0xff              // =255
    75a4: 1a8b312c     	csel	w12, w9, w11, lo
    75a8: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    75ac: 1100054a     	add	w10, w10, #0x1
    75b0: 4b0c016b     	sub	w11, w11, w12
    75b4: 1acb25ab     	lsr	w11, w13, w11
    75b8: 4b09004d     	sub	w13, w2, w9
    75bc: 6b0c0129     	subs	w9, w9, w12
    75c0: 0a0e016b     	and	w11, w11, w14
    75c4: 1acd216b     	lsl	w11, w11, w13
    75c8: 2a190179     	orr	w25, w11, w25
    75cc: 54fffe61     	b.ne	0x7598 <syna_tcm_parse_touch_report+0x944>
    75d0: 52800689     	mov	w9, #0x34               // =52
    75d4: f9400fea     	ldr	x10, [sp, #0x18]
    75d8: b81f03a8     	stur	w8, [x29, #-0x10]
    75dc: 9ba92a69     	umaddl	x9, w19, w9, x10
    75e0: b9001139     	str	w25, [x9, #0x10]
    75e4: 17fffdd4     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    75e8: 1200092b     	and	w11, w9, #0x7
    75ec: 5280010c     	mov	w12, #0x8               // =8
    75f0: d343fd2a     	lsr	x10, x9, #3
    75f4: 4b0b0189     	sub	w9, w12, w11
    75f8: 52801fee     	mov	w14, #0xff              // =255
    75fc: 6b02013f     	cmp	w9, w2
    7600: 386a6aad     	ldrb	w13, [x21, x10]
    7604: 1a823129     	csel	w9, w9, w2, lo
    7608: 4b09018c     	sub	w12, w12, w9
    760c: 1acb25ab     	lsr	w11, w13, w11
    7610: 6b090049     	subs	w9, w2, w9
    7614: 1acc25cc     	lsr	w12, w14, w12
    7618: 0a0c0179     	and	w25, w11, w12
    761c: 54000200     	b.eq	0x765c <syna_tcm_parse_touch_report+0xa08>
    7620: 1100054a     	add	w10, w10, #0x1
    7624: 7100213f     	cmp	w9, #0x8
    7628: 5280010b     	mov	w11, #0x8               // =8
    762c: 52801fed     	mov	w13, #0xff              // =255
    7630: 1a8b312c     	csel	w12, w9, w11, lo
    7634: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7638: 1100054a     	add	w10, w10, #0x1
    763c: 4b0c016b     	sub	w11, w11, w12
    7640: 1acb25ab     	lsr	w11, w13, w11
    7644: 4b09004d     	sub	w13, w2, w9
    7648: 6b0c0129     	subs	w9, w9, w12
    764c: 0a0e016b     	and	w11, w11, w14
    7650: 1acd216b     	lsl	w11, w11, w13
    7654: 2a190179     	orr	w25, w11, w25
    7658: 54fffe61     	b.ne	0x7624 <syna_tcm_parse_touch_report+0x9d0>
    765c: 52800689     	mov	w9, #0x34               // =52
    7660: f9400fea     	ldr	x10, [sp, #0x18]
    7664: b81f03a8     	stur	w8, [x29, #-0x10]
    7668: 9ba92a69     	umaddl	x9, w19, w9, x10
    766c: b9000939     	str	w25, [x9, #0x8]
    7670: 17fffdb1     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    7674: 1200090a     	and	w10, w8, #0x7
    7678: 5280010c     	mov	w12, #0x8               // =8
    767c: d343fd09     	lsr	x9, x8, #3
    7680: 4b0a0188     	sub	w8, w12, w10
    7684: 52801fee     	mov	w14, #0xff              // =255
    7688: 6b02011f     	cmp	w8, w2
    768c: 38696aad     	ldrb	w13, [x21, x9]
    7690: 1a823108     	csel	w8, w8, w2, lo
    7694: 4b08018c     	sub	w12, w12, w8
    7698: 1aca25aa     	lsr	w10, w13, w10
    769c: 6b080048     	subs	w8, w2, w8
    76a0: 1acc25cc     	lsr	w12, w14, w12
    76a4: 0a0c0159     	and	w25, w10, w12
    76a8: 54000200     	b.eq	0x76e8 <syna_tcm_parse_touch_report+0xa94>
    76ac: 11000529     	add	w9, w9, #0x1
    76b0: 7100211f     	cmp	w8, #0x8
    76b4: 5280010a     	mov	w10, #0x8               // =8
    76b8: 52801fed     	mov	w13, #0xff              // =255
    76bc: 1a8a310c     	csel	w12, w8, w10, lo
    76c0: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    76c4: 11000529     	add	w9, w9, #0x1
    76c8: 4b0c014a     	sub	w10, w10, w12
    76cc: 1aca25aa     	lsr	w10, w13, w10
    76d0: 4b08004d     	sub	w13, w2, w8
    76d4: 6b0c0108     	subs	w8, w8, w12
    76d8: 0a0e014a     	and	w10, w10, w14
    76dc: 1acd214a     	lsl	w10, w10, w13
    76e0: 2a190159     	orr	w25, w10, w25
    76e4: 54fffe61     	b.ne	0x76b0 <syna_tcm_parse_touch_report+0xa5c>
    76e8: f94013e8     	ldr	x8, [sp, #0x20]
    76ec: b9024119     	str	w25, [x8, #0x240]
    76f0: 1400027a     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    76f4: 1200090b     	and	w11, w8, #0x7
    76f8: 5280010c     	mov	w12, #0x8               // =8
    76fc: d343fd0a     	lsr	x10, x8, #3
    7700: 4b0b0188     	sub	w8, w12, w11
    7704: 52801fee     	mov	w14, #0xff              // =255
    7708: 6b02011f     	cmp	w8, w2
    770c: 386a6aad     	ldrb	w13, [x21, x10]
    7710: 1a823108     	csel	w8, w8, w2, lo
    7714: 4b08018c     	sub	w12, w12, w8
    7718: 1acb25ab     	lsr	w11, w13, w11
    771c: 6b080048     	subs	w8, w2, w8
    7720: 1acc25cc     	lsr	w12, w14, w12
    7724: 0a0c0179     	and	w25, w11, w12
    7728: 54000200     	b.eq	0x7768 <syna_tcm_parse_touch_report+0xb14>
    772c: 1100054a     	add	w10, w10, #0x1
    7730: 7100211f     	cmp	w8, #0x8
    7734: 5280010b     	mov	w11, #0x8               // =8
    7738: 52801fed     	mov	w13, #0xff              // =255
    773c: 1a8b310c     	csel	w12, w8, w11, lo
    7740: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7744: 1100054a     	add	w10, w10, #0x1
    7748: 4b0c016b     	sub	w11, w11, w12
    774c: 1acb25ab     	lsr	w11, w13, w11
    7750: 4b08004d     	sub	w13, w2, w8
    7754: 6b0c0108     	subs	w8, w8, w12
    7758: 0a0e016b     	and	w11, w11, w14
    775c: 1acd216b     	lsl	w11, w11, w13
    7760: 2a190179     	orr	w25, w11, w25
    7764: 54fffe61     	b.ne	0x7730 <syna_tcm_parse_touch_report+0xadc>
    7768: f94013e8     	ldr	x8, [sp, #0x20]
    776c: b81f03a9     	stur	w9, [x29, #-0x10]
    7770: 2a1303e9     	mov	w9, w19
    7774: 2a1703ea     	mov	w10, w23
    7778: b9000519     	str	w25, [x8, #0x4]
    777c: 52800028     	mov	w8, #0x1                // =1
    7780: 290123f9     	stp	w25, w8, [sp, #0x8]
    7784: 2a1a03e8     	mov	w8, w26
    7788: 35ffadd9     	cbnz	w25, 0x6d40 <syna_tcm_parse_touch_report+0xec>
    778c: b94017e8     	ldr	w8, [sp, #0x14]
    7790: 2a1f03f9     	mov	w25, wzr
    7794: b81f43a8     	stur	w8, [x29, #-0xc]
    7798: 52800028     	mov	w8, #0x1                // =1
    779c: 290123ff     	stp	wzr, w8, [sp, #0x8]
    77a0: 17fffd65     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    77a4: 1200090a     	and	w10, w8, #0x7
    77a8: 5280010c     	mov	w12, #0x8               // =8
    77ac: d343fd09     	lsr	x9, x8, #3
    77b0: 4b0a0188     	sub	w8, w12, w10
    77b4: 52801fee     	mov	w14, #0xff              // =255
    77b8: 6b02011f     	cmp	w8, w2
    77bc: 38696aad     	ldrb	w13, [x21, x9]
    77c0: 1a823108     	csel	w8, w8, w2, lo
    77c4: 4b08018c     	sub	w12, w12, w8
    77c8: 1aca25aa     	lsr	w10, w13, w10
    77cc: 6b080048     	subs	w8, w2, w8
    77d0: 1acc25cc     	lsr	w12, w14, w12
    77d4: 0a0c0159     	and	w25, w10, w12
    77d8: 54000200     	b.eq	0x7818 <syna_tcm_parse_touch_report+0xbc4>
    77dc: 11000529     	add	w9, w9, #0x1
    77e0: 7100211f     	cmp	w8, #0x8
    77e4: 5280010a     	mov	w10, #0x8               // =8
    77e8: 52801fed     	mov	w13, #0xff              // =255
    77ec: 1a8a310c     	csel	w12, w8, w10, lo
    77f0: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    77f4: 11000529     	add	w9, w9, #0x1
    77f8: 4b0c014a     	sub	w10, w10, w12
    77fc: 1aca25aa     	lsr	w10, w13, w10
    7800: 4b08004d     	sub	w13, w2, w8
    7804: 6b0c0108     	subs	w8, w8, w12
    7808: 0a0e014a     	and	w10, w10, w14
    780c: 1acd214a     	lsl	w10, w10, w13
    7810: 2a190159     	orr	w25, w10, w25
    7814: 54fffe61     	b.ne	0x77e0 <syna_tcm_parse_touch_report+0xb8c>
    7818: f94013e8     	ldr	x8, [sp, #0x20]
    781c: b9022119     	str	w25, [x8, #0x220]
    7820: 1400022e     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7824: 1200092b     	and	w11, w9, #0x7
    7828: 5280010c     	mov	w12, #0x8               // =8
    782c: d343fd2a     	lsr	x10, x9, #3
    7830: 4b0b0189     	sub	w9, w12, w11
    7834: 52801fee     	mov	w14, #0xff              // =255
    7838: 6b02013f     	cmp	w9, w2
    783c: 386a6aad     	ldrb	w13, [x21, x10]
    7840: 1a823129     	csel	w9, w9, w2, lo
    7844: 4b09018c     	sub	w12, w12, w9
    7848: 1acb25ab     	lsr	w11, w13, w11
    784c: 6b090049     	subs	w9, w2, w9
    7850: 1acc25cc     	lsr	w12, w14, w12
    7854: 0a0c0179     	and	w25, w11, w12
    7858: 54000200     	b.eq	0x7898 <syna_tcm_parse_touch_report+0xc44>
    785c: 1100054a     	add	w10, w10, #0x1
    7860: 7100213f     	cmp	w9, #0x8
    7864: 5280010b     	mov	w11, #0x8               // =8
    7868: 52801fed     	mov	w13, #0xff              // =255
    786c: 1a8b312c     	csel	w12, w9, w11, lo
    7870: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7874: 1100054a     	add	w10, w10, #0x1
    7878: 4b0c016b     	sub	w11, w11, w12
    787c: 1acb25ab     	lsr	w11, w13, w11
    7880: 4b09004d     	sub	w13, w2, w9
    7884: 6b0c0129     	subs	w9, w9, w12
    7888: 0a0e016b     	and	w11, w11, w14
    788c: 1acd216b     	lsl	w11, w11, w13
    7890: 2a190179     	orr	w25, w11, w25
    7894: 54fffe61     	b.ne	0x7860 <syna_tcm_parse_touch_report+0xc0c>
    7898: 52800689     	mov	w9, #0x34               // =52
    789c: b81f03a8     	stur	w8, [x29, #-0x10]
    78a0: f9400fe8     	ldr	x8, [sp, #0x18]
    78a4: 9ba97e69     	umull	x9, w19, w9
    78a8: 38296919     	strb	w25, [x8, x9]
    78ac: 17fffd22     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    78b0: 1200090a     	and	w10, w8, #0x7
    78b4: 5280010c     	mov	w12, #0x8               // =8
    78b8: d343fd09     	lsr	x9, x8, #3
    78bc: 4b0a0188     	sub	w8, w12, w10
    78c0: 52801fee     	mov	w14, #0xff              // =255
    78c4: 6b02011f     	cmp	w8, w2
    78c8: 38696aad     	ldrb	w13, [x21, x9]
    78cc: 1a823108     	csel	w8, w8, w2, lo
    78d0: 4b08018c     	sub	w12, w12, w8
    78d4: 1aca25aa     	lsr	w10, w13, w10
    78d8: 6b080048     	subs	w8, w2, w8
    78dc: 1acc25cc     	lsr	w12, w14, w12
    78e0: 0a0c0159     	and	w25, w10, w12
    78e4: 54000200     	b.eq	0x7924 <syna_tcm_parse_touch_report+0xcd0>
    78e8: 11000529     	add	w9, w9, #0x1
    78ec: 7100211f     	cmp	w8, #0x8
    78f0: 5280010a     	mov	w10, #0x8               // =8
    78f4: 52801fed     	mov	w13, #0xff              // =255
    78f8: 1a8a310c     	csel	w12, w8, w10, lo
    78fc: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7900: 11000529     	add	w9, w9, #0x1
    7904: 4b0c014a     	sub	w10, w10, w12
    7908: 1aca25aa     	lsr	w10, w13, w10
    790c: 4b08004d     	sub	w13, w2, w8
    7910: 6b0c0108     	subs	w8, w8, w12
    7914: 0a0e014a     	and	w10, w10, w14
    7918: 1acd214a     	lsl	w10, w10, w13
    791c: 2a190159     	orr	w25, w10, w25
    7920: 54fffe61     	b.ne	0x78ec <syna_tcm_parse_touch_report+0xc98>
    7924: f94013e8     	ldr	x8, [sp, #0x20]
    7928: b9022519     	str	w25, [x8, #0x224]
    792c: 140001eb     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7930: 1200090a     	and	w10, w8, #0x7
    7934: 5280010c     	mov	w12, #0x8               // =8
    7938: d343fd09     	lsr	x9, x8, #3
    793c: 4b0a0188     	sub	w8, w12, w10
    7940: 52801fee     	mov	w14, #0xff              // =255
    7944: 6b02011f     	cmp	w8, w2
    7948: 38696aad     	ldrb	w13, [x21, x9]
    794c: 1a823108     	csel	w8, w8, w2, lo
    7950: 4b08018c     	sub	w12, w12, w8
    7954: 1aca25aa     	lsr	w10, w13, w10
    7958: 6b080048     	subs	w8, w2, w8
    795c: 1acc25cc     	lsr	w12, w14, w12
    7960: 0a0c0159     	and	w25, w10, w12
    7964: 54000200     	b.eq	0x79a4 <syna_tcm_parse_touch_report+0xd50>
    7968: 11000529     	add	w9, w9, #0x1
    796c: 7100211f     	cmp	w8, #0x8
    7970: 5280010a     	mov	w10, #0x8               // =8
    7974: 52801fed     	mov	w13, #0xff              // =255
    7978: 1a8a310c     	csel	w12, w8, w10, lo
    797c: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7980: 11000529     	add	w9, w9, #0x1
    7984: 4b0c014a     	sub	w10, w10, w12
    7988: 1aca25aa     	lsr	w10, w13, w10
    798c: 4b08004d     	sub	w13, w2, w8
    7990: 6b0c0108     	subs	w8, w8, w12
    7994: 0a0e014a     	and	w10, w10, w14
    7998: 1acd214a     	lsl	w10, w10, w13
    799c: 2a190159     	orr	w25, w10, w25
    79a0: 54fffe61     	b.ne	0x796c <syna_tcm_parse_touch_report+0xd18>
    79a4: f94013e8     	ldr	x8, [sp, #0x20]
    79a8: b9023119     	str	w25, [x8, #0x230]
    79ac: 140001cb     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    79b0: 1200090a     	and	w10, w8, #0x7
    79b4: 5280010c     	mov	w12, #0x8               // =8
    79b8: d343fd09     	lsr	x9, x8, #3
    79bc: 4b0a0188     	sub	w8, w12, w10
    79c0: 52801fee     	mov	w14, #0xff              // =255
    79c4: 6b02011f     	cmp	w8, w2
    79c8: 38696aad     	ldrb	w13, [x21, x9]
    79cc: 1a823108     	csel	w8, w8, w2, lo
    79d0: 4b08018c     	sub	w12, w12, w8
    79d4: 1aca25aa     	lsr	w10, w13, w10
    79d8: 6b080048     	subs	w8, w2, w8
    79dc: 1acc25cc     	lsr	w12, w14, w12
    79e0: 0a0c0159     	and	w25, w10, w12
    79e4: 54000200     	b.eq	0x7a24 <syna_tcm_parse_touch_report+0xdd0>
    79e8: 11000529     	add	w9, w9, #0x1
    79ec: 7100211f     	cmp	w8, #0x8
    79f0: 5280010a     	mov	w10, #0x8               // =8
    79f4: 52801fed     	mov	w13, #0xff              // =255
    79f8: 1a8a310c     	csel	w12, w8, w10, lo
    79fc: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7a00: 11000529     	add	w9, w9, #0x1
    7a04: 4b0c014a     	sub	w10, w10, w12
    7a08: 1aca25aa     	lsr	w10, w13, w10
    7a0c: 4b08004d     	sub	w13, w2, w8
    7a10: 6b0c0108     	subs	w8, w8, w12
    7a14: 0a0e014a     	and	w10, w10, w14
    7a18: 1acd214a     	lsl	w10, w10, w13
    7a1c: 2a190159     	orr	w25, w10, w25
    7a20: 54fffe61     	b.ne	0x79ec <syna_tcm_parse_touch_report+0xd98>
    7a24: f94013e8     	ldr	x8, [sp, #0x20]
    7a28: b9021d19     	str	w25, [x8, #0x21c]
    7a2c: 140001ab     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7a30: 1200090a     	and	w10, w8, #0x7
    7a34: 5280010c     	mov	w12, #0x8               // =8
    7a38: d343fd09     	lsr	x9, x8, #3
    7a3c: 4b0a0188     	sub	w8, w12, w10
    7a40: 52801fee     	mov	w14, #0xff              // =255
    7a44: 6b02011f     	cmp	w8, w2
    7a48: 38696aad     	ldrb	w13, [x21, x9]
    7a4c: 1a823108     	csel	w8, w8, w2, lo
    7a50: 4b08018c     	sub	w12, w12, w8
    7a54: 1aca25aa     	lsr	w10, w13, w10
    7a58: 6b080048     	subs	w8, w2, w8
    7a5c: 1acc25cc     	lsr	w12, w14, w12
    7a60: 0a0c0159     	and	w25, w10, w12
    7a64: 54000200     	b.eq	0x7aa4 <syna_tcm_parse_touch_report+0xe50>
    7a68: 11000529     	add	w9, w9, #0x1
    7a6c: 7100211f     	cmp	w8, #0x8
    7a70: 5280010a     	mov	w10, #0x8               // =8
    7a74: 52801fed     	mov	w13, #0xff              // =255
    7a78: 1a8a310c     	csel	w12, w8, w10, lo
    7a7c: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7a80: 11000529     	add	w9, w9, #0x1
    7a84: 4b0c014a     	sub	w10, w10, w12
    7a88: 1aca25aa     	lsr	w10, w13, w10
    7a8c: 4b08004d     	sub	w13, w2, w8
    7a90: 6b0c0108     	subs	w8, w8, w12
    7a94: 0a0e014a     	and	w10, w10, w14
    7a98: 1acd214a     	lsl	w10, w10, w13
    7a9c: 2a190159     	orr	w25, w10, w25
    7aa0: 54fffe61     	b.ne	0x7a6c <syna_tcm_parse_touch_report+0xe18>
    7aa4: f94013e8     	ldr	x8, [sp, #0x20]
    7aa8: b9023519     	str	w25, [x8, #0x234]
    7aac: 1400018b     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7ab0: 1200092b     	and	w11, w9, #0x7
    7ab4: 5280010c     	mov	w12, #0x8               // =8
    7ab8: d343fd2a     	lsr	x10, x9, #3
    7abc: 4b0b0189     	sub	w9, w12, w11
    7ac0: 52801fee     	mov	w14, #0xff              // =255
    7ac4: 6b02013f     	cmp	w9, w2
    7ac8: 386a6aad     	ldrb	w13, [x21, x10]
    7acc: 1a823129     	csel	w9, w9, w2, lo
    7ad0: 4b09018c     	sub	w12, w12, w9
    7ad4: 1acb25ab     	lsr	w11, w13, w11
    7ad8: 6b090049     	subs	w9, w2, w9
    7adc: 1acc25cc     	lsr	w12, w14, w12
    7ae0: 0a0c0179     	and	w25, w11, w12
    7ae4: 54000200     	b.eq	0x7b24 <syna_tcm_parse_touch_report+0xed0>
    7ae8: 1100054a     	add	w10, w10, #0x1
    7aec: 7100213f     	cmp	w9, #0x8
    7af0: 5280010b     	mov	w11, #0x8               // =8
    7af4: 52801fed     	mov	w13, #0xff              // =255
    7af8: 1a8b312c     	csel	w12, w9, w11, lo
    7afc: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7b00: 1100054a     	add	w10, w10, #0x1
    7b04: 4b0c016b     	sub	w11, w11, w12
    7b08: 1acb25ab     	lsr	w11, w13, w11
    7b0c: 4b09004d     	sub	w13, w2, w9
    7b10: 6b0c0129     	subs	w9, w9, w12
    7b14: 0a0e016b     	and	w11, w11, w14
    7b18: 1acd216b     	lsl	w11, w11, w13
    7b1c: 2a190179     	orr	w25, w11, w25
    7b20: 54fffe61     	b.ne	0x7aec <syna_tcm_parse_touch_report+0xe98>
    7b24: 52800689     	mov	w9, #0x34               // =52
    7b28: f9400fea     	ldr	x10, [sp, #0x18]
    7b2c: b81f03a8     	stur	w8, [x29, #-0x10]
    7b30: 9ba92a69     	umaddl	x9, w19, w9, x10
    7b34: b9001939     	str	w25, [x9, #0x18]
    7b38: 17fffc7f     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    7b3c: 1200090a     	and	w10, w8, #0x7
    7b40: 5280010c     	mov	w12, #0x8               // =8
    7b44: d343fd09     	lsr	x9, x8, #3
    7b48: 4b0a0188     	sub	w8, w12, w10
    7b4c: 52801fee     	mov	w14, #0xff              // =255
    7b50: 6b02011f     	cmp	w8, w2
    7b54: 38696aad     	ldrb	w13, [x21, x9]
    7b58: 1a823108     	csel	w8, w8, w2, lo
    7b5c: 4b08018c     	sub	w12, w12, w8
    7b60: 1aca25aa     	lsr	w10, w13, w10
    7b64: 6b080048     	subs	w8, w2, w8
    7b68: 1acc25cc     	lsr	w12, w14, w12
    7b6c: 0a0c0159     	and	w25, w10, w12
    7b70: 54000200     	b.eq	0x7bb0 <syna_tcm_parse_touch_report+0xf5c>
    7b74: 11000529     	add	w9, w9, #0x1
    7b78: 7100211f     	cmp	w8, #0x8
    7b7c: 5280010a     	mov	w10, #0x8               // =8
    7b80: 52801fed     	mov	w13, #0xff              // =255
    7b84: 1a8a310c     	csel	w12, w8, w10, lo
    7b88: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7b8c: 11000529     	add	w9, w9, #0x1
    7b90: 4b0c014a     	sub	w10, w10, w12
    7b94: 1aca25aa     	lsr	w10, w13, w10
    7b98: 4b08004d     	sub	w13, w2, w8
    7b9c: 6b0c0108     	subs	w8, w8, w12
    7ba0: 0a0e014a     	and	w10, w10, w14
    7ba4: 1acd214a     	lsl	w10, w10, w13
    7ba8: 2a190159     	orr	w25, w10, w25
    7bac: 54fffe61     	b.ne	0x7b78 <syna_tcm_parse_touch_report+0xf24>
    7bb0: f94013e8     	ldr	x8, [sp, #0x20]
    7bb4: 2a1903e9     	mov	w9, w25
    7bb8: b9000119     	str	w25, [x8]
    7bbc: 2a1a03e8     	mov	w8, w26
    7bc0: 14000148     	b	0x80e0 <syna_tcm_parse_touch_report+0x148c>
    7bc4: 1200090a     	and	w10, w8, #0x7
    7bc8: 5280010c     	mov	w12, #0x8               // =8
    7bcc: d343fd09     	lsr	x9, x8, #3
    7bd0: 4b0a0188     	sub	w8, w12, w10
    7bd4: 52801fee     	mov	w14, #0xff              // =255
    7bd8: 6b02011f     	cmp	w8, w2
    7bdc: 38696aad     	ldrb	w13, [x21, x9]
    7be0: 1a823108     	csel	w8, w8, w2, lo
    7be4: 4b08018c     	sub	w12, w12, w8
    7be8: 1aca25aa     	lsr	w10, w13, w10
    7bec: 6b080048     	subs	w8, w2, w8
    7bf0: 1acc25cc     	lsr	w12, w14, w12
    7bf4: 0a0c0159     	and	w25, w10, w12
    7bf8: 54000200     	b.eq	0x7c38 <syna_tcm_parse_touch_report+0xfe4>
    7bfc: 11000529     	add	w9, w9, #0x1
    7c00: 7100211f     	cmp	w8, #0x8
    7c04: 5280010a     	mov	w10, #0x8               // =8
    7c08: 52801fed     	mov	w13, #0xff              // =255
    7c0c: 1a8a310c     	csel	w12, w8, w10, lo
    7c10: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7c14: 11000529     	add	w9, w9, #0x1
    7c18: 4b0c014a     	sub	w10, w10, w12
    7c1c: 1aca25aa     	lsr	w10, w13, w10
    7c20: 4b08004d     	sub	w13, w2, w8
    7c24: 6b0c0108     	subs	w8, w8, w12
    7c28: 0a0e014a     	and	w10, w10, w14
    7c2c: 1acd214a     	lsl	w10, w10, w13
    7c30: 2a190159     	orr	w25, w10, w25
    7c34: 54fffe61     	b.ne	0x7c00 <syna_tcm_parse_touch_report+0xfac>
    7c38: f94013e8     	ldr	x8, [sp, #0x20]
    7c3c: b9022919     	str	w25, [x8, #0x228]
    7c40: 14000126     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7c44: 1200092b     	and	w11, w9, #0x7
    7c48: 5280010c     	mov	w12, #0x8               // =8
    7c4c: d343fd2a     	lsr	x10, x9, #3
    7c50: 4b0b0189     	sub	w9, w12, w11
    7c54: 52801fee     	mov	w14, #0xff              // =255
    7c58: 6b02013f     	cmp	w9, w2
    7c5c: 386a6aad     	ldrb	w13, [x21, x10]
    7c60: 1a823129     	csel	w9, w9, w2, lo
    7c64: 4b09018c     	sub	w12, w12, w9
    7c68: 1acb25ab     	lsr	w11, w13, w11
    7c6c: 6b090049     	subs	w9, w2, w9
    7c70: 1acc25cc     	lsr	w12, w14, w12
    7c74: 0a0c0179     	and	w25, w11, w12
    7c78: 54000200     	b.eq	0x7cb8 <syna_tcm_parse_touch_report+0x1064>
    7c7c: 1100054a     	add	w10, w10, #0x1
    7c80: 7100213f     	cmp	w9, #0x8
    7c84: 5280010b     	mov	w11, #0x8               // =8
    7c88: 52801fed     	mov	w13, #0xff              // =255
    7c8c: 1a8b312c     	csel	w12, w9, w11, lo
    7c90: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7c94: 1100054a     	add	w10, w10, #0x1
    7c98: 4b0c016b     	sub	w11, w11, w12
    7c9c: 1acb25ab     	lsr	w11, w13, w11
    7ca0: 4b09004d     	sub	w13, w2, w9
    7ca4: 6b0c0129     	subs	w9, w9, w12
    7ca8: 0a0e016b     	and	w11, w11, w14
    7cac: 1acd216b     	lsl	w11, w11, w13
    7cb0: 2a190179     	orr	w25, w11, w25
    7cb4: 54fffe61     	b.ne	0x7c80 <syna_tcm_parse_touch_report+0x102c>
    7cb8: 52800689     	mov	w9, #0x34               // =52
    7cbc: f9400fea     	ldr	x10, [sp, #0x18]
    7cc0: b81f03a8     	stur	w8, [x29, #-0x10]
    7cc4: 9ba92a69     	umaddl	x9, w19, w9, x10
    7cc8: b9001539     	str	w25, [x9, #0x14]
    7ccc: 17fffc1a     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    7cd0: 1200092b     	and	w11, w9, #0x7
    7cd4: 5280010c     	mov	w12, #0x8               // =8
    7cd8: d343fd2a     	lsr	x10, x9, #3
    7cdc: 4b0b0189     	sub	w9, w12, w11
    7ce0: 52801fee     	mov	w14, #0xff              // =255
    7ce4: 6b02013f     	cmp	w9, w2
    7ce8: 386a6aad     	ldrb	w13, [x21, x10]
    7cec: 1a823129     	csel	w9, w9, w2, lo
    7cf0: 4b09018c     	sub	w12, w12, w9
    7cf4: 1acb25ab     	lsr	w11, w13, w11
    7cf8: 6b090049     	subs	w9, w2, w9
    7cfc: 1acc25cc     	lsr	w12, w14, w12
    7d00: 0a0c0179     	and	w25, w11, w12
    7d04: 54000200     	b.eq	0x7d44 <syna_tcm_parse_touch_report+0x10f0>
    7d08: 1100054a     	add	w10, w10, #0x1
    7d0c: 7100213f     	cmp	w9, #0x8
    7d10: 5280010b     	mov	w11, #0x8               // =8
    7d14: 52801fed     	mov	w13, #0xff              // =255
    7d18: 1a8b312c     	csel	w12, w9, w11, lo
    7d1c: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    7d20: 1100054a     	add	w10, w10, #0x1
    7d24: 4b0c016b     	sub	w11, w11, w12
    7d28: 1acb25ab     	lsr	w11, w13, w11
    7d2c: 4b09004d     	sub	w13, w2, w9
    7d30: 6b0c0129     	subs	w9, w9, w12
    7d34: 0a0e016b     	and	w11, w11, w14
    7d38: 1acd216b     	lsl	w11, w11, w13
    7d3c: 2a190179     	orr	w25, w11, w25
    7d40: 54fffe61     	b.ne	0x7d0c <syna_tcm_parse_touch_report+0x10b8>
    7d44: 52800689     	mov	w9, #0x34               // =52
    7d48: f9400fea     	ldr	x10, [sp, #0x18]
    7d4c: b81f03a8     	stur	w8, [x29, #-0x10]
    7d50: 9ba92a69     	umaddl	x9, w19, w9, x10
    7d54: b9000539     	str	w25, [x9, #0x4]
    7d58: 17fffbf7     	b	0x6d34 <syna_tcm_parse_touch_report+0xe0>
    7d5c: 1200090a     	and	w10, w8, #0x7
    7d60: 5280010c     	mov	w12, #0x8               // =8
    7d64: d343fd09     	lsr	x9, x8, #3
    7d68: 4b0a0188     	sub	w8, w12, w10
    7d6c: 52801fee     	mov	w14, #0xff              // =255
    7d70: 6b02011f     	cmp	w8, w2
    7d74: 38696aad     	ldrb	w13, [x21, x9]
    7d78: 1a823108     	csel	w8, w8, w2, lo
    7d7c: 4b08018c     	sub	w12, w12, w8
    7d80: 1aca25aa     	lsr	w10, w13, w10
    7d84: 6b080048     	subs	w8, w2, w8
    7d88: 1acc25cc     	lsr	w12, w14, w12
    7d8c: 0a0c0159     	and	w25, w10, w12
    7d90: 54000200     	b.eq	0x7dd0 <syna_tcm_parse_touch_report+0x117c>
    7d94: 11000529     	add	w9, w9, #0x1
    7d98: 7100211f     	cmp	w8, #0x8
    7d9c: 5280010a     	mov	w10, #0x8               // =8
    7da0: 52801fed     	mov	w13, #0xff              // =255
    7da4: 1a8a310c     	csel	w12, w8, w10, lo
    7da8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7dac: 11000529     	add	w9, w9, #0x1
    7db0: 4b0c014a     	sub	w10, w10, w12
    7db4: 1aca25aa     	lsr	w10, w13, w10
    7db8: 4b08004d     	sub	w13, w2, w8
    7dbc: 6b0c0108     	subs	w8, w8, w12
    7dc0: 0a0e014a     	and	w10, w10, w14
    7dc4: 1acd214a     	lsl	w10, w10, w13
    7dc8: 2a190159     	orr	w25, w10, w25
    7dcc: 54fffe61     	b.ne	0x7d98 <syna_tcm_parse_touch_report+0x1144>
    7dd0: f94013e8     	ldr	x8, [sp, #0x20]
    7dd4: b9025119     	str	w25, [x8, #0x250]
    7dd8: 140000c0     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7ddc: 1200090a     	and	w10, w8, #0x7
    7de0: 5280010c     	mov	w12, #0x8               // =8
    7de4: d343fd09     	lsr	x9, x8, #3
    7de8: 4b0a0188     	sub	w8, w12, w10
    7dec: 52801fee     	mov	w14, #0xff              // =255
    7df0: 6b02011f     	cmp	w8, w2
    7df4: 38696aad     	ldrb	w13, [x21, x9]
    7df8: 1a823108     	csel	w8, w8, w2, lo
    7dfc: 4b08018c     	sub	w12, w12, w8
    7e00: 1aca25aa     	lsr	w10, w13, w10
    7e04: 6b080048     	subs	w8, w2, w8
    7e08: 1acc25cc     	lsr	w12, w14, w12
    7e0c: 0a0c0159     	and	w25, w10, w12
    7e10: 54000200     	b.eq	0x7e50 <syna_tcm_parse_touch_report+0x11fc>
    7e14: 11000529     	add	w9, w9, #0x1
    7e18: 7100211f     	cmp	w8, #0x8
    7e1c: 5280010a     	mov	w10, #0x8               // =8
    7e20: 52801fed     	mov	w13, #0xff              // =255
    7e24: 1a8a310c     	csel	w12, w8, w10, lo
    7e28: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7e2c: 11000529     	add	w9, w9, #0x1
    7e30: 4b0c014a     	sub	w10, w10, w12
    7e34: 1aca25aa     	lsr	w10, w13, w10
    7e38: 4b08004d     	sub	w13, w2, w8
    7e3c: 6b0c0108     	subs	w8, w8, w12
    7e40: 0a0e014a     	and	w10, w10, w14
    7e44: 1acd214a     	lsl	w10, w10, w13
    7e48: 2a190159     	orr	w25, w10, w25
    7e4c: 54fffe61     	b.ne	0x7e18 <syna_tcm_parse_touch_report+0x11c4>
    7e50: f94013e8     	ldr	x8, [sp, #0x20]
    7e54: b9023919     	str	w25, [x8, #0x238]
    7e58: 140000a0     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7e5c: 1200090a     	and	w10, w8, #0x7
    7e60: 5280010c     	mov	w12, #0x8               // =8
    7e64: d343fd09     	lsr	x9, x8, #3
    7e68: 4b0a0188     	sub	w8, w12, w10
    7e6c: 52801fee     	mov	w14, #0xff              // =255
    7e70: 6b02011f     	cmp	w8, w2
    7e74: 38696aad     	ldrb	w13, [x21, x9]
    7e78: 1a823108     	csel	w8, w8, w2, lo
    7e7c: 4b08018c     	sub	w12, w12, w8
    7e80: 1aca25aa     	lsr	w10, w13, w10
    7e84: 6b080048     	subs	w8, w2, w8
    7e88: 1acc25cc     	lsr	w12, w14, w12
    7e8c: 0a0c0159     	and	w25, w10, w12
    7e90: 54000200     	b.eq	0x7ed0 <syna_tcm_parse_touch_report+0x127c>
    7e94: 11000529     	add	w9, w9, #0x1
    7e98: 7100211f     	cmp	w8, #0x8
    7e9c: 5280010a     	mov	w10, #0x8               // =8
    7ea0: 52801fed     	mov	w13, #0xff              // =255
    7ea4: 1a8a310c     	csel	w12, w8, w10, lo
    7ea8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7eac: 11000529     	add	w9, w9, #0x1
    7eb0: 4b0c014a     	sub	w10, w10, w12
    7eb4: 1aca25aa     	lsr	w10, w13, w10
    7eb8: 4b08004d     	sub	w13, w2, w8
    7ebc: 6b0c0108     	subs	w8, w8, w12
    7ec0: 0a0e014a     	and	w10, w10, w14
    7ec4: 1acd214a     	lsl	w10, w10, w13
    7ec8: 2a190159     	orr	w25, w10, w25
    7ecc: 54fffe61     	b.ne	0x7e98 <syna_tcm_parse_touch_report+0x1244>
    7ed0: f94013e8     	ldr	x8, [sp, #0x20]
    7ed4: b9022d19     	str	w25, [x8, #0x22c]
    7ed8: 14000080     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7edc: 1200090a     	and	w10, w8, #0x7
    7ee0: 5280010c     	mov	w12, #0x8               // =8
    7ee4: d343fd09     	lsr	x9, x8, #3
    7ee8: 4b0a0188     	sub	w8, w12, w10
    7eec: 52801fee     	mov	w14, #0xff              // =255
    7ef0: 6b02011f     	cmp	w8, w2
    7ef4: 38696aad     	ldrb	w13, [x21, x9]
    7ef8: 1a823108     	csel	w8, w8, w2, lo
    7efc: 4b08018c     	sub	w12, w12, w8
    7f00: 1aca25aa     	lsr	w10, w13, w10
    7f04: 6b080048     	subs	w8, w2, w8
    7f08: 1acc25cc     	lsr	w12, w14, w12
    7f0c: 0a0c0159     	and	w25, w10, w12
    7f10: 54000200     	b.eq	0x7f50 <syna_tcm_parse_touch_report+0x12fc>
    7f14: 11000529     	add	w9, w9, #0x1
    7f18: 7100211f     	cmp	w8, #0x8
    7f1c: 5280010a     	mov	w10, #0x8               // =8
    7f20: 52801fed     	mov	w13, #0xff              // =255
    7f24: 1a8a310c     	csel	w12, w8, w10, lo
    7f28: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7f2c: 11000529     	add	w9, w9, #0x1
    7f30: 4b0c014a     	sub	w10, w10, w12
    7f34: 1aca25aa     	lsr	w10, w13, w10
    7f38: 4b08004d     	sub	w13, w2, w8
    7f3c: 6b0c0108     	subs	w8, w8, w12
    7f40: 0a0e014a     	and	w10, w10, w14
    7f44: 1acd214a     	lsl	w10, w10, w13
    7f48: 2a190159     	orr	w25, w10, w25
    7f4c: 54fffe61     	b.ne	0x7f18 <syna_tcm_parse_touch_report+0x12c4>
    7f50: f94013e8     	ldr	x8, [sp, #0x20]
    7f54: b9023d19     	str	w25, [x8, #0x23c]
    7f58: 14000060     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7f5c: 1200090a     	and	w10, w8, #0x7
    7f60: 5280010c     	mov	w12, #0x8               // =8
    7f64: d343fd09     	lsr	x9, x8, #3
    7f68: 4b0a0188     	sub	w8, w12, w10
    7f6c: 52801fee     	mov	w14, #0xff              // =255
    7f70: 6b02011f     	cmp	w8, w2
    7f74: 38696aad     	ldrb	w13, [x21, x9]
    7f78: 1a823108     	csel	w8, w8, w2, lo
    7f7c: 4b08018c     	sub	w12, w12, w8
    7f80: 1aca25aa     	lsr	w10, w13, w10
    7f84: 6b080048     	subs	w8, w2, w8
    7f88: 1acc25cc     	lsr	w12, w14, w12
    7f8c: 0a0c0159     	and	w25, w10, w12
    7f90: 54000200     	b.eq	0x7fd0 <syna_tcm_parse_touch_report+0x137c>
    7f94: 11000529     	add	w9, w9, #0x1
    7f98: 7100211f     	cmp	w8, #0x8
    7f9c: 5280010a     	mov	w10, #0x8               // =8
    7fa0: 52801fed     	mov	w13, #0xff              // =255
    7fa4: 1a8a310c     	csel	w12, w8, w10, lo
    7fa8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    7fac: 11000529     	add	w9, w9, #0x1
    7fb0: 4b0c014a     	sub	w10, w10, w12
    7fb4: 1aca25aa     	lsr	w10, w13, w10
    7fb8: 4b08004d     	sub	w13, w2, w8
    7fbc: 6b0c0108     	subs	w8, w8, w12
    7fc0: 0a0e014a     	and	w10, w10, w14
    7fc4: 1acd214a     	lsl	w10, w10, w13
    7fc8: 2a190159     	orr	w25, w10, w25
    7fcc: 54fffe61     	b.ne	0x7f98 <syna_tcm_parse_touch_report+0x1344>
    7fd0: f94013e8     	ldr	x8, [sp, #0x20]
    7fd4: b9024919     	str	w25, [x8, #0x248]
    7fd8: 14000040     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    7fdc: 1200090a     	and	w10, w8, #0x7
    7fe0: 5280010c     	mov	w12, #0x8               // =8
    7fe4: d343fd09     	lsr	x9, x8, #3
    7fe8: 4b0a0188     	sub	w8, w12, w10
    7fec: 52801fee     	mov	w14, #0xff              // =255
    7ff0: 6b02011f     	cmp	w8, w2
    7ff4: 38696aad     	ldrb	w13, [x21, x9]
    7ff8: 1a823108     	csel	w8, w8, w2, lo
    7ffc: 4b08018c     	sub	w12, w12, w8
    8000: 1aca25aa     	lsr	w10, w13, w10
    8004: 6b080048     	subs	w8, w2, w8
    8008: 1acc25cc     	lsr	w12, w14, w12
    800c: 0a0c0159     	and	w25, w10, w12
    8010: 54000200     	b.eq	0x8050 <syna_tcm_parse_touch_report+0x13fc>
    8014: 11000529     	add	w9, w9, #0x1
    8018: 7100211f     	cmp	w8, #0x8
    801c: 5280010a     	mov	w10, #0x8               // =8
    8020: 52801fed     	mov	w13, #0xff              // =255
    8024: 1a8a310c     	csel	w12, w8, w10, lo
    8028: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    802c: 11000529     	add	w9, w9, #0x1
    8030: 4b0c014a     	sub	w10, w10, w12
    8034: 1aca25aa     	lsr	w10, w13, w10
    8038: 4b08004d     	sub	w13, w2, w8
    803c: 6b0c0108     	subs	w8, w8, w12
    8040: 0a0e014a     	and	w10, w10, w14
    8044: 1acd214a     	lsl	w10, w10, w13
    8048: 2a190159     	orr	w25, w10, w25
    804c: 54fffe61     	b.ne	0x8018 <syna_tcm_parse_touch_report+0x13c4>
    8050: f94013e8     	ldr	x8, [sp, #0x20]
    8054: b9024d19     	str	w25, [x8, #0x24c]
    8058: 14000020     	b	0x80d8 <syna_tcm_parse_touch_report+0x1484>
    805c: 1200090a     	and	w10, w8, #0x7
    8060: 5280010c     	mov	w12, #0x8               // =8
    8064: d343fd09     	lsr	x9, x8, #3
    8068: 4b0a0188     	sub	w8, w12, w10
    806c: 52801fee     	mov	w14, #0xff              // =255
    8070: 6b02011f     	cmp	w8, w2
    8074: 38696aad     	ldrb	w13, [x21, x9]
    8078: 1a823108     	csel	w8, w8, w2, lo
    807c: 4b08018c     	sub	w12, w12, w8
    8080: 1aca25aa     	lsr	w10, w13, w10
    8084: 6b080048     	subs	w8, w2, w8
    8088: 1acc25cc     	lsr	w12, w14, w12
    808c: 0a0c0159     	and	w25, w10, w12
    8090: 54000200     	b.eq	0x80d0 <syna_tcm_parse_touch_report+0x147c>
    8094: 11000529     	add	w9, w9, #0x1
    8098: 7100211f     	cmp	w8, #0x8
    809c: 5280010a     	mov	w10, #0x8               // =8
    80a0: 52801fed     	mov	w13, #0xff              // =255
    80a4: 1a8a310c     	csel	w12, w8, w10, lo
    80a8: 38694aae     	ldrb	w14, [x21, w9, uxtw]
    80ac: 11000529     	add	w9, w9, #0x1
    80b0: 4b0c014a     	sub	w10, w10, w12
    80b4: 1aca25aa     	lsr	w10, w13, w10
    80b8: 4b08004d     	sub	w13, w2, w8
    80bc: 6b0c0108     	subs	w8, w8, w12
    80c0: 0a0e014a     	and	w10, w10, w14
    80c4: 1acd214a     	lsl	w10, w10, w13
    80c8: 2a190159     	orr	w25, w10, w25
    80cc: 54fffe61     	b.ne	0x8098 <syna_tcm_parse_touch_report+0x1444>
    80d0: f94013e8     	ldr	x8, [sp, #0x20]
    80d4: b9024519     	str	w25, [x8, #0x244]
    80d8: 2a1a03e8     	mov	w8, w26
    80dc: 2a1303e9     	mov	w9, w19
    80e0: 2a1703ea     	mov	w10, w23
    80e4: b81f03ab     	stur	w11, [x29, #-0x10]
    80e8: 17fffb16     	b	0x6d40 <syna_tcm_parse_touch_report+0xec>
    80ec: 11000929     	add	w9, w9, #0x2
    80f0: b81f43a9     	stur	w9, [x29, #-0xc]
    80f4: 297da7aa     	ldp	w10, w9, [x29, #-0x14]
    80f8: 38686b1b     	ldrb	w27, [x24, x8]
    80fc: 0b1b0128     	add	w8, w9, w27
    8100: 6b480d5f     	cmp	w10, w8, lsr #3
    8104: 54ff71e3     	b.lo	0x6f40 <syna_tcm_parse_touch_report+0x2ec>
    8108: 6b09011f     	cmp	w8, w9
    810c: 54001b09     	b.ls	0x846c <syna_tcm_parse_touch_report+0x1818>
    8110: b85e83aa     	ldur	w10, [x29, #-0x18]
    8114: 1100412b     	add	w11, w9, #0x10
    8118: 6b0a017f     	cmp	w11, w10
    811c: 1200092a     	and	w10, w9, #0x7
    8120: 54000a69     	b.ls	0x826c <syna_tcm_parse_touch_report+0x1618>
    8124: 2a1f03ec     	mov	w12, wzr
    8128: 14000066     	b	0x82c0 <syna_tcm_parse_touch_report+0x166c>
    812c: 11000929     	add	w9, w9, #0x2
    8130: b81f43a9     	stur	w9, [x29, #-0xc]
    8134: 38686b1b     	ldrb	w27, [x24, x8]
    8138: 51008768     	sub	w8, w27, #0x21
    813c: 3100851f     	cmn	w8, #0x21
    8140: 54001129     	b.ls	0x8364 <syna_tcm_parse_touch_report+0x1710>
    8144: b85f03a9     	ldur	w9, [x29, #-0x10]
    8148: b85e83aa     	ldur	w10, [x29, #-0x18]
    814c: 0b1b0128     	add	w8, w9, w27
    8150: 6b0a011f     	cmp	w8, w10
    8154: 54000169     	b.ls	0x8180 <syna_tcm_parse_touch_report+0x152c>
    8158: 2a1f03f9     	mov	w25, wzr
    815c: 14000026     	b	0x81f4 <syna_tcm_parse_touch_report+0x15a0>
    8160: b9401ac8     	ldr	w8, [x22, #0x18]
    8164: 11000669     	add	w9, w19, #0x1
    8168: 2a1f03ea     	mov	w10, wzr
    816c: 6b08013f     	cmp	w9, w8
    8170: 2a1a03e8     	mov	w8, w26
    8174: 54ff5e62     	b.hs	0x6d40 <syna_tcm_parse_touch_report+0xec>
    8178: 2a1f03ea     	mov	w10, wzr
    817c: 14000030     	b	0x823c <syna_tcm_parse_touch_report+0x15e8>
    8180: 1200092b     	and	w11, w9, #0x7
    8184: 5280010c     	mov	w12, #0x8               // =8
    8188: d343fd2a     	lsr	x10, x9, #3
    818c: 4b0b0189     	sub	w9, w12, w11
    8190: 52801fee     	mov	w14, #0xff              // =255
    8194: 6b1b013f     	cmp	w9, w27
    8198: 386a6aad     	ldrb	w13, [x21, x10]
    819c: 1a9b3129     	csel	w9, w9, w27, lo
    81a0: 4b09018c     	sub	w12, w12, w9
    81a4: 1acb25ab     	lsr	w11, w13, w11
    81a8: 6b090369     	subs	w9, w27, w9
    81ac: 1acc25cc     	lsr	w12, w14, w12
    81b0: 0a0c0179     	and	w25, w11, w12
    81b4: 54000200     	b.eq	0x81f4 <syna_tcm_parse_touch_report+0x15a0>
    81b8: 1100054a     	add	w10, w10, #0x1
    81bc: 7100213f     	cmp	w9, #0x8
    81c0: 5280010b     	mov	w11, #0x8               // =8
    81c4: 52801fed     	mov	w13, #0xff              // =255
    81c8: 1a8b312c     	csel	w12, w9, w11, lo
    81cc: 386a4aae     	ldrb	w14, [x21, w10, uxtw]
    81d0: 1100054a     	add	w10, w10, #0x1
    81d4: 4b0c016b     	sub	w11, w11, w12
    81d8: 1acb25ab     	lsr	w11, w13, w11
    81dc: 4b09036d     	sub	w13, w27, w9
    81e0: 6b0c0129     	subs	w9, w9, w12
    81e4: 0a0e016b     	and	w11, w11, w14
    81e8: 1acd216b     	lsl	w11, w11, w13
    81ec: 2a190179     	orr	w25, w11, w25
    81f0: 54fffe61     	b.ne	0x81bc <syna_tcm_parse_touch_report+0x1568>
    81f4: 2a1f03e0     	mov	w0, wzr
    81f8: f94013e9     	ldr	x9, [sp, #0x20]
    81fc: b81f03a8     	stur	w8, [x29, #-0x10]
    8200: b9021139     	str	w25, [x9, #0x210]
    8204: 2a1a03e8     	mov	w8, w26
    8208: 2a1303e9     	mov	w9, w19
    820c: 2a1703ea     	mov	w10, w23
    8210: 36ff5980     	tbz	w0, #0x1f, 0x6d40 <syna_tcm_parse_touch_report+0xec>
    8214: 14000138     	b	0x86f4 <syna_tcm_parse_touch_report+0x1aa0>
    8218: b85e83a8     	ldur	w8, [x29, #-0x18]
    821c: 5280002a     	mov	w10, #0x1               // =1
    8220: 2a1303e9     	mov	w9, w19
    8224: b9000fff     	str	wzr, [sp, #0xc]
    8228: 6b08001f     	cmp	w0, w8
    822c: 2a1a03e8     	mov	w8, w26
    8230: 54ff5882     	b.hs	0x6d40 <syna_tcm_parse_touch_report+0xec>
    8234: b9000fff     	str	wzr, [sp, #0xc]
    8238: 11000669     	add	w9, w19, #0x1
    823c: b81f43ba     	stur	w26, [x29, #-0xc]
    8240: 2a1a03e8     	mov	w8, w26
    8244: 17fffabf     	b	0x6d40 <syna_tcm_parse_touch_report+0xec>
    8248: 38684b03     	ldrb	w3, [x24, w8, uxtw]
    824c: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000824c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d8e
    8250: 91000000     	add	x0, x0, #0x0
		0000000000008250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d8e
    8254: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9620
    8258: 91000021     	add	x1, x1, #0x0
		0000000000008258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9620
    825c: 2a1b03e2     	mov	w2, w27
    8260: 94000000     	bl	0x8260 <syna_tcm_parse_touch_report+0x160c>
		0000000000008260:  R_AARCH64_CALL26	_printk
    8264: b85f43a8     	ldur	w8, [x29, #-0xc]
    8268: 17fffad7     	b	0x6dc4 <syna_tcm_parse_touch_report+0x170>
    826c: d343fd2e     	lsr	x14, x9, #3
    8270: 321d712d     	orr	w13, w9, #0xfffffff8
    8274: 110041ad     	add	w13, w13, #0x10
    8278: 386e6aac     	ldrb	w12, [x21, x14]
    827c: 110005ce     	add	w14, w14, #0x1
    8280: 1aca258c     	lsr	w12, w12, w10
    8284: 710021bf     	cmp	w13, #0x8
    8288: 5280010f     	mov	w15, #0x8               // =8
    828c: 52801ff1     	mov	w17, #0xff              // =255
    8290: 1a8f31b0     	csel	w16, w13, w15, lo
    8294: 386e4aa0     	ldrb	w0, [x21, w14, uxtw]
    8298: 110005ce     	add	w14, w14, #0x1
    829c: 4b1001ef     	sub	w15, w15, w16
    82a0: 1acf262f     	lsr	w15, w17, w15
    82a4: 52800211     	mov	w17, #0x10              // =16
    82a8: 4b0d0231     	sub	w17, w17, w13
    82ac: 6b1001ad     	subs	w13, w13, w16
    82b0: 0a0001ef     	and	w15, w15, w0
    82b4: 1ad121ef     	lsl	w15, w15, w17
    82b8: 2a0c01ec     	orr	w12, w15, w12
    82bc: 54fffe41     	b.ne	0x8284 <syna_tcm_parse_touch_report+0x1630>
    82c0: f94013ed     	ldr	x13, [sp, #0x20]
    82c4: 6b08017f     	cmp	w11, w8
    82c8: 790429ac     	strh	w12, [x13, #0x214]
    82cc: 54000d02     	b.hs	0x846c <syna_tcm_parse_touch_report+0x1818>
    82d0: b85e83ad     	ldur	w13, [x29, #-0x18]
    82d4: 1100812c     	add	w12, w9, #0x20
    82d8: 6b0d019f     	cmp	w12, w13
    82dc: 54000069     	b.ls	0x82e8 <syna_tcm_parse_touch_report+0x1694>
    82e0: 2a1f03eb     	mov	w11, wzr
    82e4: 14000016     	b	0x833c <syna_tcm_parse_touch_report+0x16e8>
    82e8: d343fd6e     	lsr	x14, x11, #3
    82ec: 321d712d     	orr	w13, w9, #0xfffffff8
    82f0: 110041ad     	add	w13, w13, #0x10
    82f4: 386e6aab     	ldrb	w11, [x21, x14]
    82f8: 110005ce     	add	w14, w14, #0x1
    82fc: 1aca256b     	lsr	w11, w11, w10
    8300: 710021bf     	cmp	w13, #0x8
    8304: 5280010f     	mov	w15, #0x8               // =8
    8308: 52801ff1     	mov	w17, #0xff              // =255
    830c: 1a8f31b0     	csel	w16, w13, w15, lo
    8310: 386e4aa0     	ldrb	w0, [x21, w14, uxtw]
    8314: 110005ce     	add	w14, w14, #0x1
    8318: 4b1001ef     	sub	w15, w15, w16
    831c: 1acf262f     	lsr	w15, w17, w15
    8320: 52800211     	mov	w17, #0x10              // =16
    8324: 4b0d0231     	sub	w17, w17, w13
    8328: 6b1001ad     	subs	w13, w13, w16
    832c: 0a0001ef     	and	w15, w15, w0
    8330: 1ad121ef     	lsl	w15, w15, w17
    8334: 2a0b01eb     	orr	w11, w15, w11
    8338: 54fffe41     	b.ne	0x8300 <syna_tcm_parse_touch_report+0x16ac>
    833c: f94013ed     	ldr	x13, [sp, #0x20]
    8340: 6b08019f     	cmp	w12, w8
    8344: 79042dab     	strh	w11, [x13, #0x216]
    8348: 54000922     	b.hs	0x846c <syna_tcm_parse_touch_report+0x1818>
    834c: b85e83ad     	ldur	w13, [x29, #-0x18]
    8350: 1100c12b     	add	w11, w9, #0x30
    8354: 6b0d017f     	cmp	w11, w13
    8358: 540001e9     	b.ls	0x8394 <syna_tcm_parse_touch_report+0x1740>
    835c: 2a1f03ec     	mov	w12, wzr
    8360: 14000022     	b	0x83e8 <syna_tcm_parse_touch_report+0x1794>
    8364: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8368: 91000000     	add	x0, x0, #0x0
		0000000000008368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    836c: 2a0103f4     	mov	w20, w1
    8370: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8374: 91000021     	add	x1, x1, #0x0
		0000000000008374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8378: 2a1b03e2     	mov	w2, w27
    837c: 94000000     	bl	0x837c <syna_tcm_parse_touch_report+0x1728>
		000000000000837c:  R_AARCH64_CALL26	_printk
    8380: b85f03a8     	ldur	w8, [x29, #-0x10]
    8384: 2a1403e1     	mov	w1, w20
    8388: 12801e00     	mov	w0, #-0xf1              // =-241
    838c: 0b1b0108     	add	w8, w8, w27
    8390: 17ffff9a     	b	0x81f8 <syna_tcm_parse_touch_report+0x15a4>
    8394: d343fd8e     	lsr	x14, x12, #3
    8398: 321d712d     	orr	w13, w9, #0xfffffff8
    839c: 110041ad     	add	w13, w13, #0x10
    83a0: 386e6aac     	ldrb	w12, [x21, x14]
    83a4: 110005ce     	add	w14, w14, #0x1
    83a8: 1aca258c     	lsr	w12, w12, w10
    83ac: 710021bf     	cmp	w13, #0x8
    83b0: 5280010f     	mov	w15, #0x8               // =8
    83b4: 52801ff1     	mov	w17, #0xff              // =255
    83b8: 1a8f31b0     	csel	w16, w13, w15, lo
    83bc: 386e4aa0     	ldrb	w0, [x21, w14, uxtw]
    83c0: 110005ce     	add	w14, w14, #0x1
    83c4: 4b1001ef     	sub	w15, w15, w16
    83c8: 1acf262f     	lsr	w15, w17, w15
    83cc: 52800211     	mov	w17, #0x10              // =16
    83d0: 4b0d0231     	sub	w17, w17, w13
    83d4: 6b1001ad     	subs	w13, w13, w16
    83d8: 0a0001ef     	and	w15, w15, w0
    83dc: 1ad121ef     	lsl	w15, w15, w17
    83e0: 2a0c01ec     	orr	w12, w15, w12
    83e4: 54fffe41     	b.ne	0x83ac <syna_tcm_parse_touch_report+0x1758>
    83e8: f94013ed     	ldr	x13, [sp, #0x20]
    83ec: 6b08017f     	cmp	w11, w8
    83f0: 790431ac     	strh	w12, [x13, #0x218]
    83f4: 540003c2     	b.hs	0x846c <syna_tcm_parse_touch_report+0x1818>
    83f8: b85e83ad     	ldur	w13, [x29, #-0x18]
    83fc: 1101012c     	add	w12, w9, #0x40
    8400: 6b0d019f     	cmp	w12, w13
    8404: 54000069     	b.ls	0x8410 <syna_tcm_parse_touch_report+0x17bc>
    8408: 2a1f03e9     	mov	w9, wzr
    840c: 14000016     	b	0x8464 <syna_tcm_parse_touch_report+0x1810>
    8410: d343fd6b     	lsr	x11, x11, #3
    8414: 321d712d     	orr	w13, w9, #0xfffffff8
    8418: 386b6aac     	ldrb	w12, [x21, x11]
    841c: 1100056b     	add	w11, w11, #0x1
    8420: 1aca2589     	lsr	w9, w12, w10
    8424: 110041aa     	add	w10, w13, #0x10
    8428: 7100215f     	cmp	w10, #0x8
    842c: 5280010c     	mov	w12, #0x8               // =8
    8430: 52801fee     	mov	w14, #0xff              // =255
    8434: 1a8c314d     	csel	w13, w10, w12, lo
    8438: 386b4aaf     	ldrb	w15, [x21, w11, uxtw]
    843c: 1100056b     	add	w11, w11, #0x1
    8440: 4b0d018c     	sub	w12, w12, w13
    8444: 1acc25cc     	lsr	w12, w14, w12
    8448: 5280020e     	mov	w14, #0x10              // =16
    844c: 4b0a01ce     	sub	w14, w14, w10
    8450: 6b0d014a     	subs	w10, w10, w13
    8454: 0a0f018c     	and	w12, w12, w15
    8458: 1ace218c     	lsl	w12, w12, w14
    845c: 2a090189     	orr	w9, w12, w9
    8460: 54fffe41     	b.ne	0x8428 <syna_tcm_parse_touch_report+0x17d4>
    8464: f94013ea     	ldr	x10, [sp, #0x20]
    8468: 79043549     	strh	w9, [x10, #0x21a]
    846c: f94013e9     	ldr	x9, [sp, #0x20]
    8470: b9421122     	ldr	w2, [x9, #0x210]
    8474: 71001c5f     	cmp	w2, #0x7
    8478: 540000c8     	b.hi	0x8490 <syna_tcm_parse_touch_report+0x183c>
    847c: 52800029     	mov	w9, #0x1                // =1
    8480: 528018ea     	mov	w10, #0xc7              // =199
    8484: 1ac22129     	lsl	w9, w9, w2
    8488: 6a0a013f     	tst	w9, w10
    848c: 54ff55a1     	b.ne	0x6f40 <syna_tcm_parse_touch_report+0x2ec>
    8490: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bb8
    8494: 91000000     	add	x0, x0, #0x0
		0000000000008494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bb8
    8498: 2a0103f4     	mov	w20, w1
    849c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000849c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x442c
    84a0: 91000021     	add	x1, x1, #0x0
		00000000000084a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x442c
    84a4: 94000000     	bl	0x84a4 <syna_tcm_parse_touch_report+0x1850>
		00000000000084a4:  R_AARCH64_CALL26	_printk
    84a8: b85f03a8     	ldur	w8, [x29, #-0x10]
    84ac: 2a1403e1     	mov	w1, w20
    84b0: 0b1b0108     	add	w8, w8, w27
    84b4: 17fffaa3     	b	0x6f40 <syna_tcm_parse_touch_report+0x2ec>
    84b8: b85f03a0     	ldur	w0, [x29, #-0x10]
    84bc: 14000010     	b	0x84fc <syna_tcm_parse_touch_report+0x18a8>
    84c0: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000084c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    84c4: 91000000     	add	x0, x0, #0x0
		00000000000084c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    84c8: 14000009     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    84cc: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000084cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60a6
    84d0: 91000000     	add	x0, x0, #0x0
		00000000000084d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60a6
    84d4: 14000006     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    84d8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000084d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x801e
    84dc: 91000000     	add	x0, x0, #0x0
		00000000000084dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x801e
    84e0: 14000003     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    84e4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000084e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f9a
    84e8: 91000000     	add	x0, x0, #0x0
		00000000000084e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f9a
    84ec: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000084ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9620
    84f0: 91000021     	add	x1, x1, #0x0
		00000000000084f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9620
    84f4: 94000000     	bl	0x84f4 <syna_tcm_parse_touch_report+0x18a0>
		00000000000084f4:  R_AARCH64_CALL26	_printk
    84f8: 12801e00     	mov	w0, #-0xf1              // =-241
    84fc: d5384108     	mrs	x8, SP_EL0
    8500: f9438908     	ldr	x8, [x8, #0x710]
    8504: f85f83a9     	ldur	x9, [x29, #-0x8]
    8508: eb09011f     	cmp	x8, x9
    850c: 54001cc1     	b.ne	0x88a4 <syna_tcm_parse_touch_report+0x1c50>
    8510: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    8514: a94857f6     	ldp	x22, x21, [sp, #0x80]
    8518: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    851c: a94667fa     	ldp	x26, x25, [sp, #0x60]
    8520: a9456ffc     	ldp	x28, x27, [sp, #0x50]
    8524: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    8528: 910283ff     	add	sp, sp, #0xa0
    852c: d50323bf     	autiasp
    8530: d65f03c0     	ret
    8534: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60ca
    8538: 91000000     	add	x0, x0, #0x0
		0000000000008538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60ca
    853c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000853c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9620
    8540: 91000021     	add	x1, x1, #0x0
		0000000000008540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9620
    8544: 94000000     	bl	0x8544 <syna_tcm_parse_touch_report+0x18f0>
		0000000000008544:  R_AARCH64_CALL26	_printk
    8548: 2a1f03e0     	mov	w0, wzr
    854c: 17ffffec     	b	0x84fc <syna_tcm_parse_touch_report+0x18a8>
    8550: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x686e
    8554: 91000000     	add	x0, x0, #0x0
		0000000000008554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x686e
    8558: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9620
    855c: 91000021     	add	x1, x1, #0x0
		000000000000855c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9620
    8560: 94000000     	bl	0x8560 <syna_tcm_parse_touch_report+0x190c>
		0000000000008560:  R_AARCH64_CALL26	_printk
    8564: 528002bc     	mov	w28, #0x15              // =21
    8568: 90000018     	adrp	x24, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008568:  R_AARCH64_ADR_PREL_PG_HI21	default_custom_touch_format
    856c: 91000318     	add	x24, x24, #0x0
		000000000000856c:  R_AARCH64_ADD_ABS_LO12_NC	default_custom_touch_format
    8570: 17fff9d9     	b	0x6cd4 <syna_tcm_parse_touch_report+0x80>
    8574: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8578: 91000000     	add	x0, x0, #0x0
		0000000000008578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    857c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000857c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8580: 91000021     	add	x1, x1, #0x0
		0000000000008580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8584: 94000000     	bl	0x8584 <syna_tcm_parse_touch_report+0x1930>
		0000000000008584:  R_AARCH64_CALL26	_printk
    8588: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x369a
    858c: 91000000     	add	x0, x0, #0x0
		000000000000858c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x369a
    8590: 17ffffd7     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8594: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8598: 91000000     	add	x0, x0, #0x0
		0000000000008598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    859c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000859c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    85a0: 91000021     	add	x1, x1, #0x0
		00000000000085a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    85a4: 94000000     	bl	0x85a4 <syna_tcm_parse_touch_report+0x1950>
		00000000000085a4:  R_AARCH64_CALL26	_printk
    85a8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1c
    85ac: 91000000     	add	x0, x0, #0x0
		00000000000085ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1c
    85b0: 17ffffcf     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    85b4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    85b8: 91000000     	add	x0, x0, #0x0
		00000000000085b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    85bc: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    85c0: 91000021     	add	x1, x1, #0x0
		00000000000085c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    85c4: 94000000     	bl	0x85c4 <syna_tcm_parse_touch_report+0x1970>
		00000000000085c4:  R_AARCH64_CALL26	_printk
    85c8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5aae
    85cc: 91000000     	add	x0, x0, #0x0
		00000000000085cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5aae
    85d0: 17ffffc7     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    85d4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    85d8: 91000000     	add	x0, x0, #0x0
		00000000000085d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    85dc: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    85e0: 91000021     	add	x1, x1, #0x0
		00000000000085e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    85e4: 94000000     	bl	0x85e4 <syna_tcm_parse_touch_report+0x1990>
		00000000000085e4:  R_AARCH64_CALL26	_printk
    85e8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2442
    85ec: 91000000     	add	x0, x0, #0x0
		00000000000085ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2442
    85f0: 17ffffbf     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    85f4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    85f8: 91000000     	add	x0, x0, #0x0
		00000000000085f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    85fc: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000085fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8600: 91000021     	add	x1, x1, #0x0
		0000000000008600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8604: 94000000     	bl	0x8604 <syna_tcm_parse_touch_report+0x19b0>
		0000000000008604:  R_AARCH64_CALL26	_printk
    8608: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba1e
    860c: 91000000     	add	x0, x0, #0x0
		000000000000860c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba1e
    8610: 17ffffb7     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8614: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8618: 91000000     	add	x0, x0, #0x0
		0000000000008618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    861c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000861c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8620: 91000021     	add	x1, x1, #0x0
		0000000000008620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8624: 94000000     	bl	0x8624 <syna_tcm_parse_touch_report+0x19d0>
		0000000000008624:  R_AARCH64_CALL26	_printk
    8628: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x366c
    862c: 91000000     	add	x0, x0, #0x0
		000000000000862c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x366c
    8630: 17ffffaf     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8634: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008634:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8638: 91000000     	add	x0, x0, #0x0
		0000000000008638:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    863c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000863c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8640: 91000021     	add	x1, x1, #0x0
		0000000000008640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8644: 94000000     	bl	0x8644 <syna_tcm_parse_touch_report+0x19f0>
		0000000000008644:  R_AARCH64_CALL26	_printk
    8648: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d6c
    864c: 91000000     	add	x0, x0, #0x0
		000000000000864c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d6c
    8650: 17ffffa7     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8654: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8658: 91000000     	add	x0, x0, #0x0
		0000000000008658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    865c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000865c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8660: 91000021     	add	x1, x1, #0x0
		0000000000008660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8664: 94000000     	bl	0x8664 <syna_tcm_parse_touch_report+0x1a10>
		0000000000008664:  R_AARCH64_CALL26	_printk
    8668: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad2c
    866c: 91000000     	add	x0, x0, #0x0
		000000000000866c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad2c
    8670: 17ffff9f     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8674: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8678: 91000000     	add	x0, x0, #0x0
		0000000000008678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    867c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000867c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    8680: 91000021     	add	x1, x1, #0x0
		0000000000008680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8684: 94000000     	bl	0x8684 <syna_tcm_parse_touch_report+0x1a30>
		0000000000008684:  R_AARCH64_CALL26	_printk
    8688: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc4
    868c: 91000000     	add	x0, x0, #0x0
		000000000000868c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc4
    8690: 17ffff97     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8694: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8698: 91000000     	add	x0, x0, #0x0
		0000000000008698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    869c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000869c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    86a0: 91000021     	add	x1, x1, #0x0
		00000000000086a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    86a4: 94000000     	bl	0x86a4 <syna_tcm_parse_touch_report+0x1a50>
		00000000000086a4:  R_AARCH64_CALL26	_printk
    86a8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68a4
    86ac: 91000000     	add	x0, x0, #0x0
		00000000000086ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68a4
    86b0: 17ffff8f     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    86b4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    86b8: 91000000     	add	x0, x0, #0x0
		00000000000086b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    86bc: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    86c0: 91000021     	add	x1, x1, #0x0
		00000000000086c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    86c4: 94000000     	bl	0x86c4 <syna_tcm_parse_touch_report+0x1a70>
		00000000000086c4:  R_AARCH64_CALL26	_printk
    86c8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162a
    86cc: 91000000     	add	x0, x0, #0x0
		00000000000086cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162a
    86d0: 17ffff87     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    86d4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    86d8: 91000000     	add	x0, x0, #0x0
		00000000000086d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    86dc: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    86e0: 91000021     	add	x1, x1, #0x0
		00000000000086e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    86e4: 94000000     	bl	0x86e4 <syna_tcm_parse_touch_report+0x1a90>
		00000000000086e4:  R_AARCH64_CALL26	_printk
    86e8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1658
    86ec: 91000000     	add	x0, x0, #0x0
		00000000000086ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1658
    86f0: 17ffff7f     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    86f4: 90000008     	adrp	x8, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000086f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ece
    86f8: 91000108     	add	x8, x8, #0x0
		00000000000086f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ece
    86fc: 14000063     	b	0x8888 <syna_tcm_parse_touch_report+0x1c34>
    8700: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8704: 91000000     	add	x0, x0, #0x0
		0000000000008704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8708: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    870c: 91000021     	add	x1, x1, #0x0
		000000000000870c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8710: 94000000     	bl	0x8710 <syna_tcm_parse_touch_report+0x1abc>
		0000000000008710:  R_AARCH64_CALL26	_printk
    8714: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fc8
    8718: 91000000     	add	x0, x0, #0x0
		0000000000008718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fc8
    871c: 17ffff74     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8720: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8724: 91000000     	add	x0, x0, #0x0
		0000000000008724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8728: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    872c: 91000021     	add	x1, x1, #0x0
		000000000000872c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8730: 94000000     	bl	0x8730 <syna_tcm_parse_touch_report+0x1adc>
		0000000000008730:  R_AARCH64_CALL26	_printk
    8734: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x963c
    8738: 91000000     	add	x0, x0, #0x0
		0000000000008738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x963c
    873c: 17ffff6c     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8740: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8744: 91000000     	add	x0, x0, #0x0
		0000000000008744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8748: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    874c: 91000021     	add	x1, x1, #0x0
		000000000000874c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8750: 94000000     	bl	0x8750 <syna_tcm_parse_touch_report+0x1afc>
		0000000000008750:  R_AARCH64_CALL26	_printk
    8754: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf0
    8758: 91000000     	add	x0, x0, #0x0
		0000000000008758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf0
    875c: 17ffff64     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8760: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8764: 91000000     	add	x0, x0, #0x0
		0000000000008764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8768: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    876c: 91000021     	add	x1, x1, #0x0
		000000000000876c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8770: 94000000     	bl	0x8770 <syna_tcm_parse_touch_report+0x1b1c>
		0000000000008770:  R_AARCH64_CALL26	_printk
    8774: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa64a
    8778: 91000000     	add	x0, x0, #0x0
		0000000000008778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa64a
    877c: 17ffff5c     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8780: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8784: 91000000     	add	x0, x0, #0x0
		0000000000008784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8788: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    878c: 91000021     	add	x1, x1, #0x0
		000000000000878c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8790: 94000000     	bl	0x8790 <syna_tcm_parse_touch_report+0x1b3c>
		0000000000008790:  R_AARCH64_CALL26	_printk
    8794: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x520
    8798: 91000000     	add	x0, x0, #0x0
		0000000000008798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x520
    879c: 17ffff54     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    87a0: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    87a4: 91000000     	add	x0, x0, #0x0
		00000000000087a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    87a8: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    87ac: 91000021     	add	x1, x1, #0x0
		00000000000087ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    87b0: 94000000     	bl	0x87b0 <syna_tcm_parse_touch_report+0x1b5c>
		00000000000087b0:  R_AARCH64_CALL26	_printk
    87b4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c96
    87b8: 91000000     	add	x0, x0, #0x0
		00000000000087b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c96
    87bc: 17ffff4c     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    87c0: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    87c4: 91000000     	add	x0, x0, #0x0
		00000000000087c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    87c8: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    87cc: 91000021     	add	x1, x1, #0x0
		00000000000087cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    87d0: 94000000     	bl	0x87d0 <syna_tcm_parse_touch_report+0x1b7c>
		00000000000087d0:  R_AARCH64_CALL26	_printk
    87d4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d46
    87d8: 91000000     	add	x0, x0, #0x0
		00000000000087d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d46
    87dc: 17ffff44     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    87e0: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    87e4: 91000000     	add	x0, x0, #0x0
		00000000000087e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    87e8: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    87ec: 91000021     	add	x1, x1, #0x0
		00000000000087ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    87f0: 94000000     	bl	0x87f0 <syna_tcm_parse_touch_report+0x1b9c>
		00000000000087f0:  R_AARCH64_CALL26	_printk
    87f4: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000087f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3c8
    87f8: 91000000     	add	x0, x0, #0x0
		00000000000087f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3c8
    87fc: 17ffff3c     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8800: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8804: 91000000     	add	x0, x0, #0x0
		0000000000008804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8808: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    880c: 91000021     	add	x1, x1, #0x0
		000000000000880c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8810: 94000000     	bl	0x8810 <syna_tcm_parse_touch_report+0x1bbc>
		0000000000008810:  R_AARCH64_CALL26	_printk
    8814: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a88
    8818: 91000000     	add	x0, x0, #0x0
		0000000000008818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a88
    881c: 17ffff34     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8820: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8824: 91000000     	add	x0, x0, #0x0
		0000000000008824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8828: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    882c: 91000021     	add	x1, x1, #0x0
		000000000000882c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8830: 94000000     	bl	0x8830 <syna_tcm_parse_touch_report+0x1bdc>
		0000000000008830:  R_AARCH64_CALL26	_printk
    8834: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3f6
    8838: 91000000     	add	x0, x0, #0x0
		0000000000008838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3f6
    883c: 17ffff2c     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8840: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8844: 91000000     	add	x0, x0, #0x0
		0000000000008844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8848: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    884c: 91000021     	add	x1, x1, #0x0
		000000000000884c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8850: 94000000     	bl	0x8850 <syna_tcm_parse_touch_report+0x1bfc>
		0000000000008850:  R_AARCH64_CALL26	_printk
    8854: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a62
    8858: 91000000     	add	x0, x0, #0x0
		0000000000008858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a62
    885c: 17ffff24     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8860: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    8864: 91000000     	add	x0, x0, #0x0
		0000000000008864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    8868: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    886c: 91000021     	add	x1, x1, #0x0
		000000000000886c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    8870: 94000000     	bl	0x8870 <syna_tcm_parse_touch_report+0x1c1c>
		0000000000008870:  R_AARCH64_CALL26	_printk
    8874: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1600
    8878: 91000000     	add	x0, x0, #0x0
		0000000000008878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1600
    887c: 17ffff1c     	b	0x84ec <syna_tcm_parse_touch_report+0x1898>
    8880: 90000008     	adrp	x8, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43c2
    8884: 91000108     	add	x8, x8, #0x0
		0000000000008884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43c2
    8888: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9620
    888c: 91000021     	add	x1, x1, #0x0
		000000000000888c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9620
    8890: 2a0003f3     	mov	w19, w0
    8894: aa0803e0     	mov	x0, x8
    8898: 94000000     	bl	0x8898 <syna_tcm_parse_touch_report+0x1c44>
		0000000000008898:  R_AARCH64_CALL26	_printk
    889c: 2a1303e0     	mov	w0, w19
    88a0: 17ffff17     	b	0x84fc <syna_tcm_parse_touch_report+0x18a8>
    88a4: 94000000     	bl	0x88a4 <syna_tcm_parse_touch_report+0x1c50>
		00000000000088a4:  R_AARCH64_CALL26	__stack_chk_fail
