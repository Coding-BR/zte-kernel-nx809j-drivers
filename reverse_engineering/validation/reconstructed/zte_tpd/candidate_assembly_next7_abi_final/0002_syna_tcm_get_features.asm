
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011250 <syna_tcm_get_features>:
   11250: d503233f     	paciasp
   11254: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   11258: f9000bf5     	str	x21, [sp, #0x10]
   1125c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   11260: 910003fd     	mov	x29, sp
   11264: b4000780     	cbz	x0, 0x11354 <syna_tcm_get_features+0x104>
   11268: 2a0203f5     	mov	w21, w2
   1126c: 39402402     	ldrb	w2, [x0, #0x9]
   11270: aa0003f3     	mov	x19, x0
   11274: 7100045f     	cmp	w2, #0x1
   11278: 540007c1     	b.ne	0x11370 <syna_tcm_get_features+0x120>
   1127c: aa0103f4     	mov	x20, x1
   11280: 350000b5     	cbnz	w21, 0x11294 <syna_tcm_get_features+0x44>
   11284: f9402668     	ldr	x8, [x19, #0x48]
   11288: 39405108     	ldrb	w8, [x8, #0x14]
   1128c: 36000d88     	tbz	w8, #0x0, 0x1143c <syna_tcm_get_features+0x1ec>
   11290: 2a1f03f5     	mov	w21, wzr
   11294: f941ce68     	ldr	x8, [x19, #0x398]
   11298: aa1303e0     	mov	x0, x19
   1129c: 52800641     	mov	w1, #0x32               // =50
   112a0: aa1f03e2     	mov	x2, xzr
   112a4: 2a1f03e3     	mov	w3, wzr
   112a8: aa1f03e4     	mov	x4, xzr
   112ac: 2a1503e5     	mov	w5, w21
   112b0: b85fc110     	ldur	w16, [x8, #-0x4]
   112b4: 728751d1     	movk	w17, #0x3a8e
   112b8: 72a48411     	movk	w17, #0x2420, lsl #16
   112bc: 6b11021f     	cmp	w16, w17
   112c0: 54000040     	b.eq	0x112c8 <syna_tcm_get_features+0x78>
   112c4: d4304500     	brk	#0x8228
   112c8: d63f0100     	blr	x8
   112cc: 37f80600     	tbnz	w0, #0x1f, 0x1138c <syna_tcm_get_features+0x13c>
   112d0: b4000394     	cbz	x20, 0x11340 <syna_tcm_get_features+0xf0>
   112d4: 39462262     	ldrb	w2, [x19, #0x188]
   112d8: 350006e2     	cbnz	w2, 0x113b4 <syna_tcm_get_features+0x164>
   112dc: 91056260     	add	x0, x19, #0x158
   112e0: 94000000     	bl	0x112e0 <syna_tcm_get_features+0x90>
		00000000000112e0:  R_AARCH64_CALL26	mutex_lock
   112e4: b9415669     	ldr	w9, [x19, #0x154]
   112e8: 39462268     	ldrb	w8, [x19, #0x188]
   112ec: 5280020a     	mov	w10, #0x10              // =16
   112f0: f940a661     	ldr	x1, [x19, #0x148]
   112f4: 7100413f     	cmp	w9, #0x10
   112f8: 11000508     	add	w8, w8, #0x1
   112fc: 1a8a3124     	csel	w4, w9, w10, lo
   11300: 39062268     	strb	w8, [x19, #0x188]
   11304: b4000701     	cbz	x1, 0x113e4 <syna_tcm_get_features+0x194>
   11308: b9415262     	ldr	w2, [x19, #0x150]
   1130c: 6b02009f     	cmp	w4, w2
   11310: 540005e8     	b.hi	0x113cc <syna_tcm_get_features+0x17c>
   11314: aa1403e0     	mov	x0, x20
   11318: aa0403e2     	mov	x2, x4
   1131c: 94000000     	bl	0x1131c <syna_tcm_get_features+0xcc>
		000000000001131c:  R_AARCH64_CALL26	memcpy
   11320: 39462262     	ldrb	w2, [x19, #0x188]
   11324: 7100045f     	cmp	w2, #0x1
   11328: 540007a1     	b.ne	0x1141c <syna_tcm_get_features+0x1cc>
   1132c: 2a1f03e8     	mov	w8, wzr
   11330: 91056260     	add	x0, x19, #0x158
   11334: 39062268     	strb	w8, [x19, #0x188]
   11338: 94000000     	bl	0x11338 <syna_tcm_get_features+0xe8>
		0000000000011338:  R_AARCH64_CALL26	mutex_unlock
   1133c: 2a1f03e0     	mov	w0, wzr
   11340: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   11344: f9400bf5     	ldr	x21, [sp, #0x10]
   11348: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1134c: d50323bf     	autiasp
   11350: d65f03c0     	ret
   11354: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd77
   11358: 91000000     	add	x0, x0, #0x0
		0000000000011358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd77
   1135c: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		000000000001135c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fdb
   11360: 91000021     	add	x1, x1, #0x0
		0000000000011360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fdb
   11364: 94000000     	bl	0x11364 <syna_tcm_get_features+0x114>
		0000000000011364:  R_AARCH64_CALL26	_printk
   11368: 12801e00     	mov	w0, #-0xf1              // =-241
   1136c: 17fffff5     	b	0x11340 <syna_tcm_get_features+0xf0>
   11370: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x115a
   11374: 91000000     	add	x0, x0, #0x0
		0000000000011374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x115a
   11378: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fdb
   1137c: 91000021     	add	x1, x1, #0x0
		000000000001137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fdb
   11380: 94000000     	bl	0x11380 <syna_tcm_get_features+0x130>
		0000000000011380:  R_AARCH64_CALL26	_printk
   11384: 12801e00     	mov	w0, #-0xf1              // =-241
   11388: 17ffffee     	b	0x11340 <syna_tcm_get_features+0xf0>
   1138c: 90000008     	adrp	x8, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		000000000001138c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368f
   11390: 91000108     	add	x8, x8, #0x0
		0000000000011390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368f
   11394: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fdb
   11398: 91000021     	add	x1, x1, #0x0
		0000000000011398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fdb
   1139c: 2a0003f3     	mov	w19, w0
   113a0: aa0803e0     	mov	x0, x8
   113a4: 52800642     	mov	w2, #0x32               // =50
   113a8: 94000000     	bl	0x113a8 <syna_tcm_get_features+0x158>
		00000000000113a8:  R_AARCH64_CALL26	_printk
   113ac: 2a1303e0     	mov	w0, w19
   113b0: 17ffffe4     	b	0x11340 <syna_tcm_get_features+0xf0>
   113b4: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000113b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   113b8: 91000000     	add	x0, x0, #0x0
		00000000000113b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   113bc: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000113bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bfd
   113c0: 91000021     	add	x1, x1, #0x0
		00000000000113c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bfd
   113c4: 94000000     	bl	0x113c4 <syna_tcm_get_features+0x174>
		00000000000113c4:  R_AARCH64_CALL26	_printk
   113c8: 17ffffc5     	b	0x112dc <syna_tcm_get_features+0x8c>
   113cc: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000113cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3294
   113d0: 91000000     	add	x0, x0, #0x0
		00000000000113d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3294
   113d4: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000113d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea
   113d8: 91000021     	add	x1, x1, #0x0
		00000000000113d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea
   113dc: 52800203     	mov	w3, #0x10               // =16
   113e0: 94000000     	bl	0x113e0 <syna_tcm_get_features+0x190>
		00000000000113e0:  R_AARCH64_CALL26	_printk
   113e4: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000113e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4802
   113e8: 91000000     	add	x0, x0, #0x0
		00000000000113e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4802
   113ec: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000113ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fdb
   113f0: 91000021     	add	x1, x1, #0x0
		00000000000113f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fdb
   113f4: 94000000     	bl	0x113f4 <syna_tcm_get_features+0x1a4>
		00000000000113f4:  R_AARCH64_CALL26	_printk
   113f8: 39462262     	ldrb	w2, [x19, #0x188]
   113fc: 7100045f     	cmp	w2, #0x1
   11400: 540002c1     	b.ne	0x11458 <syna_tcm_get_features+0x208>
   11404: 2a1f03e8     	mov	w8, wzr
   11408: 91056260     	add	x0, x19, #0x158
   1140c: 39062268     	strb	w8, [x19, #0x188]
   11410: 94000000     	bl	0x11410 <syna_tcm_get_features+0x1c0>
		0000000000011410:  R_AARCH64_CALL26	mutex_unlock
   11414: 128002a0     	mov	w0, #-0x16              // =-22
   11418: 17ffffca     	b	0x11340 <syna_tcm_get_features+0xf0>
   1141c: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		000000000001141c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   11420: 91000000     	add	x0, x0, #0x0
		0000000000011420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   11424: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   11428: 91000021     	add	x1, x1, #0x0
		0000000000011428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   1142c: 94000000     	bl	0x1142c <syna_tcm_get_features+0x1dc>
		000000000001142c:  R_AARCH64_CALL26	_printk
   11430: 39462268     	ldrb	w8, [x19, #0x188]
   11434: 51000508     	sub	w8, w8, #0x1
   11438: 17ffffbe     	b	0x11330 <syna_tcm_get_features+0xe0>
   1143c: b9420e75     	ldr	w21, [x19, #0x20c]
   11440: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4105
   11444: 91000000     	add	x0, x0, #0x0
		0000000000011444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4105
   11448: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fdb
   1144c: 91000021     	add	x1, x1, #0x0
		000000000001144c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fdb
   11450: 94000000     	bl	0x11450 <syna_tcm_get_features+0x200>
		0000000000011450:  R_AARCH64_CALL26	_printk
   11454: 17ffff90     	b	0x11294 <syna_tcm_get_features+0x44>
   11458: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   1145c: 91000000     	add	x0, x0, #0x0
		000000000001145c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   11460: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   11464: 91000021     	add	x1, x1, #0x0
		0000000000011464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   11468: 94000000     	bl	0x11468 <syna_tcm_get_features+0x218>
		0000000000011468:  R_AARCH64_CALL26	_printk
   1146c: 39462268     	ldrb	w8, [x19, #0x188]
   11470: 51000508     	sub	w8, w8, #0x1
   11474: 17ffffe5     	b	0x11408 <syna_tcm_get_features+0x1b8>
