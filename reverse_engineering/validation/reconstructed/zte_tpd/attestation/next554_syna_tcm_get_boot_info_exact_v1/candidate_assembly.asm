
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020124 <syna_tcm_get_boot_info>:
   20124: d503233f     	paciasp
   20128: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   2012c: f9000bf5     	str	x21, [sp, #0x10]
   20130: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20134: 910003fd     	mov	x29, sp
   20138: b4000800     	cbz	x0, 0x20238 <syna_tcm_get_boot_info+0x114>
   2013c: 2a0203f5     	mov	w21, w2
   20140: 39402402     	ldrb	w2, [x0, #0x9]
   20144: aa0003f3     	mov	x19, x0
   20148: 71002c5f     	cmp	w2, #0xb
   2014c: 54000841     	b.ne	0x20254 <syna_tcm_get_boot_info+0x130>
   20150: aa0103f4     	mov	x20, x1
   20154: 350000b5     	cbnz	w21, 0x20168 <syna_tcm_get_boot_info+0x44>
   20158: f9402668     	ldr	x8, [x19, #0x48]
   2015c: 39405108     	ldrb	w8, [x8, #0x14]
   20160: 36000e28     	tbz	w8, #0x0, 0x20324 <syna_tcm_get_boot_info+0x200>
   20164: 2a1f03f5     	mov	w21, wzr
   20168: f941ce68     	ldr	x8, [x19, #0x398]
   2016c: aa1303e0     	mov	x0, x19
   20170: 52800201     	mov	w1, #0x10               // =16
   20174: aa1f03e2     	mov	x2, xzr
   20178: 2a1f03e3     	mov	w3, wzr
   2017c: aa1f03e4     	mov	x4, xzr
   20180: 2a1503e5     	mov	w5, w21
   20184: b85fc110     	ldur	w16, [x8, #-0x4]
   20188: 728751d1     	movk	w17, #0x3a8e
   2018c: 72a48411     	movk	w17, #0x2420, lsl #16
   20190: 6b11021f     	cmp	w16, w17
   20194: 54000040     	b.eq	0x2019c <syna_tcm_get_boot_info+0x78>
   20198: d4304500     	brk	#0x8228
   2019c: d63f0100     	blr	x8
   201a0: 37f80680     	tbnz	w0, #0x1f, 0x20270 <syna_tcm_get_boot_info+0x14c>
   201a4: b9415668     	ldr	w8, [x19, #0x154]
   201a8: 39462262     	ldrb	w2, [x19, #0x188]
   201ac: 52800409     	mov	w9, #0x20               // =32
   201b0: 7100811f     	cmp	w8, #0x20
   201b4: 1a893115     	csel	w21, w8, w9, lo
   201b8: 35000702     	cbnz	w2, 0x20298 <syna_tcm_get_boot_info+0x174>
   201bc: 91056260     	add	x0, x19, #0x158
   201c0: 94000000     	bl	0x201c0 <syna_tcm_get_boot_info+0x9c>
		00000000000201c0:  R_AARCH64_CALL26	mutex_lock
   201c4: 39462268     	ldrb	w8, [x19, #0x188]
   201c8: f940a661     	ldr	x1, [x19, #0x148]
   201cc: 11000508     	add	w8, w8, #0x1
   201d0: 39062268     	strb	w8, [x19, #0x188]
   201d4: b40007c1     	cbz	x1, 0x202cc <syna_tcm_get_boot_info+0x1a8>
   201d8: b9415262     	ldr	w2, [x19, #0x150]
   201dc: 6b0202bf     	cmp	w21, w2
   201e0: 54000688     	b.hi	0x202b0 <syna_tcm_get_boot_info+0x18c>
   201e4: 91038260     	add	x0, x19, #0xe0
   201e8: aa1503e2     	mov	x2, x21
   201ec: 94000000     	bl	0x201ec <syna_tcm_get_boot_info+0xc8>
		00000000000201ec:  R_AARCH64_CALL26	memcpy
   201f0: 39462262     	ldrb	w2, [x19, #0x188]
   201f4: 7100045f     	cmp	w2, #0x1
   201f8: 54000861     	b.ne	0x20304 <syna_tcm_get_boot_info+0x1e0>
   201fc: 2a1f03e8     	mov	w8, wzr
   20200: 91056260     	add	x0, x19, #0x158
   20204: 39062268     	strb	w8, [x19, #0x188]
   20208: 94000000     	bl	0x20208 <syna_tcm_get_boot_info+0xe4>
		0000000000020208:  R_AARCH64_CALL26	mutex_unlock
   2020c: b40000b4     	cbz	x20, 0x20220 <syna_tcm_get_boot_info+0xfc>
   20210: 91038261     	add	x1, x19, #0xe0
   20214: aa1403e0     	mov	x0, x20
   20218: aa1503e2     	mov	x2, x21
   2021c: 94000000     	bl	0x2021c <syna_tcm_get_boot_info+0xf8>
		000000000002021c:  R_AARCH64_CALL26	memcpy
   20220: 2a1f03e0     	mov	w0, wzr
   20224: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20228: f9400bf5     	ldr	x21, [sp, #0x10]
   2022c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   20230: d50323bf     	autiasp
   20234: d65f03c0     	ret
   20238: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   2023c: 91000000     	add	x0, x0, #0x0
		000000000002023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   20240: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ffe
   20244: 91000021     	add	x1, x1, #0x0
		0000000000020244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ffe
   20248: 94000000     	bl	0x20248 <syna_tcm_get_boot_info+0x124>
		0000000000020248:  R_AARCH64_CALL26	_printk
   2024c: 12801e00     	mov	w0, #-0xf1              // =-241
   20250: 17fffff5     	b	0x20224 <syna_tcm_get_boot_info+0x100>
   20254: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15144
   20258: 91000000     	add	x0, x0, #0x0
		0000000000020258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15144
   2025c: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		000000000002025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ffe
   20260: 91000021     	add	x1, x1, #0x0
		0000000000020260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ffe
   20264: 94000000     	bl	0x20264 <syna_tcm_get_boot_info+0x140>
		0000000000020264:  R_AARCH64_CALL26	_printk
   20268: 12801e00     	mov	w0, #-0xf1              // =-241
   2026c: 17ffffee     	b	0x20224 <syna_tcm_get_boot_info+0x100>
   20270: 90000008     	adrp	x8, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13732
   20274: 91000108     	add	x8, x8, #0x0
		0000000000020274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13732
   20278: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ffe
   2027c: 91000021     	add	x1, x1, #0x0
		000000000002027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ffe
   20280: 2a0003f3     	mov	w19, w0
   20284: aa0803e0     	mov	x0, x8
   20288: 52800202     	mov	w2, #0x10               // =16
   2028c: 94000000     	bl	0x2028c <syna_tcm_get_boot_info+0x168>
		000000000002028c:  R_AARCH64_CALL26	_printk
   20290: 2a1303e0     	mov	w0, w19
   20294: 17ffffe4     	b	0x20224 <syna_tcm_get_boot_info+0x100>
   20298: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   2029c: 91000000     	add	x0, x0, #0x0
		000000000002029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   202a0: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		00000000000202a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d70
   202a4: 91000021     	add	x1, x1, #0x0
		00000000000202a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d70
   202a8: 94000000     	bl	0x202a8 <syna_tcm_get_boot_info+0x184>
		00000000000202a8:  R_AARCH64_CALL26	_printk
   202ac: 17ffffc4     	b	0x201bc <syna_tcm_get_boot_info+0x98>
   202b0: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		00000000000202b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   202b4: 91000000     	add	x0, x0, #0x0
		00000000000202b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   202b8: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		00000000000202b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   202bc: 91000021     	add	x1, x1, #0x0
		00000000000202bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   202c0: 52800403     	mov	w3, #0x20               // =32
   202c4: 2a1503e4     	mov	w4, w21
   202c8: 94000000     	bl	0x202c8 <syna_tcm_get_boot_info+0x1a4>
		00000000000202c8:  R_AARCH64_CALL26	_printk
   202cc: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		00000000000202cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132de
   202d0: 91000000     	add	x0, x0, #0x0
		00000000000202d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132de
   202d4: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		00000000000202d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ffe
   202d8: 91000021     	add	x1, x1, #0x0
		00000000000202d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ffe
   202dc: 94000000     	bl	0x202dc <syna_tcm_get_boot_info+0x1b8>
		00000000000202dc:  R_AARCH64_CALL26	_printk
   202e0: 39462262     	ldrb	w2, [x19, #0x188]
   202e4: 7100045f     	cmp	w2, #0x1
   202e8: 540002c1     	b.ne	0x20340 <syna_tcm_get_boot_info+0x21c>
   202ec: 2a1f03e8     	mov	w8, wzr
   202f0: 91056260     	add	x0, x19, #0x158
   202f4: 39062268     	strb	w8, [x19, #0x188]
   202f8: 94000000     	bl	0x202f8 <syna_tcm_get_boot_info+0x1d4>
		00000000000202f8:  R_AARCH64_CALL26	mutex_unlock
   202fc: 128002a0     	mov	w0, #-0x16              // =-22
   20300: 17ffffc9     	b	0x20224 <syna_tcm_get_boot_info+0x100>
   20304: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20308: 91000000     	add	x0, x0, #0x0
		0000000000020308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   2030c: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		000000000002030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   20310: 91000021     	add	x1, x1, #0x0
		0000000000020310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20314: 94000000     	bl	0x20314 <syna_tcm_get_boot_info+0x1f0>
		0000000000020314:  R_AARCH64_CALL26	_printk
   20318: 39462268     	ldrb	w8, [x19, #0x188]
   2031c: 51000508     	sub	w8, w8, #0x1
   20320: 17ffffb8     	b	0x20200 <syna_tcm_get_boot_info+0xdc>
   20324: b9420e75     	ldr	w21, [x19, #0x20c]
   20328: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   2032c: 91000000     	add	x0, x0, #0x0
		000000000002032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20330: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ffe
   20334: 91000021     	add	x1, x1, #0x0
		0000000000020334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ffe
   20338: 94000000     	bl	0x20338 <syna_tcm_get_boot_info+0x214>
		0000000000020338:  R_AARCH64_CALL26	_printk
   2033c: 17ffff8b     	b	0x20168 <syna_tcm_get_boot_info+0x44>
   20340: 90000000     	adrp	x0, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11d40
   20344: 91000000     	add	x0, x0, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11d40
   20348: 90000001     	adrp	x1, 0x20000 <syna_tcm_switch_fw_mode+0x1b8>
		0000000000020348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16aa8
   2034c: 91000021     	add	x1, x1, #0x0
		000000000002034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16aa8
   20350: 94000000     	bl	0x20350 <syna_tcm_get_boot_info+0x22c>
		0000000000020350:  R_AARCH64_CALL26	_printk
   20354: 39462268     	ldrb	w8, [x19, #0x188]
   20358: 51000508     	sub	w8, w8, #0x1
   2035c: 17ffffe5     	b	0x202f0 <syna_tcm_get_boot_info+0x1cc>
