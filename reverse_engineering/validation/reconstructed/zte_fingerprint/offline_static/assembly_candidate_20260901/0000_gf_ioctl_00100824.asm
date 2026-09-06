
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000180 <gf_ioctl>:
     180: d503233f     	paciasp
     184: d10143ff     	sub	sp, sp, #0x50
     188: a9017bfd     	stp	x29, x30, [sp, #0x10]
     18c: f90013f7     	str	x23, [sp, #0x20]
     190: a90357f6     	stp	x22, x21, [sp, #0x30]
     194: a9044ff4     	stp	x20, x19, [sp, #0x40]
     198: 910043fd     	add	x29, sp, #0x10
     19c: d5384108     	mrs	x8, SP_EL0
     1a0: f9438908     	ldr	x8, [x8, #0x710]
     1a4: f90007e8     	str	x8, [sp, #0x8]
     1a8: f9401013     	ldr	x19, [x0, #0x20]
     1ac: b40002f3     	cbz	x19, 0x208 <gf_ioctl+0x88>
     1b0: 12181c28     	and	w8, w1, #0xff00
     1b4: 528ce009     	mov	w9, #0x6700             // =26368
     1b8: 6b09011f     	cmp	w8, w9
     1bc: 540002a1     	b.ne	0x210 <gf_ioctl+0x90>
     1c0: 3941c268     	ldrb	w8, [x19, #0x70]
     1c4: 34000ee8     	cbz	w8, 0x3a0 <gf_ioctl+0x220>
     1c8: 528ce1a8     	mov	w8, #0x670d             // =26381
     1cc: 72a80088     	movk	w8, #0x4004, lsl #16
     1d0: 6b08003f     	cmp	w1, w8
     1d4: 5400022d     	b.le	0x218 <gf_ioctl+0x98>
     1d8: 528ce1a8     	mov	w8, #0x670d             // =26381
     1dc: 72a80108     	movk	w8, #0x4008, lsl #16
     1e0: 6b08003f     	cmp	w1, w8
     1e4: 54000a21     	b.ne	0x328 <gf_ioctl+0x1a8>
     1e8: 910003e0     	mov	x0, sp
     1ec: aa0203e1     	mov	x1, x2
     1f0: 52800102     	mov	w2, #0x8                // =8
     1f4: f90003ff     	str	xzr, [sp]
     1f8: 9400037a     	bl	0xfe0 <_inline_copy_from_user>
     1fc: b40018a0     	cbz	x0, 0x510 <gf_ioctl+0x390>
     200: 928001a0     	mov	x0, #-0xe               // =-14
     204: 140000d6     	b	0x55c <gf_ioctl+0x3dc>
     208: 928002a0     	mov	x0, #-0x16              // =-22
     20c: 140000d4     	b	0x55c <gf_ioctl+0x3dc>
     210: 92800300     	mov	x0, #-0x19              // =-25
     214: 140000d2     	b	0x55c <gf_ioctl+0x3dc>
     218: 528ce068     	mov	w8, #0x6703             // =26371
     21c: 6b08003f     	cmp	w1, w8
     220: 540002ad     	b.le	0x274 <gf_ioctl+0xf4>
     224: 528ce0e8     	mov	w8, #0x6707             // =26375
     228: 6b08003f     	cmp	w1, w8
     22c: 540005ad     	b.le	0x2e0 <gf_ioctl+0x160>
     230: 528ce108     	mov	w8, #0x6708             // =26376
     234: 6b08003f     	cmp	w1, w8
     238: 54001100     	b.eq	0x458 <gf_ioctl+0x2d8>
     23c: 528ce148     	mov	w8, #0x670a             // =26378
     240: 6b08003f     	cmp	w1, w8
     244: 54000fe0     	b.eq	0x440 <gf_ioctl+0x2c0>
     248: 528ce188     	mov	w8, #0x670c             // =26380
     24c: 6b08003f     	cmp	w1, w8
     250: 540011a1     	b.ne	0x484 <gf_ioctl+0x304>
     254: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2d
     258: 91000000     	add	x0, x0, #0x0
		0000000000000258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2d
     25c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     264: 94000000     	bl	0x264 <gf_ioctl+0xe4>
		0000000000000264:  R_AARCH64_CALL26	_printk
     268: aa1303e0     	mov	x0, x19
     26c: 9400028c     	bl	0xc9c <gf_cleanup>
     270: 140000b9     	b	0x554 <gf_ioctl+0x3d4>
     274: 528ce028     	mov	w8, #0x6701             // =26369
     278: 6b08003f     	cmp	w1, w8
     27c: 5400016c     	b.gt	0x2a8 <gf_ioctl+0x128>
     280: 528ce008     	mov	w8, #0x6700             // =26368
     284: 72b00088     	movk	w8, #0x8004, lsl #16
     288: 6b08003f     	cmp	w1, w8
     28c: 54000a00     	b.eq	0x3cc <gf_ioctl+0x24c>
     290: 528ce028     	mov	w8, #0x6701             // =26369
     294: 6b08003f     	cmp	w1, w8
     298: 54000f61     	b.ne	0x484 <gf_ioctl+0x304>
     29c: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		000000000000029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98b
     2a0: 91000000     	add	x0, x0, #0x0
		00000000000002a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98b
     2a4: 14000069     	b	0x448 <gf_ioctl+0x2c8>
     2a8: 528ce048     	mov	w8, #0x6702             // =26370
     2ac: 6b08003f     	cmp	w1, w8
     2b0: 54000a80     	b.eq	0x400 <gf_ioctl+0x280>
     2b4: 528ce068     	mov	w8, #0x6703             // =26371
     2b8: 6b08003f     	cmp	w1, w8
     2bc: 54000e41     	b.ne	0x484 <gf_ioctl+0x304>
     2c0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x371
     2c4: 91000000     	add	x0, x0, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x371
     2c8: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     2cc: 91000021     	add	x1, x1, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     2d0: 94000000     	bl	0x2d0 <gf_ioctl+0x150>
		00000000000002d0:  R_AARCH64_CALL26	_printk
     2d4: aa1303e0     	mov	x0, x19
     2d8: 940001e7     	bl	0xa74 <gf_enable_irq>
     2dc: 1400009e     	b	0x554 <gf_ioctl+0x3d4>
     2e0: 528ce088     	mov	w8, #0x6704             // =26372
     2e4: 6b08003f     	cmp	w1, w8
     2e8: 540009c0     	b.eq	0x420 <gf_ioctl+0x2a0>
     2ec: 528ce0e8     	mov	w8, #0x6707             // =26375
     2f0: 6b08003f     	cmp	w1, w8
     2f4: 54000c81     	b.ne	0x484 <gf_ioctl+0x304>
     2f8: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     2fc: 91000000     	add	x0, x0, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     300: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     304: 91000021     	add	x1, x1, #0x0
		0000000000000304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     308: 94000000     	bl	0x308 <gf_ioctl+0x188>
		0000000000000308:  R_AARCH64_CALL26	_printk
     30c: 3941c268     	ldrb	w8, [x19, #0x70]
     310: 350013e8     	cbnz	w8, 0x58c <gf_ioctl+0x40c>
     314: aa1303e0     	mov	x0, x19
     318: 94000203     	bl	0xb24 <gf_power_on>
     31c: 52800028     	mov	w8, #0x1                // =1
     320: 3901c268     	strb	w8, [x19, #0x70]
     324: 1400008d     	b	0x558 <gf_ioctl+0x3d8>
     328: 528ce1c8     	mov	w8, #0x670e             // =26382
     32c: 72a80088     	movk	w8, #0x4004, lsl #16
     330: 6b08003f     	cmp	w1, w8
     334: 54000ba0     	b.eq	0x4a8 <gf_ioctl+0x328>
     338: 528ce128     	mov	w8, #0x6709             // =26377
     33c: 72a80108     	movk	w8, #0x4008, lsl #16
     340: 6b08003f     	cmp	w1, w8
     344: 54000a01     	b.ne	0x484 <gf_ioctl+0x304>
     348: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5d
     34c: 91000000     	add	x0, x0, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5d
     350: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     354: 91000021     	add	x1, x1, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     358: f90003ff     	str	xzr, [sp]
     35c: aa0203f4     	mov	x20, x2
     360: 94000000     	bl	0x360 <gf_ioctl+0x1e0>
		0000000000000360:  R_AARCH64_CALL26	_printk
     364: 910003e0     	mov	x0, sp
     368: aa1403e1     	mov	x1, x20
     36c: 52800102     	mov	w2, #0x8                // =8
     370: 9400031c     	bl	0xfe0 <_inline_copy_from_user>
     374: b5fff460     	cbnz	x0, 0x200 <gf_ioctl+0x80>
     378: f94003f4     	ldr	x20, [sp]
     37c: 7100169f     	cmp	w20, #0x5
     380: 54001280     	b.eq	0x5d0 <gf_ioctl+0x450>
     384: 71000a9f     	cmp	w20, #0x2
     388: 54001200     	b.eq	0x5c8 <gf_ioctl+0x448>
     38c: 7100069f     	cmp	w20, #0x1
     390: 2a1403f5     	mov	w21, w20
     394: 54001201     	b.ne	0x5d4 <gf_ioctl+0x454>
     398: 52800cd5     	mov	w21, #0x66              // =102
     39c: 1400008e     	b	0x5d4 <gf_ioctl+0x454>
     3a0: 128ce108     	mov	w8, #-0x6709            // =-26377
     3a4: 0b080028     	add	w8, w1, w8
     3a8: 31000d1f     	cmn	w8, #0x3
     3ac: 540009c8     	b.hi	0x4e4 <gf_ioctl+0x364>
     3b0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4a
     3b4: 91000000     	add	x0, x0, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4a
     3b8: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000003b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     3bc: 91000021     	add	x1, x1, #0x0
		00000000000003bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     3c0: 94000000     	bl	0x3c0 <gf_ioctl+0x240>
		00000000000003c0:  R_AARCH64_CALL26	_printk
     3c4: 92800240     	mov	x0, #-0x13              // =-19
     3c8: 14000065     	b	0x55c <gf_ioctl+0x3dc>
     3cc: 52800328     	mov	w8, #0x19               // =25
     3d0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000003d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfb1
     3d4: 91000000     	add	x0, x0, #0x0
		00000000000003d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfb1
     3d8: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     3dc: 91000021     	add	x1, x1, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     3e0: 390003e8     	strb	w8, [sp]
     3e4: aa0203f3     	mov	x19, x2
     3e8: 94000000     	bl	0x3e8 <gf_ioctl+0x268>
		00000000000003e8:  R_AARCH64_CALL26	_printk
     3ec: 910003e1     	mov	x1, sp
     3f0: aa1303e0     	mov	x0, x19
     3f4: 940002d0     	bl	0xf34 <_inline_copy_to_user>
     3f8: b5fff040     	cbnz	x0, 0x200 <gf_ioctl+0x80>
     3fc: 14000057     	b	0x558 <gf_ioctl+0x3d8>
     400: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     404: 91000000     	add	x0, x0, #0x0
		0000000000000404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     408: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     40c: 91000021     	add	x1, x1, #0x0
		000000000000040c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     410: 94000000     	bl	0x410 <gf_ioctl+0x290>
		0000000000000410:  R_AARCH64_CALL26	_printk
     414: aa1303e0     	mov	x0, x19
     418: 9400016d     	bl	0x9cc <gf_hw_reset>
     41c: 1400004e     	b	0x554 <gf_ioctl+0x3d4>
     420: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3d
     424: 91000000     	add	x0, x0, #0x0
		0000000000000424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3d
     428: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     42c: 91000021     	add	x1, x1, #0x0
		000000000000042c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     430: 94000000     	bl	0x430 <gf_ioctl+0x2b0>
		0000000000000430:  R_AARCH64_CALL26	_printk
     434: aa1303e0     	mov	x0, x19
     438: 940001a7     	bl	0xad4 <gf_disable_irq>
     43c: 14000046     	b	0x554 <gf_ioctl+0x3d4>
     440: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd1
     444: 91000000     	add	x0, x0, #0x0
		0000000000000444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd1
     448: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     44c: 91000021     	add	x1, x1, #0x0
		000000000000044c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     450: 94000000     	bl	0x450 <gf_ioctl+0x2d0>
		0000000000000450:  R_AARCH64_CALL26	_printk
     454: 14000040     	b	0x554 <gf_ioctl+0x3d4>
     458: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbc
     45c: 91000000     	add	x0, x0, #0x0
		000000000000045c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbc
     460: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     464: 91000021     	add	x1, x1, #0x0
		0000000000000464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     468: 94000000     	bl	0x468 <gf_ioctl+0x2e8>
		0000000000000468:  R_AARCH64_CALL26	_printk
     46c: 3941c268     	ldrb	w8, [x19, #0x70]
     470: 340009c8     	cbz	w8, 0x5a8 <gf_ioctl+0x428>
     474: aa1303e0     	mov	x0, x19
     478: 940001da     	bl	0xbe0 <gf_power_off>
     47c: 3901c27f     	strb	wzr, [x19, #0x70]
     480: 14000036     	b	0x558 <gf_ioctl+0x3d8>
     484: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     488: 91000108     	add	x8, x8, #0x0
		0000000000000488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     48c: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50
     490: 91000000     	add	x0, x0, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50
     494: 2a0103e2     	mov	w2, w1
     498: aa0803e1     	mov	x1, x8
     49c: 94000000     	bl	0x49c <gf_ioctl+0x31c>
		000000000000049c:  R_AARCH64_CALL26	_printk
     4a0: 928002a0     	mov	x0, #-0x16              // =-22
     4a4: 1400002e     	b	0x55c <gf_ioctl+0x3dc>
     4a8: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x543
     4ac: 91000000     	add	x0, x0, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x543
     4b0: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     4b8: b90003ff     	str	wzr, [sp]
     4bc: aa0203f3     	mov	x19, x2
     4c0: 94000000     	bl	0x4c0 <gf_ioctl+0x340>
		00000000000004c0:  R_AARCH64_CALL26	_printk
     4c4: 910003e0     	mov	x0, sp
     4c8: aa1303e1     	mov	x1, x19
     4cc: 52800082     	mov	w2, #0x4                // =4
     4d0: 940002c4     	bl	0xfe0 <_inline_copy_from_user>
     4d4: b5ffe960     	cbnz	x0, 0x200 <gf_ioctl+0x80>
     4d8: b94003e0     	ldr	w0, [sp]
     4dc: 94000227     	bl	0xd78 <nav_event_input>
     4e0: 1400001d     	b	0x554 <gf_ioctl+0x3d4>
     4e4: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		00000000000004e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     4e8: 91000108     	add	x8, x8, #0x0
		00000000000004e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     4ec: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x625
     4f0: 91000000     	add	x0, x0, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x625
     4f4: 2a0103f4     	mov	w20, w1
     4f8: aa0803e1     	mov	x1, x8
     4fc: aa0203f5     	mov	x21, x2
     500: 94000000     	bl	0x500 <gf_ioctl+0x380>
		0000000000000500:  R_AARCH64_CALL26	_printk
     504: 2a1403e1     	mov	w1, w20
     508: aa1503e2     	mov	x2, x21
     50c: 17ffff2f     	b	0x1c8 <gf_ioctl+0x48>
     510: 394003e2     	ldrb	w2, [sp]
     514: 90000013     	adrp	x19, 0x0 <zte_goodix_pinctrl_select>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     518: 91000273     	add	x19, x19, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     51c: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		000000000000051c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbda
     520: 91000000     	add	x0, x0, #0x0
		0000000000000520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbda
     524: aa1303e1     	mov	x1, x19
     528: 94000000     	bl	0x528 <gf_ioctl+0x3a8>
		0000000000000528:  R_AARCH64_CALL26	_printk
     52c: 394007e2     	ldrb	w2, [sp, #0x1]
     530: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfe
     534: 91000000     	add	x0, x0, #0x0
		0000000000000534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfe
     538: aa1303e1     	mov	x1, x19
     53c: 94000000     	bl	0x53c <gf_ioctl+0x3bc>
		000000000000053c:  R_AARCH64_CALL26	_printk
     540: 39400be2     	ldrb	w2, [sp, #0x2]
     544: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2
     548: 91000000     	add	x0, x0, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2
     54c: aa1303e1     	mov	x1, x19
     550: 94000000     	bl	0x550 <gf_ioctl+0x3d0>
		0000000000000550:  R_AARCH64_CALL26	_printk
     554: 2a1f03e0     	mov	w0, wzr
     558: 93407c00     	sxtw	x0, w0
     55c: d5384108     	mrs	x8, SP_EL0
     560: f9438908     	ldr	x8, [x8, #0x710]
     564: f94007e9     	ldr	x9, [sp, #0x8]
     568: eb09011f     	cmp	x8, x9
     56c: 54000961     	b.ne	0x698 <gf_ioctl+0x518>
     570: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     574: f94013f7     	ldr	x23, [sp, #0x20]
     578: a94357f6     	ldp	x22, x21, [sp, #0x30]
     57c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     580: 910143ff     	add	sp, sp, #0x50
     584: d50323bf     	autiasp
     588: d65f03c0     	ret
     58c: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68c
     590: 91000000     	add	x0, x0, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68c
     594: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     598: 91000021     	add	x1, x1, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     59c: 94000000     	bl	0x59c <gf_ioctl+0x41c>
		000000000000059c:  R_AARCH64_CALL26	_printk
     5a0: 2a1f03e0     	mov	w0, wzr
     5a4: 17ffff5e     	b	0x31c <gf_ioctl+0x19c>
     5a8: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x721
     5ac: 91000000     	add	x0, x0, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x721
     5b0: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000005b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     5b4: 91000021     	add	x1, x1, #0x0
		00000000000005b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     5b8: 94000000     	bl	0x5b8 <gf_ioctl+0x438>
		00000000000005b8:  R_AARCH64_CALL26	_printk
     5bc: 2a1f03e0     	mov	w0, wzr
     5c0: 3901c27f     	strb	wzr, [x19, #0x70]
     5c4: 17ffffe5     	b	0x558 <gf_ioctl+0x3d8>
     5c8: 52800e95     	mov	w21, #0x74              // =116
     5cc: 14000002     	b	0x5d4 <gf_ioctl+0x454>
     5d0: 52801a95     	mov	w21, #0xd4              // =212
     5d4: d360fe97     	lsr	x23, x20, #32
     5d8: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000005d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x561
     5dc: 91000000     	add	x0, x0, #0x0
		00000000000005dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x561
     5e0: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		00000000000005e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd24
     5e4: 91000021     	add	x1, x1, #0x0
		00000000000005e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd24
     5e8: f10002ff     	cmp	x23, #0x0
     5ec: 2a1403e2     	mov	w2, w20
     5f0: 1a9f07f6     	cset	w22, ne
     5f4: 2a1503e3     	mov	w3, w21
     5f8: 2a1603e4     	mov	w4, w22
     5fc: 94000000     	bl	0x5fc <gf_ioctl+0x47c>
		00000000000005fc:  R_AARCH64_CALL26	_printk
     600: 710352bf     	cmp	w21, #0xd4
     604: 54000060     	b.eq	0x610 <gf_ioctl+0x490>
     608: 7101d2bf     	cmp	w21, #0x74
     60c: 540002c1     	b.ne	0x664 <gf_ioctl+0x4e4>
     610: b40002b7     	cbz	x23, 0x664 <gf_ioctl+0x4e4>
     614: f9401660     	ldr	x0, [x19, #0x28]
     618: 52800021     	mov	w1, #0x1                // =1
     61c: 2a1503e2     	mov	w2, w21
     620: 52800023     	mov	w3, #0x1                // =1
     624: 94000000     	bl	0x624 <gf_ioctl+0x4a4>
		0000000000000624:  R_AARCH64_CALL26	input_event
     628: f9401660     	ldr	x0, [x19, #0x28]
     62c: 2a1f03e1     	mov	w1, wzr
     630: 2a1f03e2     	mov	w2, wzr
     634: 2a1f03e3     	mov	w3, wzr
     638: 94000000     	bl	0x638 <gf_ioctl+0x4b8>
		0000000000000638:  R_AARCH64_CALL26	input_event
     63c: f9401660     	ldr	x0, [x19, #0x28]
     640: 52800021     	mov	w1, #0x1                // =1
     644: 2a1503e2     	mov	w2, w21
     648: 2a1f03e3     	mov	w3, wzr
     64c: 94000000     	bl	0x64c <gf_ioctl+0x4cc>
		000000000000064c:  R_AARCH64_CALL26	input_event
     650: f9401660     	ldr	x0, [x19, #0x28]
     654: 2a1f03e1     	mov	w1, wzr
     658: 2a1f03e2     	mov	w2, wzr
     65c: 2a1f03e3     	mov	w3, wzr
     660: 94000000     	bl	0x660 <gf_ioctl+0x4e0>
		0000000000000660:  R_AARCH64_CALL26	input_event
     664: 7100069f     	cmp	w20, #0x1
     668: 54fff761     	b.ne	0x554 <gf_ioctl+0x3d4>
     66c: 52800021     	mov	w1, #0x1                // =1
     670: 2a1503e2     	mov	w2, w21
     674: f9401660     	ldr	x0, [x19, #0x28]
     678: 2a1603e3     	mov	w3, w22
     67c: 94000000     	bl	0x67c <gf_ioctl+0x4fc>
		000000000000067c:  R_AARCH64_CALL26	input_event
     680: f9401660     	ldr	x0, [x19, #0x28]
     684: 2a1f03e1     	mov	w1, wzr
     688: 2a1f03e2     	mov	w2, wzr
     68c: 2a1f03e3     	mov	w3, wzr
     690: 94000000     	bl	0x690 <gf_ioctl+0x510>
		0000000000000690:  R_AARCH64_CALL26	input_event
     694: 17ffffb0     	b	0x554 <gf_ioctl+0x3d4>
     698: 94000000     	bl	0x698 <gf_ioctl+0x518>
		0000000000000698:  R_AARCH64_CALL26	__stack_chk_fail
