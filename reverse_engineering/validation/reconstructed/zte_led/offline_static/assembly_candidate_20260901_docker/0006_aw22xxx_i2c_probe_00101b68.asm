
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000168 <aw22xxx_i2c_probe>:
     168: d503233f     	paciasp
     16c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     170: a9015ff8     	stp	x24, x23, [sp, #0x10]
     174: a90257f6     	stp	x22, x21, [sp, #0x20]
     178: a9034ff4     	stp	x20, x19, [sp, #0x30]
     17c: 910003fd     	mov	x29, sp
     180: aa0003f5     	mov	x21, x0
     184: f9418416     	ldr	x22, [x0, #0x308]
     188: 91008013     	add	x19, x0, #0x20
     18c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x138f
     190: 91000000     	add	x0, x0, #0x0
		0000000000000190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x138f
     194: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
     198: 91000021     	add	x1, x1, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
     19c: 94000000     	bl	0x19c <aw22xxx_i2c_probe+0x34>
		000000000000019c:  R_AARCH64_CALL26	_printk
     1a0: f9400ea0     	ldr	x0, [x21, #0x18]
     1a4: f9400808     	ldr	x8, [x0, #0x10]
     1a8: f9401108     	ldr	x8, [x8, #0x20]
     1ac: b85fc110     	ldur	w16, [x8, #-0x4]
     1b0: 729d62d1     	movk	w17, #0xeb16
     1b4: 72af9851     	movk	w17, #0x7cc2, lsl #16
     1b8: 6b11021f     	cmp	w16, w17
     1bc: 54000040     	b.eq	0x1c4 <aw22xxx_i2c_probe+0x5c>
     1c0: d4304500     	brk	#0x8228
     1c4: d63f0100     	blr	x8
     1c8: 360001a0     	tbz	w0, #0x0, 0x1fc <aw22xxx_i2c_probe+0x94>
     1cc: aa1303e0     	mov	x0, x19
     1d0: 52806b01     	mov	w1, #0x358              // =856
     1d4: 5281b802     	mov	w2, #0xdc0              // =3520
     1d8: 94000000     	bl	0x1d8 <aw22xxx_i2c_probe+0x70>
		00000000000001d8:  R_AARCH64_CALL26	devm_kmalloc
     1dc: b50001c0     	cbnz	x0, 0x214 <aw22xxx_i2c_probe+0xac>
     1e0: 12800160     	mov	w0, #-0xc               // =-12
     1e4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     1e8: a94257f6     	ldp	x22, x21, [sp, #0x20]
     1ec: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     1f0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     1f4: d50323bf     	autiasp
     1f8: d65f03c0     	ret
     1fc: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13a7
     200: 91000021     	add	x1, x1, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13a7
     204: aa1303e0     	mov	x0, x19
     208: 94000000     	bl	0x208 <aw22xxx_i2c_probe+0xa0>
		0000000000000208:  R_AARCH64_CALL26	_dev_err
     20c: 12800080     	mov	w0, #-0x5               // =-5
     210: 17fffff5     	b	0x1e4 <aw22xxx_i2c_probe+0x7c>
     214: a9004c15     	stp	x21, x19, [x0]
     218: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8e
     21c: 91000021     	add	x1, x1, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8e
     220: f9005ea0     	str	x0, [x21, #0xb8]
     224: 90000002     	adrp	x2, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     228: 91000042     	add	x2, x2, #0x0
		0000000000000228:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x4
     22c: aa0003f7     	mov	x23, x0
     230: 910ac000     	add	x0, x0, #0x2b0
     234: 94000000     	bl	0x234 <aw22xxx_i2c_probe+0xcc>
		0000000000000234:  R_AARCH64_CALL26	__mutex_init
     238: 52800028     	mov	w8, #0x1                // =1
     23c: aa1303e0     	mov	x0, x19
     240: 390c12e8     	strb	w8, [x23, #0x304]
     244: 94000000     	bl	0x244 <aw22xxx_i2c_probe+0xdc>
		0000000000000244:  R_AARCH64_CALL26	devm_pinctrl_get
     248: aa1703f4     	mov	x20, x23
     24c: f9019ae0     	str	x0, [x23, #0x330]
     250: b40004c0     	cbz	x0, 0x2e8 <aw22xxx_i2c_probe+0x180>
     254: b13ffc1f     	cmn	x0, #0xfff
     258: 54000482     	b.hs	0x2e8 <aw22xxx_i2c_probe+0x180>
     25c: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2c
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2c
     264: 94000000     	bl	0x264 <aw22xxx_i2c_probe+0xfc>
		0000000000000264:  R_AARCH64_CALL26	pinctrl_lookup_state
     268: f9419a88     	ldr	x8, [x20, #0x330]
     26c: f9019e80     	str	x0, [x20, #0x338]
     270: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3e
     274: 91000021     	add	x1, x1, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3e
     278: aa0803e0     	mov	x0, x8
     27c: 94000000     	bl	0x27c <aw22xxx_i2c_probe+0x114>
		000000000000027c:  R_AARCH64_CALL26	pinctrl_lookup_state
     280: f9419e81     	ldr	x1, [x20, #0x338]
     284: f901a280     	str	x0, [x20, #0x340]
     288: b40003a1     	cbz	x1, 0x2fc <aw22xxx_i2c_probe+0x194>
     28c: b140043f     	cmn	x1, #0x1, lsl #12       // =0x1000
     290: 54000368     	b.hi	0x2fc <aw22xxx_i2c_probe+0x194>
     294: b4000340     	cbz	x0, 0x2fc <aw22xxx_i2c_probe+0x194>
     298: b13ffc1f     	cmn	x0, #0xfff
     29c: 54000302     	b.hs	0x2fc <aw22xxx_i2c_probe+0x194>
     2a0: f9419a80     	ldr	x0, [x20, #0x330]
     2a4: 94000000     	bl	0x2a4 <aw22xxx_i2c_probe+0x13c>
		00000000000002a4:  R_AARCH64_CALL26	pinctrl_select_state
     2a8: 35000460     	cbnz	w0, 0x334 <aw22xxx_i2c_probe+0x1cc>
     2ac: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bd
     2b0: 91000000     	add	x0, x0, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bd
     2b4: 94000000     	bl	0x2b4 <aw22xxx_i2c_probe+0x14c>
		00000000000002b4:  R_AARCH64_CALL26	_printk
     2b8: b5000496     	cbnz	x22, 0x348 <aw22xxx_i2c_probe+0x1e0>
     2bc: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000002bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13c7
     2c0: 91000021     	add	x1, x1, #0x0
		00000000000002c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13c7
     2c4: 90000002     	adrp	x2, 0x0 <aw22xxx_led_imax_cfg>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
     2c8: 91000042     	add	x2, x2, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
     2cc: aa1303e0     	mov	x0, x19
     2d0: 94000000     	bl	0x2d0 <aw22xxx_i2c_probe+0x168>
		00000000000002d0:  R_AARCH64_CALL26	_dev_err
     2d4: 12800009     	mov	w9, #-0x1               // =-1
     2d8: aa1403e8     	mov	x8, x20
     2dc: 128002b7     	mov	w23, #-0x16             // =-22
     2e0: b902e289     	str	w9, [x20, #0x2e0]
     2e4: 1400000b     	b	0x310 <aw22xxx_i2c_probe+0x1a8>
     2e8: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e4
     2ec: 91000000     	add	x0, x0, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e4
     2f0: 94000000     	bl	0x2f0 <aw22xxx_i2c_probe+0x188>
		00000000000002f0:  R_AARCH64_CALL26	_printk
     2f4: 128002b7     	mov	w23, #-0x16             // =-22
     2f8: 1400000a     	b	0x320 <aw22xxx_i2c_probe+0x1b8>
     2fc: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d8
     300: 91000000     	add	x0, x0, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d8
     304: 94000000     	bl	0x304 <aw22xxx_i2c_probe+0x19c>
		0000000000000304:  R_AARCH64_CALL26	_printk
     308: aa1403e8     	mov	x8, x20
     30c: 128002b7     	mov	w23, #-0x16             // =-22
     310: f9419900     	ldr	x0, [x8, #0x330]
     314: aa0803f5     	mov	x21, x8
     318: 94000000     	bl	0x318 <aw22xxx_i2c_probe+0x1b0>
		0000000000000318:  R_AARCH64_CALL26	devm_pinctrl_put
     31c: f9019abf     	str	xzr, [x21, #0x330]
     320: aa1303e0     	mov	x0, x19
     324: aa1403e1     	mov	x1, x20
     328: 94000000     	bl	0x328 <aw22xxx_i2c_probe+0x1c0>
		0000000000000328:  R_AARCH64_CALL26	devm_kfree
     32c: 2a1703e0     	mov	w0, w23
     330: 17ffffad     	b	0x1e4 <aw22xxx_i2c_probe+0x7c>
     334: 2a0003f7     	mov	w23, w0
     338: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10bd
     33c: 91000000     	add	x0, x0, #0x0
		000000000000033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10bd
     340: 94000000     	bl	0x340 <aw22xxx_i2c_probe+0x1d8>
		0000000000000340:  R_AARCH64_CALL26	_printk
     344: 14000049     	b	0x468 <aw22xxx_i2c_probe+0x300>
     348: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d1
     34c: 91000021     	add	x1, x1, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d1
     350: 90000002     	adrp	x2, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
     354: 91000042     	add	x2, x2, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x110
     358: aa1603e0     	mov	x0, x22
     35c: 52800023     	mov	w3, #0x1                // =1
     360: aa1f03e4     	mov	x4, xzr
     364: 94000000     	bl	0x364 <aw22xxx_i2c_probe+0x1fc>
		0000000000000364:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     368: 90000018     	adrp	x24, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
     36c: 37f80060     	tbnz	w0, #0x1f, 0x378 <aw22xxx_i2c_probe+0x210>
     370: b9400302     	ldr	w2, [x24]
		0000000000000370:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x110
     374: 14000003     	b	0x380 <aw22xxx_i2c_probe+0x218>
     378: 52800162     	mov	w2, #0xb                // =11
     37c: b9000302     	str	w2, [x24]
		000000000000037c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x110
     380: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104c
     384: 91000021     	add	x1, x1, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104c
     388: aa1303e0     	mov	x0, x19
     38c: 94000000     	bl	0x38c <aw22xxx_i2c_probe+0x224>
		000000000000038c:  R_AARCH64_CALL26	_dev_info
     390: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3c
     394: 91000021     	add	x1, x1, #0x0
		0000000000000394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3c
     398: aa1603e0     	mov	x0, x22
     39c: 2a1f03e2     	mov	w2, wzr
     3a0: 94000000     	bl	0x3a0 <aw22xxx_i2c_probe+0x238>
		00000000000003a0:  R_AARCH64_CALL26	of_get_named_gpio
     3a4: b902e280     	str	w0, [x20, #0x2e0]
     3a8: 37f80500     	tbnz	w0, #0x1f, 0x448 <aw22xxx_i2c_probe+0x2e0>
     3ac: 94000000     	bl	0x3ac <aw22xxx_i2c_probe+0x244>
		00000000000003ac:  R_AARCH64_CALL26	gpio_to_desc
     3b0: 52800021     	mov	w1, #0x1                // =1
     3b4: 94000000     	bl	0x3b4 <aw22xxx_i2c_probe+0x24c>
		00000000000003b4:  R_AARCH64_CALL26	gpiod_direction_output_raw
     3b8: 350000c0     	cbnz	w0, 0x3d0 <aw22xxx_i2c_probe+0x268>
     3bc: b942e282     	ldr	w2, [x20, #0x2e0]
     3c0: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14da
     3c4: 91000021     	add	x1, x1, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14da
     3c8: aa1303e0     	mov	x0, x19
     3cc: 94000000     	bl	0x3cc <aw22xxx_i2c_probe+0x264>
		00000000000003cc:  R_AARCH64_CALL26	_dev_info
     3d0: b942e282     	ldr	w2, [x20, #0x2e0]
     3d4: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000003d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184a
     3d8: 91000021     	add	x1, x1, #0x0
		00000000000003d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184a
     3dc: aa1303e0     	mov	x0, x19
     3e0: 94000000     	bl	0x3e0 <aw22xxx_i2c_probe+0x278>
		00000000000003e0:  R_AARCH64_CALL26	_dev_info
     3e4: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000003e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16d9
     3e8: 91000021     	add	x1, x1, #0x0
		00000000000003e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16d9
     3ec: aa1603e0     	mov	x0, x22
     3f0: 2a1f03e2     	mov	w2, wzr
     3f4: 94000000     	bl	0x3f4 <aw22xxx_i2c_probe+0x28c>
		00000000000003f4:  R_AARCH64_CALL26	of_get_named_gpio
     3f8: b902e680     	str	w0, [x20, #0x2e4]
     3fc: 37f802c0     	tbnz	w0, #0x1f, 0x454 <aw22xxx_i2c_probe+0x2ec>
     400: 2a0003e2     	mov	w2, w0
     404: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x773
     408: 91000021     	add	x1, x1, #0x0
		0000000000000408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x773
     40c: aa1303e0     	mov	x0, x19
     410: 94000000     	bl	0x410 <aw22xxx_i2c_probe+0x2a8>
		0000000000000410:  R_AARCH64_CALL26	_dev_info
     414: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f
     418: 91000021     	add	x1, x1, #0x0
		0000000000000418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f
     41c: aa1603e0     	mov	x0, x22
     420: 2a1f03e2     	mov	w2, wzr
     424: 94000000     	bl	0x424 <aw22xxx_i2c_probe+0x2bc>
		0000000000000424:  R_AARCH64_CALL26	of_get_named_gpio
     428: b902ea80     	str	w0, [x20, #0x2e8]
     42c: 37f80220     	tbnz	w0, #0x1f, 0x470 <aw22xxx_i2c_probe+0x308>
     430: 2a0003e2     	mov	w2, w0
     434: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e2
     438: 91000021     	add	x1, x1, #0x0
		0000000000000438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e2
     43c: aa1303e0     	mov	x0, x19
     440: 94000000     	bl	0x440 <aw22xxx_i2c_probe+0x2d8>
		0000000000000440:  R_AARCH64_CALL26	_dev_info
     444: 1400000f     	b	0x480 <aw22xxx_i2c_probe+0x318>
     448: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc40
     44c: 91000021     	add	x1, x1, #0x0
		000000000000044c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc40
     450: 14000003     	b	0x45c <aw22xxx_i2c_probe+0x2f4>
     454: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14fb
     458: 91000021     	add	x1, x1, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14fb
     45c: aa1303e0     	mov	x0, x19
     460: 94000000     	bl	0x460 <aw22xxx_i2c_probe+0x2f8>
		0000000000000460:  R_AARCH64_CALL26	_dev_err
     464: 128002b7     	mov	w23, #-0x16             // =-22
     468: aa1403e8     	mov	x8, x20
     46c: 17ffffa9     	b	0x310 <aw22xxx_i2c_probe+0x1a8>
     470: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x440
     474: 91000021     	add	x1, x1, #0x0
		0000000000000474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x440
     478: aa1303e0     	mov	x0, x19
     47c: 94000000     	bl	0x47c <aw22xxx_i2c_probe+0x314>
		000000000000047c:  R_AARCH64_CALL26	_dev_info
     480: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2f
     484: 91000021     	add	x1, x1, #0x0
		0000000000000484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2f
     488: 90000002     	adrp	x2, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000488:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     48c: 91000042     	add	x2, x2, #0x0
		000000000000048c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     490: aa1603e0     	mov	x0, x22
     494: 52800023     	mov	w3, #0x1                // =1
     498: aa1f03e4     	mov	x4, xzr
     49c: 94000000     	bl	0x49c <aw22xxx_i2c_probe+0x334>
		000000000000049c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     4a0: 36f80060     	tbz	w0, #0x1f, 0x4ac <aw22xxx_i2c_probe+0x344>
     4a4: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     4a8: b900011f     	str	wzr, [x8]
		00000000000004a8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     4ac: b942e281     	ldr	w1, [x20, #0x2e0]
     4b0: 90000003     	adrp	x3, 0x0 <aw22xxx_led_imax_cfg>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3d
     4b4: 91000063     	add	x3, x3, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3d
     4b8: aa1303e0     	mov	x0, x19
     4bc: aa1f03e2     	mov	x2, xzr
     4c0: 94000000     	bl	0x4c0 <aw22xxx_i2c_probe+0x358>
		00000000000004c0:  R_AARCH64_CALL26	devm_gpio_request_one
     4c4: 35000540     	cbnz	w0, 0x56c <aw22xxx_i2c_probe+0x404>
     4c8: b942e681     	ldr	w1, [x20, #0x2e4]
     4cc: 90000003     	adrp	x3, 0x0 <aw22xxx_led_imax_cfg>
		00000000000004cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x460
     4d0: 91000063     	add	x3, x3, #0x0
		00000000000004d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x460
     4d4: aa1303e0     	mov	x0, x19
     4d8: 52800022     	mov	w2, #0x1                // =1
     4dc: 94000000     	bl	0x4dc <aw22xxx_i2c_probe+0x374>
		00000000000004dc:  R_AARCH64_CALL26	devm_gpio_request_one
     4e0: 35000460     	cbnz	w0, 0x56c <aw22xxx_i2c_probe+0x404>
     4e4: aa1403e0     	mov	x0, x20
     4e8: 940000c1     	bl	0x7ec <aw22xxx_hw_reset>
     4ec: 90000017     	adrp	x23, 0x0 <aw22xxx_led_imax_cfg>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	multicolor_led
     4f0: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000004f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa1
     4f4: 91000000     	add	x0, x0, #0x0
		00000000000004f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa1
     4f8: b94002e2     	ldr	w2, [x23]
		00000000000004f8:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
     4fc: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000004fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
     500: 91000021     	add	x1, x1, #0x0
		0000000000000500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
     504: 94000000     	bl	0x504 <aw22xxx_i2c_probe+0x39c>
		0000000000000504:  R_AARCH64_CALL26	_printk
     508: b94002e8     	ldr	w8, [x23]
		0000000000000508:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
     50c: 51000508     	sub	w8, w8, #0x1
     510: 7100051f     	cmp	w8, #0x1
     514: 540003c8     	b.hi	0x58c <aw22xxx_i2c_probe+0x424>
     518: b942e280     	ldr	w0, [x20, #0x2e0]
     51c: 94000000     	bl	0x51c <aw22xxx_i2c_probe+0x3b4>
		000000000000051c:  R_AARCH64_CALL26	gpio_to_desc
     520: 2a1f03e1     	mov	w1, wzr
     524: 94000000     	bl	0x524 <aw22xxx_i2c_probe+0x3bc>
		0000000000000524:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
     528: b942e681     	ldr	w1, [x20, #0x2e4]
     52c: 90000003     	adrp	x3, 0x0 <aw22xxx_led_imax_cfg>
		000000000000052c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x460
     530: 91000063     	add	x3, x3, #0x0
		0000000000000530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x460
     534: aa1303e0     	mov	x0, x19
     538: aa1f03e2     	mov	x2, xzr
     53c: 94000000     	bl	0x53c <aw22xxx_i2c_probe+0x3d4>
		000000000000053c:  R_AARCH64_CALL26	devm_gpio_request_one
     540: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     544: 52823289     	mov	w9, #0x1194             // =4500
     548: 2a1f03e0     	mov	w0, wzr
     54c: b9400108     	ldr	w8, [x8]
		000000000000054c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     550: b90002ff     	str	wzr, [x23]
		0000000000000550:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
     554: 7100011f     	cmp	w8, #0x0
     558: 52800168     	mov	w8, #0xb                // =11
     55c: 1a880128     	csel	w8, w9, w8, eq
     560: 90000009     	adrp	x9, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x114
     564: b9000128     	str	w8, [x9]
		0000000000000564:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x114
     568: 17ffff1f     	b	0x1e4 <aw22xxx_i2c_probe+0x7c>
     56c: 2a0003f7     	mov	w23, w0
     570: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x335
     574: 91000021     	add	x1, x1, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x335
     578: 90000002     	adrp	x2, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
     57c: 91000042     	add	x2, x2, #0x0
		000000000000057c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
     580: aa1303e0     	mov	x0, x19
     584: 94000000     	bl	0x584 <aw22xxx_i2c_probe+0x41c>
		0000000000000584:  R_AARCH64_CALL26	_dev_err
     588: 17ffffb8     	b	0x468 <aw22xxx_i2c_probe+0x300>
     58c: aa1403e0     	mov	x0, x20
     590: 940000be     	bl	0x888 <aw22xxx_read_chipid>
     594: 36f800a0     	tbz	w0, #0x1f, 0x5a8 <aw22xxx_i2c_probe+0x440>
     598: 2a0003f7     	mov	w23, w0
     59c: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f9
     5a0: 91000021     	add	x1, x1, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f9
     5a4: 14000030     	b	0x664 <aw22xxx_i2c_probe+0x4fc>
     5a8: b942e689     	ldr	w9, [x20, #0x2e4]
     5ac: 394bb288     	ldrb	w8, [x20, #0x2ec]
     5b0: 37f80149     	tbnz	w9, #0x1f, 0x5d8 <aw22xxx_i2c_probe+0x470>
     5b4: 35000128     	cbnz	w8, 0x5d8 <aw22xxx_i2c_probe+0x470>
     5b8: aa1403e0     	mov	x0, x20
     5bc: 9400011f     	bl	0xa38 <aw22xxx_interrupt_setup>
     5c0: b9400308     	ldr	w8, [x24]
		00000000000005c0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x110
     5c4: 7100311f     	cmp	w8, #0xc
     5c8: 540000e2     	b.hs	0x5e4 <aw22xxx_i2c_probe+0x47c>
     5cc: 90000017     	adrp	x23, 0x0 <aw22xxx_led_imax_cfg>
		00000000000005cc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xb18
     5d0: 910002f7     	add	x23, x23, #0x0
		00000000000005d0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xb18
     5d4: 14000009     	b	0x5f8 <aw22xxx_i2c_probe+0x490>
     5d8: 32000108     	orr	w8, w8, #0x1
     5dc: 390bb288     	strb	w8, [x20, #0x2ec]
     5e0: 14000013     	b	0x62c <aw22xxx_i2c_probe+0x4c4>
     5e4: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000005e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8
     5e8: 91000000     	add	x0, x0, #0x0
		00000000000005e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8
     5ec: 94000000     	bl	0x5ec <aw22xxx_i2c_probe+0x484>
		00000000000005ec:  R_AARCH64_CALL26	_printk
     5f0: 90000017     	adrp	x23, 0x0 <aw22xxx_led_imax_cfg>
		00000000000005f0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc14
     5f4: 910002f7     	add	x23, x23, #0x0
		00000000000005f4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc14
     5f8: b942e680     	ldr	w0, [x20, #0x2e4]
     5fc: 94000000     	bl	0x5fc <aw22xxx_i2c_probe+0x494>
		00000000000005fc:  R_AARCH64_CALL26	gpio_to_desc
     600: 94000000     	bl	0x600 <aw22xxx_i2c_probe+0x498>
		0000000000000600:  R_AARCH64_CALL26	gpiod_to_irq
     604: 2a0003e1     	mov	w1, w0
     608: 90000005     	adrp	x5, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ae
     60c: 910000a5     	add	x5, x5, #0x0
		000000000000060c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ae
     610: aa1303e0     	mov	x0, x19
     614: aa1f03e2     	mov	x2, xzr
     618: aa1703e3     	mov	x3, x23
     61c: 52840044     	mov	w4, #0x2002             // =8194
     620: aa1403e6     	mov	x6, x20
     624: 94000000     	bl	0x624 <aw22xxx_i2c_probe+0x4bc>
		0000000000000624:  R_AARCH64_CALL26	devm_request_threaded_irq
     628: 35000240     	cbnz	w0, 0x670 <aw22xxx_i2c_probe+0x508>
     62c: aa1403e0     	mov	x0, x20
     630: aa1603e1     	mov	x1, x22
     634: f9005eb4     	str	x20, [x21, #0xb8]
     638: 940001f9     	bl	0xe1c <aw22xxx_parse_led_cdev>
     63c: 36f800a0     	tbz	w0, #0x1f, 0x650 <aw22xxx_i2c_probe+0x4e8>
     640: 2a0003f7     	mov	w23, w0
     644: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46c
     648: 91000021     	add	x1, x1, #0x0
		0000000000000648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46c
     64c: 14000006     	b	0x664 <aw22xxx_i2c_probe+0x4fc>
     650: 9400028d     	bl	0x1084 <aw22xxx_alloc_name_array>
     654: 36f80240     	tbz	w0, #0x1f, 0x69c <aw22xxx_i2c_probe+0x534>
     658: 2a0003f7     	mov	w23, w0
     65c: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		000000000000065c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be
     660: 91000021     	add	x1, x1, #0x0
		0000000000000660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be
     664: aa1303e0     	mov	x0, x19
     668: 94000000     	bl	0x668 <aw22xxx_i2c_probe+0x500>
		0000000000000668:  R_AARCH64_CALL26	_dev_err
     66c: 17ffff7f     	b	0x468 <aw22xxx_i2c_probe+0x300>
     670: 2a0003f7     	mov	w23, w0
     674: b942e680     	ldr	w0, [x20, #0x2e4]
     678: 94000000     	bl	0x678 <aw22xxx_i2c_probe+0x510>
		0000000000000678:  R_AARCH64_CALL26	gpio_to_desc
     67c: 94000000     	bl	0x67c <aw22xxx_i2c_probe+0x514>
		000000000000067c:  R_AARCH64_CALL26	gpiod_to_irq
     680: 2a0003e2     	mov	w2, w0
     684: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79e
     688: 91000021     	add	x1, x1, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79e
     68c: aa1303e0     	mov	x0, x19
     690: 2a1703e3     	mov	w3, w23
     694: 94000000     	bl	0x694 <aw22xxx_i2c_probe+0x52c>
		0000000000000694:  R_AARCH64_CALL26	_dev_err
     698: 17ffff74     	b	0x468 <aw22xxx_i2c_probe+0x300>
     69c: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xed5
     6a0: 91000108     	add	x8, x8, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xed5
     6a4: 9000000a     	adrp	x10, 0x0 <aw22xxx_led_imax_cfg>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x118
     6a8: 9100014a     	add	x10, x10, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x118
     6ac: f9400109     	ldr	x9, [x8]
     6b0: f8407108     	ldur	x8, [x8, #0x7]
     6b4: aa1403e0     	mov	x0, x20
     6b8: f9000149     	str	x9, [x10]
     6bc: f8007148     	stur	x8, [x10, #0x7]
     6c0: 9400030a     	bl	0x12e8 <aw22xxx_fw_init>
     6c4: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000006c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a4
     6c8: 91000000     	add	x0, x0, #0x0
		00000000000006c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a4
     6cc: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac
     6d0: 91000021     	add	x1, x1, #0x0
		00000000000006d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac
     6d4: 94000000     	bl	0x6d4 <aw22xxx_i2c_probe+0x56c>
		00000000000006d4:  R_AARCH64_CALL26	_printk
     6d8: b942e280     	ldr	w0, [x20, #0x2e0]
     6dc: 94000000     	bl	0x6dc <aw22xxx_i2c_probe+0x574>
		00000000000006dc:  R_AARCH64_CALL26	gpio_to_desc
     6e0: 2a1f03e1     	mov	w1, wzr
     6e4: 94000000     	bl	0x6e4 <aw22xxx_i2c_probe+0x57c>
		00000000000006e4:  R_AARCH64_CALL26	gpiod_direction_output_raw
     6e8: 34000080     	cbz	w0, 0x6f8 <aw22xxx_i2c_probe+0x590>
     6ec: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000006ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1996
     6f0: 91000000     	add	x0, x0, #0x0
		00000000000006f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1996
     6f4: 94000000     	bl	0x6f4 <aw22xxx_i2c_probe+0x58c>
		00000000000006f4:  R_AARCH64_CALL26	_printk
     6f8: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x158
     6fc: 91000000     	add	x0, x0, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x158
     700: 94000000     	bl	0x700 <aw22xxx_i2c_probe+0x598>
		0000000000000700:  R_AARCH64_CALL26	zlog_register_client
     704: f901aa80     	str	x0, [x20, #0x350]
     708: b5000080     	cbnz	x0, 0x718 <aw22xxx_i2c_probe+0x5b0>
     70c: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		000000000000070c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb50
     710: 91000000     	add	x0, x0, #0x0
		0000000000000710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb50
     714: 94000000     	bl	0x714 <aw22xxx_i2c_probe+0x5ac>
		0000000000000714:  R_AARCH64_CALL26	_printk
     718: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x584
     71c: 91000000     	add	x0, x0, #0x0
		000000000000071c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x584
     720: 94000000     	bl	0x720 <aw22xxx_i2c_probe+0x5b8>
		0000000000000720:  R_AARCH64_CALL26	_printk
     724: 94000326     	bl	0x13bc <aw22xxx_create_proc_entry>
     728: 2a1f03e0     	mov	w0, wzr
     72c: 17fffeae     	b	0x1e4 <aw22xxx_i2c_probe+0x7c>
