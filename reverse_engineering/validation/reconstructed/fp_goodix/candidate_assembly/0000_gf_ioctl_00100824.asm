
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gf_ioctl>:
       4: d503233f     	paciasp
       8: d10143ff     	sub	sp, sp, #0x50
       c: a9027bfd     	stp	x29, x30, [sp, #0x20]
      10: f9001bf5     	str	x21, [sp, #0x30]
      14: a9044ff4     	stp	x20, x19, [sp, #0x40]
      18: 910083fd     	add	x29, sp, #0x20
      1c: d5384108     	mrs	x8, SP_EL0
      20: 528ce009     	mov	w9, #0x6700             // =26368
      24: 12181c2a     	and	w10, w1, #0xff00
      28: f9438908     	ldr	x8, [x8, #0x710]
      2c: 6b09015f     	cmp	w10, w9
      30: f81f83a8     	stur	x8, [x29, #-0x8]
      34: 52800328     	mov	w8, #0x19               // =25
      38: b90007ff     	str	wzr, [sp, #0x4]
      3c: 390003e8     	strb	w8, [sp]
      40: 540013a1     	b.ne	0x2b4 <gf_ioctl+0x2b0>
      44: a900ffff     	stp	xzr, xzr, [sp, #0x8]
      48: 37f800a1     	tbnz	w1, #0x1f, 0x5c <gf_ioctl+0x58>
      4c: 531e7c28     	lsr	w8, w1, #30
      50: 34000248     	cbz	w8, 0x98 <gf_ioctl+0x94>
      54: d5384109     	mrs	x9, SP_EL0
      58: 14000002     	b	0x60 <gf_ioctl+0x5c>
      5c: d5384109     	mrs	x9, SP_EL0
      60: 3941192a     	ldrb	w10, [x9, #0x46]
      64: 53107428     	ubfx	w8, w1, #16, #14
      68: 3728008a     	tbnz	w10, #0x5, 0x78 <gf_ioctl+0x74>
      6c: f940012a     	ldr	x10, [x9]
      70: aa0203e9     	mov	x9, x2
      74: 36d0006a     	tbz	w10, #0x1a, 0x80 <gf_ioctl+0x7c>
      78: d378dc49     	lsl	x9, x2, #8
      7c: 8a892049     	and	x9, x2, x9, asr #8
      80: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
      84: cb080148     	sub	x8, x10, x8
      88: eb09011f     	cmp	x8, x9
      8c: 54000062     	b.hs	0x98 <gf_ioctl+0x94>
      90: 928001a0     	mov	x0, #-0xe               // =-14
      94: 14000089     	b	0x2b8 <gf_ioctl+0x2b4>
      98: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000098:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
      9c: 39400268     	ldrb	w8, [x19]
		000000000000009c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x80
      a0: 34000fc8     	cbz	w8, 0x298 <gf_ioctl+0x294>
      a4: 528ce0c8     	mov	w8, #0x6706             // =26374
      a8: aa1f03e0     	mov	x0, xzr
      ac: 6b08003f     	cmp	w1, w8
      b0: 540001cd     	b.le	0xe8 <gf_ioctl+0xe4>
      b4: 528ce088     	mov	w8, #0x6704             // =26372
      b8: 72a80088     	movk	w8, #0x4004, lsl #16
      bc: 6b08003f     	cmp	w1, w8
      c0: 540005ad     	b.le	0x174 <gf_ioctl+0x170>
      c4: 528ce1a8     	mov	w8, #0x670d             // =26381
      c8: 72a80088     	movk	w8, #0x4004, lsl #16
      cc: 6b08003f     	cmp	w1, w8
      d0: 540009ec     	b.gt	0x20c <gf_ioctl+0x208>
      d4: 528ce0a8     	mov	w8, #0x6705             // =26373
      d8: 72a80088     	movk	w8, #0x4004, lsl #16
      dc: 6b08003f     	cmp	w1, w8
      e0: 54000ec0     	b.eq	0x2b8 <gf_ioctl+0x2b4>
      e4: 140000a7     	b	0x380 <gf_ioctl+0x37c>
      e8: 528ce048     	mov	w8, #0x6702             // =26370
      ec: 6b08003f     	cmp	w1, w8
      f0: 5400026d     	b.le	0x13c <gf_ioctl+0x138>
      f4: 528ce0c8     	mov	w8, #0x6706             // =26374
      f8: 6b08003f     	cmp	w1, w8
      fc: 54000de0     	b.eq	0x2b8 <gf_ioctl+0x2b4>
     100: 528ce068     	mov	w8, #0x6703             // =26371
     104: 6b08003f     	cmp	w1, w8
     108: 54001a20     	b.eq	0x44c <gf_ioctl+0x448>
     10c: 528ce088     	mov	w8, #0x6704             // =26372
     110: 6b08003f     	cmp	w1, w8
     114: 54001361     	b.ne	0x380 <gf_ioctl+0x37c>
     118: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbba
     11c: 91000000     	add	x0, x0, #0x0
		000000000000011c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbba
     120: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     124: 91000021     	add	x1, x1, #0x0
		0000000000000124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     128: 94000000     	bl	0x128 <gf_ioctl+0x124>
		0000000000000128:  R_AARCH64_CALL26	_printk
     12c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000012c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     130: 91000000     	add	x0, x0, #0x0
		0000000000000130:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     134: 940001f3     	bl	0x900 <gf_disable_irq>
     138: 140000aa     	b	0x3e0 <gf_ioctl+0x3dc>
     13c: 528ce008     	mov	w8, #0x6700             // =26368
     140: 6b08003f     	cmp	w1, w8
     144: 5400044c     	b.gt	0x1cc <gf_ioctl+0x1c8>
     148: 528ce008     	mov	w8, #0x6700             // =26368
     14c: 72b00028     	movk	w8, #0x8001, lsl #16
     150: 6b08003f     	cmp	w1, w8
     154: 54000e60     	b.eq	0x320 <gf_ioctl+0x31c>
     158: 528ce168     	mov	w8, #0x670b             // =26379
     15c: 72b00028     	movk	w8, #0x8001, lsl #16
     160: 6b08003f     	cmp	w1, w8
     164: 540010e1     	b.ne	0x380 <gf_ioctl+0x37c>
     168: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x491
     16c: 91000000     	add	x0, x0, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x491
     170: 14000099     	b	0x3d4 <gf_ioctl+0x3d0>
     174: 528ce128     	mov	w8, #0x6709             // =26377
     178: 6b08003f     	cmp	w1, w8
     17c: 54000b4c     	b.gt	0x2e4 <gf_ioctl+0x2e0>
     180: 528ce0e8     	mov	w8, #0x6707             // =26375
     184: 6b08003f     	cmp	w1, w8
     188: 54001040     	b.eq	0x390 <gf_ioctl+0x38c>
     18c: 528ce108     	mov	w8, #0x6708             // =26376
     190: 6b08003f     	cmp	w1, w8
     194: 54000f61     	b.ne	0x380 <gf_ioctl+0x37c>
     198: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     19c: 91000000     	add	x0, x0, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     1a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     1a4: 91000021     	add	x1, x1, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     1a8: 94000000     	bl	0x1a8 <gf_ioctl+0x1a4>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: 39400268     	ldrb	w8, [x19]
		00000000000001ac:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x80
     1b0: 34001e28     	cbz	w8, 0x574 <gf_ioctl+0x570>
     1b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     1b8: 91000000     	add	x0, x0, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     1bc: 94000000     	bl	0x1bc <gf_ioctl+0x1b8>
		00000000000001bc:  R_AARCH64_CALL26	gf_power_off
     1c0: aa1f03e0     	mov	x0, xzr
     1c4: 3900027f     	strb	wzr, [x19]
		00000000000001c4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x80
     1c8: 1400003c     	b	0x2b8 <gf_ioctl+0x2b4>
     1cc: 528ce028     	mov	w8, #0x6701             // =26369
     1d0: 6b08003f     	cmp	w1, w8
     1d4: 54000c00     	b.eq	0x354 <gf_ioctl+0x350>
     1d8: 528ce048     	mov	w8, #0x6702             // =26370
     1dc: 6b08003f     	cmp	w1, w8
     1e0: 54000d01     	b.ne	0x380 <gf_ioctl+0x37c>
     1e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149
     1e8: 91000000     	add	x0, x0, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149
     1ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     1f0: 91000021     	add	x1, x1, #0x0
		00000000000001f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     1f4: 94000000     	bl	0x1f4 <gf_ioctl+0x1f0>
		00000000000001f4:  R_AARCH64_CALL26	_printk
     1f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     1fc: 91000000     	add	x0, x0, #0x0
		00000000000001fc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     200: 528000a1     	mov	w1, #0x5                // =5
     204: 94000000     	bl	0x204 <gf_ioctl+0x200>
		0000000000000204:  R_AARCH64_CALL26	gf_hw_reset
     208: 14000076     	b	0x3e0 <gf_ioctl+0x3dc>
     20c: 528ce1c8     	mov	w8, #0x670e             // =26382
     210: aa0203f3     	mov	x19, x2
     214: 72a80088     	movk	w8, #0x4004, lsl #16
     218: 6b08003f     	cmp	w1, w8
     21c: 54000fe0     	b.eq	0x418 <gf_ioctl+0x414>
     220: 528ce128     	mov	w8, #0x6709             // =26377
     224: 72a80108     	movk	w8, #0x4008, lsl #16
     228: 6b08003f     	cmp	w1, w8
     22c: 54000de0     	b.eq	0x3e8 <gf_ioctl+0x3e4>
     230: 528ce1a8     	mov	w8, #0x670d             // =26381
     234: 72a80108     	movk	w8, #0x4008, lsl #16
     238: 6b08003f     	cmp	w1, w8
     23c: 54000a21     	b.ne	0x380 <gf_ioctl+0x37c>
     240: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcc
     244: 91000000     	add	x0, x0, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcc
     248: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     24c: 91000021     	add	x1, x1, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     250: 94000000     	bl	0x250 <gf_ioctl+0x24c>
		0000000000000250:  R_AARCH64_CALL26	_printk
     254: 910043e0     	add	x0, sp, #0x10
     258: aa1303e1     	mov	x1, x19
     25c: 52800102     	mov	w2, #0x8                // =8
     260: 94000257     	bl	0xbbc <_inline_copy_from_user>
     264: b5fff160     	cbnz	x0, 0x90 <gf_ioctl+0x8c>
     268: 394043e1     	ldrb	w1, [sp, #0x10]
     26c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000026c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d
     270: 91000000     	add	x0, x0, #0x0
		0000000000000270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d
     274: 94000000     	bl	0x274 <gf_ioctl+0x270>
		0000000000000274:  R_AARCH64_CALL26	_printk
     278: 394047e1     	ldrb	w1, [sp, #0x11]
     27c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe07
     280: 91000000     	add	x0, x0, #0x0
		0000000000000280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe07
     284: 94000000     	bl	0x284 <gf_ioctl+0x280>
		0000000000000284:  R_AARCH64_CALL26	_printk
     288: 39404be1     	ldrb	w1, [sp, #0x12]
     28c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e4
     290: 91000000     	add	x0, x0, #0x0
		0000000000000290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e4
     294: 1400003d     	b	0x388 <gf_ioctl+0x384>
     298: 128ce0c8     	mov	w8, #-0x6707            // =-26375
     29c: 0b080028     	add	w8, w1, w8
     2a0: 7100091f     	cmp	w8, #0x2
     2a4: 540005e3     	b.lo	0x360 <gf_ioctl+0x35c>
     2a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78
     2b0: 94000000     	bl	0x2b0 <gf_ioctl+0x2ac>
		00000000000002b0:  R_AARCH64_CALL26	_printk
     2b4: 92800240     	mov	x0, #-0x13              // =-19
     2b8: d5384108     	mrs	x8, SP_EL0
     2bc: f9438908     	ldr	x8, [x8, #0x710]
     2c0: f85f83a9     	ldur	x9, [x29, #-0x8]
     2c4: eb09011f     	cmp	x8, x9
     2c8: 54001641     	b.ne	0x590 <gf_ioctl+0x58c>
     2cc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     2d0: f9401bf5     	ldr	x21, [sp, #0x30]
     2d4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     2d8: 910143ff     	add	sp, sp, #0x50
     2dc: d50323bf     	autiasp
     2e0: d65f03c0     	ret
     2e4: 528ce148     	mov	w8, #0x670a             // =26378
     2e8: 6b08003f     	cmp	w1, w8
     2ec: 54000700     	b.eq	0x3cc <gf_ioctl+0x3c8>
     2f0: 528ce188     	mov	w8, #0x670c             // =26380
     2f4: 6b08003f     	cmp	w1, w8
     2f8: 54000441     	b.ne	0x380 <gf_ioctl+0x37c>
     2fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2
     300: 91000000     	add	x0, x0, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2
     304: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     308: 91000021     	add	x1, x1, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     30c: 94000000     	bl	0x30c <gf_ioctl+0x308>
		000000000000030c:  R_AARCH64_CALL26	_printk
     310: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     314: 91000000     	add	x0, x0, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     318: 94000000     	bl	0x318 <gf_ioctl+0x314>
		0000000000000318:  R_AARCH64_CALL26	gf_cleanup
     31c: 14000031     	b	0x3e0 <gf_ioctl+0x3dc>
     320: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5
     324: 91000000     	add	x0, x0, #0x0
		0000000000000324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5
     328: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     32c: 91000021     	add	x1, x1, #0x0
		000000000000032c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     330: aa0203f3     	mov	x19, x2
     334: 94000000     	bl	0x334 <gf_ioctl+0x330>
		0000000000000334:  R_AARCH64_CALL26	_printk
     338: 910003e1     	mov	x1, sp
     33c: aa1303e0     	mov	x0, x19
     340: 940001f4     	bl	0xb10 <_inline_copy_to_user>
     344: 928001a8     	mov	x8, #-0xe               // =-14
     348: f100001f     	cmp	x0, #0x0
     34c: 9a8803e0     	csel	x0, xzr, x8, eq
     350: 17ffffda     	b	0x2b8 <gf_ioctl+0x2b4>
     354: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c7
     358: 91000000     	add	x0, x0, #0x0
		0000000000000358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c7
     35c: 1400001e     	b	0x3d4 <gf_ioctl+0x3d0>
     360: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
     364: 91000000     	add	x0, x0, #0x0
		0000000000000364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
     368: 2a0103f4     	mov	w20, w1
     36c: aa0203f5     	mov	x21, x2
     370: 94000000     	bl	0x370 <gf_ioctl+0x36c>
		0000000000000370:  R_AARCH64_CALL26	_printk
     374: aa1503e2     	mov	x2, x21
     378: 2a1403e1     	mov	w1, w20
     37c: 17ffff4a     	b	0xa4 <gf_ioctl+0xa0>
     380: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe21
     384: 91000000     	add	x0, x0, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe21
     388: 94000000     	bl	0x388 <gf_ioctl+0x384>
		0000000000000388:  R_AARCH64_CALL26	_printk
     38c: 14000015     	b	0x3e0 <gf_ioctl+0x3dc>
     390: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37c
     394: 91000000     	add	x0, x0, #0x0
		0000000000000394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37c
     398: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     39c: 91000021     	add	x1, x1, #0x0
		000000000000039c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     3a0: 94000000     	bl	0x3a0 <gf_ioctl+0x39c>
		00000000000003a0:  R_AARCH64_CALL26	_printk
     3a4: 39400268     	ldrb	w8, [x19]
		00000000000003a4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x80
     3a8: 7100051f     	cmp	w8, #0x1
     3ac: 54000dc0     	b.eq	0x564 <gf_ioctl+0x560>
     3b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     3b4: 91000000     	add	x0, x0, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     3b8: 94000000     	bl	0x3b8 <gf_ioctl+0x3b4>
		00000000000003b8:  R_AARCH64_CALL26	gf_power_on
     3bc: 52800028     	mov	w8, #0x1                // =1
     3c0: aa1f03e0     	mov	x0, xzr
     3c4: 39000268     	strb	w8, [x19]
		00000000000003c4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x80
     3c8: 17ffffbc     	b	0x2b8 <gf_ioctl+0x2b4>
     3cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468
     3d0: 91000000     	add	x0, x0, #0x0
		00000000000003d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468
     3d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     3d8: 91000021     	add	x1, x1, #0x0
		00000000000003d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     3dc: 94000000     	bl	0x3dc <gf_ioctl+0x3d8>
		00000000000003dc:  R_AARCH64_CALL26	_printk
     3e0: aa1f03e0     	mov	x0, xzr
     3e4: 17ffffb5     	b	0x2b8 <gf_ioctl+0x2b4>
     3e8: 910023e0     	add	x0, sp, #0x8
     3ec: aa1303e1     	mov	x1, x19
     3f0: 52800102     	mov	w2, #0x8                // =8
     3f4: 940001f2     	bl	0xbbc <_inline_copy_from_user>
     3f8: b5000380     	cbnz	x0, 0x468 <gf_ioctl+0x464>
     3fc: b9400be8     	ldr	w8, [sp, #0x8]
     400: 7100151f     	cmp	w8, #0x5
     404: 540003c0     	b.eq	0x47c <gf_ioctl+0x478>
     408: 7100051f     	cmp	w8, #0x1
     40c: 540003c1     	b.ne	0x484 <gf_ioctl+0x480>
     410: 52800cd3     	mov	w19, #0x66              // =102
     414: 1400001f     	b	0x490 <gf_ioctl+0x48c>
     418: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b5
     41c: 91000000     	add	x0, x0, #0x0
		000000000000041c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b5
     420: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     424: 91000021     	add	x1, x1, #0x0
		0000000000000424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     428: 94000000     	bl	0x428 <gf_ioctl+0x424>
		0000000000000428:  R_AARCH64_CALL26	_printk
     42c: 910013e0     	add	x0, sp, #0x4
     430: aa1303e1     	mov	x1, x19
     434: 52800082     	mov	w2, #0x4                // =4
     438: 940001e1     	bl	0xbbc <_inline_copy_from_user>
     43c: b5000a40     	cbnz	x0, 0x584 <gf_ioctl+0x580>
     440: b94007e0     	ldr	w0, [sp, #0x4]
     444: 9400013f     	bl	0x940 <nav_event_input>
     448: 17ffffe6     	b	0x3e0 <gf_ioctl+0x3dc>
     44c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc97
     450: 91000000     	add	x0, x0, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc97
     454: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     458: 91000021     	add	x1, x1, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     45c: 94000000     	bl	0x45c <gf_ioctl+0x458>
		000000000000045c:  R_AARCH64_CALL26	_printk
     460: 94000113     	bl	0x8ac <gf_enable_irq>
     464: 17ffffdf     	b	0x3e0 <gf_ioctl+0x3dc>
     468: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a9
     46c: 91000000     	add	x0, x0, #0x0
		000000000000046c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a9
     470: 94000000     	bl	0x470 <gf_ioctl+0x46c>
		0000000000000470:  R_AARCH64_CALL26	_printk
     474: 928001a0     	mov	x0, #-0xe               // =-14
     478: 17ffff90     	b	0x2b8 <gf_ioctl+0x2b4>
     47c: 52801a93     	mov	w19, #0xd4              // =212
     480: 14000004     	b	0x490 <gf_ioctl+0x48c>
     484: 7100091f     	cmp	w8, #0x2
     488: 52800e89     	mov	w9, #0x74               // =116
     48c: 1a880133     	csel	w19, w9, w8, eq
     490: 294113e3     	ldp	w3, w4, [sp, #0x8]
     494: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
     498: 91000000     	add	x0, x0, #0x0
		0000000000000498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
     49c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000049c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70a
     4a0: 91000021     	add	x1, x1, #0x0
		00000000000004a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70a
     4a4: 2a1303e2     	mov	w2, w19
     4a8: 94000000     	bl	0x4a8 <gf_ioctl+0x4a4>
		00000000000004a8:  R_AARCH64_CALL26	_printk
     4ac: b9400be8     	ldr	w8, [sp, #0x8]
     4b0: 7100151f     	cmp	w8, #0x5
     4b4: 54000060     	b.eq	0x4c0 <gf_ioctl+0x4bc>
     4b8: 7100091f     	cmp	w8, #0x2
     4bc: 54000341     	b.ne	0x524 <gf_ioctl+0x520>
     4c0: b9400fe8     	ldr	w8, [sp, #0xc]
     4c4: 7100051f     	cmp	w8, #0x1
     4c8: 54fff8c1     	b.ne	0x3e0 <gf_ioctl+0x3dc>
     4cc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     4d0: 52800021     	mov	w1, #0x1                // =1
     4d4: 2a1303e2     	mov	w2, w19
     4d8: f9400280     	ldr	x0, [x20]
		00000000000004d8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     4dc: 52800023     	mov	w3, #0x1                // =1
     4e0: 94000000     	bl	0x4e0 <gf_ioctl+0x4dc>
		00000000000004e0:  R_AARCH64_CALL26	input_event
     4e4: f9400280     	ldr	x0, [x20]
		00000000000004e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     4e8: 2a1f03e1     	mov	w1, wzr
     4ec: 2a1f03e2     	mov	w2, wzr
     4f0: 2a1f03e3     	mov	w3, wzr
     4f4: 94000000     	bl	0x4f4 <gf_ioctl+0x4f0>
		00000000000004f4:  R_AARCH64_CALL26	input_event
     4f8: f9400280     	ldr	x0, [x20]
		00000000000004f8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     4fc: 52800021     	mov	w1, #0x1                // =1
     500: 2a1303e2     	mov	w2, w19
     504: 2a1f03e3     	mov	w3, wzr
     508: 94000000     	bl	0x508 <gf_ioctl+0x504>
		0000000000000508:  R_AARCH64_CALL26	input_event
     50c: f9400280     	ldr	x0, [x20]
		000000000000050c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     510: 2a1f03e1     	mov	w1, wzr
     514: 2a1f03e2     	mov	w2, wzr
     518: 2a1f03e3     	mov	w3, wzr
     51c: 94000000     	bl	0x51c <gf_ioctl+0x518>
		000000000000051c:  R_AARCH64_CALL26	input_event
     520: b9400be8     	ldr	w8, [sp, #0x8]
     524: 7100051f     	cmp	w8, #0x1
     528: 54fff5c1     	b.ne	0x3e0 <gf_ioctl+0x3dc>
     52c: b9400fe8     	ldr	w8, [sp, #0xc]
     530: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000530:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     534: 52800021     	mov	w1, #0x1                // =1
     538: f9400280     	ldr	x0, [x20]
		0000000000000538:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     53c: 2a1303e2     	mov	w2, w19
     540: 7100011f     	cmp	w8, #0x0
     544: 1a9f07e3     	cset	w3, ne
     548: 94000000     	bl	0x548 <gf_ioctl+0x544>
		0000000000000548:  R_AARCH64_CALL26	input_event
     54c: f9400280     	ldr	x0, [x20]
		000000000000054c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     550: 2a1f03e1     	mov	w1, wzr
     554: 2a1f03e2     	mov	w2, wzr
     558: 2a1f03e3     	mov	w3, wzr
     55c: 94000000     	bl	0x55c <gf_ioctl+0x558>
		000000000000055c:  R_AARCH64_CALL26	input_event
     560: 17ffffa0     	b	0x3e0 <gf_ioctl+0x3dc>
     564: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     568: 91000000     	add	x0, x0, #0x0
		0000000000000568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     56c: 94000000     	bl	0x56c <gf_ioctl+0x568>
		000000000000056c:  R_AARCH64_CALL26	_printk
     570: 17ffff93     	b	0x3bc <gf_ioctl+0x3b8>
     574: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     578: 91000000     	add	x0, x0, #0x0
		0000000000000578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     57c: 94000000     	bl	0x57c <gf_ioctl+0x578>
		000000000000057c:  R_AARCH64_CALL26	_printk
     580: 17ffff10     	b	0x1c0 <gf_ioctl+0x1bc>
     584: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcc
     588: 91000000     	add	x0, x0, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcc
     58c: 17ffffb9     	b	0x470 <gf_ioctl+0x46c>
     590: 94000000     	bl	0x590 <gf_ioctl+0x58c>
		0000000000000590:  R_AARCH64_CALL26	__stack_chk_fail
