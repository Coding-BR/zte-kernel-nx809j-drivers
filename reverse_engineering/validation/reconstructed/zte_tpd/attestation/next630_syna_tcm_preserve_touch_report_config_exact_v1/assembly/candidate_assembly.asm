
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000297bc <syna_tcm_preserve_touch_report_config>:
   297bc: d503233f     	paciasp
   297c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   297c4: f9000bf5     	str	x21, [sp, #0x10]
   297c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   297cc: 910003fd     	mov	x29, sp
   297d0: b40015e0     	cbz	x0, 0x29a8c <syna_tcm_preserve_touch_report_config+0x2d0>
   297d4: 39402402     	ldrb	w2, [x0, #0x9]
   297d8: aa0003f3     	mov	x19, x0
   297dc: 7100045f     	cmp	w2, #0x1
   297e0: 54001641     	b.ne	0x29aa8 <syna_tcm_preserve_touch_report_config+0x2ec>
   297e4: 2a0103f4     	mov	w20, w1
   297e8: 350000a1     	cbnz	w1, 0x297fc <syna_tcm_preserve_touch_report_config+0x40>
   297ec: f9402668     	ldr	x8, [x19, #0x48]
   297f0: 39405108     	ldrb	w8, [x8, #0x14]
   297f4: 36002168     	tbz	w8, #0x0, 0x29c20 <syna_tcm_preserve_touch_report_config+0x464>
   297f8: 2a1f03f4     	mov	w20, wzr
   297fc: f941ce68     	ldr	x8, [x19, #0x398]
   29800: aa1303e0     	mov	x0, x19
   29804: 528004a1     	mov	w1, #0x25               // =37
   29808: aa1f03e2     	mov	x2, xzr
   2980c: 2a1f03e3     	mov	w3, wzr
   29810: aa1f03e4     	mov	x4, xzr
   29814: 2a1403e5     	mov	w5, w20
   29818: b85fc110     	ldur	w16, [x8, #-0x4]
   2981c: 728751d1     	movk	w17, #0x3a8e
   29820: 72a48411     	movk	w17, #0x2420, lsl #16
   29824: 6b11021f     	cmp	w16, w17
   29828: 54000040     	b.eq	0x29830 <syna_tcm_preserve_touch_report_config+0x74>
   2982c: d4304500     	brk	#0x8228
   29830: d63f0100     	blr	x8
   29834: 37f81400     	tbnz	w0, #0x1f, 0x29ab4 <syna_tcm_preserve_touch_report_config+0x2f8>
   29838: f940a668     	ldr	x8, [x19, #0x148]
   2983c: b9415262     	ldr	w2, [x19, #0x150]
   29840: b40014c8     	cbz	x8, 0x29ad8 <syna_tcm_preserve_touch_report_config+0x31c>
   29844: 34001522     	cbz	w2, 0x29ae8 <syna_tcm_preserve_touch_report_config+0x32c>
   29848: 39462262     	ldrb	w2, [x19, #0x188]
   2984c: 35001562     	cbnz	w2, 0x29af8 <syna_tcm_preserve_touch_report_config+0x33c>
   29850: 91056260     	add	x0, x19, #0x158
   29854: 94000000     	bl	0x29854 <syna_tcm_preserve_touch_report_config+0x98>
		0000000000029854:  R_AARCH64_CALL26	mutex_lock
   29858: 39462268     	ldrb	w8, [x19, #0x188]
   2985c: 39474262     	ldrb	w2, [x19, #0x1d0]
   29860: 11000508     	add	w8, w8, #0x1
   29864: 39062268     	strb	w8, [x19, #0x188]
   29868: 35001542     	cbnz	w2, 0x29b10 <syna_tcm_preserve_touch_report_config+0x354>
   2986c: 91068260     	add	x0, x19, #0x1a0
   29870: 94000000     	bl	0x29870 <syna_tcm_preserve_touch_report_config+0xb4>
		0000000000029870:  R_AARCH64_CALL26	mutex_lock
   29874: 39474268     	ldrb	w8, [x19, #0x1d0]
   29878: 52800029     	mov	w9, #0x1                // =1
   2987c: 11000508     	add	w8, w8, #0x1
   29880: 39074268     	strb	w8, [x19, #0x1d0]
   29884: b9038e69     	str	w9, [x19, #0x38c]
   29888: b9415674     	ldr	w20, [x19, #0x154]
   2988c: b9419a62     	ldr	w2, [x19, #0x198]
   29890: f940ca60     	ldr	x0, [x19, #0x190]
   29894: 6b14005f     	cmp	w2, w20
   29898: 54000242     	b.hs	0x298e0 <syna_tcm_preserve_touch_report_config+0x124>
   2989c: b40000c0     	cbz	x0, 0x298b4 <syna_tcm_preserve_touch_report_config+0xf8>
   298a0: aa0003f5     	mov	x21, x0
   298a4: 94000000     	bl	0x298a4 <syna_tcm_preserve_touch_report_config+0xe8>
		00000000000298a4:  R_AARCH64_CALL26	syna_request_managed_device
   298a8: b4001ca0     	cbz	x0, 0x29c3c <syna_tcm_preserve_touch_report_config+0x480>
   298ac: aa1503e1     	mov	x1, x21
   298b0: 94000000     	bl	0x298b0 <syna_tcm_preserve_touch_report_config+0xf4>
		00000000000298b0:  R_AARCH64_CALL26	devm_kfree
   298b4: 94000000     	bl	0x298b4 <syna_tcm_preserve_touch_report_config+0xf8>
		00000000000298b4:  R_AARCH64_CALL26	syna_request_managed_device
   298b8: b4001d00     	cbz	x0, 0x29c58 <syna_tcm_preserve_touch_report_config+0x49c>
   298bc: 7100029f     	cmp	w20, #0x0
   298c0: 54001aad     	b.le	0x29c14 <syna_tcm_preserve_touch_report_config+0x458>
   298c4: aa1403e1     	mov	x1, x20
   298c8: 5281b802     	mov	w2, #0xdc0              // =3520
   298cc: 94000000     	bl	0x298cc <syna_tcm_preserve_touch_report_config+0x110>
		00000000000298cc:  R_AARCH64_CALL26	devm_kmalloc
   298d0: f900ca60     	str	x0, [x19, #0x190]
   298d4: b4001ce0     	cbz	x0, 0x29c70 <syna_tcm_preserve_touch_report_config+0x4b4>
   298d8: aa1403e2     	mov	x2, x20
   298dc: b9019a74     	str	w20, [x19, #0x198]
   298e0: 2a1f03e1     	mov	w1, wzr
   298e4: 94000000     	bl	0x298e4 <syna_tcm_preserve_touch_report_config+0x128>
		00000000000298e4:  R_AARCH64_CALL26	memset
   298e8: f940a661     	ldr	x1, [x19, #0x148]
   298ec: b9415262     	ldr	w2, [x19, #0x150]
   298f0: b9019e7f     	str	wzr, [x19, #0x19c]
   298f4: b40011a1     	cbz	x1, 0x29b28 <syna_tcm_preserve_touch_report_config+0x36c>
   298f8: 34001282     	cbz	w2, 0x29b48 <syna_tcm_preserve_touch_report_config+0x38c>
   298fc: f940ca60     	ldr	x0, [x19, #0x190]
   29900: b4001400     	cbz	x0, 0x29b80 <syna_tcm_preserve_touch_report_config+0x3c4>
   29904: b9419a63     	ldr	w3, [x19, #0x198]
   29908: 6b02029f     	cmp	w20, w2
   2990c: 540012e8     	b.hi	0x29b68 <syna_tcm_preserve_touch_report_config+0x3ac>
   29910: 6b03029f     	cmp	w20, w3
   29914: 540012a8     	b.hi	0x29b68 <syna_tcm_preserve_touch_report_config+0x3ac>
   29918: aa1403e2     	mov	x2, x20
   2991c: 94000000     	bl	0x2991c <syna_tcm_preserve_touch_report_config+0x160>
		000000000002991c:  R_AARCH64_CALL26	memcpy
   29920: 39474262     	ldrb	w2, [x19, #0x1d0]
   29924: b9019e74     	str	w20, [x19, #0x19c]
   29928: 7100045f     	cmp	w2, #0x1
   2992c: 54001541     	b.ne	0x29bd4 <syna_tcm_preserve_touch_report_config+0x418>
   29930: 2a1f03e8     	mov	w8, wzr
   29934: 91068260     	add	x0, x19, #0x1a0
   29938: 39074268     	strb	w8, [x19, #0x1d0]
   2993c: 94000000     	bl	0x2993c <syna_tcm_preserve_touch_report_config+0x180>
		000000000002993c:  R_AARCH64_CALL26	mutex_unlock
   29940: 39462262     	ldrb	w2, [x19, #0x188]
   29944: 7100045f     	cmp	w2, #0x1
   29948: 54001561     	b.ne	0x29bf4 <syna_tcm_preserve_touch_report_config+0x438>
   2994c: 2a1f03e8     	mov	w8, wzr
   29950: 91056260     	add	x0, x19, #0x158
   29954: 39062268     	strb	w8, [x19, #0x188]
   29958: 94000000     	bl	0x29958 <syna_tcm_preserve_touch_report_config+0x19c>
		0000000000029958:  R_AARCH64_CALL26	mutex_unlock
   2995c: 340007f4     	cbz	w20, 0x29a58 <syna_tcm_preserve_touch_report_config+0x29c>
   29960: f940ca6a     	ldr	x10, [x19, #0x190]
   29964: 2a1f03ef     	mov	w15, wzr
   29968: 2a1f03e8     	mov	w8, wzr
   2996c: 2a1f03eb     	mov	w11, wzr
   29970: 2a1f03e9     	mov	w9, wzr
   29974: 2a1f03ed     	mov	w13, wzr
   29978: 2a1f03ec     	mov	w12, wzr
   2997c: 14000005     	b	0x29990 <syna_tcm_preserve_touch_report_config+0x1d4>
   29980: 5280002c     	mov	w12, #0x1               // =1
   29984: 6b1401df     	cmp	w14, w20
   29988: 2a0e03ef     	mov	w15, w14
   2998c: 540006c2     	b.hs	0x29a64 <syna_tcm_preserve_touch_report_config+0x2a8>
   29990: 2a0f03ee     	mov	w14, w15
   29994: 386e6950     	ldrb	w16, [x10, x14]
   29998: 910005ce     	add	x14, x14, #0x1
   2999c: 71000a1f     	cmp	w16, #0x2
   299a0: 5400010c     	b.gt	0x299c0 <syna_tcm_preserve_touch_report_config+0x204>
   299a4: 51000611     	sub	w17, w16, #0x1
   299a8: 71000a3f     	cmp	w17, #0x2
   299ac: 54fffea3     	b.lo	0x29980 <syna_tcm_preserve_touch_report_config+0x1c4>
   299b0: 350002b0     	cbnz	w16, 0x29a04 <syna_tcm_preserve_touch_report_config+0x248>
   299b4: 2a1f03ec     	mov	w12, wzr
   299b8: 2a1f03ed     	mov	w13, wzr
   299bc: 17fffff2     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   299c0: 71000e1f     	cmp	w16, #0x3
   299c4: 54000180     	b.eq	0x299f4 <syna_tcm_preserve_touch_report_config+0x238>
   299c8: 7100121f     	cmp	w16, #0x4
   299cc: 540001c1     	b.ne	0x29a04 <syna_tcm_preserve_touch_report_config+0x248>
   299d0: 11001d6f     	add	w15, w11, #0x7
   299d4: 7200019f     	tst	w12, #0x1
   299d8: 121d71ef     	and	w15, w15, #0xfffffff8
   299dc: 1a8b11eb     	csel	w11, w15, w11, ne
   299e0: 3600026d     	tbz	w13, #0x0, 0x29a2c <syna_tcm_preserve_touch_report_config+0x270>
   299e4: 11001d08     	add	w8, w8, #0x7
   299e8: 5280002d     	mov	w13, #0x1               // =1
   299ec: 121d7108     	and	w8, w8, #0xfffffff8
   299f0: 17ffffe5     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   299f4: 2a1f03ec     	mov	w12, wzr
   299f8: b901da6e     	str	w14, [x19, #0x1d8]
   299fc: 5280002d     	mov	w13, #0x1               // =1
   29a00: 17ffffe1     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   29a04: 386e6951     	ldrb	w17, [x10, x14]
   29a08: 7200019f     	tst	w12, #0x1
   29a0c: 110009ee     	add	w14, w15, #0x2
   29a10: 0b110170     	add	w16, w11, w17
   29a14: 1a8b120f     	csel	w15, w16, w11, ne
   29a18: 360000ed     	tbz	w13, #0x0, 0x29a34 <syna_tcm_preserve_touch_report_config+0x278>
   29a1c: 0b110108     	add	w8, w8, w17
   29a20: 5280002d     	mov	w13, #0x1               // =1
   29a24: 2a0f03eb     	mov	w11, w15
   29a28: 17ffffd7     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   29a2c: 2a1f03ed     	mov	w13, wzr
   29a30: 17ffffd5     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   29a34: 360000ac     	tbz	w12, #0x0, 0x29a48 <syna_tcm_preserve_touch_report_config+0x28c>
   29a38: 2a1f03ed     	mov	w13, wzr
   29a3c: 5280002c     	mov	w12, #0x1               // =1
   29a40: 2a1003eb     	mov	w11, w16
   29a44: 17ffffd0     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   29a48: 2a1f03ec     	mov	w12, wzr
   29a4c: 2a1f03ed     	mov	w13, wzr
   29a50: 0b110129     	add	w9, w9, w17
   29a54: 17ffffcc     	b	0x29984 <syna_tcm_preserve_touch_report_config+0x1c8>
   29a58: 2a1f03e9     	mov	w9, wzr
   29a5c: 2a1f03eb     	mov	w11, wzr
   29a60: 2a1f03e8     	mov	w8, wzr
   29a64: 2a1f03e0     	mov	w0, wzr
   29a68: b901e269     	str	w9, [x19, #0x1e0]
   29a6c: b901de6b     	str	w11, [x19, #0x1dc]
   29a70: b901e668     	str	w8, [x19, #0x1e4]
   29a74: b9038e7f     	str	wzr, [x19, #0x38c]
   29a78: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   29a7c: f9400bf5     	ldr	x21, [sp, #0x10]
   29a80: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   29a84: d50323bf     	autiasp
   29a88: d65f03c0     	ret
   29a8c: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   29a90: 91000000     	add	x0, x0, #0x0
		0000000000029a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   29a94: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29a98: 91000021     	add	x1, x1, #0x0
		0000000000029a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29a9c: 94000000     	bl	0x29a9c <syna_tcm_preserve_touch_report_config+0x2e0>
		0000000000029a9c:  R_AARCH64_CALL26	_printk
   29aa0: 12801e00     	mov	w0, #-0xf1              // =-241
   29aa4: 17fffff5     	b	0x29a78 <syna_tcm_preserve_touch_report_config+0x2bc>
   29aa8: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ad0
   29aac: 91000000     	add	x0, x0, #0x0
		0000000000029aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ad0
   29ab0: 14000029     	b	0x29b54 <syna_tcm_preserve_touch_report_config+0x398>
   29ab4: 90000008     	adrp	x8, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2474
   29ab8: 91000108     	add	x8, x8, #0x0
		0000000000029ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2474
   29abc: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29ac0: 91000021     	add	x1, x1, #0x0
		0000000000029ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29ac4: 2a0003f4     	mov	w20, w0
   29ac8: aa0803e0     	mov	x0, x8
   29acc: 94000000     	bl	0x29acc <syna_tcm_preserve_touch_report_config+0x310>
		0000000000029acc:  R_AARCH64_CALL26	_printk
   29ad0: 2a1403e0     	mov	w0, w20
   29ad4: 17ffffe8     	b	0x29a74 <syna_tcm_preserve_touch_report_config+0x2b8>
   29ad8: b9415663     	ldr	w3, [x19, #0x154]
   29adc: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad2c
   29ae0: 91000000     	add	x0, x0, #0x0
		0000000000029ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad2c
   29ae4: 14000014     	b	0x29b34 <syna_tcm_preserve_touch_report_config+0x378>
   29ae8: b9415662     	ldr	w2, [x19, #0x154]
   29aec: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x370c
   29af0: 91000000     	add	x0, x0, #0x0
		0000000000029af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x370c
   29af4: 14000018     	b	0x29b54 <syna_tcm_preserve_touch_report_config+0x398>
   29af8: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29afc: 91000000     	add	x0, x0, #0x0
		0000000000029afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29b00: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x709c
   29b04: 91000021     	add	x1, x1, #0x0
		0000000000029b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x709c
   29b08: 94000000     	bl	0x29b08 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000029b08:  R_AARCH64_CALL26	_printk
   29b0c: 17ffff51     	b	0x29850 <syna_tcm_preserve_touch_report_config+0x94>
   29b10: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29b14: 91000000     	add	x0, x0, #0x0
		0000000000029b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29b18: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x709c
   29b1c: 91000021     	add	x1, x1, #0x0
		0000000000029b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x709c
   29b20: 94000000     	bl	0x29b20 <syna_tcm_preserve_touch_report_config+0x364>
		0000000000029b20:  R_AARCH64_CALL26	_printk
   29b24: 17ffff52     	b	0x2986c <syna_tcm_preserve_touch_report_config+0xb0>
   29b28: b9415663     	ldr	w3, [x19, #0x154]
   29b2c: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb42a
   29b30: 91000000     	add	x0, x0, #0x0
		0000000000029b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb42a
   29b34: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29b38: 91000021     	add	x1, x1, #0x0
		0000000000029b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29b3c: 94000000     	bl	0x29b3c <syna_tcm_preserve_touch_report_config+0x380>
		0000000000029b3c:  R_AARCH64_CALL26	_printk
   29b40: 12801e00     	mov	w0, #-0xf1              // =-241
   29b44: 17ffffcd     	b	0x29a78 <syna_tcm_preserve_touch_report_config+0x2bc>
   29b48: b9415662     	ldr	w2, [x19, #0x154]
   29b4c: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ecc
   29b50: 91000000     	add	x0, x0, #0x0
		0000000000029b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ecc
   29b54: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29b58: 91000021     	add	x1, x1, #0x0
		0000000000029b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29b5c: 94000000     	bl	0x29b5c <syna_tcm_preserve_touch_report_config+0x3a0>
		0000000000029b5c:  R_AARCH64_CALL26	_printk
   29b60: 12801e00     	mov	w0, #-0xf1              // =-241
   29b64: 17ffffc5     	b	0x29a78 <syna_tcm_preserve_touch_report_config+0x2bc>
   29b68: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83de
   29b6c: 91000000     	add	x0, x0, #0x0
		0000000000029b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83de
   29b70: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   29b74: 91000021     	add	x1, x1, #0x0
		0000000000029b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   29b78: 2a1403e4     	mov	w4, w20
   29b7c: 94000000     	bl	0x29b7c <syna_tcm_preserve_touch_report_config+0x3c0>
		0000000000029b7c:  R_AARCH64_CALL26	_printk
   29b80: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a00
   29b84: 91000000     	add	x0, x0, #0x0
		0000000000029b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a00
   29b88: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29b8c: 91000021     	add	x1, x1, #0x0
		0000000000029b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29b90: 94000000     	bl	0x29b90 <syna_tcm_preserve_touch_report_config+0x3d4>
		0000000000029b90:  R_AARCH64_CALL26	_printk
   29b94: 39474262     	ldrb	w2, [x19, #0x1d0]
   29b98: 7100045f     	cmp	w2, #0x1
   29b9c: 54000941     	b.ne	0x29cc4 <syna_tcm_preserve_touch_report_config+0x508>
   29ba0: 2a1f03e8     	mov	w8, wzr
   29ba4: 91068260     	add	x0, x19, #0x1a0
   29ba8: 39074268     	strb	w8, [x19, #0x1d0]
   29bac: 94000000     	bl	0x29bac <syna_tcm_preserve_touch_report_config+0x3f0>
		0000000000029bac:  R_AARCH64_CALL26	mutex_unlock
   29bb0: 39462262     	ldrb	w2, [x19, #0x188]
   29bb4: 7100045f     	cmp	w2, #0x1
   29bb8: 54000961     	b.ne	0x29ce4 <syna_tcm_preserve_touch_report_config+0x528>
   29bbc: 2a1f03e8     	mov	w8, wzr
   29bc0: 91056260     	add	x0, x19, #0x158
   29bc4: 39062268     	strb	w8, [x19, #0x188]
   29bc8: 94000000     	bl	0x29bc8 <syna_tcm_preserve_touch_report_config+0x40c>
		0000000000029bc8:  R_AARCH64_CALL26	mutex_unlock
   29bcc: 128002a0     	mov	w0, #-0x16              // =-22
   29bd0: 17ffffa9     	b	0x29a74 <syna_tcm_preserve_touch_report_config+0x2b8>
   29bd4: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29bd8: 91000000     	add	x0, x0, #0x0
		0000000000029bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29bdc: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
   29be0: 91000021     	add	x1, x1, #0x0
		0000000000029be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
   29be4: 94000000     	bl	0x29be4 <syna_tcm_preserve_touch_report_config+0x428>
		0000000000029be4:  R_AARCH64_CALL26	_printk
   29be8: 39474268     	ldrb	w8, [x19, #0x1d0]
   29bec: 51000508     	sub	w8, w8, #0x1
   29bf0: 17ffff51     	b	0x29934 <syna_tcm_preserve_touch_report_config+0x178>
   29bf4: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29bf8: 91000000     	add	x0, x0, #0x0
		0000000000029bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29bfc: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
   29c00: 91000021     	add	x1, x1, #0x0
		0000000000029c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
   29c04: 94000000     	bl	0x29c04 <syna_tcm_preserve_touch_report_config+0x448>
		0000000000029c04:  R_AARCH64_CALL26	_printk
   29c08: 39462268     	ldrb	w8, [x19, #0x188]
   29c0c: 51000508     	sub	w8, w8, #0x1
   29c10: 17ffff50     	b	0x29950 <syna_tcm_preserve_touch_report_config+0x194>
   29c14: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
   29c18: 91000000     	add	x0, x0, #0x0
		0000000000029c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
   29c1c: 14000011     	b	0x29c60 <syna_tcm_preserve_touch_report_config+0x4a4>
   29c20: b9420e74     	ldr	w20, [x19, #0x20c]
   29c24: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab40
   29c28: 91000000     	add	x0, x0, #0x0
		0000000000029c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab40
   29c2c: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29c30: 91000021     	add	x1, x1, #0x0
		0000000000029c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29c34: 94000000     	bl	0x29c34 <syna_tcm_preserve_touch_report_config+0x478>
		0000000000029c34:  R_AARCH64_CALL26	_printk
   29c38: 17fffef1     	b	0x297fc <syna_tcm_preserve_touch_report_config+0x40>
   29c3c: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
   29c40: 91000000     	add	x0, x0, #0x0
		0000000000029c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
   29c44: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
   29c48: 91000021     	add	x1, x1, #0x0
		0000000000029c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
   29c4c: 94000000     	bl	0x29c4c <syna_tcm_preserve_touch_report_config+0x490>
		0000000000029c4c:  R_AARCH64_CALL26	_printk
   29c50: 94000000     	bl	0x29c50 <syna_tcm_preserve_touch_report_config+0x494>
		0000000000029c50:  R_AARCH64_CALL26	syna_request_managed_device
   29c54: b5ffe340     	cbnz	x0, 0x298bc <syna_tcm_preserve_touch_report_config+0x100>
   29c58: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
   29c5c: 91000000     	add	x0, x0, #0x0
		0000000000029c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
   29c60: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
   29c64: 91000021     	add	x1, x1, #0x0
		0000000000029c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
   29c68: 94000000     	bl	0x29c68 <syna_tcm_preserve_touch_report_config+0x4ac>
		0000000000029c68:  R_AARCH64_CALL26	_printk
   29c6c: f900ca7f     	str	xzr, [x19, #0x190]
   29c70: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d72
   29c74: 91000000     	add	x0, x0, #0x0
		0000000000029c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d72
   29c78: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d4
   29c7c: 91000021     	add	x1, x1, #0x0
		0000000000029c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d4
   29c80: 2a1403e2     	mov	w2, w20
   29c84: 94000000     	bl	0x29c84 <syna_tcm_preserve_touch_report_config+0x4c8>
		0000000000029c84:  R_AARCH64_CALL26	_printk
   29c88: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43e8
   29c8c: 91000000     	add	x0, x0, #0x0
		0000000000029c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43e8
   29c90: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36e6
   29c94: 91000021     	add	x1, x1, #0x0
		0000000000029c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36e6
   29c98: f900ce7f     	str	xzr, [x19, #0x198]
   29c9c: 94000000     	bl	0x29c9c <syna_tcm_preserve_touch_report_config+0x4e0>
		0000000000029c9c:  R_AARCH64_CALL26	_printk
   29ca0: 39462262     	ldrb	w2, [x19, #0x188]
   29ca4: 7100045f     	cmp	w2, #0x1
   29ca8: 540002e1     	b.ne	0x29d04 <syna_tcm_preserve_touch_report_config+0x548>
   29cac: 2a1f03e8     	mov	w8, wzr
   29cb0: 91056260     	add	x0, x19, #0x158
   29cb4: 39062268     	strb	w8, [x19, #0x188]
   29cb8: 94000000     	bl	0x29cb8 <syna_tcm_preserve_touch_report_config+0x4fc>
		0000000000029cb8:  R_AARCH64_CALL26	mutex_unlock
   29cbc: 12801e40     	mov	w0, #-0xf3              // =-243
   29cc0: 17ffff6d     	b	0x29a74 <syna_tcm_preserve_touch_report_config+0x2b8>
   29cc4: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29cc8: 91000000     	add	x0, x0, #0x0
		0000000000029cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29ccc: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
   29cd0: 91000021     	add	x1, x1, #0x0
		0000000000029cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
   29cd4: 94000000     	bl	0x29cd4 <syna_tcm_preserve_touch_report_config+0x518>
		0000000000029cd4:  R_AARCH64_CALL26	_printk
   29cd8: 39474268     	ldrb	w8, [x19, #0x1d0]
   29cdc: 51000508     	sub	w8, w8, #0x1
   29ce0: 17ffffb1     	b	0x29ba4 <syna_tcm_preserve_touch_report_config+0x3e8>
   29ce4: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29ce8: 91000000     	add	x0, x0, #0x0
		0000000000029ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29cec: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
   29cf0: 91000021     	add	x1, x1, #0x0
		0000000000029cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
   29cf4: 94000000     	bl	0x29cf4 <syna_tcm_preserve_touch_report_config+0x538>
		0000000000029cf4:  R_AARCH64_CALL26	_printk
   29cf8: 39462268     	ldrb	w8, [x19, #0x188]
   29cfc: 51000508     	sub	w8, w8, #0x1
   29d00: 17ffffb0     	b	0x29bc0 <syna_tcm_preserve_touch_report_config+0x404>
   29d04: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
   29d08: 91000000     	add	x0, x0, #0x0
		0000000000029d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
   29d0c: 90000001     	adrp	x1, 0x29000 <tpd_report_work_deinit+0x20>
		0000000000029d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
   29d10: 91000021     	add	x1, x1, #0x0
		0000000000029d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
   29d14: 94000000     	bl	0x29d14 <syna_tcm_preserve_touch_report_config+0x558>
		0000000000029d14:  R_AARCH64_CALL26	_printk
   29d18: 39462268     	ldrb	w8, [x19, #0x188]
   29d1c: 51000508     	sub	w8, w8, #0x1
   29d20: 17ffffe4     	b	0x29cb0 <syna_tcm_preserve_touch_report_config+0x4f4>
