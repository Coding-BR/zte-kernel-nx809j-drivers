
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
      40: 54001881     	b.ne	0x350 <gf_ioctl+0x34c>
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
      94: 140000b0     	b	0x354 <gf_ioctl+0x350>
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
      e0: 540013a0     	b.eq	0x354 <gf_ioctl+0x350>
      e4: 140000a7     	b	0x380 <gf_ioctl+0x37c>
      e8: 528ce048     	mov	w8, #0x6702             // =26370
      ec: 6b08003f     	cmp	w1, w8
      f0: 5400026d     	b.le	0x13c <gf_ioctl+0x138>
      f4: 528ce0c8     	mov	w8, #0x6706             // =26374
      f8: 6b08003f     	cmp	w1, w8
      fc: 540012c0     	b.eq	0x354 <gf_ioctl+0x350>
     100: 528ce068     	mov	w8, #0x6703             // =26371
     104: 6b08003f     	cmp	w1, w8
     108: 54001a80     	b.eq	0x458 <gf_ioctl+0x454>
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
     134: 940001e1     	bl	0x8b8 <gf_disable_irq>
     138: 140000aa     	b	0x3e0 <gf_ioctl+0x3dc>
     13c: 528ce008     	mov	w8, #0x6700             // =26368
     140: 6b08003f     	cmp	w1, w8
     144: 5400044c     	b.gt	0x1cc <gf_ioctl+0x1c8>
     148: 528ce008     	mov	w8, #0x6700             // =26368
     14c: 72b00028     	movk	w8, #0x8001, lsl #16
     150: 6b08003f     	cmp	w1, w8
     154: 54000d80     	b.eq	0x304 <gf_ioctl+0x300>
     158: 528ce168     	mov	w8, #0x670b             // =26379
     15c: 72b00028     	movk	w8, #0x8001, lsl #16
     160: 6b08003f     	cmp	w1, w8
     164: 540010e1     	b.ne	0x380 <gf_ioctl+0x37c>
     168: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b3
     16c: 91000000     	add	x0, x0, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b3
     170: 14000099     	b	0x3d4 <gf_ioctl+0x3d0>
     174: 528ce128     	mov	w8, #0x6709             // =26377
     178: 6b08003f     	cmp	w1, w8
     17c: 54000a6c     	b.gt	0x2c8 <gf_ioctl+0x2c4>
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
     1b0: 34001e88     	cbz	w8, 0x580 <gf_ioctl+0x57c>
     1b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     1b8: 91000000     	add	x0, x0, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     1bc: 94000000     	bl	0x1bc <gf_ioctl+0x1b8>
		00000000000001bc:  R_AARCH64_CALL26	gf_power_off
     1c0: aa1f03e0     	mov	x0, xzr
     1c4: 3900027f     	strb	wzr, [x19]
		00000000000001c4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x80
     1c8: 14000063     	b	0x354 <gf_ioctl+0x350>
     1cc: 528ce028     	mov	w8, #0x6701             // =26369
     1d0: 6b08003f     	cmp	w1, w8
     1d4: 54000b20     	b.eq	0x338 <gf_ioctl+0x334>
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
     210: 72a80088     	movk	w8, #0x4004, lsl #16
     214: 6b08003f     	cmp	w1, w8
     218: 54001040     	b.eq	0x420 <gf_ioctl+0x41c>
     21c: 528ce128     	mov	w8, #0x6709             // =26377
     220: 72a80108     	movk	w8, #0x4008, lsl #16
     224: 6b08003f     	cmp	w1, w8
     228: 54000e00     	b.eq	0x3e8 <gf_ioctl+0x3e4>
     22c: 528ce1a8     	mov	w8, #0x670d             // =26381
     230: 72a80108     	movk	w8, #0x4008, lsl #16
     234: 6b08003f     	cmp	w1, w8
     238: 54000a41     	b.ne	0x380 <gf_ioctl+0x37c>
     23c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfcc
     240: 91000000     	add	x0, x0, #0x0
		0000000000000240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfcc
     244: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     248: 91000021     	add	x1, x1, #0x0
		0000000000000248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     24c: aa0203f3     	mov	x19, x2
     250: 94000000     	bl	0x250 <gf_ioctl+0x24c>
		0000000000000250:  R_AARCH64_CALL26	_printk
     254: 910043e0     	add	x0, sp, #0x10
     258: aa1303e1     	mov	x1, x19
     25c: 52800102     	mov	w2, #0x8                // =8
     260: 9400025a     	bl	0xbc8 <_inline_copy_from_user>
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
     2a0: 7100051f     	cmp	w8, #0x1
     2a4: 54000508     	b.hi	0x344 <gf_ioctl+0x340>
     2a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
     2ac: 91000000     	add	x0, x0, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
     2b0: 2a0103f4     	mov	w20, w1
     2b4: aa0203f5     	mov	x21, x2
     2b8: 94000000     	bl	0x2b8 <gf_ioctl+0x2b4>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: aa1503e2     	mov	x2, x21
     2c0: 2a1403e1     	mov	w1, w20
     2c4: 17ffff78     	b	0xa4 <gf_ioctl+0xa0>
     2c8: 528ce148     	mov	w8, #0x670a             // =26378
     2cc: 6b08003f     	cmp	w1, w8
     2d0: 540007e0     	b.eq	0x3cc <gf_ioctl+0x3c8>
     2d4: 528ce188     	mov	w8, #0x670c             // =26380
     2d8: 6b08003f     	cmp	w1, w8
     2dc: 54000521     	b.ne	0x380 <gf_ioctl+0x37c>
     2e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2
     2e4: 91000000     	add	x0, x0, #0x0
		00000000000002e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2
     2e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     2ec: 91000021     	add	x1, x1, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     2f0: 94000000     	bl	0x2f0 <gf_ioctl+0x2ec>
		00000000000002f0:  R_AARCH64_CALL26	_printk
     2f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     2f8: 91000000     	add	x0, x0, #0x0
		00000000000002f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
     2fc: 94000000     	bl	0x2fc <gf_ioctl+0x2f8>
		00000000000002fc:  R_AARCH64_CALL26	gf_cleanup
     300: 14000038     	b	0x3e0 <gf_ioctl+0x3dc>
     304: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5
     308: 91000000     	add	x0, x0, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5
     30c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     310: 91000021     	add	x1, x1, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     314: aa0203f3     	mov	x19, x2
     318: 94000000     	bl	0x318 <gf_ioctl+0x314>
		0000000000000318:  R_AARCH64_CALL26	_printk
     31c: 910003e1     	mov	x1, sp
     320: aa1303e0     	mov	x0, x19
     324: 940001fe     	bl	0xb1c <_inline_copy_to_user>
     328: 928001a8     	mov	x8, #-0xe               // =-14
     32c: f100001f     	cmp	x0, #0x0
     330: 9a8803e0     	csel	x0, xzr, x8, eq
     334: 14000008     	b	0x354 <gf_ioctl+0x350>
     338: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c7
     33c: 91000000     	add	x0, x0, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c7
     340: 14000025     	b	0x3d4 <gf_ioctl+0x3d0>
     344: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78
     348: 91000000     	add	x0, x0, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78
     34c: 94000000     	bl	0x34c <gf_ioctl+0x348>
		000000000000034c:  R_AARCH64_CALL26	_printk
     350: 92800240     	mov	x0, #-0x13              // =-19
     354: d5384108     	mrs	x8, SP_EL0
     358: f9438908     	ldr	x8, [x8, #0x710]
     35c: f85f83a9     	ldur	x9, [x29, #-0x8]
     360: eb09011f     	cmp	x8, x9
     364: 540011c1     	b.ne	0x59c <gf_ioctl+0x598>
     368: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     36c: f9401bf5     	ldr	x21, [sp, #0x30]
     370: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     374: 910143ff     	add	sp, sp, #0x50
     378: d50323bf     	autiasp
     37c: d65f03c0     	ret
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
     3ac: 54000e20     	b.eq	0x570 <gf_ioctl+0x56c>
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
     3c8: 17ffffe3     	b	0x354 <gf_ioctl+0x350>
     3cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48a
     3d0: 91000000     	add	x0, x0, #0x0
		00000000000003d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48a
     3d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     3d8: 91000021     	add	x1, x1, #0x0
		00000000000003d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     3dc: 94000000     	bl	0x3dc <gf_ioctl+0x3d8>
		00000000000003dc:  R_AARCH64_CALL26	_printk
     3e0: aa1f03e0     	mov	x0, xzr
     3e4: 17ffffdc     	b	0x354 <gf_ioctl+0x350>
     3e8: 910023e0     	add	x0, sp, #0x8
     3ec: aa0203e1     	mov	x1, x2
     3f0: 52800102     	mov	w2, #0x8                // =8
     3f4: 940001f5     	bl	0xbc8 <_inline_copy_from_user>
     3f8: b50003e0     	cbnz	x0, 0x474 <gf_ioctl+0x470>
     3fc: b9400be3     	ldr	w3, [sp, #0x8]
     400: 7100047f     	cmp	w3, #0x1
     404: 54000460     	b.eq	0x490 <gf_ioctl+0x48c>
     408: 7100147f     	cmp	w3, #0x5
     40c: 540003e0     	b.eq	0x488 <gf_ioctl+0x484>
     410: 7100087f     	cmp	w3, #0x2
     414: 54000421     	b.ne	0x498 <gf_ioctl+0x494>
     418: 52800e93     	mov	w19, #0x74              // =116
     41c: 14000020     	b	0x49c <gf_ioctl+0x498>
     420: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468
     424: 91000000     	add	x0, x0, #0x0
		0000000000000424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468
     428: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     42c: 91000021     	add	x1, x1, #0x0
		000000000000042c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     430: aa0203f3     	mov	x19, x2
     434: 94000000     	bl	0x434 <gf_ioctl+0x430>
		0000000000000434:  R_AARCH64_CALL26	_printk
     438: 910013e0     	add	x0, sp, #0x4
     43c: aa1303e1     	mov	x1, x19
     440: 52800082     	mov	w2, #0x4                // =4
     444: 940001e1     	bl	0xbc8 <_inline_copy_from_user>
     448: b5000a40     	cbnz	x0, 0x590 <gf_ioctl+0x58c>
     44c: b94007e0     	ldr	w0, [sp, #0x4]
     450: 9400013f     	bl	0x94c <nav_event_input>
     454: 17ffffe3     	b	0x3e0 <gf_ioctl+0x3dc>
     458: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc97
     45c: 91000000     	add	x0, x0, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc97
     460: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc3
     464: 91000021     	add	x1, x1, #0x0
		0000000000000464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc3
     468: 94000000     	bl	0x468 <gf_ioctl+0x464>
		0000000000000468:  R_AARCH64_CALL26	_printk
     46c: 94000123     	bl	0x8f8 <gf_enable_irq>
     470: 17ffffdc     	b	0x3e0 <gf_ioctl+0x3dc>
     474: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a9
     478: 91000000     	add	x0, x0, #0x0
		0000000000000478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a9
     47c: 94000000     	bl	0x47c <gf_ioctl+0x478>
		000000000000047c:  R_AARCH64_CALL26	_printk
     480: 928001a0     	mov	x0, #-0xe               // =-14
     484: 17ffffb4     	b	0x354 <gf_ioctl+0x350>
     488: 52801a93     	mov	w19, #0xd4              // =212
     48c: 14000004     	b	0x49c <gf_ioctl+0x498>
     490: 52800cd3     	mov	w19, #0x66              // =102
     494: 14000002     	b	0x49c <gf_ioctl+0x498>
     498: 2a0303f3     	mov	w19, w3
     49c: b9400fe4     	ldr	w4, [sp, #0xc]
     4a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
     4a4: 91000000     	add	x0, x0, #0x0
		00000000000004a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
     4a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70a
     4ac: 91000021     	add	x1, x1, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70a
     4b0: 2a1303e2     	mov	w2, w19
     4b4: 94000000     	bl	0x4b4 <gf_ioctl+0x4b0>
		00000000000004b4:  R_AARCH64_CALL26	_printk
     4b8: b9400be8     	ldr	w8, [sp, #0x8]
     4bc: 7100151f     	cmp	w8, #0x5
     4c0: 54000060     	b.eq	0x4cc <gf_ioctl+0x4c8>
     4c4: 7100091f     	cmp	w8, #0x2
     4c8: 54000341     	b.ne	0x530 <gf_ioctl+0x52c>
     4cc: b9400fe8     	ldr	w8, [sp, #0xc]
     4d0: 7100051f     	cmp	w8, #0x1
     4d4: 54fff861     	b.ne	0x3e0 <gf_ioctl+0x3dc>
     4d8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000004d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     4dc: 52800021     	mov	w1, #0x1                // =1
     4e0: 2a1303e2     	mov	w2, w19
     4e4: f9400280     	ldr	x0, [x20]
		00000000000004e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     4e8: 52800023     	mov	w3, #0x1                // =1
     4ec: 94000000     	bl	0x4ec <gf_ioctl+0x4e8>
		00000000000004ec:  R_AARCH64_CALL26	input_event
     4f0: f9400280     	ldr	x0, [x20]
		00000000000004f0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     4f4: 2a1f03e1     	mov	w1, wzr
     4f8: 2a1f03e2     	mov	w2, wzr
     4fc: 2a1f03e3     	mov	w3, wzr
     500: 94000000     	bl	0x500 <gf_ioctl+0x4fc>
		0000000000000500:  R_AARCH64_CALL26	input_event
     504: f9400280     	ldr	x0, [x20]
		0000000000000504:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     508: 52800021     	mov	w1, #0x1                // =1
     50c: 2a1303e2     	mov	w2, w19
     510: 2a1f03e3     	mov	w3, wzr
     514: 94000000     	bl	0x514 <gf_ioctl+0x510>
		0000000000000514:  R_AARCH64_CALL26	input_event
     518: f9400280     	ldr	x0, [x20]
		0000000000000518:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     51c: 2a1f03e1     	mov	w1, wzr
     520: 2a1f03e2     	mov	w2, wzr
     524: 2a1f03e3     	mov	w3, wzr
     528: 94000000     	bl	0x528 <gf_ioctl+0x524>
		0000000000000528:  R_AARCH64_CALL26	input_event
     52c: b9400be8     	ldr	w8, [sp, #0x8]
     530: 7100051f     	cmp	w8, #0x1
     534: 54fff561     	b.ne	0x3e0 <gf_ioctl+0x3dc>
     538: b9400fe8     	ldr	w8, [sp, #0xc]
     53c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000053c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x40
     540: 52800021     	mov	w1, #0x1                // =1
     544: f9400280     	ldr	x0, [x20]
		0000000000000544:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     548: 2a1303e2     	mov	w2, w19
     54c: 7100011f     	cmp	w8, #0x0
     550: 1a9f07e3     	cset	w3, ne
     554: 94000000     	bl	0x554 <gf_ioctl+0x550>
		0000000000000554:  R_AARCH64_CALL26	input_event
     558: f9400280     	ldr	x0, [x20]
		0000000000000558:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x40
     55c: 2a1f03e1     	mov	w1, wzr
     560: 2a1f03e2     	mov	w2, wzr
     564: 2a1f03e3     	mov	w3, wzr
     568: 94000000     	bl	0x568 <gf_ioctl+0x564>
		0000000000000568:  R_AARCH64_CALL26	input_event
     56c: 17ffff9d     	b	0x3e0 <gf_ioctl+0x3dc>
     570: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     574: 91000000     	add	x0, x0, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     578: 94000000     	bl	0x578 <gf_ioctl+0x574>
		0000000000000578:  R_AARCH64_CALL26	_printk
     57c: 17ffff90     	b	0x3bc <gf_ioctl+0x3b8>
     580: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     584: 91000000     	add	x0, x0, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     588: 94000000     	bl	0x588 <gf_ioctl+0x584>
		0000000000000588:  R_AARCH64_CALL26	_printk
     58c: 17ffff0d     	b	0x1c0 <gf_ioctl+0x1bc>
     590: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcc
     594: 91000000     	add	x0, x0, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcc
     598: 17ffffb9     	b	0x47c <gf_ioctl+0x478>
     59c: 94000000     	bl	0x59c <gf_ioctl+0x598>
		000000000000059c:  R_AARCH64_CALL26	__stack_chk_fail
