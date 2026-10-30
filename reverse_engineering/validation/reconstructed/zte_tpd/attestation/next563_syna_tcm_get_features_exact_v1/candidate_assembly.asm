
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020138 <syna_tcm_get_features>:
   20138: d503233f     	paciasp
   2013c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20140: f9000bf5     	str	x21, [sp, #0x10]
   20144: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20148: 910003fd     	mov	x29, sp
   2014c: b4000780     	cbz	x0, 0x2023c <syna_tcm_get_features+0x104>
   20150: 2a0203f5     	mov	w21, w2
   20154: 39402402     	ldrb	w2, [x0, #0x9]
   20158: aa0003f3     	mov	x19, x0
   2015c: 7100045f     	cmp	w2, #0x1
   20160: 540007c1     	b.ne	0x20258 <syna_tcm_get_features+0x120>
   20164: aa0103f4     	mov	x20, x1
   20168: 350000b5     	cbnz	w21, 0x2017c <syna_tcm_get_features+0x44>
   2016c: f9402668     	ldr	x8, [x19, #0x48]
   20170: 39405108     	ldrb	w8, [x8, #0x14]
   20174: 36000d88     	tbz	w8, #0x0, 0x20324 <syna_tcm_get_features+0x1ec>
   20178: 2a1f03f5     	mov	w21, wzr
   2017c: f941ce68     	ldr	x8, [x19, #0x398]
   20180: aa1303e0     	mov	x0, x19
   20184: 52800641     	mov	w1, #0x32               // =50
   20188: aa1f03e2     	mov	x2, xzr
   2018c: 2a1f03e3     	mov	w3, wzr
   20190: aa1f03e4     	mov	x4, xzr
   20194: 2a1503e5     	mov	w5, w21
   20198: b85fc110     	ldur	w16, [x8, #-0x4]
   2019c: 728751d1     	movk	w17, #0x3a8e
   201a0: 72a48411     	movk	w17, #0x2420, lsl #16
   201a4: 6b11021f     	cmp	w16, w17
   201a8: 54000040     	b.eq	0x201b0 <syna_tcm_get_features+0x78>
   201ac: d4304500     	brk	#0x8228
   201b0: d63f0100     	blr	x8
   201b4: 37f80600     	tbnz	w0, #0x1f, 0x20274 <syna_tcm_get_features+0x13c>
   201b8: b4000394     	cbz	x20, 0x20228 <syna_tcm_get_features+0xf0>
   201bc: 39462262     	ldrb	w2, [x19, #0x188]
   201c0: 350006e2     	cbnz	w2, 0x2029c <syna_tcm_get_features+0x164>
   201c4: 91056260     	add	x0, x19, #0x158
   201c8: 94000000     	bl	0x201c8 <syna_tcm_get_features+0x90>
		00000000000201c8:  R_AARCH64_CALL26	mutex_lock
   201cc: b9415669     	ldr	w9, [x19, #0x154]
   201d0: 39462268     	ldrb	w8, [x19, #0x188]
   201d4: 5280020a     	mov	w10, #0x10              // =16
   201d8: f940a661     	ldr	x1, [x19, #0x148]
   201dc: 7100413f     	cmp	w9, #0x10
   201e0: 11000508     	add	w8, w8, #0x1
   201e4: 1a8a3124     	csel	w4, w9, w10, lo
   201e8: 39062268     	strb	w8, [x19, #0x188]
   201ec: b4000701     	cbz	x1, 0x202cc <syna_tcm_get_features+0x194>
   201f0: b9415262     	ldr	w2, [x19, #0x150]
   201f4: 6b02009f     	cmp	w4, w2
   201f8: 540005e8     	b.hi	0x202b4 <syna_tcm_get_features+0x17c>
   201fc: aa1403e0     	mov	x0, x20
   20200: aa0403e2     	mov	x2, x4
   20204: 94000000     	bl	0x20204 <syna_tcm_get_features+0xcc>
		0000000000020204:  R_AARCH64_CALL26	memcpy
   20208: 39462262     	ldrb	w2, [x19, #0x188]
   2020c: 7100045f     	cmp	w2, #0x1
   20210: 540007a1     	b.ne	0x20304 <syna_tcm_get_features+0x1cc>
   20214: 2a1f03e8     	mov	w8, wzr
   20218: 91056260     	add	x0, x19, #0x158
   2021c: 39062268     	strb	w8, [x19, #0x188]
   20220: 94000000     	bl	0x20220 <syna_tcm_get_features+0xe8>
		0000000000020220:  R_AARCH64_CALL26	mutex_unlock
   20224: 2a1f03e0     	mov	w0, wzr
   20228: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2022c: f9400bf5     	ldr	x21, [sp, #0x10]
   20230: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20234: d50323bf     	autiasp
   20238: d65f03c0     	ret
   2023c: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		000000000002023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   20240: 91000000     	add	x0, x0, #0x0
		0000000000020240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   20244: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcba
   20248: 91000021     	add	x1, x1, #0x0
		0000000000020248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcba
   2024c: 94000000     	bl	0x2024c <syna_tcm_get_features+0x114>
		000000000002024c:  R_AARCH64_CALL26	_printk
   20250: 12801e00     	mov	w0, #-0xf1              // =-241
   20254: 17fffff5     	b	0x20228 <syna_tcm_get_features+0xf0>
   20258: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd59a
   2025c: 91000000     	add	x0, x0, #0x0
		000000000002025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd59a
   20260: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcba
   20264: 91000021     	add	x1, x1, #0x0
		0000000000020264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcba
   20268: 94000000     	bl	0x20268 <syna_tcm_get_features+0x130>
		0000000000020268:  R_AARCH64_CALL26	_printk
   2026c: 12801e00     	mov	w0, #-0xf1              // =-241
   20270: 17ffffee     	b	0x20228 <syna_tcm_get_features+0xf0>
   20274: 90000008     	adrp	x8, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13732
   20278: 91000108     	add	x8, x8, #0x0
		0000000000020278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13732
   2027c: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		000000000002027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcba
   20280: 91000021     	add	x1, x1, #0x0
		0000000000020280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcba
   20284: 2a0003f3     	mov	w19, w0
   20288: aa0803e0     	mov	x0, x8
   2028c: 52800642     	mov	w2, #0x32               // =50
   20290: 94000000     	bl	0x20290 <syna_tcm_get_features+0x158>
		0000000000020290:  R_AARCH64_CALL26	_printk
   20294: 2a1303e0     	mov	w0, w19
   20298: 17ffffe4     	b	0x20228 <syna_tcm_get_features+0xf0>
   2029c: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		000000000002029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   202a0: 91000000     	add	x0, x0, #0x0
		00000000000202a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202a4: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		00000000000202a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   202a8: 91000021     	add	x1, x1, #0x0
		00000000000202a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   202ac: 94000000     	bl	0x202ac <syna_tcm_get_features+0x174>
		00000000000202ac:  R_AARCH64_CALL26	_printk
   202b0: 17ffffc5     	b	0x201c4 <syna_tcm_get_features+0x8c>
   202b4: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		00000000000202b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   202b8: 91000000     	add	x0, x0, #0x0
		00000000000202b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   202bc: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		00000000000202bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   202c0: 91000021     	add	x1, x1, #0x0
		00000000000202c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   202c4: 52800203     	mov	w3, #0x10               // =16
   202c8: 94000000     	bl	0x202c8 <syna_tcm_get_features+0x190>
		00000000000202c8:  R_AARCH64_CALL26	_printk
   202cc: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		00000000000202cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c9e
   202d0: 91000000     	add	x0, x0, #0x0
		00000000000202d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c9e
   202d4: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		00000000000202d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcba
   202d8: 91000021     	add	x1, x1, #0x0
		00000000000202d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcba
   202dc: 94000000     	bl	0x202dc <syna_tcm_get_features+0x1a4>
		00000000000202dc:  R_AARCH64_CALL26	_printk
   202e0: 39462262     	ldrb	w2, [x19, #0x188]
   202e4: 7100045f     	cmp	w2, #0x1
   202e8: 540002c1     	b.ne	0x20340 <syna_tcm_get_features+0x208>
   202ec: 2a1f03e8     	mov	w8, wzr
   202f0: 91056260     	add	x0, x19, #0x158
   202f4: 39062268     	strb	w8, [x19, #0x188]
   202f8: 94000000     	bl	0x202f8 <syna_tcm_get_features+0x1c0>
		00000000000202f8:  R_AARCH64_CALL26	mutex_unlock
   202fc: 128002a0     	mov	w0, #-0x16              // =-22
   20300: 17ffffca     	b	0x20228 <syna_tcm_get_features+0xf0>
   20304: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20308: 91000000     	add	x0, x0, #0x0
		0000000000020308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   2030c: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		000000000002030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20310: 91000021     	add	x1, x1, #0x0
		0000000000020310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20314: 94000000     	bl	0x20314 <syna_tcm_get_features+0x1dc>
		0000000000020314:  R_AARCH64_CALL26	_printk
   20318: 39462268     	ldrb	w8, [x19, #0x188]
   2031c: 51000508     	sub	w8, w8, #0x1
   20320: 17ffffbe     	b	0x20218 <syna_tcm_get_features+0xe0>
   20324: b9420e75     	ldr	w21, [x19, #0x20c]
   20328: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   2032c: 91000000     	add	x0, x0, #0x0
		000000000002032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20330: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcba
   20334: 91000021     	add	x1, x1, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcba
   20338: 94000000     	bl	0x20338 <syna_tcm_get_features+0x200>
		0000000000020338:  R_AARCH64_CALL26	_printk
   2033c: 17ffff90     	b	0x2017c <syna_tcm_get_features+0x44>
   20340: 90000000     	adrp	x0, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20344: 91000000     	add	x0, x0, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20348: 90000001     	adrp	x1, 0x20000 <syna_tcm_set_dynamic_config+0x138>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   2034c: 91000021     	add	x1, x1, #0x0
		000000000002034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20350: 94000000     	bl	0x20350 <syna_tcm_get_features+0x218>
		0000000000020350:  R_AARCH64_CALL26	_printk
   20354: 39462268     	ldrb	w8, [x19, #0x188]
   20358: 51000508     	sub	w8, w8, #0x1
   2035c: 17ffffe5     	b	0x202f0 <syna_tcm_get_features+0x1b8>
