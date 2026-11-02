
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d180 <syna_tcm_get_features>:
   1d180: d503233f     	paciasp
   1d184: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1d188: f9000bf5     	str	x21, [sp, #0x10]
   1d18c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1d190: 910003fd     	mov	x29, sp
   1d194: b4000780     	cbz	x0, 0x1d284 <syna_tcm_get_features+0x104>
   1d198: 2a0203f5     	mov	w21, w2
   1d19c: 39402402     	ldrb	w2, [x0, #0x9]
   1d1a0: aa0003f3     	mov	x19, x0
   1d1a4: 7100045f     	cmp	w2, #0x1
   1d1a8: 540007c1     	b.ne	0x1d2a0 <syna_tcm_get_features+0x120>
   1d1ac: aa0103f4     	mov	x20, x1
   1d1b0: 350000b5     	cbnz	w21, 0x1d1c4 <syna_tcm_get_features+0x44>
   1d1b4: f9402668     	ldr	x8, [x19, #0x48]
   1d1b8: 39405108     	ldrb	w8, [x8, #0x14]
   1d1bc: 36000d88     	tbz	w8, #0x0, 0x1d36c <syna_tcm_get_features+0x1ec>
   1d1c0: 2a1f03f5     	mov	w21, wzr
   1d1c4: f941ce68     	ldr	x8, [x19, #0x398]
   1d1c8: aa1303e0     	mov	x0, x19
   1d1cc: 52800641     	mov	w1, #0x32               // =50
   1d1d0: aa1f03e2     	mov	x2, xzr
   1d1d4: 2a1f03e3     	mov	w3, wzr
   1d1d8: aa1f03e4     	mov	x4, xzr
   1d1dc: 2a1503e5     	mov	w5, w21
   1d1e0: b85fc110     	ldur	w16, [x8, #-0x4]
   1d1e4: 728751d1     	movk	w17, #0x3a8e
   1d1e8: 72a48411     	movk	w17, #0x2420, lsl #16
   1d1ec: 6b11021f     	cmp	w16, w17
   1d1f0: 54000040     	b.eq	0x1d1f8 <syna_tcm_get_features+0x78>
   1d1f4: d4304500     	brk	#0x8228
   1d1f8: d63f0100     	blr	x8
   1d1fc: 37f80600     	tbnz	w0, #0x1f, 0x1d2bc <syna_tcm_get_features+0x13c>
   1d200: b4000394     	cbz	x20, 0x1d270 <syna_tcm_get_features+0xf0>
   1d204: 39462262     	ldrb	w2, [x19, #0x188]
   1d208: 350006e2     	cbnz	w2, 0x1d2e4 <syna_tcm_get_features+0x164>
   1d20c: 91056260     	add	x0, x19, #0x158
   1d210: 94000000     	bl	0x1d210 <syna_tcm_get_features+0x90>
		000000000001d210:  R_AARCH64_CALL26	mutex_lock
   1d214: b9415669     	ldr	w9, [x19, #0x154]
   1d218: 39462268     	ldrb	w8, [x19, #0x188]
   1d21c: 5280020a     	mov	w10, #0x10              // =16
   1d220: f940a661     	ldr	x1, [x19, #0x148]
   1d224: 7100413f     	cmp	w9, #0x10
   1d228: 11000508     	add	w8, w8, #0x1
   1d22c: 1a8a3124     	csel	w4, w9, w10, lo
   1d230: 39062268     	strb	w8, [x19, #0x188]
   1d234: b4000701     	cbz	x1, 0x1d314 <syna_tcm_get_features+0x194>
   1d238: b9415262     	ldr	w2, [x19, #0x150]
   1d23c: 6b02009f     	cmp	w4, w2
   1d240: 540005e8     	b.hi	0x1d2fc <syna_tcm_get_features+0x17c>
   1d244: aa1403e0     	mov	x0, x20
   1d248: aa0403e2     	mov	x2, x4
   1d24c: 94000000     	bl	0x1d24c <syna_tcm_get_features+0xcc>
		000000000001d24c:  R_AARCH64_CALL26	memcpy
   1d250: 39462262     	ldrb	w2, [x19, #0x188]
   1d254: 7100045f     	cmp	w2, #0x1
   1d258: 540007a1     	b.ne	0x1d34c <syna_tcm_get_features+0x1cc>
   1d25c: 2a1f03e8     	mov	w8, wzr
   1d260: 91056260     	add	x0, x19, #0x158
   1d264: 39062268     	strb	w8, [x19, #0x188]
   1d268: 94000000     	bl	0x1d268 <syna_tcm_get_features+0xe8>
		000000000001d268:  R_AARCH64_CALL26	mutex_unlock
   1d26c: 2a1f03e0     	mov	w0, wzr
   1d270: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1d274: f9400bf5     	ldr	x21, [sp, #0x10]
   1d278: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1d27c: d50323bf     	autiasp
   1d280: d65f03c0     	ret
   1d284: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d288: 91000000     	add	x0, x0, #0x0
		000000000001d288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d28c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d28c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ec8
   1d290: 91000021     	add	x1, x1, #0x0
		000000000001d290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ec8
   1d294: 94000000     	bl	0x1d294 <syna_tcm_get_features+0x114>
		000000000001d294:  R_AARCH64_CALL26	_printk
   1d298: 12801e00     	mov	w0, #-0xf1              // =-241
   1d29c: 17fffff5     	b	0x1d270 <syna_tcm_get_features+0xf0>
   1d2a0: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1d2a4: 91000000     	add	x0, x0, #0x0
		000000000001d2a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1d2a8: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ec8
   1d2ac: 91000021     	add	x1, x1, #0x0
		000000000001d2ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ec8
   1d2b0: 94000000     	bl	0x1d2b0 <syna_tcm_get_features+0x130>
		000000000001d2b0:  R_AARCH64_CALL26	_printk
   1d2b4: 12801e00     	mov	w0, #-0xf1              // =-241
   1d2b8: 17ffffee     	b	0x1d270 <syna_tcm_get_features+0xf0>
   1d2bc: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1d2c0: 91000108     	add	x8, x8, #0x0
		000000000001d2c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1d2c4: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ec8
   1d2c8: 91000021     	add	x1, x1, #0x0
		000000000001d2c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ec8
   1d2cc: 2a0003f3     	mov	w19, w0
   1d2d0: aa0803e0     	mov	x0, x8
   1d2d4: 52800642     	mov	w2, #0x32               // =50
   1d2d8: 94000000     	bl	0x1d2d8 <syna_tcm_get_features+0x158>
		000000000001d2d8:  R_AARCH64_CALL26	_printk
   1d2dc: 2a1303e0     	mov	w0, w19
   1d2e0: 17ffffe4     	b	0x1d270 <syna_tcm_get_features+0xf0>
   1d2e4: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1d2e8: 91000000     	add	x0, x0, #0x0
		000000000001d2e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1d2ec: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1d2f0: 91000021     	add	x1, x1, #0x0
		000000000001d2f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1d2f4: 94000000     	bl	0x1d2f4 <syna_tcm_get_features+0x174>
		000000000001d2f4:  R_AARCH64_CALL26	_printk
   1d2f8: 17ffffc5     	b	0x1d20c <syna_tcm_get_features+0x8c>
   1d2fc: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d2fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1d300: 91000000     	add	x0, x0, #0x0
		000000000001d300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1d304: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1d308: 91000021     	add	x1, x1, #0x0
		000000000001d308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1d30c: 52800203     	mov	w3, #0x10               // =16
   1d310: 94000000     	bl	0x1d310 <syna_tcm_get_features+0x190>
		000000000001d310:  R_AARCH64_CALL26	_printk
   1d314: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd13
   1d318: 91000000     	add	x0, x0, #0x0
		000000000001d318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd13
   1d31c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d31c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ec8
   1d320: 91000021     	add	x1, x1, #0x0
		000000000001d320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ec8
   1d324: 94000000     	bl	0x1d324 <syna_tcm_get_features+0x1a4>
		000000000001d324:  R_AARCH64_CALL26	_printk
   1d328: 39462262     	ldrb	w2, [x19, #0x188]
   1d32c: 7100045f     	cmp	w2, #0x1
   1d330: 540002c1     	b.ne	0x1d388 <syna_tcm_get_features+0x208>
   1d334: 2a1f03e8     	mov	w8, wzr
   1d338: 91056260     	add	x0, x19, #0x158
   1d33c: 39062268     	strb	w8, [x19, #0x188]
   1d340: 94000000     	bl	0x1d340 <syna_tcm_get_features+0x1c0>
		000000000001d340:  R_AARCH64_CALL26	mutex_unlock
   1d344: 128002a0     	mov	w0, #-0x16              // =-22
   1d348: 17ffffca     	b	0x1d270 <syna_tcm_get_features+0xf0>
   1d34c: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d34c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1d350: 91000000     	add	x0, x0, #0x0
		000000000001d350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1d354: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1d358: 91000021     	add	x1, x1, #0x0
		000000000001d358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1d35c: 94000000     	bl	0x1d35c <syna_tcm_get_features+0x1dc>
		000000000001d35c:  R_AARCH64_CALL26	_printk
   1d360: 39462268     	ldrb	w8, [x19, #0x188]
   1d364: 51000508     	sub	w8, w8, #0x1
   1d368: 17ffffbe     	b	0x1d260 <syna_tcm_get_features+0xe0>
   1d36c: b9420e75     	ldr	w21, [x19, #0x20c]
   1d370: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1d374: 91000000     	add	x0, x0, #0x0
		000000000001d374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1d378: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ec8
   1d37c: 91000021     	add	x1, x1, #0x0
		000000000001d37c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ec8
   1d380: 94000000     	bl	0x1d380 <syna_tcm_get_features+0x200>
		000000000001d380:  R_AARCH64_CALL26	_printk
   1d384: 17ffff90     	b	0x1d1c4 <syna_tcm_get_features+0x44>
   1d388: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1d38c: 91000000     	add	x0, x0, #0x0
		000000000001d38c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1d390: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1d394: 91000021     	add	x1, x1, #0x0
		000000000001d394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1d398: 94000000     	bl	0x1d398 <syna_tcm_get_features+0x218>
		000000000001d398:  R_AARCH64_CALL26	_printk
   1d39c: 39462268     	ldrb	w8, [x19, #0x188]
   1d3a0: 51000508     	sub	w8, w8, #0x1
   1d3a4: 17ffffe5     	b	0x1d338 <syna_tcm_get_features+0x1b8>
