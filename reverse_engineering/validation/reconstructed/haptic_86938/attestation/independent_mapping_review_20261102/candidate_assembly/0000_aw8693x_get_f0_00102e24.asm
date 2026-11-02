
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004fd4 <aw8693x_get_f0>:
    4fd4: d503233f     	paciasp
    4fd8: d10143ff     	sub	sp, sp, #0x50
    4fdc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    4fe0: f9001bf5     	str	x21, [sp, #0x30]
    4fe4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    4fe8: 910083fd     	add	x29, sp, #0x20
    4fec: d5384108     	mrs	x8, SP_EL0
    4ff0: aa0003f3     	mov	x19, x0
    4ff4: f9438908     	ldr	x8, [x8, #0x710]
    4ff8: f81f83a8     	stur	x8, [x29, #-0x8]
    4ffc: b9446808     	ldr	w8, [x0, #0x468]
    5000: 390033ff     	strb	wzr, [sp, #0xc]
    5004: b9006008     	str	w8, [x0, #0x60]
    5008: 94000000     	bl	0x5008 <aw8693x_get_f0+0x34>
		0000000000005008:  R_AARCH64_CALL26	aw8693x_stop
    500c: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000500c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5010: 91000294     	add	x20, x20, #0x0
		0000000000005010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5014: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    5018: 91000000     	add	x0, x0, #0x0
		0000000000005018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    501c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000501c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x899
    5020: 91000063     	add	x3, x3, #0x0
		0000000000005020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x899
    5024: aa1403e1     	mov	x1, x20
    5028: 528041a2     	mov	w2, #0x20d              // =525
    502c: 94000000     	bl	0x502c <aw8693x_get_f0+0x58>
		000000000000502c:  R_AARCH64_CALL26	_printk
    5030: aa1303e0     	mov	x0, x19
    5034: 528009a1     	mov	w1, #0x4d               // =77
    5038: 12800e02     	mov	w2, #-0x71              // =-113
    503c: 52800403     	mov	w3, #0x20               // =32
    5040: 94000000     	bl	0x5040 <aw8693x_get_f0+0x6c>
		0000000000005040:  R_AARCH64_CALL26	i2c_w_bits
    5044: 39525663     	ldrb	w3, [x19, #0x495]
    5048: aa1303e0     	mov	x0, x19
    504c: 528009c1     	mov	w1, #0x4e               // =78
    5050: 128000e2     	mov	w2, #-0x8               // =-8
    5054: 94000000     	bl	0x5054 <aw8693x_get_f0+0x80>
		0000000000005054:  R_AARCH64_CALL26	i2c_w_bits
    5058: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd5c
    505c: 91000000     	add	x0, x0, #0x0
		000000000000505c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd5c
    5060: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e4
    5064: 91000063     	add	x3, x3, #0x0
		0000000000005064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e4
    5068: aa1403e1     	mov	x1, x20
    506c: 52804ea2     	mov	w2, #0x275              // =629
    5070: 94000000     	bl	0x5070 <aw8693x_get_f0+0x9c>
		0000000000005070:  R_AARCH64_CALL26	_printk
    5074: 52800088     	mov	w8, #0x4                // =4
    5078: aa1303e0     	mov	x0, x19
    507c: 52800101     	mov	w1, #0x8                // =8
    5080: 12800062     	mov	w2, #-0x4               // =-4
    5084: 52800043     	mov	w3, #0x2                // =2
    5088: 39005e68     	strb	w8, [x19, #0x17]
    508c: 94000000     	bl	0x508c <aw8693x_get_f0+0xb8>
		000000000000508c:  R_AARCH64_CALL26	i2c_w_bits
    5090: aa1303e0     	mov	x0, x19
    5094: 52800101     	mov	w1, #0x8                // =8
    5098: 12800082     	mov	w2, #-0x5               // =-5
    509c: 52800083     	mov	w3, #0x4                // =4
    50a0: 94000000     	bl	0x50a0 <aw8693x_get_f0+0xcc>
		00000000000050a0:  R_AARCH64_CALL26	i2c_w_bits
    50a4: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000050a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x300
    50a8: 91000000     	add	x0, x0, #0x0
		00000000000050a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x300
    50ac: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000050ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8
    50b0: 91000063     	add	x3, x3, #0x0
		00000000000050b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8
    50b4: aa1403e1     	mov	x1, x20
    50b8: 52803fc2     	mov	w2, #0x1fe              // =510
    50bc: 94000000     	bl	0x50bc <aw8693x_get_f0+0xe8>
		00000000000050bc:  R_AARCH64_CALL26	_printk
    50c0: aa1303e0     	mov	x0, x19
    50c4: 528000c1     	mov	w1, #0x6                // =6
    50c8: 12800402     	mov	w2, #-0x21              // =-33
    50cc: 2a1f03e3     	mov	w3, wzr
    50d0: 94000000     	bl	0x50d0 <aw8693x_get_f0+0xfc>
		00000000000050d0:  R_AARCH64_CALL26	i2c_w_bits
    50d4: aa1303e0     	mov	x0, x19
    50d8: 52800981     	mov	w1, #0x4c               // =76
    50dc: 12800802     	mov	w2, #-0x41              // =-65
    50e0: 52800803     	mov	w3, #0x40               // =64
    50e4: 94000000     	bl	0x50e4 <aw8693x_get_f0+0x110>
		00000000000050e4:  R_AARCH64_CALL26	i2c_w_bits
    50e8: aa1303e0     	mov	x0, x19
    50ec: 52800301     	mov	w1, #0x18               // =24
    50f0: 12800402     	mov	w2, #-0x21              // =-33
    50f4: 52800403     	mov	w3, #0x20               // =32
    50f8: 94000000     	bl	0x50f8 <aw8693x_get_f0+0x124>
		00000000000050f8:  R_AARCH64_CALL26	i2c_w_bits
    50fc: 39530268     	ldrb	w8, [x19, #0x4c0]
    5100: aa1303e0     	mov	x0, x19
    5104: 528003a1     	mov	w1, #0x1d               // =29
    5108: 12801002     	mov	w2, #-0x81              // =-129
    510c: 53196103     	lsl	w3, w8, #7
    5110: 94000000     	bl	0x5110 <aw8693x_get_f0+0x13c>
		0000000000005110:  R_AARCH64_CALL26	i2c_w_bits
    5114: 910033e2     	add	x2, sp, #0xc
    5118: aa1303e0     	mov	x0, x19
    511c: 52800101     	mov	w1, #0x8                // =8
    5120: 52800023     	mov	w3, #0x1                // =1
    5124: 94000000     	bl	0x5124 <aw8693x_get_f0+0x150>
		0000000000005124:  R_AARCH64_CALL26	i2c_r_bytes
    5128: 394033f4     	ldrb	w20, [sp, #0xc]
    512c: aa1303e0     	mov	x0, x19
    5130: 52800101     	mov	w1, #0x8                // =8
    5134: 12800082     	mov	w2, #-0x5               // =-5
    5138: 52800083     	mov	w3, #0x4                // =4
    513c: 94000000     	bl	0x513c <aw8693x_get_f0+0x168>
		000000000000513c:  R_AARCH64_CALL26	i2c_w_bits
    5140: 39526a63     	ldrb	w3, [x19, #0x49a]
    5144: aa1303e0     	mov	x0, x19
    5148: 528003a1     	mov	w1, #0x1d               // =29
    514c: 12800fe2     	mov	w2, #-0x80              // =-128
    5150: 94000000     	bl	0x5150 <aw8693x_get_f0+0x17c>
		0000000000005150:  R_AARCH64_CALL26	i2c_w_bits
    5154: 39526e68     	ldrb	w8, [x19, #0x49b]
    5158: 79494269     	ldrh	w9, [x19, #0x4a0]
    515c: 910043e2     	add	x2, sp, #0x10
    5160: aa1303e0     	mov	x0, x19
    5164: 528003c1     	mov	w1, #0x1e               // =30
    5168: 52800063     	mov	w3, #0x3                // =3
    516c: 390043e8     	strb	w8, [sp, #0x10]
    5170: 780113e9     	sturh	w9, [sp, #0x11]
    5174: 94000000     	bl	0x5174 <aw8693x_get_f0+0x1a0>
		0000000000005174:  R_AARCH64_CALL26	i2c_w_bytes
    5178: 39528e68     	ldrb	w8, [x19, #0x4a3]
    517c: 34000288     	cbz	w8, 0x51cc <aw8693x_get_f0+0x1f8>
    5180: 91128e62     	add	x2, x19, #0x4a3
    5184: aa1303e0     	mov	x0, x19
    5188: 52800441     	mov	w1, #0x22               // =34
    518c: 52800023     	mov	w3, #0x1                // =1
    5190: 94000000     	bl	0x5190 <aw8693x_get_f0+0x1bc>
		0000000000005190:  R_AARCH64_CALL26	i2c_w_bytes
    5194: b9446a68     	ldr	w8, [x19, #0x468]
    5198: 350002e8     	cbnz	w8, 0x51f4 <aw8693x_get_f0+0x220>
    519c: 12800420     	mov	w0, #-0x22              // =-34
    51a0: d5384108     	mrs	x8, SP_EL0
    51a4: f9438908     	ldr	x8, [x8, #0x710]
    51a8: f85f83a9     	ldur	x9, [x29, #-0x8]
    51ac: eb09011f     	cmp	x8, x9
    51b0: 54001281     	b.ne	0x5400 <aw8693x_get_f0+0x42c>
    51b4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    51b8: f9401bf5     	ldr	x21, [sp, #0x30]
    51bc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    51c0: 910143ff     	add	sp, sp, #0x50
    51c4: d50323bf     	autiasp
    51c8: d65f03c0     	ret
    51cc: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000051cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46a
    51d0: 91000000     	add	x0, x0, #0x0
		00000000000051d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46a
    51d4: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000051d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    51d8: 91000021     	add	x1, x1, #0x0
		00000000000051d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    51dc: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000051dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xed6
    51e0: 91000063     	add	x3, x3, #0x0
		00000000000051e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xed6
    51e4: 52809ba2     	mov	w2, #0x4dd              // =1245
    51e8: 94000000     	bl	0x51e8 <aw8693x_get_f0+0x214>
		00000000000051e8:  R_AARCH64_CALL26	_printk
    51ec: b9446a68     	ldr	w8, [x19, #0x468]
    51f0: 34fffd68     	cbz	w8, 0x519c <aw8693x_get_f0+0x1c8>
    51f4: 52953009     	mov	w9, #0xa980             // =43392
    51f8: 39528e6a     	ldrb	w10, [x19, #0x4a3]
    51fc: 910043e2     	add	x2, sp, #0x10
    5200: 72a00069     	movk	w9, #0x3, lsl #16
    5204: aa1303e0     	mov	x0, x19
    5208: 52800321     	mov	w1, #0x19               // =25
    520c: 1ac80928     	udiv	w8, w9, w8
    5210: 39527e69     	ldrb	w9, [x19, #0x49f]
    5214: 52800043     	mov	w3, #0x2                // =2
    5218: 0b0a0129     	add	w9, w9, w10
    521c: 52801fea     	mov	w10, #0xff              // =255
    5220: 4b090109     	sub	w9, w8, w9
    5224: 51002129     	sub	w9, w9, #0x8
    5228: 7103fd3f     	cmp	w9, #0xff
    522c: 1a8ab129     	csel	w9, w9, w10, lt
    5230: 7103fd1f     	cmp	w8, #0xff
    5234: 0aa97d29     	bic	w9, w9, w9, asr #31
    5238: 1a8a3108     	csel	w8, w8, w10, lo
    523c: 390043e8     	strb	w8, [sp, #0x10]
    5240: 390047e9     	strb	w9, [sp, #0x11]
    5244: 94000000     	bl	0x5244 <aw8693x_get_f0+0x270>
		0000000000005244:  R_AARCH64_CALL26	i2c_w_bytes
    5248: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x591
    524c: 91000000     	add	x0, x0, #0x0
		000000000000524c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x591
    5250: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5254: 91000021     	add	x1, x1, #0x0
		0000000000005254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5258: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b3
    525c: 91000063     	add	x3, x3, #0x0
		000000000000525c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b3
    5260: 52803ae2     	mov	w2, #0x1d7              // =471
    5264: 52800024     	mov	w4, #0x1                // =1
    5268: 52800035     	mov	w21, #0x1               // =1
    526c: 94000000     	bl	0x526c <aw8693x_get_f0+0x298>
		000000000000526c:  R_AARCH64_CALL26	_printk
    5270: d10033a2     	sub	x2, x29, #0xc
    5274: aa1303e0     	mov	x0, x19
    5278: 52800121     	mov	w1, #0x9                // =9
    527c: 52800023     	mov	w3, #0x1                // =1
    5280: 381f43b5     	sturb	w21, [x29, #-0xc]
    5284: 94000000     	bl	0x5284 <aw8693x_get_f0+0x2b0>
		0000000000005284:  R_AARCH64_CALL26	i2c_w_bytes
    5288: 5289c400     	mov	w0, #0x4e20             // =20000
    528c: 528a0281     	mov	w1, #0x5014             // =20500
    5290: 52800042     	mov	w2, #0x2                // =2
    5294: 94000000     	bl	0x5294 <aw8693x_get_f0+0x2c0>
		0000000000005294:  R_AARCH64_CALL26	usleep_range_state
    5298: 12800c75     	mov	w21, #-0x64             // =-100
    529c: d10033a2     	sub	x2, x29, #0xc
    52a0: aa1303e0     	mov	x0, x19
    52a4: 528007e1     	mov	w1, #0x3f               // =63
    52a8: 52800023     	mov	w3, #0x1                // =1
    52ac: 381f43bf     	sturb	wzr, [x29, #-0xc]
    52b0: 94000000     	bl	0x52b0 <aw8693x_get_f0+0x2dc>
		00000000000052b0:  R_AARCH64_CALL26	i2c_r_bytes
    52b4: 385f43a8     	ldurb	w8, [x29, #-0xc]
    52b8: 340001e8     	cbz	w8, 0x52f4 <aw8693x_get_f0+0x320>
    52bc: 5280fa00     	mov	w0, #0x7d0              // =2000
    52c0: 52813881     	mov	w1, #0x9c4              // =2500
    52c4: 52800042     	mov	w2, #0x2                // =2
    52c8: 94000000     	bl	0x52c8 <aw8693x_get_f0+0x2f4>
		00000000000052c8:  R_AARCH64_CALL26	usleep_range_state
    52cc: 310006b5     	adds	w21, w21, #0x1
    52d0: 54fffe63     	b.lo	0x529c <aw8693x_get_f0+0x2c8>
    52d4: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000052d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    52d8: 91000000     	add	x0, x0, #0x0
		00000000000052d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    52dc: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000052dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    52e0: 91000021     	add	x1, x1, #0x0
		00000000000052e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    52e4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000052e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa42
    52e8: 91000063     	add	x3, x3, #0x0
		00000000000052e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa42
    52ec: 52803de2     	mov	w2, #0x1ef              // =495
    52f0: 14000008     	b	0x5310 <aw8693x_get_f0+0x33c>
    52f4: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000052f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1786
    52f8: 91000000     	add	x0, x0, #0x0
		00000000000052f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1786
    52fc: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000052fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5300: 91000021     	add	x1, x1, #0x0
		0000000000005300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5304: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa42
    5308: 91000063     	add	x3, x3, #0x0
		0000000000005308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa42
    530c: 52803d42     	mov	w2, #0x1ea              // =490
    5310: 94000000     	bl	0x5310 <aw8693x_get_f0+0x33c>
		0000000000005310:  R_AARCH64_CALL26	_printk
    5314: d10033a2     	sub	x2, x29, #0xc
    5318: aa1303e0     	mov	x0, x19
    531c: 528004e1     	mov	w1, #0x27               // =39
    5320: 52800043     	mov	w3, #0x2                // =2
    5324: 781f43bf     	sturh	wzr, [x29, #-0xc]
    5328: 94000000     	bl	0x5328 <aw8693x_get_f0+0x354>
		0000000000005328:  R_AARCH64_CALL26	i2c_r_bytes
    532c: 785f43a8     	ldurh	w8, [x29, #-0xc]
    5330: 5ac00508     	rev16	w8, w8
    5334: 35000188     	cbnz	w8, 0x5364 <aw8693x_get_f0+0x390>
    5338: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74f
    533c: 91000000     	add	x0, x0, #0x0
		000000000000533c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74f
    5340: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5344: 91000021     	add	x1, x1, #0x0
		0000000000005344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5348: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1840
    534c: 91000063     	add	x3, x3, #0x0
		000000000000534c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1840
    5350: 52809582     	mov	w2, #0x4ac              // =1196
    5354: b900627f     	str	wzr, [x19, #0x60]
    5358: 94000000     	bl	0x5358 <aw8693x_get_f0+0x384>
		0000000000005358:  R_AARCH64_CALL26	_printk
    535c: 12800435     	mov	w21, #-0x22             // =-34
    5360: 1400000f     	b	0x539c <aw8693x_get_f0+0x3c8>
    5364: 52930009     	mov	w9, #0x9800             // =38912
    5368: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d
    536c: 91000000     	add	x0, x0, #0x0
		000000000000536c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d
    5370: 72a00749     	movk	w9, #0x3a, lsl #16
    5374: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5378: 91000021     	add	x1, x1, #0x0
		0000000000005378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    537c: 1ac80924     	udiv	w4, w9, w8
    5380: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1840
    5384: 91000063     	add	x3, x3, #0x0
		0000000000005384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1840
    5388: 52809622     	mov	w2, #0x4b1              // =1201
    538c: b9006264     	str	w4, [x19, #0x60]
    5390: b9007264     	str	w4, [x19, #0x70]
    5394: 94000000     	bl	0x5394 <aw8693x_get_f0+0x3c0>
		0000000000005394:  R_AARCH64_CALL26	_printk
    5398: 2a1f03f5     	mov	w21, wzr
    539c: aa1303e0     	mov	x0, x19
    53a0: 52800301     	mov	w1, #0x18               // =24
    53a4: 12800402     	mov	w2, #-0x21              // =-33
    53a8: 2a1f03e3     	mov	w3, wzr
    53ac: 94000000     	bl	0x53ac <aw8693x_get_f0+0x3d8>
		00000000000053ac:  R_AARCH64_CALL26	i2c_w_bits
    53b0: 121e0283     	and	w3, w20, #0x4
    53b4: aa1303e0     	mov	x0, x19
    53b8: 52800101     	mov	w1, #0x8                // =8
    53bc: 12800082     	mov	w2, #-0x5               // =-5
    53c0: 94000000     	bl	0x53c0 <aw8693x_get_f0+0x3ec>
		00000000000053c0:  R_AARCH64_CALL26	i2c_w_bits
    53c4: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000053c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e1
    53c8: 91000000     	add	x0, x0, #0x0
		00000000000053c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e1
    53cc: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000053cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    53d0: 91000021     	add	x1, x1, #0x0
		00000000000053d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    53d4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000053d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x899
    53d8: 91000063     	add	x3, x3, #0x0
		00000000000053d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x899
    53dc: 528041a2     	mov	w2, #0x20d              // =525
    53e0: 94000000     	bl	0x53e0 <aw8693x_get_f0+0x40c>
		00000000000053e0:  R_AARCH64_CALL26	_printk
    53e4: aa1303e0     	mov	x0, x19
    53e8: 528009a1     	mov	w1, #0x4d               // =77
    53ec: 12800e02     	mov	w2, #-0x71              // =-113
    53f0: 52800803     	mov	w3, #0x40               // =64
    53f4: 94000000     	bl	0x53f4 <aw8693x_get_f0+0x420>
		00000000000053f4:  R_AARCH64_CALL26	i2c_w_bits
    53f8: 2a1503e0     	mov	w0, w21
    53fc: 17ffff69     	b	0x51a0 <aw8693x_get_f0+0x1cc>
    5400: 94000000     	bl	0x5400 <aw8693x_get_f0+0x42c>
		0000000000005400:  R_AARCH64_CALL26	__stack_chk_fail
