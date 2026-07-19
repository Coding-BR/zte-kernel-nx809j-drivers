
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011848 <syna_tcm_identify>:
   11848: d503233f     	paciasp
   1184c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   11850: f9000bf5     	str	x21, [sp, #0x10]
   11854: a9024ff4     	stp	x20, x19, [sp, #0x20]
   11858: 910003fd     	mov	x29, sp
   1185c: b5000100     	cbnz	x0, 0x1187c <syna_tcm_identify+0x34>
   11860: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd77
   11864: 91000000     	add	x0, x0, #0x0
		0000000000011864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd77
   11868: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140d
   1186c: 91000021     	add	x1, x1, #0x0
		000000000001186c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140d
   11870: 94000000     	bl	0x11870 <syna_tcm_identify+0x28>
		0000000000011870:  R_AARCH64_CALL26	_printk
   11874: 12801e00     	mov	w0, #-0xf1              // =-241
   11878: 1400004d     	b	0x119ac <syna_tcm_identify+0x164>
   1187c: 2a0203f5     	mov	w21, w2
   11880: aa0003f3     	mov	x19, x0
   11884: aa0103f4     	mov	x20, x1
   11888: 35000182     	cbnz	w2, 0x118b8 <syna_tcm_identify+0x70>
   1188c: f9402668     	ldr	x8, [x19, #0x48]
   11890: 39405108     	ldrb	w8, [x8, #0x14]
   11894: 36000068     	tbz	w8, #0x0, 0x118a0 <syna_tcm_identify+0x58>
   11898: 2a1f03f5     	mov	w21, wzr
   1189c: 14000007     	b	0x118b8 <syna_tcm_identify+0x70>
   118a0: b9420e75     	ldr	w21, [x19, #0x20c]
   118a4: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000118a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4105
   118a8: 91000000     	add	x0, x0, #0x0
		00000000000118a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4105
   118ac: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000118ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140d
   118b0: 91000021     	add	x1, x1, #0x0
		00000000000118b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140d
   118b4: 94000000     	bl	0x118b4 <syna_tcm_identify+0x6c>
		00000000000118b4:  R_AARCH64_CALL26	_printk
   118b8: f941ce68     	ldr	x8, [x19, #0x398]
   118bc: aa1303e0     	mov	x0, x19
   118c0: 52800041     	mov	w1, #0x2                // =2
   118c4: aa1f03e2     	mov	x2, xzr
   118c8: 2a1f03e3     	mov	w3, wzr
   118cc: aa1f03e4     	mov	x4, xzr
   118d0: 2a1503e5     	mov	w5, w21
   118d4: b85fc110     	ldur	w16, [x8, #-0x4]
   118d8: 728751d1     	movk	w17, #0x3a8e
   118dc: 72a48411     	movk	w17, #0x2420, lsl #16
   118e0: 6b11021f     	cmp	w16, w17
   118e4: 54000040     	b.eq	0x118ec <syna_tcm_identify+0xa4>
   118e8: d4304500     	brk	#0x8228
   118ec: d63f0100     	blr	x8
   118f0: 2a0003f5     	mov	w21, w0
   118f4: 36f80120     	tbz	w0, #0x1f, 0x11918 <syna_tcm_identify+0xd0>
   118f8: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000118f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368f
   118fc: 91000000     	add	x0, x0, #0x0
		00000000000118fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368f
   11900: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140d
   11904: 91000021     	add	x1, x1, #0x0
		0000000000011904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140d
   11908: 52800042     	mov	w2, #0x2                // =2
   1190c: 94000000     	bl	0x1190c <syna_tcm_identify+0xc4>
		000000000001190c:  R_AARCH64_CALL26	_printk
   11910: 2a1503e0     	mov	w0, w21
   11914: 14000026     	b	0x119ac <syna_tcm_identify+0x164>
   11918: 39420662     	ldrb	w2, [x19, #0x81]
   1191c: 39420263     	ldrb	w3, [x19, #0x80]
   11920: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4370
   11924: 91000000     	add	x0, x0, #0x0
		0000000000011924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4370
   11928: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140d
   1192c: 91000021     	add	x1, x1, #0x0
		000000000001192c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140d
   11930: 39002662     	strb	w2, [x19, #0x9]
   11934: 94000000     	bl	0x11934 <syna_tcm_identify+0xec>
		0000000000011934:  R_AARCH64_CALL26	_printk
   11938: 2a1503e0     	mov	w0, w21
   1193c: b4000394     	cbz	x20, 0x119ac <syna_tcm_identify+0x164>
   11940: 39462262     	ldrb	w2, [x19, #0x188]
   11944: 350003e2     	cbnz	w2, 0x119c0 <syna_tcm_identify+0x178>
   11948: 91056260     	add	x0, x19, #0x158
   1194c: 94000000     	bl	0x1194c <syna_tcm_identify+0x104>
		000000000001194c:  R_AARCH64_CALL26	mutex_lock
   11950: b9415669     	ldr	w9, [x19, #0x154]
   11954: 39462268     	ldrb	w8, [x19, #0x188]
   11958: 5280060a     	mov	w10, #0x30              // =48
   1195c: f940a661     	ldr	x1, [x19, #0x148]
   11960: 7100c13f     	cmp	w9, #0x30
   11964: 11000508     	add	w8, w8, #0x1
   11968: 1a8a3124     	csel	w4, w9, w10, lo
   1196c: 39062268     	strb	w8, [x19, #0x188]
   11970: b4000401     	cbz	x1, 0x119f0 <syna_tcm_identify+0x1a8>
   11974: b9415262     	ldr	w2, [x19, #0x150]
   11978: 6b02009f     	cmp	w4, w2
   1197c: 540002e8     	b.hi	0x119d8 <syna_tcm_identify+0x190>
   11980: aa1403e0     	mov	x0, x20
   11984: aa0403e2     	mov	x2, x4
   11988: 94000000     	bl	0x11988 <syna_tcm_identify+0x140>
		0000000000011988:  R_AARCH64_CALL26	memcpy
   1198c: 39462262     	ldrb	w2, [x19, #0x188]
   11990: 7100045f     	cmp	w2, #0x1
   11994: 54000401     	b.ne	0x11a14 <syna_tcm_identify+0x1cc>
   11998: 2a1f03e8     	mov	w8, wzr
   1199c: 91056260     	add	x0, x19, #0x158
   119a0: 39062268     	strb	w8, [x19, #0x188]
   119a4: 94000000     	bl	0x119a4 <syna_tcm_identify+0x15c>
		00000000000119a4:  R_AARCH64_CALL26	mutex_unlock
   119a8: 2a1f03e0     	mov	w0, wzr
   119ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   119b0: f9400bf5     	ldr	x21, [sp, #0x10]
   119b4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   119b8: d50323bf     	autiasp
   119bc: d65f03c0     	ret
   119c0: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000119c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   119c4: 91000000     	add	x0, x0, #0x0
		00000000000119c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   119c8: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000119c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bfd
   119cc: 91000021     	add	x1, x1, #0x0
		00000000000119cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bfd
   119d0: 94000000     	bl	0x119d0 <syna_tcm_identify+0x188>
		00000000000119d0:  R_AARCH64_CALL26	_printk
   119d4: 17ffffdd     	b	0x11948 <syna_tcm_identify+0x100>
   119d8: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000119d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3294
   119dc: 91000000     	add	x0, x0, #0x0
		00000000000119dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3294
   119e0: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000119e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaea
   119e4: 91000021     	add	x1, x1, #0x0
		00000000000119e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaea
   119e8: 52800603     	mov	w3, #0x30               // =48
   119ec: 94000000     	bl	0x119ec <syna_tcm_identify+0x1a4>
		00000000000119ec:  R_AARCH64_CALL26	_printk
   119f0: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000119f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cf0
   119f4: 91000000     	add	x0, x0, #0x0
		00000000000119f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cf0
   119f8: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		00000000000119f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140d
   119fc: 91000021     	add	x1, x1, #0x0
		00000000000119fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140d
   11a00: 94000000     	bl	0x11a00 <syna_tcm_identify+0x1b8>
		0000000000011a00:  R_AARCH64_CALL26	_printk
   11a04: 91052260     	add	x0, x19, #0x148
   11a08: 94000000     	bl	0x11a08 <syna_tcm_identify+0x1c0>
		0000000000011a08:  R_AARCH64_CALL26	syna_tcm_buf_unlock
   11a0c: 128002a0     	mov	w0, #-0x16              // =-22
   11a10: 17ffffe7     	b	0x119ac <syna_tcm_identify+0x164>
   11a14: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c79
   11a18: 91000000     	add	x0, x0, #0x0
		0000000000011a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c79
   11a1c: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_dynamic_config+0x110>
		0000000000011a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473d
   11a20: 91000021     	add	x1, x1, #0x0
		0000000000011a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473d
   11a24: 94000000     	bl	0x11a24 <syna_tcm_identify+0x1dc>
		0000000000011a24:  R_AARCH64_CALL26	_printk
   11a28: 39462268     	ldrb	w8, [x19, #0x188]
   11a2c: 51000508     	sub	w8, w8, #0x1
   11a30: 17ffffdb     	b	0x1199c <syna_tcm_identify+0x154>
