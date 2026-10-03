
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002e48 <syna_tcm_write_flash>:
    2e48: d503233f     	paciasp
    2e4c: d10203ff     	sub	sp, sp, #0x80
    2e50: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2e54: a9036ffc     	stp	x28, x27, [sp, #0x30]
    2e58: a90467fa     	stp	x26, x25, [sp, #0x40]
    2e5c: a9055ff8     	stp	x24, x23, [sp, #0x50]
    2e60: a90657f6     	stp	x22, x21, [sp, #0x60]
    2e64: a9074ff4     	stp	x20, x19, [sp, #0x70]
    2e68: 910083fd     	add	x29, sp, #0x20
    2e6c: 2945d434     	ldp	w20, w21, [x1, #0x2c]
    2e70: b81f43a2     	stur	w2, [x29, #-0xc]
    2e74: 39420022     	ldrb	w2, [x1, #0x80]
    2e78: 2a0503fc     	mov	w28, w5
    2e7c: 2a0403f6     	mov	w22, w4
    2e80: aa0103f3     	mov	x19, x1
    2e84: aa0003f8     	mov	x24, x0
    2e88: f81f83a3     	stur	x3, [x29, #-0x8]
    2e8c: 350012e2     	cbnz	w2, 0x30e8 <syna_tcm_write_flash+0x2a0>
    2e90: 91014260     	add	x0, x19, #0x50
    2e94: 94000000     	bl	0x2e94 <syna_tcm_write_flash+0x4c>
		0000000000002e94:  R_AARCH64_CALL26	mutex_lock
    2e98: 39420268     	ldrb	w8, [x19, #0x80]
    2e9c: 11000508     	add	w8, w8, #0x1
    2ea0: 39020268     	strb	w8, [x19, #0x80]
    2ea4: 34000ff6     	cbz	w22, 0x30a0 <syna_tcm_write_flash+0x258>
    2ea8: 1ad40aa8     	udiv	w8, w21, w20
    2eac: 2a1f03f7     	mov	w23, wzr
    2eb0: 2901dbfc     	stp	w28, w22, [sp, #0xc]
    2eb4: 1b147d15     	mul	w21, w8, w20
    2eb8: 2a1603f4     	mov	w20, w22
    2ebc: 6b15029f     	cmp	w20, w21
    2ec0: b9404a62     	ldr	w2, [x19, #0x48]
    2ec4: f9402260     	ldr	x0, [x19, #0x40]
    2ec8: 1a95329b     	csel	w27, w20, w21, lo
    2ecc: 11000b79     	add	w25, w27, #0x2
    2ed0: 6b19005f     	cmp	w2, w25
    2ed4: 54000242     	b.hs	0x2f1c <syna_tcm_write_flash+0xd4>
    2ed8: b40000c0     	cbz	x0, 0x2ef0 <syna_tcm_write_flash+0xa8>
    2edc: aa0003f6     	mov	x22, x0
    2ee0: 94000000     	bl	0x2ee0 <syna_tcm_write_flash+0x98>
		0000000000002ee0:  R_AARCH64_CALL26	syna_request_managed_device
    2ee4: b4000c80     	cbz	x0, 0x3074 <syna_tcm_write_flash+0x22c>
    2ee8: aa1603e1     	mov	x1, x22
    2eec: 94000000     	bl	0x2eec <syna_tcm_write_flash+0xa4>
		0000000000002eec:  R_AARCH64_CALL26	devm_kfree
    2ef0: 94000000     	bl	0x2ef0 <syna_tcm_write_flash+0xa8>
		0000000000002ef0:  R_AARCH64_CALL26	syna_request_managed_device
    2ef4: b4000ce0     	cbz	x0, 0x3090 <syna_tcm_write_flash+0x248>
    2ef8: 7100033f     	cmp	w25, #0x0
    2efc: 540014ad     	b.le	0x3190 <syna_tcm_write_flash+0x348>
    2f00: aa1903e1     	mov	x1, x25
    2f04: 5281b802     	mov	w2, #0xdc0              // =3520
    2f08: 94000000     	bl	0x2f08 <syna_tcm_write_flash+0xc0>
		0000000000002f08:  R_AARCH64_CALL26	devm_kmalloc
    2f0c: f9002260     	str	x0, [x19, #0x40]
    2f10: b40014c0     	cbz	x0, 0x31a8 <syna_tcm_write_flash+0x360>
    2f14: aa1903e2     	mov	x2, x25
    2f18: b9004a79     	str	w25, [x19, #0x48]
    2f1c: 2a1f03e1     	mov	w1, wzr
    2f20: 94000000     	bl	0x2f20 <syna_tcm_write_flash+0xd8>
		0000000000002f20:  R_AARCH64_CALL26	memset
    2f24: b85f43a9     	ldur	w9, [x29, #-0xc]
    2f28: b9402e68     	ldr	w8, [x19, #0x2c]
    2f2c: b9004e7f     	str	wzr, [x19, #0x4c]
    2f30: 0b0902fa     	add	w26, w23, w9
    2f34: f9402269     	ldr	x9, [x19, #0x40]
    2f38: 1ac80b48     	udiv	w8, w26, w8
    2f3c: 39000128     	strb	w8, [x9]
    2f40: 53087d08     	lsr	w8, w8, #8
    2f44: f9402269     	ldr	x9, [x19, #0x40]
    2f48: 39000528     	strb	w8, [x9, #0x1]
    2f4c: b9402e68     	ldr	w8, [x19, #0x2c]
    2f50: 34000088     	cbz	w8, 0x2f60 <syna_tcm_write_flash+0x118>
    2f54: 0b080369     	add	w9, w27, w8
    2f58: 51000529     	sub	w9, w9, #0x1
    2f5c: 1ac80928     	udiv	w8, w9, w8
    2f60: 340000dc     	cbz	w28, 0x2f78 <syna_tcm_write_flash+0x130>
    2f64: 1b1c7d08     	mul	w8, w8, w28
    2f68: 5289ba69     	mov	w9, #0x4dd3             // =19923
    2f6c: 72a20c49     	movk	w9, #0x1062, lsl #16
    2f70: 9ba97d08     	umull	x8, w8, w9
    2f74: d366fd1c     	lsr	x28, x8, #38
    2f78: f85f83a8     	ldur	x8, [x29, #-0x8]
    2f7c: ab374101     	adds	x1, x8, w23, uxtw
    2f80: 54000cc0     	b.eq	0x3118 <syna_tcm_write_flash+0x2d0>
    2f84: f9402268     	ldr	x8, [x19, #0x40]
    2f88: 91000900     	add	x0, x8, #0x2
    2f8c: b4000c60     	cbz	x0, 0x3118 <syna_tcm_write_flash+0x2d0>
    2f90: b94013e8     	ldr	w8, [sp, #0x10]
    2f94: 4b170102     	sub	w2, w8, w23
    2f98: b9404a68     	ldr	w8, [x19, #0x48]
    2f9c: 6b02037f     	cmp	w27, w2
    2fa0: 51000903     	sub	w3, w8, #0x2
    2fa4: 54000ae8     	b.hi	0x3100 <syna_tcm_write_flash+0x2b8>
    2fa8: 6b03037f     	cmp	w27, w3
    2fac: 54000aa8     	b.hi	0x3100 <syna_tcm_write_flash+0x2b8>
    2fb0: aa1b03e2     	mov	x2, x27
    2fb4: 94000000     	bl	0x2fb4 <syna_tcm_write_flash+0x16c>
		0000000000002fb4:  R_AARCH64_CALL26	memcpy
    2fb8: 39402702     	ldrb	w2, [x24, #0x9]
    2fbc: f9402276     	ldr	x22, [x19, #0x40]
    2fc0: 71002c5f     	cmp	w2, #0xb
    2fc4: 540003a1     	b.ne	0x3038 <syna_tcm_write_flash+0x1f0>
    2fc8: 350000bc     	cbnz	w28, 0x2fdc <syna_tcm_write_flash+0x194>
    2fcc: f9402708     	ldr	x8, [x24, #0x48]
    2fd0: 39405108     	ldrb	w8, [x8, #0x14]
    2fd4: 36000408     	tbz	w8, #0x0, 0x3054 <syna_tcm_write_flash+0x20c>
    2fd8: 2a1f03fc     	mov	w28, wzr
    2fdc: f941cf08     	ldr	x8, [x24, #0x398]
    2fe0: aa1803e0     	mov	x0, x24
    2fe4: 52800241     	mov	w1, #0x12               // =18
    2fe8: aa1603e2     	mov	x2, x22
    2fec: 2a1903e3     	mov	w3, w25
    2ff0: aa1f03e4     	mov	x4, xzr
    2ff4: 2a1c03e5     	mov	w5, w28
    2ff8: b85fc110     	ldur	w16, [x8, #-0x4]
    2ffc: 728751d1     	movk	w17, #0x3a8e
    3000: 72a48411     	movk	w17, #0x2420, lsl #16
    3004: 6b11021f     	cmp	w16, w17
    3008: 54000040     	b.eq	0x3010 <syna_tcm_write_flash+0x1c8>
    300c: d4304500     	brk	#0x8228
    3010: d63f0100     	blr	x8
    3014: 37f809a0     	tbnz	w0, #0x1f, 0x3148 <syna_tcm_write_flash+0x300>
    3018: b9409268     	ldr	w8, [x19, #0x90]
    301c: b9400ffc     	ldr	w28, [sp, #0xc]
    3020: 6b1b0294     	subs	w20, w20, w27
    3024: 0b1b02f7     	add	w23, w23, w27
    3028: 0b1b0108     	add	w8, w8, w27
    302c: b9009268     	str	w8, [x19, #0x90]
    3030: 54fff461     	b.ne	0x2ebc <syna_tcm_write_flash+0x74>
    3034: 1400001a     	b	0x309c <syna_tcm_write_flash+0x254>
    3038: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e0
    303c: 91000000     	add	x0, x0, #0x0
		000000000000303c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e0
    3040: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    3044: 91000021     	add	x1, x1, #0x0
		0000000000003044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    3048: 94000000     	bl	0x3048 <syna_tcm_write_flash+0x200>
		0000000000003048:  R_AARCH64_CALL26	_printk
    304c: 35fffc9c     	cbnz	w28, 0x2fdc <syna_tcm_write_flash+0x194>
    3050: 17ffffdf     	b	0x2fcc <syna_tcm_write_flash+0x184>
    3054: b9420f1c     	ldr	w28, [x24, #0x20c]
    3058: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54e4
    305c: 91000000     	add	x0, x0, #0x0
		000000000000305c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54e4
    3060: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    3064: 91000021     	add	x1, x1, #0x0
		0000000000003064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    3068: 2a1c03e2     	mov	w2, w28
    306c: 94000000     	bl	0x306c <syna_tcm_write_flash+0x224>
		000000000000306c:  R_AARCH64_CALL26	_printk
    3070: 17ffffdb     	b	0x2fdc <syna_tcm_write_flash+0x194>
    3074: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    3078: 91000000     	add	x0, x0, #0x0
		0000000000003078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    307c: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000307c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    3080: 91000021     	add	x1, x1, #0x0
		0000000000003080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    3084: 94000000     	bl	0x3084 <syna_tcm_write_flash+0x23c>
		0000000000003084:  R_AARCH64_CALL26	_printk
    3088: 94000000     	bl	0x3088 <syna_tcm_write_flash+0x240>
		0000000000003088:  R_AARCH64_CALL26	syna_request_managed_device
    308c: b5fff360     	cbnz	x0, 0x2ef8 <syna_tcm_write_flash+0xb0>
    3090: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    3094: 91000000     	add	x0, x0, #0x0
		0000000000003094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    3098: 14000040     	b	0x3198 <syna_tcm_write_flash+0x350>
    309c: 39420268     	ldrb	w8, [x19, #0x80]
    30a0: 12001d09     	and	w9, w8, #0xff
    30a4: 2a1f03fc     	mov	w28, wzr
    30a8: 7100053f     	cmp	w9, #0x1
    30ac: 2a1f03e9     	mov	w9, wzr
    30b0: 540009c1     	b.ne	0x31e8 <syna_tcm_write_flash+0x3a0>
    30b4: 91014260     	add	x0, x19, #0x50
    30b8: 39020269     	strb	w9, [x19, #0x80]
    30bc: 94000000     	bl	0x30bc <syna_tcm_write_flash+0x274>
		00000000000030bc:  R_AARCH64_CALL26	mutex_unlock
    30c0: 2a1c03e0     	mov	w0, w28
    30c4: a9474ff4     	ldp	x20, x19, [sp, #0x70]
    30c8: a94657f6     	ldp	x22, x21, [sp, #0x60]
    30cc: a9455ff8     	ldp	x24, x23, [sp, #0x50]
    30d0: a94467fa     	ldp	x26, x25, [sp, #0x40]
    30d4: a9436ffc     	ldp	x28, x27, [sp, #0x30]
    30d8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    30dc: 910203ff     	add	sp, sp, #0x80
    30e0: d50323bf     	autiasp
    30e4: d65f03c0     	ret
    30e8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000030e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    30ec: 91000000     	add	x0, x0, #0x0
		00000000000030ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    30f0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000030f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x709c
    30f4: 91000021     	add	x1, x1, #0x0
		00000000000030f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x709c
    30f8: 94000000     	bl	0x30f8 <syna_tcm_write_flash+0x2b0>
		00000000000030f8:  R_AARCH64_CALL26	_printk
    30fc: 17ffff65     	b	0x2e90 <syna_tcm_write_flash+0x48>
    3100: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83de
    3104: 91000000     	add	x0, x0, #0x0
		0000000000003104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83de
    3108: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    310c: 91000021     	add	x1, x1, #0x0
		000000000000310c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    3110: 2a1b03e4     	mov	w4, w27
    3114: 94000000     	bl	0x3114 <syna_tcm_write_flash+0x2cc>
		0000000000003114:  R_AARCH64_CALL26	_printk
    3118: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d98
    311c: 91000000     	add	x0, x0, #0x0
		000000000000311c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d98
    3120: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50ac
    3124: 91000021     	add	x1, x1, #0x0
		0000000000003124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50ac
    3128: 2a1b03e2     	mov	w2, w27
    312c: 94000000     	bl	0x312c <syna_tcm_write_flash+0x2e4>
		000000000000312c:  R_AARCH64_CALL26	_printk
    3130: 39420268     	ldrb	w8, [x19, #0x80]
    3134: 128002bc     	mov	w28, #-0x16             // =-22
    3138: 7100051f     	cmp	w8, #0x1
    313c: 54000561     	b.ne	0x31e8 <syna_tcm_write_flash+0x3a0>
    3140: 2a1f03e9     	mov	w9, wzr
    3144: 17ffffdc     	b	0x30b4 <syna_tcm_write_flash+0x26c>
    3148: 2a0003fc     	mov	w28, w0
    314c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000314c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5e
    3150: 91000000     	add	x0, x0, #0x0
		0000000000003150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5e
    3154: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79fc
    3158: 91000021     	add	x1, x1, #0x0
		0000000000003158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79fc
    315c: 52800242     	mov	w2, #0x12               // =18
    3160: 94000000     	bl	0x3160 <syna_tcm_write_flash+0x318>
		0000000000003160:  R_AARCH64_CALL26	_printk
    3164: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fb8
    3168: 91000000     	add	x0, x0, #0x0
		0000000000003168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fb8
    316c: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000316c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50ac
    3170: 91000021     	add	x1, x1, #0x0
		0000000000003170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50ac
    3174: 2a1a03e2     	mov	w2, w26
    3178: 2a1903e3     	mov	w3, w25
    317c: 94000000     	bl	0x317c <syna_tcm_write_flash+0x334>
		000000000000317c:  R_AARCH64_CALL26	_printk
    3180: 39420268     	ldrb	w8, [x19, #0x80]
    3184: 7100051f     	cmp	w8, #0x1
    3188: 54fffdc0     	b.eq	0x3140 <syna_tcm_write_flash+0x2f8>
    318c: 14000017     	b	0x31e8 <syna_tcm_write_flash+0x3a0>
    3190: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
    3194: 91000000     	add	x0, x0, #0x0
		0000000000003194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
    3198: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
    319c: 91000021     	add	x1, x1, #0x0
		000000000000319c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
    31a0: 94000000     	bl	0x31a0 <syna_tcm_write_flash+0x358>
		00000000000031a0:  R_AARCH64_CALL26	_printk
    31a4: f900227f     	str	xzr, [x19, #0x40]
    31a8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000031a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d72
    31ac: 91000000     	add	x0, x0, #0x0
		00000000000031ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d72
    31b0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000031b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d4
    31b4: 91000021     	add	x1, x1, #0x0
		00000000000031b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d4
    31b8: 2a1903e2     	mov	w2, w25
    31bc: 94000000     	bl	0x31bc <syna_tcm_write_flash+0x374>
		00000000000031bc:  R_AARCH64_CALL26	_printk
    31c0: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000031c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5078
    31c4: 91000000     	add	x0, x0, #0x0
		00000000000031c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5078
    31c8: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000031c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50ac
    31cc: 91000021     	add	x1, x1, #0x0
		00000000000031cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50ac
    31d0: f900267f     	str	xzr, [x19, #0x48]
    31d4: 94000000     	bl	0x31d4 <syna_tcm_write_flash+0x38c>
		00000000000031d4:  R_AARCH64_CALL26	_printk
    31d8: 39420268     	ldrb	w8, [x19, #0x80]
    31dc: 12801e5c     	mov	w28, #-0xf3             // =-243
    31e0: 7100051f     	cmp	w8, #0x1
    31e4: 54fffae0     	b.eq	0x3140 <syna_tcm_write_flash+0x2f8>
    31e8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000031e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x706c
    31ec: 91000000     	add	x0, x0, #0x0
		00000000000031ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x706c
    31f0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000031f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd9c
    31f4: 91000021     	add	x1, x1, #0x0
		00000000000031f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd9c
    31f8: 12001d02     	and	w2, w8, #0xff
    31fc: 94000000     	bl	0x31fc <syna_tcm_write_flash+0x3b4>
		00000000000031fc:  R_AARCH64_CALL26	_printk
    3200: 39420268     	ldrb	w8, [x19, #0x80]
    3204: 51000509     	sub	w9, w8, #0x1
    3208: 17ffffab     	b	0x30b4 <syna_tcm_write_flash+0x26c>
