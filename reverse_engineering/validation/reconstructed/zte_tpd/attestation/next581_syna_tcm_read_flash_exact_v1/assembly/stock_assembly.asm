
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001df40 <syna_tcm_read_flash>:
   1df40: d503233f     	paciasp
   1df44: d101c3ff     	sub	sp, sp, #0x70
   1df48: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1df4c: a9026ffc     	stp	x28, x27, [sp, #0x20]
   1df50: a90367fa     	stp	x26, x25, [sp, #0x30]
   1df54: a9045ff8     	stp	x24, x23, [sp, #0x40]
   1df58: a90557f6     	stp	x22, x21, [sp, #0x50]
   1df5c: a9064ff4     	stp	x20, x19, [sp, #0x60]
   1df60: 910043fd     	add	x29, sp, #0x10
   1df64: d5384108     	mrs	x8, SP_EL0
   1df68: f9438908     	ldr	x8, [x8, #0x710]
   1df6c: f90007e8     	str	x8, [sp, #0x8]
   1df70: b4000f42     	cbz	x2, 0x1e158 <syna_tcm_read_flash+0x218>
   1df74: 2a0103f4     	mov	w20, w1
   1df78: 34000f61     	cbz	w1, 0x1e164 <syna_tcm_read_flash+0x224>
   1df7c: 2a0303f6     	mov	w22, w3
   1df80: 34000f23     	cbz	w3, 0x1e164 <syna_tcm_read_flash+0x224>
   1df84: 39402008     	ldrb	w8, [x0, #0x8]
   1df88: 2a0403f7     	mov	w23, w4
   1df8c: aa0203f8     	mov	x24, x2
   1df90: aa0003f5     	mov	x21, x0
   1df94: 2a1603f3     	mov	w19, w22
   1df98: 7100091f     	cmp	w8, #0x2
   1df9c: 540000e1     	b.ne	0x1dfb8 <syna_tcm_read_flash+0x78>
   1dfa0: b9403ea8     	ldr	w8, [x21, #0x3c]
   1dfa4: 2a1603f3     	mov	w19, w22
   1dfa8: 6b16011f     	cmp	w8, w22
   1dfac: 54000062     	b.hs	0x1dfb8 <syna_tcm_read_flash+0x78>
   1dfb0: 71001913     	subs	w19, w8, #0x6
   1dfb4: 54000ce0     	b.eq	0x1e150 <syna_tcm_read_flash+0x210>
   1dfb8: 0b1302c8     	add	w8, w22, w19
   1dfbc: 51000508     	sub	w8, w8, #0x1
   1dfc0: 1ad30908     	udiv	w8, w8, w19
   1dfc4: 7100051f     	cmp	w8, #0x1
   1dfc8: 5289ba7a     	mov	w26, #0x4dd3            // =19923
   1dfcc: 2a1f03f9     	mov	w25, wzr
   1dfd0: 1a9f851b     	csinc	w27, w8, wzr, hi
   1dfd4: 72a20c5a     	movk	w26, #0x1062, lsl #16
   1dfd8: 4b1902c8     	sub	w8, w22, w25
   1dfdc: 6b13011f     	cmp	w8, w19
   1dfe0: 1a933113     	csel	w19, w8, w19, lo
   1dfe4: 53017e68     	lsr	w8, w19, #1
   1dfe8: 340000b7     	cbz	w23, 0x1dffc <syna_tcm_read_flash+0xbc>
   1dfec: 1b177d09     	mul	w9, w8, w23
   1dff0: 9bba7d29     	umull	x9, w9, w26
   1dff4: d366fd3c     	lsr	x28, x9, #38
   1dff8: 14000002     	b	0x1e000 <syna_tcm_read_flash+0xc0>
   1dffc: 2a1f03fc     	mov	w28, wzr
   1e000: 0b190294     	add	w20, w20, w25
   1e004: 394026a2     	ldrb	w2, [x21, #0x9]
   1e008: 390013e8     	strb	w8, [sp, #0x4]
   1e00c: 53017e89     	lsr	w9, w20, #1
   1e010: 53097e8a     	lsr	w10, w20, #9
   1e014: 53117e8b     	lsr	w11, w20, #17
   1e018: 71002c5f     	cmp	w2, #0xb
   1e01c: 390003e9     	strb	w9, [sp]
   1e020: 53197e89     	lsr	w9, w20, #25
   1e024: 390007ea     	strb	w10, [sp, #0x1]
   1e028: 53097e6a     	lsr	w10, w19, #9
   1e02c: 39000beb     	strb	w11, [sp, #0x2]
   1e030: 39000fe9     	strb	w9, [sp, #0x3]
   1e034: 390017ea     	strb	w10, [sp, #0x5]
   1e038: 54000501     	b.ne	0x1e0d8 <syna_tcm_read_flash+0x198>
   1e03c: 350000bc     	cbnz	w28, 0x1e050 <syna_tcm_read_flash+0x110>
   1e040: f94026a8     	ldr	x8, [x21, #0x48]
   1e044: 39405108     	ldrb	w8, [x8, #0x14]
   1e048: 36000568     	tbz	w8, #0x0, 0x1e0f4 <syna_tcm_read_flash+0x1b4>
   1e04c: 2a1f03fc     	mov	w28, wzr
   1e050: f941cea8     	ldr	x8, [x21, #0x398]
   1e054: 910003e2     	mov	x2, sp
   1e058: aa1503e0     	mov	x0, x21
   1e05c: 52800261     	mov	w1, #0x13               // =19
   1e060: 528000c3     	mov	w3, #0x6                // =6
   1e064: aa1f03e4     	mov	x4, xzr
   1e068: 2a1c03e5     	mov	w5, w28
   1e06c: b85fc110     	ldur	w16, [x8, #-0x4]
   1e070: 728751d1     	movk	w17, #0x3a8e
   1e074: 72a48411     	movk	w17, #0x2420, lsl #16
   1e078: 6b11021f     	cmp	w16, w17
   1e07c: 54000040     	b.eq	0x1e084 <syna_tcm_read_flash+0x144>
   1e080: d4304500     	brk	#0x8228
   1e084: d63f0100     	blr	x8
   1e088: 37f807c0     	tbnz	w0, #0x1f, 0x1e180 <syna_tcm_read_flash+0x240>
   1e08c: b94156a3     	ldr	w3, [x21, #0x154]
   1e090: 6b13007f     	cmp	w3, w19
   1e094: 54000981     	b.ne	0x1e1c4 <syna_tcm_read_flash+0x284>
   1e098: ab394300     	adds	x0, x24, w25, uxtw
   1e09c: 54000b40     	b.eq	0x1e204 <syna_tcm_read_flash+0x2c4>
   1e0a0: f940a6a1     	ldr	x1, [x21, #0x148]
   1e0a4: b4000b01     	cbz	x1, 0x1e204 <syna_tcm_read_flash+0x2c4>
   1e0a8: b94152a2     	ldr	w2, [x21, #0x150]
   1e0ac: 6b16027f     	cmp	w19, w22
   1e0b0: 540009a8     	b.hi	0x1e1e4 <syna_tcm_read_flash+0x2a4>
   1e0b4: 6b02027f     	cmp	w19, w2
   1e0b8: 54000968     	b.hi	0x1e1e4 <syna_tcm_read_flash+0x2a4>
   1e0bc: aa1303e2     	mov	x2, x19
   1e0c0: 94000000     	bl	0x1e0c0 <syna_tcm_read_flash+0x180>
		000000000001e0c0:  R_AARCH64_CALL26	memcpy
   1e0c4: b94156a8     	ldr	w8, [x21, #0x154]
   1e0c8: 7100077b     	subs	w27, w27, #0x1
   1e0cc: 0b190119     	add	w25, w8, w25
   1e0d0: 54fff841     	b.ne	0x1dfd8 <syna_tcm_read_flash+0x98>
   1e0d4: 14000010     	b	0x1e114 <syna_tcm_read_flash+0x1d4>
   1e0d8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x666c
   1e0dc: 91000000     	add	x0, x0, #0x0
		000000000001e0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x666c
   1e0e0: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1e0e4: 91000021     	add	x1, x1, #0x0
		000000000001e0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1e0e8: 94000000     	bl	0x1e0e8 <syna_tcm_read_flash+0x1a8>
		000000000001e0e8:  R_AARCH64_CALL26	_printk
   1e0ec: 35fffb3c     	cbnz	w28, 0x1e050 <syna_tcm_read_flash+0x110>
   1e0f0: 17ffffd4     	b	0x1e040 <syna_tcm_read_flash+0x100>
   1e0f4: b9420ebc     	ldr	w28, [x21, #0x20c]
   1e0f8: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53b6
   1e0fc: 91000000     	add	x0, x0, #0x0
		000000000001e0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53b6
   1e100: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1e104: 91000021     	add	x1, x1, #0x0
		000000000001e104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1e108: 2a1c03e2     	mov	w2, w28
   1e10c: 94000000     	bl	0x1e10c <syna_tcm_read_flash+0x1cc>
		000000000001e10c:  R_AARCH64_CALL26	_printk
   1e110: 17ffffd0     	b	0x1e050 <syna_tcm_read_flash+0x110>
   1e114: 2a1f03e0     	mov	w0, wzr
   1e118: d5384108     	mrs	x8, SP_EL0
   1e11c: f9438908     	ldr	x8, [x8, #0x710]
   1e120: f94007e9     	ldr	x9, [sp, #0x8]
   1e124: eb09011f     	cmp	x8, x9
   1e128: 540007e1     	b.ne	0x1e224 <syna_tcm_read_flash+0x2e4>
   1e12c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   1e130: a94557f6     	ldp	x22, x21, [sp, #0x50]
   1e134: a9445ff8     	ldp	x24, x23, [sp, #0x40]
   1e138: a94367fa     	ldp	x26, x25, [sp, #0x30]
   1e13c: a9426ffc     	ldp	x28, x27, [sp, #0x20]
   1e140: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1e144: 9101c3ff     	add	sp, sp, #0x70
   1e148: d50323bf     	autiasp
   1e14c: d65f03c0     	ret
   1e150: 2a1f03e8     	mov	w8, wzr
   1e154: 17ffff9c     	b	0x1dfc4 <syna_tcm_read_flash+0x84>
   1e158: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6646
   1e15c: 91000000     	add	x0, x0, #0x0
		000000000001e15c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6646
   1e160: 14000003     	b	0x1e16c <syna_tcm_read_flash+0x22c>
   1e164: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9351
   1e168: 91000000     	add	x0, x0, #0x0
		000000000001e168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9351
   1e16c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6e0
   1e170: 91000021     	add	x1, x1, #0x0
		000000000001e170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6e0
   1e174: 94000000     	bl	0x1e174 <syna_tcm_read_flash+0x234>
		000000000001e174:  R_AARCH64_CALL26	_printk
   1e178: 12801e00     	mov	w0, #-0xf1              // =-241
   1e17c: 17ffffe7     	b	0x1e118 <syna_tcm_read_flash+0x1d8>
   1e180: 90000008     	adrp	x8, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1e184: 91000108     	add	x8, x8, #0x0
		000000000001e184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1e188: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x783e
   1e18c: 91000021     	add	x1, x1, #0x0
		000000000001e18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x783e
   1e190: 2a0003f5     	mov	w21, w0
   1e194: aa0803e0     	mov	x0, x8
   1e198: 52800262     	mov	w2, #0x13               // =19
   1e19c: 94000000     	bl	0x1e19c <syna_tcm_read_flash+0x25c>
		000000000001e19c:  R_AARCH64_CALL26	_printk
   1e1a0: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e1a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77ff
   1e1a4: 91000000     	add	x0, x0, #0x0
		000000000001e1a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77ff
   1e1a8: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e1a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6e0
   1e1ac: 91000021     	add	x1, x1, #0x0
		000000000001e1ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6e0
   1e1b0: 2a1403e2     	mov	w2, w20
   1e1b4: 2a1303e3     	mov	w3, w19
   1e1b8: 94000000     	bl	0x1e1b8 <syna_tcm_read_flash+0x278>
		000000000001e1b8:  R_AARCH64_CALL26	_printk
   1e1bc: 2a1503e0     	mov	w0, w21
   1e1c0: 17ffffd6     	b	0x1e118 <syna_tcm_read_flash+0x1d8>
   1e1c4: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d7
   1e1c8: 91000000     	add	x0, x0, #0x0
		000000000001e1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d7
   1e1cc: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e1cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6e0
   1e1d0: 91000021     	add	x1, x1, #0x0
		000000000001e1d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6e0
   1e1d4: 2a1303e2     	mov	w2, w19
   1e1d8: 94000000     	bl	0x1e1d8 <syna_tcm_read_flash+0x298>
		000000000001e1d8:  R_AARCH64_CALL26	_printk
   1e1dc: 12801e00     	mov	w0, #-0xf1              // =-241
   1e1e0: 17ffffce     	b	0x1e118 <syna_tcm_read_flash+0x1d8>
   1e1e4: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e1e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1e1e8: 91000000     	add	x0, x0, #0x0
		000000000001e1e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1e1ec: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e1ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1e1f0: 91000021     	add	x1, x1, #0x0
		000000000001e1f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1e1f4: 2a1603e3     	mov	w3, w22
   1e1f8: 2a1303e4     	mov	w4, w19
   1e1fc: 94000000     	bl	0x1e1fc <syna_tcm_read_flash+0x2bc>
		000000000001e1fc:  R_AARCH64_CALL26	_printk
   1e200: b94156b3     	ldr	w19, [x21, #0x154]
   1e204: 90000000     	adrp	x0, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bdd
   1e208: 91000000     	add	x0, x0, #0x0
		000000000001e208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bdd
   1e20c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_read_flash+0xc0>
		000000000001e20c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6e0
   1e210: 91000021     	add	x1, x1, #0x0
		000000000001e210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6e0
   1e214: 2a1303e2     	mov	w2, w19
   1e218: 94000000     	bl	0x1e218 <syna_tcm_read_flash+0x2d8>
		000000000001e218:  R_AARCH64_CALL26	_printk
   1e21c: 128002a0     	mov	w0, #-0x16              // =-22
   1e220: 17ffffbe     	b	0x1e118 <syna_tcm_read_flash+0x1d8>
   1e224: 94000000     	bl	0x1e224 <syna_tcm_read_flash+0x2e4>
		000000000001e224:  R_AARCH64_CALL26	__stack_chk_fail
