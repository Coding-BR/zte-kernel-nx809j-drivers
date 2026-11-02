
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <aw8693x_get_f0>:
       4: d503233f     	paciasp
       8: d10143ff     	sub	sp, sp, #0x50
       c: a9027bfd     	stp	x29, x30, [sp, #0x20]
      10: f9001bf5     	str	x21, [sp, #0x30]
      14: a9044ff4     	stp	x20, x19, [sp, #0x40]
      18: 910083fd     	add	x29, sp, #0x20
      1c: d5384108     	mrs	x8, SP_EL0
      20: aa0003f3     	mov	x19, x0
      24: f9438908     	ldr	x8, [x8, #0x710]
      28: f81f83a8     	stur	x8, [x29, #-0x8]
      2c: b9446808     	ldr	w8, [x0, #0x468]
      30: 390033ff     	strb	wzr, [sp, #0xc]
      34: b9006008     	str	w8, [x0, #0x60]
      38: 940003bd     	bl	0xf2c <aw8693x_stop>
      3c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      40: 91000294     	add	x20, x20, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      44: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
      48: 91000000     	add	x0, x0, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
      4c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe37
      50: 91000063     	add	x3, x3, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe37
      54: aa1403e1     	mov	x1, x20
      58: 528041a2     	mov	w2, #0x20d              // =525
      5c: 94000000     	bl	0x5c <aw8693x_get_f0+0x58>
		000000000000005c:  R_AARCH64_CALL26	_printk
      60: aa1303e0     	mov	x0, x19
      64: 528009a1     	mov	w1, #0x4d               // =77
      68: 12800e02     	mov	w2, #-0x71              // =-113
      6c: 52800403     	mov	w3, #0x20               // =32
      70: 94000000     	bl	0x70 <aw8693x_get_f0+0x6c>
		0000000000000070:  R_AARCH64_CALL26	i2c_w_bits
      74: 39525663     	ldrb	w3, [x19, #0x495]
      78: aa1303e0     	mov	x0, x19
      7c: 528009c1     	mov	w1, #0x4e               // =78
      80: 128000e2     	mov	w2, #-0x8               // =-8
      84: 94000000     	bl	0x84 <aw8693x_get_f0+0x80>
		0000000000000084:  R_AARCH64_CALL26	i2c_w_bits
      88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd
      8c: 91000000     	add	x0, x0, #0x0
		000000000000008c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd
      90: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
      94: 91000063     	add	x3, x3, #0x0
		0000000000000094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
      98: aa1403e1     	mov	x1, x20
      9c: 52804ea2     	mov	w2, #0x275              // =629
      a0: 94000000     	bl	0xa0 <aw8693x_get_f0+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	_printk
      a4: 52800088     	mov	w8, #0x4                // =4
      a8: aa1303e0     	mov	x0, x19
      ac: 52800101     	mov	w1, #0x8                // =8
      b0: 12800062     	mov	w2, #-0x4               // =-4
      b4: 52800043     	mov	w3, #0x2                // =2
      b8: 39005e68     	strb	w8, [x19, #0x17]
      bc: 94000000     	bl	0xbc <aw8693x_get_f0+0xb8>
		00000000000000bc:  R_AARCH64_CALL26	i2c_w_bits
      c0: aa1303e0     	mov	x0, x19
      c4: 52800101     	mov	w1, #0x8                // =8
      c8: 12800082     	mov	w2, #-0x5               // =-5
      cc: 52800083     	mov	w3, #0x4                // =4
      d0: 94000000     	bl	0xd0 <aw8693x_get_f0+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	i2c_w_bits
      d4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x505
      d8: 91000000     	add	x0, x0, #0x0
		00000000000000d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x505
      dc: 90000003     	adrp	x3, 0x0 <.text>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
      e0: 91000063     	add	x3, x3, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
      e4: aa1403e1     	mov	x1, x20
      e8: 52803fc2     	mov	w2, #0x1fe              // =510
      ec: 94000000     	bl	0xec <aw8693x_get_f0+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	_printk
      f0: aa1303e0     	mov	x0, x19
      f4: 528000c1     	mov	w1, #0x6                // =6
      f8: 12800402     	mov	w2, #-0x21              // =-33
      fc: 2a1f03e3     	mov	w3, wzr
     100: 94000000     	bl	0x100 <aw8693x_get_f0+0xfc>
		0000000000000100:  R_AARCH64_CALL26	i2c_w_bits
     104: aa1303e0     	mov	x0, x19
     108: 52800981     	mov	w1, #0x4c               // =76
     10c: 12800802     	mov	w2, #-0x41              // =-65
     110: 52800803     	mov	w3, #0x40               // =64
     114: 94000000     	bl	0x114 <aw8693x_get_f0+0x110>
		0000000000000114:  R_AARCH64_CALL26	i2c_w_bits
     118: aa1303e0     	mov	x0, x19
     11c: 52800301     	mov	w1, #0x18               // =24
     120: 12800402     	mov	w2, #-0x21              // =-33
     124: 52800403     	mov	w3, #0x20               // =32
     128: 94000000     	bl	0x128 <aw8693x_get_f0+0x124>
		0000000000000128:  R_AARCH64_CALL26	i2c_w_bits
     12c: 39530268     	ldrb	w8, [x19, #0x4c0]
     130: aa1303e0     	mov	x0, x19
     134: 528003a1     	mov	w1, #0x1d               // =29
     138: 12801002     	mov	w2, #-0x81              // =-129
     13c: 53196103     	lsl	w3, w8, #7
     140: 94000000     	bl	0x140 <aw8693x_get_f0+0x13c>
		0000000000000140:  R_AARCH64_CALL26	i2c_w_bits
     144: 910033e2     	add	x2, sp, #0xc
     148: aa1303e0     	mov	x0, x19
     14c: 52800101     	mov	w1, #0x8                // =8
     150: 52800023     	mov	w3, #0x1                // =1
     154: 94000000     	bl	0x154 <aw8693x_get_f0+0x150>
		0000000000000154:  R_AARCH64_CALL26	i2c_r_bytes
     158: 394033f4     	ldrb	w20, [sp, #0xc]
     15c: aa1303e0     	mov	x0, x19
     160: 52800101     	mov	w1, #0x8                // =8
     164: 12800082     	mov	w2, #-0x5               // =-5
     168: 52800083     	mov	w3, #0x4                // =4
     16c: 94000000     	bl	0x16c <aw8693x_get_f0+0x168>
		000000000000016c:  R_AARCH64_CALL26	i2c_w_bits
     170: 39526a63     	ldrb	w3, [x19, #0x49a]
     174: aa1303e0     	mov	x0, x19
     178: 528003a1     	mov	w1, #0x1d               // =29
     17c: 12800fe2     	mov	w2, #-0x80              // =-128
     180: 94000000     	bl	0x180 <aw8693x_get_f0+0x17c>
		0000000000000180:  R_AARCH64_CALL26	i2c_w_bits
     184: 39526e68     	ldrb	w8, [x19, #0x49b]
     188: 79494269     	ldrh	w9, [x19, #0x4a0]
     18c: 910043e2     	add	x2, sp, #0x10
     190: aa1303e0     	mov	x0, x19
     194: 528003c1     	mov	w1, #0x1e               // =30
     198: 52800063     	mov	w3, #0x3                // =3
     19c: 390043e8     	strb	w8, [sp, #0x10]
     1a0: 780113e9     	sturh	w9, [sp, #0x11]
     1a4: 94000000     	bl	0x1a4 <aw8693x_get_f0+0x1a0>
		00000000000001a4:  R_AARCH64_CALL26	i2c_w_bytes
     1a8: 39528e68     	ldrb	w8, [x19, #0x4a3]
     1ac: 34000288     	cbz	w8, 0x1fc <aw8693x_get_f0+0x1f8>
     1b0: 91128e62     	add	x2, x19, #0x4a3
     1b4: aa1303e0     	mov	x0, x19
     1b8: 52800441     	mov	w1, #0x22               // =34
     1bc: 52800023     	mov	w3, #0x1                // =1
     1c0: 94000000     	bl	0x1c0 <aw8693x_get_f0+0x1bc>
		00000000000001c0:  R_AARCH64_CALL26	i2c_w_bytes
     1c4: b9446a68     	ldr	w8, [x19, #0x468]
     1c8: 350002e8     	cbnz	w8, 0x224 <aw8693x_get_f0+0x220>
     1cc: 12800420     	mov	w0, #-0x22              // =-34
     1d0: d5384108     	mrs	x8, SP_EL0
     1d4: f9438908     	ldr	x8, [x8, #0x710]
     1d8: f85f83a9     	ldur	x9, [x29, #-0x8]
     1dc: eb09011f     	cmp	x8, x9
     1e0: 54001281     	b.ne	0x430 <aw8693x_get_f0+0x42c>
     1e4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     1e8: f9401bf5     	ldr	x21, [sp, #0x30]
     1ec: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     1f0: 910143ff     	add	sp, sp, #0x50
     1f4: d50323bf     	autiasp
     1f8: d65f03c0     	ret
     1fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
     200: 91000000     	add	x0, x0, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
     204: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     208: 91000021     	add	x1, x1, #0x0
		0000000000000208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     20c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c7
     210: 91000063     	add	x3, x3, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c7
     214: 52809ba2     	mov	w2, #0x4dd              // =1245
     218: 94000000     	bl	0x218 <aw8693x_get_f0+0x214>
		0000000000000218:  R_AARCH64_CALL26	_printk
     21c: b9446a68     	ldr	w8, [x19, #0x468]
     220: 34fffd68     	cbz	w8, 0x1cc <aw8693x_get_f0+0x1c8>
     224: 52953009     	mov	w9, #0xa980             // =43392
     228: 39528e6a     	ldrb	w10, [x19, #0x4a3]
     22c: 910043e2     	add	x2, sp, #0x10
     230: 72a00069     	movk	w9, #0x3, lsl #16
     234: aa1303e0     	mov	x0, x19
     238: 52800321     	mov	w1, #0x19               // =25
     23c: 1ac80928     	udiv	w8, w9, w8
     240: 39527e69     	ldrb	w9, [x19, #0x49f]
     244: 52800043     	mov	w3, #0x2                // =2
     248: 0b0a0129     	add	w9, w9, w10
     24c: 52801fea     	mov	w10, #0xff              // =255
     250: 4b090109     	sub	w9, w8, w9
     254: 51002129     	sub	w9, w9, #0x8
     258: 7103fd3f     	cmp	w9, #0xff
     25c: 1a8ab129     	csel	w9, w9, w10, lt
     260: 7103fd1f     	cmp	w8, #0xff
     264: 0aa97d29     	bic	w9, w9, w9, asr #31
     268: 1a8a3108     	csel	w8, w8, w10, lo
     26c: 390043e8     	strb	w8, [sp, #0x10]
     270: 390047e9     	strb	w9, [sp, #0x11]
     274: 94000000     	bl	0x274 <aw8693x_get_f0+0x270>
		0000000000000274:  R_AARCH64_CALL26	i2c_w_bytes
     278: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85c
     27c: 91000000     	add	x0, x0, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85c
     280: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     284: 91000021     	add	x1, x1, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     288: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e
     28c: 91000063     	add	x3, x3, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e
     290: 52803ae2     	mov	w2, #0x1d7              // =471
     294: 52800024     	mov	w4, #0x1                // =1
     298: 52800035     	mov	w21, #0x1               // =1
     29c: 94000000     	bl	0x29c <aw8693x_get_f0+0x298>
		000000000000029c:  R_AARCH64_CALL26	_printk
     2a0: d10033a2     	sub	x2, x29, #0xc
     2a4: aa1303e0     	mov	x0, x19
     2a8: 52800121     	mov	w1, #0x9                // =9
     2ac: 52800023     	mov	w3, #0x1                // =1
     2b0: 381f43b5     	sturb	w21, [x29, #-0xc]
     2b4: 94000000     	bl	0x2b4 <aw8693x_get_f0+0x2b0>
		00000000000002b4:  R_AARCH64_CALL26	i2c_w_bytes
     2b8: 5289c400     	mov	w0, #0x4e20             // =20000
     2bc: 528a0281     	mov	w1, #0x5014             // =20500
     2c0: 52800042     	mov	w2, #0x2                // =2
     2c4: 94000000     	bl	0x2c4 <aw8693x_get_f0+0x2c0>
		00000000000002c4:  R_AARCH64_CALL26	usleep_range_state
     2c8: 12800c75     	mov	w21, #-0x64             // =-100
     2cc: d10033a2     	sub	x2, x29, #0xc
     2d0: aa1303e0     	mov	x0, x19
     2d4: 528007e1     	mov	w1, #0x3f               // =63
     2d8: 52800023     	mov	w3, #0x1                // =1
     2dc: 381f43bf     	sturb	wzr, [x29, #-0xc]
     2e0: 94000000     	bl	0x2e0 <aw8693x_get_f0+0x2dc>
		00000000000002e0:  R_AARCH64_CALL26	i2c_r_bytes
     2e4: 385f43a8     	ldurb	w8, [x29, #-0xc]
     2e8: 340001e8     	cbz	w8, 0x324 <aw8693x_get_f0+0x320>
     2ec: 5280fa00     	mov	w0, #0x7d0              // =2000
     2f0: 52813881     	mov	w1, #0x9c4              // =2500
     2f4: 52800042     	mov	w2, #0x2                // =2
     2f8: 94000000     	bl	0x2f8 <aw8693x_get_f0+0x2f4>
		00000000000002f8:  R_AARCH64_CALL26	usleep_range_state
     2fc: 310006b5     	adds	w21, w21, #0x1
     300: 54fffe63     	b.lo	0x2cc <aw8693x_get_f0+0x2c8>
     304: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa
     308: 91000000     	add	x0, x0, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa
     30c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     310: 91000021     	add	x1, x1, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     314: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
     318: 91000063     	add	x3, x3, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
     31c: 52803de2     	mov	w2, #0x1ef              // =495
     320: 14000008     	b	0x340 <aw8693x_get_f0+0x33c>
     324: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27ca
     328: 91000000     	add	x0, x0, #0x0
		0000000000000328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27ca
     32c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     330: 91000021     	add	x1, x1, #0x0
		0000000000000330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     334: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
     338: 91000063     	add	x3, x3, #0x0
		0000000000000338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
     33c: 52803d42     	mov	w2, #0x1ea              // =490
     340: 94000000     	bl	0x340 <aw8693x_get_f0+0x33c>
		0000000000000340:  R_AARCH64_CALL26	_printk
     344: d10033a2     	sub	x2, x29, #0xc
     348: aa1303e0     	mov	x0, x19
     34c: 528004e1     	mov	w1, #0x27               // =39
     350: 52800043     	mov	w3, #0x2                // =2
     354: 781f43bf     	sturh	wzr, [x29, #-0xc]
     358: 94000000     	bl	0x358 <aw8693x_get_f0+0x354>
		0000000000000358:  R_AARCH64_CALL26	i2c_r_bytes
     35c: 785f43a8     	ldurh	w8, [x29, #-0xc]
     360: 5ac00508     	rev16	w8, w8
     364: 35000188     	cbnz	w8, 0x394 <aw8693x_get_f0+0x390>
     368: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe3
     36c: 91000000     	add	x0, x0, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe3
     370: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     374: 91000021     	add	x1, x1, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     378: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x287f
     37c: 91000063     	add	x3, x3, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x287f
     380: 52809582     	mov	w2, #0x4ac              // =1196
     384: b900627f     	str	wzr, [x19, #0x60]
     388: 94000000     	bl	0x388 <aw8693x_get_f0+0x384>
		0000000000000388:  R_AARCH64_CALL26	_printk
     38c: 12800435     	mov	w21, #-0x22             // =-34
     390: 1400000f     	b	0x3cc <aw8693x_get_f0+0x3c8>
     394: 52930009     	mov	w9, #0x9800             // =38912
     398: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc11
     39c: 91000000     	add	x0, x0, #0x0
		000000000000039c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc11
     3a0: 72a00749     	movk	w9, #0x3a, lsl #16
     3a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     3a8: 91000021     	add	x1, x1, #0x0
		00000000000003a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     3ac: 1ac80924     	udiv	w4, w9, w8
     3b0: 90000003     	adrp	x3, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x287f
     3b4: 91000063     	add	x3, x3, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x287f
     3b8: 52809622     	mov	w2, #0x4b1              // =1201
     3bc: b9006264     	str	w4, [x19, #0x60]
     3c0: b9007264     	str	w4, [x19, #0x70]
     3c4: 94000000     	bl	0x3c4 <aw8693x_get_f0+0x3c0>
		00000000000003c4:  R_AARCH64_CALL26	_printk
     3c8: 2a1f03f5     	mov	w21, wzr
     3cc: aa1303e0     	mov	x0, x19
     3d0: 52800301     	mov	w1, #0x18               // =24
     3d4: 12800402     	mov	w2, #-0x21              // =-33
     3d8: 2a1f03e3     	mov	w3, wzr
     3dc: 94000000     	bl	0x3dc <aw8693x_get_f0+0x3d8>
		00000000000003dc:  R_AARCH64_CALL26	i2c_w_bits
     3e0: 121e0283     	and	w3, w20, #0x4
     3e4: aa1303e0     	mov	x0, x19
     3e8: 52800101     	mov	w1, #0x8                // =8
     3ec: 12800082     	mov	w2, #-0x5               // =-5
     3f0: 94000000     	bl	0x3f0 <aw8693x_get_f0+0x3ec>
		00000000000003f0:  R_AARCH64_CALL26	i2c_w_bits
     3f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
     3f8: 91000000     	add	x0, x0, #0x0
		00000000000003f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
     3fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     400: 91000021     	add	x1, x1, #0x0
		0000000000000400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     404: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe37
     408: 91000063     	add	x3, x3, #0x0
		0000000000000408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe37
     40c: 528041a2     	mov	w2, #0x20d              // =525
     410: 94000000     	bl	0x410 <aw8693x_get_f0+0x40c>
		0000000000000410:  R_AARCH64_CALL26	_printk
     414: aa1303e0     	mov	x0, x19
     418: 528009a1     	mov	w1, #0x4d               // =77
     41c: 12800e02     	mov	w2, #-0x71              // =-113
     420: 52800803     	mov	w3, #0x40               // =64
     424: 94000000     	bl	0x424 <aw8693x_get_f0+0x420>
		0000000000000424:  R_AARCH64_CALL26	i2c_w_bits
     428: 2a1503e0     	mov	w0, w21
     42c: 17ffff69     	b	0x1d0 <aw8693x_get_f0+0x1cc>
     430: 94000000     	bl	0x430 <aw8693x_get_f0+0x42c>
		0000000000000430:  R_AARCH64_CALL26	__stack_chk_fail
