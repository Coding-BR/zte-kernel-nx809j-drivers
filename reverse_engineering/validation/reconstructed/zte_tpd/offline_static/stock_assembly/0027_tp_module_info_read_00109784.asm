
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002efc <tp_module_info_read>:
    2efc: d503233f     	paciasp
    2f00: d10483ff     	sub	sp, sp, #0x120
    2f04: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
    2f08: f90073fc     	str	x28, [sp, #0xe0]
    2f0c: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
    2f10: a91057f6     	stp	x22, x21, [sp, #0x100]
    2f14: a9114ff4     	stp	x20, x19, [sp, #0x110]
    2f18: 910343fd     	add	x29, sp, #0xd0
    2f1c: d5384108     	mrs	x8, SP_EL0
    2f20: f9438908     	ldr	x8, [x8, #0x710]
    2f24: f81f83a8     	stur	x8, [x29, #-0x8]
    2f28: f9400068     	ldr	x8, [x3]
    2f2c: b4000068     	cbz	x8, 0x2f38 <tp_module_info_read+0x3c>
    2f30: aa1f03e0     	mov	x0, xzr
    2f34: 1400008b     	b	0x3160 <tp_module_info_read+0x264>
    2f38: 90000008     	adrp	x8, 0x2000 <zte_touch_probe+0xa4>
		0000000000002f38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    2f3c: aa0103f5     	mov	x21, x1
    2f40: aa0203f4     	mov	x20, x2
    2f44: f9400116     	ldr	x22, [x8]
		0000000000002f44:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2f48: aa0303f3     	mov	x19, x3
    2f4c: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    2f50: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    2f54: f94712c8     	ldr	x8, [x22, #0xe20]
    2f58: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    2f5c: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    2f60: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    2f64: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    2f68: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    2f6c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    2f70: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    2f74: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    2f78: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    2f7c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    2f80: f90003ff     	str	xzr, [sp]
    2f84: b4000128     	cbz	x8, 0x2fa8 <tp_module_info_read+0xac>
    2f88: aa1603e0     	mov	x0, x22
    2f8c: b85fc110     	ldur	w16, [x8, #-0x4]
    2f90: 7281af31     	movk	w17, #0xd79
    2f94: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    2f98: 6b11021f     	cmp	w16, w17
    2f9c: 54000040     	b.eq	0x2fa4 <tp_module_info_read+0xa8>
    2fa0: d4304500     	brk	#0x8228
    2fa4: d63f0100     	blr	x8
    2fa8: b94cfec4     	ldr	w4, [x22, #0xcfc]
    2fac: 90000002     	adrp	x2, 0x2000 <zte_touch_probe+0xa4>
		0000000000002fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f9f
    2fb0: 91000042     	add	x2, x2, #0x0
		0000000000002fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f9f
    2fb4: 910003e0     	mov	x0, sp
    2fb8: 913502c3     	add	x3, x22, #0xd40
    2fbc: 52801901     	mov	w1, #0xc8               // =200
    2fc0: 910003f7     	mov	x23, sp
    2fc4: 94000000     	bl	0x2fc4 <tp_module_info_read+0xc8>
		0000000000002fc4:  R_AARCH64_CALL26	snprintf
    2fc8: 7103201f     	cmp	w0, #0xc8
    2fcc: 54000e48     	b.hi	0x3194 <tp_module_info_read+0x298>
    2fd0: 2a0003f8     	mov	w24, w0
    2fd4: 52801908     	mov	w8, #0xc8               // =200
    2fd8: 90000002     	adrp	x2, 0x2000 <zte_touch_probe+0xa4>
		0000000000002fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x637
    2fdc: 91000042     	add	x2, x2, #0x0
		0000000000002fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x637
    2fe0: cb180101     	sub	x1, x8, x24
    2fe4: 8b1802e0     	add	x0, x23, x24
    2fe8: 913462c3     	add	x3, x22, #0xd18
    2fec: 94000000     	bl	0x2fec <tp_module_info_read+0xf0>
		0000000000002fec:  R_AARCH64_CALL26	snprintf
    2ff0: b94d0ec3     	ldr	w3, [x22, #0xd0c]
    2ff4: 8b20c317     	add	x23, x24, w0, sxtw
    2ff8: 34000163     	cbz	w3, 0x3024 <tp_module_info_read+0x128>
    2ffc: f10322ff     	cmp	x23, #0xc8
    3000: 54000ca8     	b.hi	0x3194 <tp_module_info_read+0x298>
    3004: 52801908     	mov	w8, #0xc8               // =200
    3008: 910003e9     	mov	x9, sp
    300c: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		000000000000300c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4439
    3010: 91000042     	add	x2, x2, #0x0
		0000000000003010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4439
    3014: cb170101     	sub	x1, x8, x23
    3018: 8b170120     	add	x0, x9, x23
    301c: 94000000     	bl	0x301c <tp_module_info_read+0x120>
		000000000000301c:  R_AARCH64_CALL26	snprintf
    3020: 8b20c2f7     	add	x23, x23, w0, sxtw
    3024: b94d16c3     	ldr	w3, [x22, #0xd14]
    3028: 34000163     	cbz	w3, 0x3054 <tp_module_info_read+0x158>
    302c: f10322ff     	cmp	x23, #0xc8
    3030: 54000b28     	b.hi	0x3194 <tp_module_info_read+0x298>
    3034: 52801908     	mov	w8, #0xc8               // =200
    3038: 910003e9     	mov	x9, sp
    303c: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		000000000000303c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x688e
    3040: 91000042     	add	x2, x2, #0x0
		0000000000003040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x688e
    3044: cb170101     	sub	x1, x8, x23
    3048: 8b170120     	add	x0, x9, x23
    304c: 94000000     	bl	0x304c <tp_module_info_read+0x150>
		000000000000304c:  R_AARCH64_CALL26	snprintf
    3050: 8b20c2f7     	add	x23, x23, w0, sxtw
    3054: f10322ff     	cmp	x23, #0xc8
    3058: 540009e8     	b.hi	0x3194 <tp_module_info_read+0x298>
    305c: 52801908     	mov	w8, #0xc8               // =200
    3060: b94d02c3     	ldr	w3, [x22, #0xd00]
    3064: 910003e9     	mov	x9, sp
    3068: cb170101     	sub	x1, x8, x23
    306c: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		000000000000306c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3070: 91000042     	add	x2, x2, #0x0
		0000000000003070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3074: 8b170120     	add	x0, x9, x23
    3078: 94000000     	bl	0x3078 <tp_module_info_read+0x17c>
		0000000000003078:  R_AARCH64_CALL26	snprintf
    307c: b94d06c3     	ldr	w3, [x22, #0xd04]
    3080: 8b20c2f7     	add	x23, x23, w0, sxtw
    3084: 34000163     	cbz	w3, 0x30b0 <tp_module_info_read+0x1b4>
    3088: f10322ff     	cmp	x23, #0xc8
    308c: 54000848     	b.hi	0x3194 <tp_module_info_read+0x298>
    3090: 52801908     	mov	w8, #0xc8               // =200
    3094: 910003e9     	mov	x9, sp
    3098: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		0000000000003098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb923
    309c: 91000042     	add	x2, x2, #0x0
		000000000000309c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb923
    30a0: cb170101     	sub	x1, x8, x23
    30a4: 8b170120     	add	x0, x9, x23
    30a8: 94000000     	bl	0x30a8 <tp_module_info_read+0x1ac>
		00000000000030a8:  R_AARCH64_CALL26	snprintf
    30ac: 8b20c2f7     	add	x23, x23, w0, sxtw
    30b0: b94d0ac3     	ldr	w3, [x22, #0xd08]
    30b4: 34000163     	cbz	w3, 0x30e0 <tp_module_info_read+0x1e4>
    30b8: f10322ff     	cmp	x23, #0xc8
    30bc: 540006c8     	b.hi	0x3194 <tp_module_info_read+0x298>
    30c0: 52801908     	mov	w8, #0xc8               // =200
    30c4: 910003e9     	mov	x9, sp
    30c8: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		00000000000030c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90
    30cc: 91000042     	add	x2, x2, #0x0
		00000000000030cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90
    30d0: cb170101     	sub	x1, x8, x23
    30d4: 8b170120     	add	x0, x9, x23
    30d8: 94000000     	bl	0x30d8 <tp_module_info_read+0x1dc>
		00000000000030d8:  R_AARCH64_CALL26	snprintf
    30dc: 8b20c2f7     	add	x23, x23, w0, sxtw
    30e0: 3975a2c8     	ldrb	w8, [x22, #0xd68]
    30e4: 34000188     	cbz	w8, 0x3114 <tp_module_info_read+0x218>
    30e8: f10322ff     	cmp	x23, #0xc8
    30ec: 54000548     	b.hi	0x3194 <tp_module_info_read+0x298>
    30f0: 52801908     	mov	w8, #0xc8               // =200
    30f4: 910003e9     	mov	x9, sp
    30f8: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		00000000000030f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fb4
    30fc: 91000042     	add	x2, x2, #0x0
		00000000000030fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fb4
    3100: cb170101     	sub	x1, x8, x23
    3104: 8b170120     	add	x0, x9, x23
    3108: 9135a2c3     	add	x3, x22, #0xd68
    310c: 94000000     	bl	0x310c <tp_module_info_read+0x210>
		000000000000310c:  R_AARCH64_CALL26	snprintf
    3110: 8b20c2f7     	add	x23, x23, w0, sxtw
    3114: 397642c8     	ldrb	w8, [x22, #0xd90]
    3118: 34000188     	cbz	w8, 0x3148 <tp_module_info_read+0x24c>
    311c: f10322ff     	cmp	x23, #0xc8
    3120: 540003a8     	b.hi	0x3194 <tp_module_info_read+0x298>
    3124: 52801908     	mov	w8, #0xc8               // =200
    3128: 910003e9     	mov	x9, sp
    312c: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		000000000000312c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe94
    3130: 91000042     	add	x2, x2, #0x0
		0000000000003130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe94
    3134: cb170101     	sub	x1, x8, x23
    3138: 8b170120     	add	x0, x9, x23
    313c: 913642c3     	add	x3, x22, #0xd90
    3140: 94000000     	bl	0x3140 <tp_module_info_read+0x244>
		0000000000003140:  R_AARCH64_CALL26	snprintf
    3144: 8b20c2f7     	add	x23, x23, w0, sxtw
    3148: 910003e3     	mov	x3, sp
    314c: aa1503e0     	mov	x0, x21
    3150: aa1403e1     	mov	x1, x20
    3154: aa1303e2     	mov	x2, x19
    3158: aa1703e4     	mov	x4, x23
    315c: 94000000     	bl	0x315c <tp_module_info_read+0x260>
		000000000000315c:  R_AARCH64_CALL26	simple_read_from_buffer
    3160: d5384108     	mrs	x8, SP_EL0
    3164: f9438908     	ldr	x8, [x8, #0x710]
    3168: f85f83a9     	ldur	x9, [x29, #-0x8]
    316c: eb09011f     	cmp	x8, x9
    3170: 54000141     	b.ne	0x3198 <tp_module_info_read+0x29c>
    3174: a9514ff4     	ldp	x20, x19, [sp, #0x110]
    3178: f94073fc     	ldr	x28, [sp, #0xe0]
    317c: a95057f6     	ldp	x22, x21, [sp, #0x100]
    3180: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
    3184: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
    3188: 910483ff     	add	sp, sp, #0x120
    318c: d50323bf     	autiasp
    3190: d65f03c0     	ret
    3194: d42aa240     	brk	#0x5512
    3198: 94000000     	bl	0x3198 <tp_module_info_read+0x29c>
		0000000000003198:  R_AARCH64_CALL26	__stack_chk_fail
