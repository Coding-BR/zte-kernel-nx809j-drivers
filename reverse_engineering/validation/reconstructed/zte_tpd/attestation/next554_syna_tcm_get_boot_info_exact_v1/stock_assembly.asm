
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c140 <syna_tcm_get_boot_info>:
   1c140: d503233f     	paciasp
   1c144: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c148: f9000bf5     	str	x21, [sp, #0x10]
   1c14c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c150: 910003fd     	mov	x29, sp
   1c154: b4000800     	cbz	x0, 0x1c254 <syna_tcm_get_boot_info+0x114>
   1c158: 2a0203f5     	mov	w21, w2
   1c15c: 39402402     	ldrb	w2, [x0, #0x9]
   1c160: aa0003f3     	mov	x19, x0
   1c164: 71002c5f     	cmp	w2, #0xb
   1c168: 54000841     	b.ne	0x1c270 <syna_tcm_get_boot_info+0x130>
   1c16c: aa0103f4     	mov	x20, x1
   1c170: 350000b5     	cbnz	w21, 0x1c184 <syna_tcm_get_boot_info+0x44>
   1c174: f9402668     	ldr	x8, [x19, #0x48]
   1c178: 39405108     	ldrb	w8, [x8, #0x14]
   1c17c: 36000e28     	tbz	w8, #0x0, 0x1c340 <syna_tcm_get_boot_info+0x200>
   1c180: 2a1f03f5     	mov	w21, wzr
   1c184: f941ce68     	ldr	x8, [x19, #0x398]
   1c188: aa1303e0     	mov	x0, x19
   1c18c: 52800201     	mov	w1, #0x10               // =16
   1c190: aa1f03e2     	mov	x2, xzr
   1c194: 2a1f03e3     	mov	w3, wzr
   1c198: aa1f03e4     	mov	x4, xzr
   1c19c: 2a1503e5     	mov	w5, w21
   1c1a0: b85fc110     	ldur	w16, [x8, #-0x4]
   1c1a4: 728751d1     	movk	w17, #0x3a8e
   1c1a8: 72a48411     	movk	w17, #0x2420, lsl #16
   1c1ac: 6b11021f     	cmp	w16, w17
   1c1b0: 54000040     	b.eq	0x1c1b8 <syna_tcm_get_boot_info+0x78>
   1c1b4: d4304500     	brk	#0x8228
   1c1b8: d63f0100     	blr	x8
   1c1bc: 37f80680     	tbnz	w0, #0x1f, 0x1c28c <syna_tcm_get_boot_info+0x14c>
   1c1c0: b9415668     	ldr	w8, [x19, #0x154]
   1c1c4: 39462262     	ldrb	w2, [x19, #0x188]
   1c1c8: 52800409     	mov	w9, #0x20               // =32
   1c1cc: 7100811f     	cmp	w8, #0x20
   1c1d0: 1a893115     	csel	w21, w8, w9, lo
   1c1d4: 35000702     	cbnz	w2, 0x1c2b4 <syna_tcm_get_boot_info+0x174>
   1c1d8: 91056260     	add	x0, x19, #0x158
   1c1dc: 94000000     	bl	0x1c1dc <syna_tcm_get_boot_info+0x9c>
		000000000001c1dc:  R_AARCH64_CALL26	mutex_lock
   1c1e0: 39462268     	ldrb	w8, [x19, #0x188]
   1c1e4: f940a661     	ldr	x1, [x19, #0x148]
   1c1e8: 11000508     	add	w8, w8, #0x1
   1c1ec: 39062268     	strb	w8, [x19, #0x188]
   1c1f0: b40007c1     	cbz	x1, 0x1c2e8 <syna_tcm_get_boot_info+0x1a8>
   1c1f4: b9415262     	ldr	w2, [x19, #0x150]
   1c1f8: 6b0202bf     	cmp	w21, w2
   1c1fc: 54000688     	b.hi	0x1c2cc <syna_tcm_get_boot_info+0x18c>
   1c200: 91038260     	add	x0, x19, #0xe0
   1c204: aa1503e2     	mov	x2, x21
   1c208: 94000000     	bl	0x1c208 <syna_tcm_get_boot_info+0xc8>
		000000000001c208:  R_AARCH64_CALL26	memcpy
   1c20c: 39462262     	ldrb	w2, [x19, #0x188]
   1c210: 7100045f     	cmp	w2, #0x1
   1c214: 54000861     	b.ne	0x1c320 <syna_tcm_get_boot_info+0x1e0>
   1c218: 2a1f03e8     	mov	w8, wzr
   1c21c: 91056260     	add	x0, x19, #0x158
   1c220: 39062268     	strb	w8, [x19, #0x188]
   1c224: 94000000     	bl	0x1c224 <syna_tcm_get_boot_info+0xe4>
		000000000001c224:  R_AARCH64_CALL26	mutex_unlock
   1c228: b40000b4     	cbz	x20, 0x1c23c <syna_tcm_get_boot_info+0xfc>
   1c22c: 91038261     	add	x1, x19, #0xe0
   1c230: aa1403e0     	mov	x0, x20
   1c234: aa1503e2     	mov	x2, x21
   1c238: 94000000     	bl	0x1c238 <syna_tcm_get_boot_info+0xf8>
		000000000001c238:  R_AARCH64_CALL26	memcpy
   1c23c: 2a1f03e0     	mov	w0, wzr
   1c240: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c244: f9400bf5     	ldr	x21, [sp, #0x10]
   1c248: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c24c: d50323bf     	autiasp
   1c250: d65f03c0     	ret
   1c254: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1c258: 91000000     	add	x0, x0, #0x0
		000000000001c258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1c25c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c25c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7188
   1c260: 91000021     	add	x1, x1, #0x0
		000000000001c260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7188
   1c264: 94000000     	bl	0x1c264 <syna_tcm_get_boot_info+0x124>
		000000000001c264:  R_AARCH64_CALL26	_printk
   1c268: 12801e00     	mov	w0, #-0xf1              // =-241
   1c26c: 17fffff5     	b	0x1c240 <syna_tcm_get_boot_info+0x100>
   1c270: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa214
   1c274: 91000000     	add	x0, x0, #0x0
		000000000001c274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa214
   1c278: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7188
   1c27c: 91000021     	add	x1, x1, #0x0
		000000000001c27c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7188
   1c280: 94000000     	bl	0x1c280 <syna_tcm_get_boot_info+0x140>
		000000000001c280:  R_AARCH64_CALL26	_printk
   1c284: 12801e00     	mov	w0, #-0xf1              // =-241
   1c288: 17ffffee     	b	0x1c240 <syna_tcm_get_boot_info+0x100>
   1c28c: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c28c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1c290: 91000108     	add	x8, x8, #0x0
		000000000001c290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1c294: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7188
   1c298: 91000021     	add	x1, x1, #0x0
		000000000001c298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7188
   1c29c: 2a0003f3     	mov	w19, w0
   1c2a0: aa0803e0     	mov	x0, x8
   1c2a4: 52800202     	mov	w2, #0x10               // =16
   1c2a8: 94000000     	bl	0x1c2a8 <syna_tcm_get_boot_info+0x168>
		000000000001c2a8:  R_AARCH64_CALL26	_printk
   1c2ac: 2a1303e0     	mov	w0, w19
   1c2b0: 17ffffe4     	b	0x1c240 <syna_tcm_get_boot_info+0x100>
   1c2b4: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c2b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c2b8: 91000000     	add	x0, x0, #0x0
		000000000001c2b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c2bc: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c2bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1c2c0: 91000021     	add	x1, x1, #0x0
		000000000001c2c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1c2c4: 94000000     	bl	0x1c2c4 <syna_tcm_get_boot_info+0x184>
		000000000001c2c4:  R_AARCH64_CALL26	_printk
   1c2c8: 17ffffc4     	b	0x1c1d8 <syna_tcm_get_boot_info+0x98>
   1c2cc: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c2cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1c2d0: 91000000     	add	x0, x0, #0x0
		000000000001c2d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1c2d4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c2d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1c2d8: 91000021     	add	x1, x1, #0x0
		000000000001c2d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1c2dc: 52800403     	mov	w3, #0x20               // =32
   1c2e0: 2a1503e4     	mov	w4, w21
   1c2e4: 94000000     	bl	0x1c2e4 <syna_tcm_get_boot_info+0x1a4>
		000000000001c2e4:  R_AARCH64_CALL26	_printk
   1c2e8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c2e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8416
   1c2ec: 91000000     	add	x0, x0, #0x0
		000000000001c2ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8416
   1c2f0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c2f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7188
   1c2f4: 91000021     	add	x1, x1, #0x0
		000000000001c2f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7188
   1c2f8: 94000000     	bl	0x1c2f8 <syna_tcm_get_boot_info+0x1b8>
		000000000001c2f8:  R_AARCH64_CALL26	_printk
   1c2fc: 39462262     	ldrb	w2, [x19, #0x188]
   1c300: 7100045f     	cmp	w2, #0x1
   1c304: 540002c1     	b.ne	0x1c35c <syna_tcm_get_boot_info+0x21c>
   1c308: 2a1f03e8     	mov	w8, wzr
   1c30c: 91056260     	add	x0, x19, #0x158
   1c310: 39062268     	strb	w8, [x19, #0x188]
   1c314: 94000000     	bl	0x1c314 <syna_tcm_get_boot_info+0x1d4>
		000000000001c314:  R_AARCH64_CALL26	mutex_unlock
   1c318: 128002a0     	mov	w0, #-0x16              // =-22
   1c31c: 17ffffc9     	b	0x1c240 <syna_tcm_get_boot_info+0x100>
   1c320: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c324: 91000000     	add	x0, x0, #0x0
		000000000001c324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c328: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1c32c: 91000021     	add	x1, x1, #0x0
		000000000001c32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1c330: 94000000     	bl	0x1c330 <syna_tcm_get_boot_info+0x1f0>
		000000000001c330:  R_AARCH64_CALL26	_printk
   1c334: 39462268     	ldrb	w8, [x19, #0x188]
   1c338: 51000508     	sub	w8, w8, #0x1
   1c33c: 17ffffb8     	b	0x1c21c <syna_tcm_get_boot_info+0xdc>
   1c340: b9420e75     	ldr	w21, [x19, #0x20c]
   1c344: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1c348: 91000000     	add	x0, x0, #0x0
		000000000001c348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1c34c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c34c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7188
   1c350: 91000021     	add	x1, x1, #0x0
		000000000001c350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7188
   1c354: 94000000     	bl	0x1c354 <syna_tcm_get_boot_info+0x214>
		000000000001c354:  R_AARCH64_CALL26	_printk
   1c358: 17ffff8b     	b	0x1c184 <syna_tcm_get_boot_info+0x44>
   1c35c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c35c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c360: 91000000     	add	x0, x0, #0x0
		000000000001c360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c364: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1c368: 91000021     	add	x1, x1, #0x0
		000000000001c368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1c36c: 94000000     	bl	0x1c36c <syna_tcm_get_boot_info+0x22c>
		000000000001c36c:  R_AARCH64_CALL26	_printk
   1c370: 39462268     	ldrb	w8, [x19, #0x188]
   1c374: 51000508     	sub	w8, w8, #0x1
   1c378: 17ffffe5     	b	0x1c30c <syna_tcm_get_boot_info+0x1cc>
