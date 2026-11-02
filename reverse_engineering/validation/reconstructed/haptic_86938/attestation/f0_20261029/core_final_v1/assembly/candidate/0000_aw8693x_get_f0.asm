
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004fa4 <aw8693x_get_f0>:
    4fa4: d503233f     	paciasp
    4fa8: d10143ff     	sub	sp, sp, #0x50
    4fac: a9027bfd     	stp	x29, x30, [sp, #0x20]
    4fb0: f9001bf5     	str	x21, [sp, #0x30]
    4fb4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    4fb8: 910083fd     	add	x29, sp, #0x20
    4fbc: d5384108     	mrs	x8, SP_EL0
    4fc0: aa0003f3     	mov	x19, x0
    4fc4: f9438908     	ldr	x8, [x8, #0x710]
    4fc8: f81f83a8     	stur	x8, [x29, #-0x8]
    4fcc: b9446808     	ldr	w8, [x0, #0x468]
    4fd0: 390033ff     	strb	wzr, [sp, #0xc]
    4fd4: b9006008     	str	w8, [x0, #0x60]
    4fd8: 94000000     	bl	0x4fd8 <aw8693x_get_f0+0x34>
		0000000000004fd8:  R_AARCH64_CALL26	aw8693x_stop
    4fdc: 90000014     	adrp	x20, 0x4000 <awrw_store+0x210>
		0000000000004fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4fe0: 91000294     	add	x20, x20, #0x0
		0000000000004fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4fe4: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b
    4fe8: 91000000     	add	x0, x0, #0x0
		0000000000004fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b
    4fec: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x597
    4ff0: 91000063     	add	x3, x3, #0x0
		0000000000004ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x597
    4ff4: aa1403e1     	mov	x1, x20
    4ff8: 528041a2     	mov	w2, #0x20d              // =525
    4ffc: 94000000     	bl	0x4ffc <aw8693x_get_f0+0x58>
		0000000000004ffc:  R_AARCH64_CALL26	_printk
    5000: aa1303e0     	mov	x0, x19
    5004: 528009a1     	mov	w1, #0x4d               // =77
    5008: 12800e02     	mov	w2, #-0x71              // =-113
    500c: 52800403     	mov	w3, #0x20               // =32
    5010: 94000000     	bl	0x5010 <aw8693x_get_f0+0x6c>
		0000000000005010:  R_AARCH64_CALL26	i2c_w_bits
    5014: 39525663     	ldrb	w3, [x19, #0x495]
    5018: aa1303e0     	mov	x0, x19
    501c: 528009c1     	mov	w1, #0x4e               // =78
    5020: 128000e2     	mov	w2, #-0x8               // =-8
    5024: 94000000     	bl	0x5024 <aw8693x_get_f0+0x80>
		0000000000005024:  R_AARCH64_CALL26	i2c_w_bits
    5028: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x850
    502c: 91000000     	add	x0, x0, #0x0
		000000000000502c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x850
    5030: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404
    5034: 91000063     	add	x3, x3, #0x0
		0000000000005034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404
    5038: aa1403e1     	mov	x1, x20
    503c: 52804ea2     	mov	w2, #0x275              // =629
    5040: 94000000     	bl	0x5040 <aw8693x_get_f0+0x9c>
		0000000000005040:  R_AARCH64_CALL26	_printk
    5044: 52800088     	mov	w8, #0x4                // =4
    5048: aa1303e0     	mov	x0, x19
    504c: 52800101     	mov	w1, #0x8                // =8
    5050: 12800062     	mov	w2, #-0x4               // =-4
    5054: 52800043     	mov	w3, #0x2                // =2
    5058: 39005e68     	strb	w8, [x19, #0x17]
    505c: 94000000     	bl	0x505c <aw8693x_get_f0+0xb8>
		000000000000505c:  R_AARCH64_CALL26	i2c_w_bits
    5060: aa1303e0     	mov	x0, x19
    5064: 52800101     	mov	w1, #0x8                // =8
    5068: 12800082     	mov	w2, #-0x5               // =-5
    506c: 52800083     	mov	w3, #0x4                // =4
    5070: 94000000     	bl	0x5070 <aw8693x_get_f0+0xcc>
		0000000000005070:  R_AARCH64_CALL26	i2c_w_bits
    5074: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca
    5078: 91000000     	add	x0, x0, #0x0
		0000000000005078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca
    507c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000507c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11b
    5080: 91000063     	add	x3, x3, #0x0
		0000000000005080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11b
    5084: aa1403e1     	mov	x1, x20
    5088: 52803fc2     	mov	w2, #0x1fe              // =510
    508c: 94000000     	bl	0x508c <aw8693x_get_f0+0xe8>
		000000000000508c:  R_AARCH64_CALL26	_printk
    5090: aa1303e0     	mov	x0, x19
    5094: 528000c1     	mov	w1, #0x6                // =6
    5098: 12800402     	mov	w2, #-0x21              // =-33
    509c: 2a1f03e3     	mov	w3, wzr
    50a0: 94000000     	bl	0x50a0 <aw8693x_get_f0+0xfc>
		00000000000050a0:  R_AARCH64_CALL26	i2c_w_bits
    50a4: aa1303e0     	mov	x0, x19
    50a8: 52800981     	mov	w1, #0x4c               // =76
    50ac: 12800802     	mov	w2, #-0x41              // =-65
    50b0: 52800803     	mov	w3, #0x40               // =64
    50b4: 94000000     	bl	0x50b4 <aw8693x_get_f0+0x110>
		00000000000050b4:  R_AARCH64_CALL26	i2c_w_bits
    50b8: aa1303e0     	mov	x0, x19
    50bc: 52800301     	mov	w1, #0x18               // =24
    50c0: 12800402     	mov	w2, #-0x21              // =-33
    50c4: 52800403     	mov	w3, #0x20               // =32
    50c8: 94000000     	bl	0x50c8 <aw8693x_get_f0+0x124>
		00000000000050c8:  R_AARCH64_CALL26	i2c_w_bits
    50cc: 39530268     	ldrb	w8, [x19, #0x4c0]
    50d0: aa1303e0     	mov	x0, x19
    50d4: 528003a1     	mov	w1, #0x1d               // =29
    50d8: 12801002     	mov	w2, #-0x81              // =-129
    50dc: 53196103     	lsl	w3, w8, #7
    50e0: 94000000     	bl	0x50e0 <aw8693x_get_f0+0x13c>
		00000000000050e0:  R_AARCH64_CALL26	i2c_w_bits
    50e4: 910033e2     	add	x2, sp, #0xc
    50e8: aa1303e0     	mov	x0, x19
    50ec: 52800101     	mov	w1, #0x8                // =8
    50f0: 52800023     	mov	w3, #0x1                // =1
    50f4: 94000000     	bl	0x50f4 <aw8693x_get_f0+0x150>
		00000000000050f4:  R_AARCH64_CALL26	i2c_r_bytes
    50f8: 394033f4     	ldrb	w20, [sp, #0xc]
    50fc: aa1303e0     	mov	x0, x19
    5100: 52800101     	mov	w1, #0x8                // =8
    5104: 12800082     	mov	w2, #-0x5               // =-5
    5108: 52800083     	mov	w3, #0x4                // =4
    510c: 94000000     	bl	0x510c <aw8693x_get_f0+0x168>
		000000000000510c:  R_AARCH64_CALL26	i2c_w_bits
    5110: 39526a63     	ldrb	w3, [x19, #0x49a]
    5114: aa1303e0     	mov	x0, x19
    5118: 528003a1     	mov	w1, #0x1d               // =29
    511c: 12800fe2     	mov	w2, #-0x80              // =-128
    5120: 94000000     	bl	0x5120 <aw8693x_get_f0+0x17c>
		0000000000005120:  R_AARCH64_CALL26	i2c_w_bits
    5124: 39526e68     	ldrb	w8, [x19, #0x49b]
    5128: 79494269     	ldrh	w9, [x19, #0x4a0]
    512c: 910043e2     	add	x2, sp, #0x10
    5130: aa1303e0     	mov	x0, x19
    5134: 528003c1     	mov	w1, #0x1e               // =30
    5138: 52800063     	mov	w3, #0x3                // =3
    513c: 390043e8     	strb	w8, [sp, #0x10]
    5140: 780113e9     	sturh	w9, [sp, #0x11]
    5144: 94000000     	bl	0x5144 <aw8693x_get_f0+0x1a0>
		0000000000005144:  R_AARCH64_CALL26	i2c_w_bytes
    5148: 39528e68     	ldrb	w8, [x19, #0x4a3]
    514c: 34000288     	cbz	w8, 0x519c <aw8693x_get_f0+0x1f8>
    5150: 91128e62     	add	x2, x19, #0x4a3
    5154: aa1303e0     	mov	x0, x19
    5158: 52800441     	mov	w1, #0x22               // =34
    515c: 52800023     	mov	w3, #0x1                // =1
    5160: 94000000     	bl	0x5160 <aw8693x_get_f0+0x1bc>
		0000000000005160:  R_AARCH64_CALL26	i2c_w_bytes
    5164: b9446a68     	ldr	w8, [x19, #0x468]
    5168: 350002e8     	cbnz	w8, 0x51c4 <aw8693x_get_f0+0x220>
    516c: 12800420     	mov	w0, #-0x22              // =-34
    5170: d5384108     	mrs	x8, SP_EL0
    5174: f9438908     	ldr	x8, [x8, #0x710]
    5178: f85f83a9     	ldur	x9, [x29, #-0x8]
    517c: eb09011f     	cmp	x8, x9
    5180: 54001281     	b.ne	0x53d0 <aw8693x_get_f0+0x42c>
    5184: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5188: f9401bf5     	ldr	x21, [sp, #0x30]
    518c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5190: 910143ff     	add	sp, sp, #0x50
    5194: d50323bf     	autiasp
    5198: d65f03c0     	ret
    519c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000519c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e0
    51a0: 91000000     	add	x0, x0, #0x0
		00000000000051a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e0
    51a4: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000051a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    51a8: 91000021     	add	x1, x1, #0x0
		00000000000051a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    51ac: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000051ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x964
    51b0: 91000063     	add	x3, x3, #0x0
		00000000000051b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x964
    51b4: 52809ba2     	mov	w2, #0x4dd              // =1245
    51b8: 94000000     	bl	0x51b8 <aw8693x_get_f0+0x214>
		00000000000051b8:  R_AARCH64_CALL26	_printk
    51bc: b9446a68     	ldr	w8, [x19, #0x468]
    51c0: 34fffd68     	cbz	w8, 0x516c <aw8693x_get_f0+0x1c8>
    51c4: 52953009     	mov	w9, #0xa980             // =43392
    51c8: 39528e6a     	ldrb	w10, [x19, #0x4a3]
    51cc: 910043e2     	add	x2, sp, #0x10
    51d0: 72a00069     	movk	w9, #0x3, lsl #16
    51d4: aa1303e0     	mov	x0, x19
    51d8: 52800321     	mov	w1, #0x19               // =25
    51dc: 1ac80928     	udiv	w8, w9, w8
    51e0: 39527e69     	ldrb	w9, [x19, #0x49f]
    51e4: 52800043     	mov	w3, #0x2                // =2
    51e8: 0b0a0129     	add	w9, w9, w10
    51ec: 52801fea     	mov	w10, #0xff              // =255
    51f0: 4b090109     	sub	w9, w8, w9
    51f4: 51002129     	sub	w9, w9, #0x8
    51f8: 7103fd3f     	cmp	w9, #0xff
    51fc: 1a8ab129     	csel	w9, w9, w10, lt
    5200: 7103fd1f     	cmp	w8, #0xff
    5204: 0aa97d29     	bic	w9, w9, w9, asr #31
    5208: 1a8a3108     	csel	w8, w8, w10, lo
    520c: 390043e8     	strb	w8, [sp, #0x10]
    5210: 390047e9     	strb	w9, [sp, #0x11]
    5214: 94000000     	bl	0x5214 <aw8693x_get_f0+0x270>
		0000000000005214:  R_AARCH64_CALL26	i2c_w_bytes
    5218: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b1
    521c: 91000000     	add	x0, x0, #0x0
		000000000000521c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b1
    5220: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5224: 91000021     	add	x1, x1, #0x0
		0000000000005224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5228: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d3
    522c: 91000063     	add	x3, x3, #0x0
		000000000000522c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d3
    5230: 52803ae2     	mov	w2, #0x1d7              // =471
    5234: 52800024     	mov	w4, #0x1                // =1
    5238: 52800035     	mov	w21, #0x1               // =1
    523c: 94000000     	bl	0x523c <aw8693x_get_f0+0x298>
		000000000000523c:  R_AARCH64_CALL26	_printk
    5240: d10033a2     	sub	x2, x29, #0xc
    5244: aa1303e0     	mov	x0, x19
    5248: 52800121     	mov	w1, #0x9                // =9
    524c: 52800023     	mov	w3, #0x1                // =1
    5250: 381f43b5     	sturb	w21, [x29, #-0xc]
    5254: 94000000     	bl	0x5254 <aw8693x_get_f0+0x2b0>
		0000000000005254:  R_AARCH64_CALL26	i2c_w_bytes
    5258: 5289c400     	mov	w0, #0x4e20             // =20000
    525c: 528a0281     	mov	w1, #0x5014             // =20500
    5260: 52800042     	mov	w2, #0x2                // =2
    5264: 94000000     	bl	0x5264 <aw8693x_get_f0+0x2c0>
		0000000000005264:  R_AARCH64_CALL26	usleep_range_state
    5268: 12800c75     	mov	w21, #-0x64             // =-100
    526c: d10033a2     	sub	x2, x29, #0xc
    5270: aa1303e0     	mov	x0, x19
    5274: 528007e1     	mov	w1, #0x3f               // =63
    5278: 52800023     	mov	w3, #0x1                // =1
    527c: 381f43bf     	sturb	wzr, [x29, #-0xc]
    5280: 94000000     	bl	0x5280 <aw8693x_get_f0+0x2dc>
		0000000000005280:  R_AARCH64_CALL26	i2c_r_bytes
    5284: 385f43a8     	ldurb	w8, [x29, #-0xc]
    5288: 340001e8     	cbz	w8, 0x52c4 <aw8693x_get_f0+0x320>
    528c: 5280fa00     	mov	w0, #0x7d0              // =2000
    5290: 52813881     	mov	w1, #0x9c4              // =2500
    5294: 52800042     	mov	w2, #0x2                // =2
    5298: 94000000     	bl	0x5298 <aw8693x_get_f0+0x2f4>
		0000000000005298:  R_AARCH64_CALL26	usleep_range_state
    529c: 310006b5     	adds	w21, w21, #0x1
    52a0: 54fffe63     	b.lo	0x526c <aw8693x_get_f0+0x2c8>
    52a4: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000052a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    52a8: 91000000     	add	x0, x0, #0x0
		00000000000052a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    52ac: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000052ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    52b0: 91000021     	add	x1, x1, #0x0
		00000000000052b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    52b4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000052b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65b
    52b8: 91000063     	add	x3, x3, #0x0
		00000000000052b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65b
    52bc: 52803de2     	mov	w2, #0x1ef              // =495
    52c0: 14000008     	b	0x52e0 <aw8693x_get_f0+0x33c>
    52c4: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000052c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe0b
    52c8: 91000000     	add	x0, x0, #0x0
		00000000000052c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe0b
    52cc: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000052cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    52d0: 91000021     	add	x1, x1, #0x0
		00000000000052d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    52d4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000052d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65b
    52d8: 91000063     	add	x3, x3, #0x0
		00000000000052d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65b
    52dc: 52803d42     	mov	w2, #0x1ea              // =490
    52e0: 94000000     	bl	0x52e0 <aw8693x_get_f0+0x33c>
		00000000000052e0:  R_AARCH64_CALL26	_printk
    52e4: d10033a2     	sub	x2, x29, #0xc
    52e8: aa1303e0     	mov	x0, x19
    52ec: 528004e1     	mov	w1, #0x27               // =39
    52f0: 52800043     	mov	w3, #0x2                // =2
    52f4: 781f43bf     	sturh	wzr, [x29, #-0xc]
    52f8: 94000000     	bl	0x52f8 <aw8693x_get_f0+0x354>
		00000000000052f8:  R_AARCH64_CALL26	i2c_r_bytes
    52fc: 785f43a8     	ldurh	w8, [x29, #-0xc]
    5300: 5ac00508     	rev16	w8, w8
    5304: 35000188     	cbnz	w8, 0x5334 <aw8693x_get_f0+0x390>
    5308: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x465
    530c: 91000000     	add	x0, x0, #0x0
		000000000000530c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x465
    5310: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5314: 91000021     	add	x1, x1, #0x0
		0000000000005314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5318: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeae
    531c: 91000063     	add	x3, x3, #0x0
		000000000000531c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeae
    5320: 52809582     	mov	w2, #0x4ac              // =1196
    5324: b900627f     	str	wzr, [x19, #0x60]
    5328: 94000000     	bl	0x5328 <aw8693x_get_f0+0x384>
		0000000000005328:  R_AARCH64_CALL26	_printk
    532c: 12800435     	mov	w21, #-0x22             // =-34
    5330: 1400000f     	b	0x536c <aw8693x_get_f0+0x3c8>
    5334: 52930009     	mov	w9, #0x9800             // =38912
    5338: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x493
    533c: 91000000     	add	x0, x0, #0x0
		000000000000533c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x493
    5340: 72a00749     	movk	w9, #0x3a, lsl #16
    5344: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5348: 91000021     	add	x1, x1, #0x0
		0000000000005348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    534c: 1ac80924     	udiv	w4, w9, w8
    5350: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeae
    5354: 91000063     	add	x3, x3, #0x0
		0000000000005354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeae
    5358: 52809622     	mov	w2, #0x4b1              // =1201
    535c: b9006264     	str	w4, [x19, #0x60]
    5360: b9007264     	str	w4, [x19, #0x70]
    5364: 94000000     	bl	0x5364 <aw8693x_get_f0+0x3c0>
		0000000000005364:  R_AARCH64_CALL26	_printk
    5368: 2a1f03f5     	mov	w21, wzr
    536c: aa1303e0     	mov	x0, x19
    5370: 52800301     	mov	w1, #0x18               // =24
    5374: 12800402     	mov	w2, #-0x21              // =-33
    5378: 2a1f03e3     	mov	w3, wzr
    537c: 94000000     	bl	0x537c <aw8693x_get_f0+0x3d8>
		000000000000537c:  R_AARCH64_CALL26	i2c_w_bits
    5380: 121e0283     	and	w3, w20, #0x4
    5384: aa1303e0     	mov	x0, x19
    5388: 52800101     	mov	w1, #0x8                // =8
    538c: 12800082     	mov	w2, #-0x5               // =-5
    5390: 94000000     	bl	0x5390 <aw8693x_get_f0+0x3ec>
		0000000000005390:  R_AARCH64_CALL26	i2c_w_bits
    5394: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005394:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b
    5398: 91000000     	add	x0, x0, #0x0
		0000000000005398:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b
    539c: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000539c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    53a0: 91000021     	add	x1, x1, #0x0
		00000000000053a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    53a4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000053a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x597
    53a8: 91000063     	add	x3, x3, #0x0
		00000000000053a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x597
    53ac: 528041a2     	mov	w2, #0x20d              // =525
    53b0: 94000000     	bl	0x53b0 <aw8693x_get_f0+0x40c>
		00000000000053b0:  R_AARCH64_CALL26	_printk
    53b4: aa1303e0     	mov	x0, x19
    53b8: 528009a1     	mov	w1, #0x4d               // =77
    53bc: 12800e02     	mov	w2, #-0x71              // =-113
    53c0: 52800803     	mov	w3, #0x40               // =64
    53c4: 94000000     	bl	0x53c4 <aw8693x_get_f0+0x420>
		00000000000053c4:  R_AARCH64_CALL26	i2c_w_bits
    53c8: 2a1503e0     	mov	w0, w21
    53cc: 17ffff69     	b	0x5170 <aw8693x_get_f0+0x1cc>
    53d0: 94000000     	bl	0x53d0 <aw8693x_get_f0+0x42c>
		00000000000053d0:  R_AARCH64_CALL26	__stack_chk_fail
