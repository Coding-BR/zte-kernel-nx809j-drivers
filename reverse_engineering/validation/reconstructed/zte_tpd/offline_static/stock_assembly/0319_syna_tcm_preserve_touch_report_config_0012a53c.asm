
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023cb4 <syna_tcm_preserve_touch_report_config>:
   23cb4: d503233f     	paciasp
   23cb8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   23cbc: f9000bf5     	str	x21, [sp, #0x10]
   23cc0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   23cc4: 910003fd     	mov	x29, sp
   23cc8: b40015e0     	cbz	x0, 0x23f84 <syna_tcm_preserve_touch_report_config+0x2d0>
   23ccc: 39402402     	ldrb	w2, [x0, #0x9]
   23cd0: aa0003f3     	mov	x19, x0
   23cd4: 7100045f     	cmp	w2, #0x1
   23cd8: 54001641     	b.ne	0x23fa0 <syna_tcm_preserve_touch_report_config+0x2ec>
   23cdc: 2a0103f4     	mov	w20, w1
   23ce0: 350000a1     	cbnz	w1, 0x23cf4 <syna_tcm_preserve_touch_report_config+0x40>
   23ce4: f9402668     	ldr	x8, [x19, #0x48]
   23ce8: 39405108     	ldrb	w8, [x8, #0x14]
   23cec: 36002168     	tbz	w8, #0x0, 0x24118 <syna_tcm_preserve_touch_report_config+0x464>
   23cf0: 2a1f03f4     	mov	w20, wzr
   23cf4: f941ce68     	ldr	x8, [x19, #0x398]
   23cf8: aa1303e0     	mov	x0, x19
   23cfc: 528004a1     	mov	w1, #0x25               // =37
   23d00: aa1f03e2     	mov	x2, xzr
   23d04: 2a1f03e3     	mov	w3, wzr
   23d08: aa1f03e4     	mov	x4, xzr
   23d0c: 2a1403e5     	mov	w5, w20
   23d10: b85fc110     	ldur	w16, [x8, #-0x4]
   23d14: 728751d1     	movk	w17, #0x3a8e
   23d18: 72a48411     	movk	w17, #0x2420, lsl #16
   23d1c: 6b11021f     	cmp	w16, w17
   23d20: 54000040     	b.eq	0x23d28 <syna_tcm_preserve_touch_report_config+0x74>
   23d24: d4304500     	brk	#0x8228
   23d28: d63f0100     	blr	x8
   23d2c: 37f81400     	tbnz	w0, #0x1f, 0x23fac <syna_tcm_preserve_touch_report_config+0x2f8>
   23d30: f940a668     	ldr	x8, [x19, #0x148]
   23d34: b9415262     	ldr	w2, [x19, #0x150]
   23d38: b40014c8     	cbz	x8, 0x23fd0 <syna_tcm_preserve_touch_report_config+0x31c>
   23d3c: 34001522     	cbz	w2, 0x23fe0 <syna_tcm_preserve_touch_report_config+0x32c>
   23d40: 39462262     	ldrb	w2, [x19, #0x188]
   23d44: 35001562     	cbnz	w2, 0x23ff0 <syna_tcm_preserve_touch_report_config+0x33c>
   23d48: 91056260     	add	x0, x19, #0x158
   23d4c: 94000000     	bl	0x23d4c <syna_tcm_preserve_touch_report_config+0x98>
		0000000000023d4c:  R_AARCH64_CALL26	mutex_lock
   23d50: 39462268     	ldrb	w8, [x19, #0x188]
   23d54: 39474262     	ldrb	w2, [x19, #0x1d0]
   23d58: 11000508     	add	w8, w8, #0x1
   23d5c: 39062268     	strb	w8, [x19, #0x188]
   23d60: 35001542     	cbnz	w2, 0x24008 <syna_tcm_preserve_touch_report_config+0x354>
   23d64: 91068260     	add	x0, x19, #0x1a0
   23d68: 94000000     	bl	0x23d68 <syna_tcm_preserve_touch_report_config+0xb4>
		0000000000023d68:  R_AARCH64_CALL26	mutex_lock
   23d6c: 39474268     	ldrb	w8, [x19, #0x1d0]
   23d70: 52800029     	mov	w9, #0x1                // =1
   23d74: 11000508     	add	w8, w8, #0x1
   23d78: 39074268     	strb	w8, [x19, #0x1d0]
   23d7c: b9038e69     	str	w9, [x19, #0x38c]
   23d80: b9415674     	ldr	w20, [x19, #0x154]
   23d84: b9419a62     	ldr	w2, [x19, #0x198]
   23d88: f940ca60     	ldr	x0, [x19, #0x190]
   23d8c: 6b14005f     	cmp	w2, w20
   23d90: 54000242     	b.hs	0x23dd8 <syna_tcm_preserve_touch_report_config+0x124>
   23d94: b40000c0     	cbz	x0, 0x23dac <syna_tcm_preserve_touch_report_config+0xf8>
   23d98: aa0003f5     	mov	x21, x0
   23d9c: 94000000     	bl	0x23d9c <syna_tcm_preserve_touch_report_config+0xe8>
		0000000000023d9c:  R_AARCH64_CALL26	syna_request_managed_device
   23da0: b4001ca0     	cbz	x0, 0x24134 <syna_tcm_preserve_touch_report_config+0x480>
   23da4: aa1503e1     	mov	x1, x21
   23da8: 94000000     	bl	0x23da8 <syna_tcm_preserve_touch_report_config+0xf4>
		0000000000023da8:  R_AARCH64_CALL26	devm_kfree
   23dac: 94000000     	bl	0x23dac <syna_tcm_preserve_touch_report_config+0xf8>
		0000000000023dac:  R_AARCH64_CALL26	syna_request_managed_device
   23db0: b4001d00     	cbz	x0, 0x24150 <syna_tcm_preserve_touch_report_config+0x49c>
   23db4: 7100029f     	cmp	w20, #0x0
   23db8: 54001aad     	b.le	0x2410c <syna_tcm_preserve_touch_report_config+0x458>
   23dbc: aa1403e1     	mov	x1, x20
   23dc0: 5281b802     	mov	w2, #0xdc0              // =3520
   23dc4: 94000000     	bl	0x23dc4 <syna_tcm_preserve_touch_report_config+0x110>
		0000000000023dc4:  R_AARCH64_CALL26	devm_kmalloc
   23dc8: f900ca60     	str	x0, [x19, #0x190]
   23dcc: b4001ce0     	cbz	x0, 0x24168 <syna_tcm_preserve_touch_report_config+0x4b4>
   23dd0: aa1403e2     	mov	x2, x20
   23dd4: b9019a74     	str	w20, [x19, #0x198]
   23dd8: 2a1f03e1     	mov	w1, wzr
   23ddc: 94000000     	bl	0x23ddc <syna_tcm_preserve_touch_report_config+0x128>
		0000000000023ddc:  R_AARCH64_CALL26	memset
   23de0: f940a661     	ldr	x1, [x19, #0x148]
   23de4: b9415262     	ldr	w2, [x19, #0x150]
   23de8: b9019e7f     	str	wzr, [x19, #0x19c]
   23dec: b40011a1     	cbz	x1, 0x24020 <syna_tcm_preserve_touch_report_config+0x36c>
   23df0: 34001282     	cbz	w2, 0x24040 <syna_tcm_preserve_touch_report_config+0x38c>
   23df4: f940ca60     	ldr	x0, [x19, #0x190]
   23df8: b4001400     	cbz	x0, 0x24078 <syna_tcm_preserve_touch_report_config+0x3c4>
   23dfc: b9419a63     	ldr	w3, [x19, #0x198]
   23e00: 6b02029f     	cmp	w20, w2
   23e04: 540012e8     	b.hi	0x24060 <syna_tcm_preserve_touch_report_config+0x3ac>
   23e08: 6b03029f     	cmp	w20, w3
   23e0c: 540012a8     	b.hi	0x24060 <syna_tcm_preserve_touch_report_config+0x3ac>
   23e10: aa1403e2     	mov	x2, x20
   23e14: 94000000     	bl	0x23e14 <syna_tcm_preserve_touch_report_config+0x160>
		0000000000023e14:  R_AARCH64_CALL26	memcpy
   23e18: 39474262     	ldrb	w2, [x19, #0x1d0]
   23e1c: b9019e74     	str	w20, [x19, #0x19c]
   23e20: 7100045f     	cmp	w2, #0x1
   23e24: 54001541     	b.ne	0x240cc <syna_tcm_preserve_touch_report_config+0x418>
   23e28: 2a1f03e8     	mov	w8, wzr
   23e2c: 91068260     	add	x0, x19, #0x1a0
   23e30: 39074268     	strb	w8, [x19, #0x1d0]
   23e34: 94000000     	bl	0x23e34 <syna_tcm_preserve_touch_report_config+0x180>
		0000000000023e34:  R_AARCH64_CALL26	mutex_unlock
   23e38: 39462262     	ldrb	w2, [x19, #0x188]
   23e3c: 7100045f     	cmp	w2, #0x1
   23e40: 54001561     	b.ne	0x240ec <syna_tcm_preserve_touch_report_config+0x438>
   23e44: 2a1f03e8     	mov	w8, wzr
   23e48: 91056260     	add	x0, x19, #0x158
   23e4c: 39062268     	strb	w8, [x19, #0x188]
   23e50: 94000000     	bl	0x23e50 <syna_tcm_preserve_touch_report_config+0x19c>
		0000000000023e50:  R_AARCH64_CALL26	mutex_unlock
   23e54: 340007f4     	cbz	w20, 0x23f50 <syna_tcm_preserve_touch_report_config+0x29c>
   23e58: f940ca6a     	ldr	x10, [x19, #0x190]
   23e5c: 2a1f03ef     	mov	w15, wzr
   23e60: 2a1f03e8     	mov	w8, wzr
   23e64: 2a1f03eb     	mov	w11, wzr
   23e68: 2a1f03e9     	mov	w9, wzr
   23e6c: 2a1f03ed     	mov	w13, wzr
   23e70: 2a1f03ec     	mov	w12, wzr
   23e74: 14000005     	b	0x23e88 <syna_tcm_preserve_touch_report_config+0x1d4>
   23e78: 5280002c     	mov	w12, #0x1               // =1
   23e7c: 6b1401df     	cmp	w14, w20
   23e80: 2a0e03ef     	mov	w15, w14
   23e84: 540006c2     	b.hs	0x23f5c <syna_tcm_preserve_touch_report_config+0x2a8>
   23e88: 2a0f03ee     	mov	w14, w15
   23e8c: 386e6950     	ldrb	w16, [x10, x14]
   23e90: 910005ce     	add	x14, x14, #0x1
   23e94: 71000a1f     	cmp	w16, #0x2
   23e98: 5400010c     	b.gt	0x23eb8 <syna_tcm_preserve_touch_report_config+0x204>
   23e9c: 51000611     	sub	w17, w16, #0x1
   23ea0: 71000a3f     	cmp	w17, #0x2
   23ea4: 54fffea3     	b.lo	0x23e78 <syna_tcm_preserve_touch_report_config+0x1c4>
   23ea8: 350002b0     	cbnz	w16, 0x23efc <syna_tcm_preserve_touch_report_config+0x248>
   23eac: 2a1f03ec     	mov	w12, wzr
   23eb0: 2a1f03ed     	mov	w13, wzr
   23eb4: 17fffff2     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23eb8: 71000e1f     	cmp	w16, #0x3
   23ebc: 54000180     	b.eq	0x23eec <syna_tcm_preserve_touch_report_config+0x238>
   23ec0: 7100121f     	cmp	w16, #0x4
   23ec4: 540001c1     	b.ne	0x23efc <syna_tcm_preserve_touch_report_config+0x248>
   23ec8: 11001d6f     	add	w15, w11, #0x7
   23ecc: 7200019f     	tst	w12, #0x1
   23ed0: 121d71ef     	and	w15, w15, #0xfffffff8
   23ed4: 1a8b11eb     	csel	w11, w15, w11, ne
   23ed8: 3600026d     	tbz	w13, #0x0, 0x23f24 <syna_tcm_preserve_touch_report_config+0x270>
   23edc: 11001d08     	add	w8, w8, #0x7
   23ee0: 5280002d     	mov	w13, #0x1               // =1
   23ee4: 121d7108     	and	w8, w8, #0xfffffff8
   23ee8: 17ffffe5     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23eec: 2a1f03ec     	mov	w12, wzr
   23ef0: b901da6e     	str	w14, [x19, #0x1d8]
   23ef4: 5280002d     	mov	w13, #0x1               // =1
   23ef8: 17ffffe1     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23efc: 386e6951     	ldrb	w17, [x10, x14]
   23f00: 7200019f     	tst	w12, #0x1
   23f04: 110009ee     	add	w14, w15, #0x2
   23f08: 0b110170     	add	w16, w11, w17
   23f0c: 1a8b120f     	csel	w15, w16, w11, ne
   23f10: 360000ed     	tbz	w13, #0x0, 0x23f2c <syna_tcm_preserve_touch_report_config+0x278>
   23f14: 0b110108     	add	w8, w8, w17
   23f18: 5280002d     	mov	w13, #0x1               // =1
   23f1c: 2a0f03eb     	mov	w11, w15
   23f20: 17ffffd7     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23f24: 2a1f03ed     	mov	w13, wzr
   23f28: 17ffffd5     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23f2c: 360000ac     	tbz	w12, #0x0, 0x23f40 <syna_tcm_preserve_touch_report_config+0x28c>
   23f30: 2a1f03ed     	mov	w13, wzr
   23f34: 5280002c     	mov	w12, #0x1               // =1
   23f38: 2a1003eb     	mov	w11, w16
   23f3c: 17ffffd0     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23f40: 2a1f03ec     	mov	w12, wzr
   23f44: 2a1f03ed     	mov	w13, wzr
   23f48: 0b110129     	add	w9, w9, w17
   23f4c: 17ffffcc     	b	0x23e7c <syna_tcm_preserve_touch_report_config+0x1c8>
   23f50: 2a1f03e9     	mov	w9, wzr
   23f54: 2a1f03eb     	mov	w11, wzr
   23f58: 2a1f03e8     	mov	w8, wzr
   23f5c: 2a1f03e0     	mov	w0, wzr
   23f60: b901e269     	str	w9, [x19, #0x1e0]
   23f64: b901de6b     	str	w11, [x19, #0x1dc]
   23f68: b901e668     	str	w8, [x19, #0x1e4]
   23f6c: b9038e7f     	str	wzr, [x19, #0x38c]
   23f70: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   23f74: f9400bf5     	ldr	x21, [sp, #0x10]
   23f78: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   23f7c: d50323bf     	autiasp
   23f80: d65f03c0     	ret
   23f84: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   23f88: 91000000     	add	x0, x0, #0x0
		0000000000023f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   23f8c: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   23f90: 91000021     	add	x1, x1, #0x0
		0000000000023f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   23f94: 94000000     	bl	0x23f94 <syna_tcm_preserve_touch_report_config+0x2e0>
		0000000000023f94:  R_AARCH64_CALL26	_printk
   23f98: 12801e00     	mov	w0, #-0xf1              // =-241
   23f9c: 17fffff5     	b	0x23f70 <syna_tcm_preserve_touch_report_config+0x2bc>
   23fa0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5991
   23fa4: 91000000     	add	x0, x0, #0x0
		0000000000023fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5991
   23fa8: 14000029     	b	0x2404c <syna_tcm_preserve_touch_report_config+0x398>
   23fac: 90000008     	adrp	x8, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23f3
   23fb0: 91000108     	add	x8, x8, #0x0
		0000000000023fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23f3
   23fb4: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   23fb8: 91000021     	add	x1, x1, #0x0
		0000000000023fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   23fbc: 2a0003f4     	mov	w20, w0
   23fc0: aa0803e0     	mov	x0, x8
   23fc4: 94000000     	bl	0x23fc4 <syna_tcm_preserve_touch_report_config+0x310>
		0000000000023fc4:  R_AARCH64_CALL26	_printk
   23fc8: 2a1403e0     	mov	w0, w20
   23fcc: 17ffffe8     	b	0x23f6c <syna_tcm_preserve_touch_report_config+0x2b8>
   23fd0: b9415663     	ldr	w3, [x19, #0x154]
   23fd4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaab8
   23fd8: 91000000     	add	x0, x0, #0x0
		0000000000023fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaab8
   23fdc: 14000014     	b	0x2402c <syna_tcm_preserve_touch_report_config+0x378>
   23fe0: b9415662     	ldr	w2, [x19, #0x154]
   23fe4: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3648
   23fe8: 91000000     	add	x0, x0, #0x0
		0000000000023fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3648
   23fec: 14000018     	b	0x2404c <syna_tcm_preserve_touch_report_config+0x398>
   23ff0: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   23ff4: 91000000     	add	x0, x0, #0x0
		0000000000023ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   23ff8: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   23ffc: 91000021     	add	x1, x1, #0x0
		0000000000023ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   24000: 94000000     	bl	0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024000:  R_AARCH64_CALL26	_printk
   24004: 17ffff51     	b	0x23d48 <syna_tcm_preserve_touch_report_config+0x94>
   24008: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   2400c: 91000000     	add	x0, x0, #0x0
		000000000002400c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   24010: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   24014: 91000021     	add	x1, x1, #0x0
		0000000000024014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   24018: 94000000     	bl	0x24018 <syna_tcm_preserve_touch_report_config+0x364>
		0000000000024018:  R_AARCH64_CALL26	_printk
   2401c: 17ffff52     	b	0x23d64 <syna_tcm_preserve_touch_report_config+0xb0>
   24020: b9415663     	ldr	w3, [x19, #0x154]
   24024: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb19c
   24028: 91000000     	add	x0, x0, #0x0
		0000000000024028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb19c
   2402c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002402c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   24030: 91000021     	add	x1, x1, #0x0
		0000000000024030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   24034: 94000000     	bl	0x24034 <syna_tcm_preserve_touch_report_config+0x380>
		0000000000024034:  R_AARCH64_CALL26	_printk
   24038: 12801e00     	mov	w0, #-0xf1              // =-241
   2403c: 17ffffcd     	b	0x23f70 <syna_tcm_preserve_touch_report_config+0x2bc>
   24040: b9415662     	ldr	w2, [x19, #0x154]
   24044: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c80
   24048: 91000000     	add	x0, x0, #0x0
		0000000000024048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c80
   2404c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002404c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   24050: 91000021     	add	x1, x1, #0x0
		0000000000024050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   24054: 94000000     	bl	0x24054 <syna_tcm_preserve_touch_report_config+0x3a0>
		0000000000024054:  R_AARCH64_CALL26	_printk
   24058: 12801e00     	mov	w0, #-0xf1              // =-241
   2405c: 17ffffc5     	b	0x23f70 <syna_tcm_preserve_touch_report_config+0x2bc>
   24060: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   24064: 91000000     	add	x0, x0, #0x0
		0000000000024064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   24068: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   2406c: 91000021     	add	x1, x1, #0x0
		000000000002406c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   24070: 2a1403e4     	mov	w4, w20
   24074: 94000000     	bl	0x24074 <syna_tcm_preserve_touch_report_config+0x3c0>
		0000000000024074:  R_AARCH64_CALL26	_printk
   24078: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48f9
   2407c: 91000000     	add	x0, x0, #0x0
		000000000002407c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48f9
   24080: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   24084: 91000021     	add	x1, x1, #0x0
		0000000000024084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   24088: 94000000     	bl	0x24088 <syna_tcm_preserve_touch_report_config+0x3d4>
		0000000000024088:  R_AARCH64_CALL26	_printk
   2408c: 39474262     	ldrb	w2, [x19, #0x1d0]
   24090: 7100045f     	cmp	w2, #0x1
   24094: 54000941     	b.ne	0x241bc <syna_tcm_preserve_touch_report_config+0x508>
   24098: 2a1f03e8     	mov	w8, wzr
   2409c: 91068260     	add	x0, x19, #0x1a0
   240a0: 39074268     	strb	w8, [x19, #0x1d0]
   240a4: 94000000     	bl	0x240a4 <syna_tcm_preserve_touch_report_config+0x3f0>
		00000000000240a4:  R_AARCH64_CALL26	mutex_unlock
   240a8: 39462262     	ldrb	w2, [x19, #0x188]
   240ac: 7100045f     	cmp	w2, #0x1
   240b0: 54000961     	b.ne	0x241dc <syna_tcm_preserve_touch_report_config+0x528>
   240b4: 2a1f03e8     	mov	w8, wzr
   240b8: 91056260     	add	x0, x19, #0x158
   240bc: 39062268     	strb	w8, [x19, #0x188]
   240c0: 94000000     	bl	0x240c0 <syna_tcm_preserve_touch_report_config+0x40c>
		00000000000240c0:  R_AARCH64_CALL26	mutex_unlock
   240c4: 128002a0     	mov	w0, #-0x16              // =-22
   240c8: 17ffffa9     	b	0x23f6c <syna_tcm_preserve_touch_report_config+0x2b8>
   240cc: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000240cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   240d0: 91000000     	add	x0, x0, #0x0
		00000000000240d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   240d4: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000240d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   240d8: 91000021     	add	x1, x1, #0x0
		00000000000240d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   240dc: 94000000     	bl	0x240dc <syna_tcm_preserve_touch_report_config+0x428>
		00000000000240dc:  R_AARCH64_CALL26	_printk
   240e0: 39474268     	ldrb	w8, [x19, #0x1d0]
   240e4: 51000508     	sub	w8, w8, #0x1
   240e8: 17ffff51     	b	0x23e2c <syna_tcm_preserve_touch_report_config+0x178>
   240ec: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000240ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   240f0: 91000000     	add	x0, x0, #0x0
		00000000000240f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   240f4: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000240f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   240f8: 91000021     	add	x1, x1, #0x0
		00000000000240f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   240fc: 94000000     	bl	0x240fc <syna_tcm_preserve_touch_report_config+0x448>
		00000000000240fc:  R_AARCH64_CALL26	_printk
   24100: 39462268     	ldrb	w8, [x19, #0x188]
   24104: 51000508     	sub	w8, w8, #0x1
   24108: 17ffff50     	b	0x23e48 <syna_tcm_preserve_touch_report_config+0x194>
   2410c: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002410c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   24110: 91000000     	add	x0, x0, #0x0
		0000000000024110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   24114: 14000011     	b	0x24158 <syna_tcm_preserve_touch_report_config+0x4a4>
   24118: b9420e74     	ldr	w20, [x19, #0x20c]
   2411c: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002411c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   24120: 91000000     	add	x0, x0, #0x0
		0000000000024120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   24124: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   24128: 91000021     	add	x1, x1, #0x0
		0000000000024128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   2412c: 94000000     	bl	0x2412c <syna_tcm_preserve_touch_report_config+0x478>
		000000000002412c:  R_AARCH64_CALL26	_printk
   24130: 17fffef1     	b	0x23cf4 <syna_tcm_preserve_touch_report_config+0x40>
   24134: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024134:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   24138: 91000000     	add	x0, x0, #0x0
		0000000000024138:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   2413c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002413c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   24140: 91000021     	add	x1, x1, #0x0
		0000000000024140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   24144: 94000000     	bl	0x24144 <syna_tcm_preserve_touch_report_config+0x490>
		0000000000024144:  R_AARCH64_CALL26	_printk
   24148: 94000000     	bl	0x24148 <syna_tcm_preserve_touch_report_config+0x494>
		0000000000024148:  R_AARCH64_CALL26	syna_request_managed_device
   2414c: b5ffe340     	cbnz	x0, 0x23db4 <syna_tcm_preserve_touch_report_config+0x100>
   24150: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   24154: 91000000     	add	x0, x0, #0x0
		0000000000024154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   24158: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   2415c: 91000021     	add	x1, x1, #0x0
		000000000002415c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   24160: 94000000     	bl	0x24160 <syna_tcm_preserve_touch_report_config+0x4ac>
		0000000000024160:  R_AARCH64_CALL26	_printk
   24164: f900ca7f     	str	xzr, [x19, #0x190]
   24168: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   2416c: 91000000     	add	x0, x0, #0x0
		000000000002416c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   24170: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   24174: 91000021     	add	x1, x1, #0x0
		0000000000024174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   24178: 2a1403e2     	mov	w2, w20
   2417c: 94000000     	bl	0x2417c <syna_tcm_preserve_touch_report_config+0x4c8>
		000000000002417c:  R_AARCH64_CALL26	_printk
   24180: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42f6
   24184: 91000000     	add	x0, x0, #0x0
		0000000000024184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42f6
   24188: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
   2418c: 91000021     	add	x1, x1, #0x0
		000000000002418c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
   24190: f900ce7f     	str	xzr, [x19, #0x198]
   24194: 94000000     	bl	0x24194 <syna_tcm_preserve_touch_report_config+0x4e0>
		0000000000024194:  R_AARCH64_CALL26	_printk
   24198: 39462262     	ldrb	w2, [x19, #0x188]
   2419c: 7100045f     	cmp	w2, #0x1
   241a0: 540002e1     	b.ne	0x241fc <syna_tcm_preserve_touch_report_config+0x548>
   241a4: 2a1f03e8     	mov	w8, wzr
   241a8: 91056260     	add	x0, x19, #0x158
   241ac: 39062268     	strb	w8, [x19, #0x188]
   241b0: 94000000     	bl	0x241b0 <syna_tcm_preserve_touch_report_config+0x4fc>
		00000000000241b0:  R_AARCH64_CALL26	mutex_unlock
   241b4: 12801e40     	mov	w0, #-0xf3              // =-243
   241b8: 17ffff6d     	b	0x23f6c <syna_tcm_preserve_touch_report_config+0x2b8>
   241bc: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000241bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   241c0: 91000000     	add	x0, x0, #0x0
		00000000000241c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   241c4: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000241c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   241c8: 91000021     	add	x1, x1, #0x0
		00000000000241c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   241cc: 94000000     	bl	0x241cc <syna_tcm_preserve_touch_report_config+0x518>
		00000000000241cc:  R_AARCH64_CALL26	_printk
   241d0: 39474268     	ldrb	w8, [x19, #0x1d0]
   241d4: 51000508     	sub	w8, w8, #0x1
   241d8: 17ffffb1     	b	0x2409c <syna_tcm_preserve_touch_report_config+0x3e8>
   241dc: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000241dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   241e0: 91000000     	add	x0, x0, #0x0
		00000000000241e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   241e4: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000241e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   241e8: 91000021     	add	x1, x1, #0x0
		00000000000241e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   241ec: 94000000     	bl	0x241ec <syna_tcm_preserve_touch_report_config+0x538>
		00000000000241ec:  R_AARCH64_CALL26	_printk
   241f0: 39462268     	ldrb	w8, [x19, #0x188]
   241f4: 51000508     	sub	w8, w8, #0x1
   241f8: 17ffffb0     	b	0x240b8 <syna_tcm_preserve_touch_report_config+0x404>
   241fc: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000241fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   24200: 91000000     	add	x0, x0, #0x0
		0000000000024200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   24204: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   24208: 91000021     	add	x1, x1, #0x0
		0000000000024208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   2420c: 94000000     	bl	0x2420c <syna_tcm_preserve_touch_report_config+0x558>
		000000000002420c:  R_AARCH64_CALL26	_printk
   24210: 39462268     	ldrb	w8, [x19, #0x188]
   24214: 51000508     	sub	w8, w8, #0x1
   24218: 17ffffe4     	b	0x241a8 <syna_tcm_preserve_touch_report_config+0x4f4>
