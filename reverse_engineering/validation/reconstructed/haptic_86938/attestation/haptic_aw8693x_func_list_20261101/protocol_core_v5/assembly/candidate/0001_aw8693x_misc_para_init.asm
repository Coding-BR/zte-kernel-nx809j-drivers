
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008284 <aw8693x_misc_para_init>:
    8284: d503233f     	paciasp
    8288: d10143ff     	sub	sp, sp, #0x50
    828c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    8290: f9001bf5     	str	x21, [sp, #0x30]
    8294: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8298: 910083fd     	add	x29, sp, #0x20
    829c: d5384108     	mrs	x8, SP_EL0
    82a0: 910043e2     	add	x2, sp, #0x10
    82a4: 528008e1     	mov	w1, #0x47               // =71
    82a8: f9438908     	ldr	x8, [x8, #0x710]
    82ac: 52800023     	mov	w3, #0x1                // =1
    82b0: aa0003f3     	mov	x19, x0
    82b4: 910043f5     	add	x21, sp, #0x10
    82b8: f81f83a8     	stur	x8, [x29, #-0x8]
    82bc: f9419408     	ldr	x8, [x0, #0x328]
    82c0: f9000bff     	str	xzr, [sp, #0x10]
    82c4: 39400909     	ldrb	w9, [x8, #0x2]
    82c8: 39004809     	strb	w9, [x0, #0x12]
    82cc: 39400908     	ldrb	w8, [x8, #0x2]
    82d0: 390043e8     	strb	w8, [sp, #0x10]
    82d4: 94000000     	bl	0x82d4 <aw8693x_misc_para_init+0x50>
		00000000000082d4:  R_AARCH64_CALL26	i2c_w_bytes
    82d8: b9446a68     	ldr	w8, [x19, #0x468]
    82dc: 5280f8c9     	mov	w9, #0x7c6              // =1990
    82e0: 5280e22a     	mov	w10, #0x711             // =1809
    82e4: 910043e2     	add	x2, sp, #0x10
    82e8: aa1303e0     	mov	x0, x19
    82ec: 528000e1     	mov	w1, #0x7                // =7
    82f0: 711c211f     	cmp	w8, #0x708
    82f4: b944c668     	ldr	w8, [x19, #0x4c4]
    82f8: 52800023     	mov	w3, #0x1                // =1
    82fc: 1a893149     	csel	w9, w10, w9, lo
    8300: 1b087d28     	mul	w8, w9, w8
    8304: 5282eb29     	mov	w9, #0x1759             // =5977
    8308: 72ba36e9     	movk	w9, #0xd1b7, lsl #16
    830c: 9ba97d08     	umull	x8, w8, w9
    8310: 52800fe9     	mov	w9, #0x7f               // =127
    8314: d36ffd08     	lsr	x8, x8, #47
    8318: 7101fd1f     	cmp	w8, #0x7f
    831c: 1a893108     	csel	w8, w8, w9, lo
    8320: 39518e69     	ldrb	w9, [x19, #0x463]
    8324: 39126e68     	strb	w8, [x19, #0x49b]
    8328: b9003269     	str	w9, [x19, #0x30]
    832c: 94000000     	bl	0x832c <aw8693x_misc_para_init+0xa8>
		000000000000832c:  R_AARCH64_CALL26	i2c_r_bytes
    8330: 394043e8     	ldrb	w8, [sp, #0x10]
    8334: 910043e2     	add	x2, sp, #0x10
    8338: aa1303e0     	mov	x0, x19
    833c: 52800141     	mov	w1, #0xa                // =10
    8340: 52800103     	mov	w3, #0x8                // =8
    8344: b9003668     	str	w8, [x19, #0x34]
    8348: 94000000     	bl	0x8348 <aw8693x_misc_para_init+0xc4>
		0000000000008348:  R_AARCH64_CALL26	i2c_r_bytes
    834c: 394043e8     	ldrb	w8, [sp, #0x10]
    8350: f9400be9     	ldr	x9, [sp, #0x10]
    8354: aa1303e0     	mov	x0, x19
    8358: 39530663     	ldrb	w3, [x19, #0x4c1]
    835c: 528008c1     	mov	w1, #0x46               // =70
    8360: 12800022     	mov	w2, #-0x2               // =-2
    8364: b9004668     	str	w8, [x19, #0x44]
    8368: f801e269     	stur	x9, [x19, #0x1e]
    836c: 94000000     	bl	0x836c <aw8693x_misc_para_init+0xe8>
		000000000000836c:  R_AARCH64_CALL26	i2c_w_bits
    8370: 39530e68     	ldrb	w8, [x19, #0x4c3]
    8374: aa1303e0     	mov	x0, x19
    8378: 52800301     	mov	w1, #0x18               // =24
    837c: 12801002     	mov	w2, #-0x81              // =-129
    8380: 53196103     	lsl	w3, w8, #7
    8384: 94000000     	bl	0x8384 <aw8693x_misc_para_init+0x100>
		0000000000008384:  R_AARCH64_CALL26	i2c_w_bits
    8388: 39527e63     	ldrb	w3, [x19, #0x49f]
    838c: aa1303e0     	mov	x0, x19
    8390: 52800381     	mov	w1, #0x1c               // =28
    8394: 128001e2     	mov	w2, #-0x10              // =-16
    8398: 94000000     	bl	0x8398 <aw8693x_misc_para_init+0x114>
		0000000000008398:  R_AARCH64_CALL26	i2c_w_bits
    839c: 91127662     	add	x2, x19, #0x49d
    83a0: aa1303e0     	mov	x0, x19
    83a4: 52800421     	mov	w1, #0x21               // =33
    83a8: 52800023     	mov	w3, #0x1                // =1
    83ac: 94000000     	bl	0x83ac <aw8693x_misc_para_init+0x128>
		00000000000083ac:  R_AARCH64_CALL26	i2c_w_bytes
    83b0: 52800648     	mov	w8, #0x32               // =50
    83b4: aa1303e0     	mov	x0, x19
    83b8: 52800901     	mov	w1, #0x48               // =72
    83bc: 12801002     	mov	w2, #-0x81              // =-129
    83c0: 2a1f03e3     	mov	w3, wzr
    83c4: 390033e8     	strb	w8, [sp, #0xc]
    83c8: 94000000     	bl	0x83c8 <aw8693x_misc_para_init+0x144>
		00000000000083c8:  R_AARCH64_CALL26	i2c_w_bits
    83cc: 90000014     	adrp	x20, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000083cc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_haptic_hv
    83d0: 91000294     	add	x20, x20, #0x0
		00000000000083d0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_haptic_hv
    83d4: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000083d4:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_protection_enabled
    83d8: 91000000     	add	x0, x0, #0x0
		00000000000083d8:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_protection_enabled
    83dc: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000083dc:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_protect_config
    83e0: 91000063     	add	x3, x3, #0x0
		00000000000083e0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_protect_config
    83e4: aa1403e1     	mov	x1, x20
    83e8: 52805cc2     	mov	w2, #0x2e6              // =742
    83ec: 94000000     	bl	0x83ec <aw8693x_misc_para_init+0x168>
		00000000000083ec:  R_AARCH64_CALL26	_printk
    83f0: 528017e8     	mov	w8, #0xbf               // =191
    83f4: 910023e2     	add	x2, sp, #0x8
    83f8: aa1303e0     	mov	x0, x19
    83fc: 52800941     	mov	w1, #0x4a               // =74
    8400: 52800023     	mov	w3, #0x1                // =1
    8404: 390023e8     	strb	w8, [sp, #0x8]
    8408: 94000000     	bl	0x8408 <aw8693x_misc_para_init+0x184>
		0000000000008408:  R_AARCH64_CALL26	i2c_w_bytes
    840c: 910033e2     	add	x2, sp, #0xc
    8410: aa1303e0     	mov	x0, x19
    8414: 52800961     	mov	w1, #0x4b               // =75
    8418: 52800023     	mov	w3, #0x1                // =1
    841c: 94000000     	bl	0x841c <aw8693x_misc_para_init+0x198>
		000000000000841c:  R_AARCH64_CALL26	i2c_w_bytes
    8420: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008420:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_enter
    8424: 91000000     	add	x0, x0, #0x0
		0000000000008424:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_enter
    8428: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008428:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_vbat_ref_config
    842c: 91000063     	add	x3, x3, #0x0
		000000000000842c:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_vbat_ref_config
    8430: aa1403e1     	mov	x1, x20
    8434: 528041a2     	mov	w2, #0x20d              // =525
    8438: 94000000     	bl	0x8438 <aw8693x_misc_para_init+0x1b4>
		0000000000008438:  R_AARCH64_CALL26	_printk
    843c: aa1303e0     	mov	x0, x19
    8440: 528009a1     	mov	w1, #0x4d               // =77
    8444: 12800e02     	mov	w2, #-0x71              // =-113
    8448: 52800803     	mov	w3, #0x40               // =64
    844c: 94000000     	bl	0x844c <aw8693x_misc_para_init+0x1c8>
		000000000000844c:  R_AARCH64_CALL26	i2c_w_bits
    8450: 5281c388     	mov	w8, #0xe1c              // =3612
    8454: 5284a829     	mov	w9, #0x2541             // =9537
    8458: 910033e2     	add	x2, sp, #0xc
    845c: 72b00068     	movk	w8, #0x8003, lsl #16
    8460: aa1303e0     	mov	x0, x19
    8464: 52800bc1     	mov	w1, #0x5e               // =94
    8468: b90013e8     	str	w8, [sp, #0x10]
    846c: 52800fa8     	mov	w8, #0x7d               // =125
    8470: 52800023     	mov	w3, #0x1                // =1
    8474: 79002be9     	strh	w9, [sp, #0x14]
    8478: 528000b4     	mov	w20, #0x5               // =5
    847c: 390033e8     	strb	w8, [sp, #0xc]
    8480: 94000000     	bl	0x8480 <aw8693x_misc_para_init+0x1fc>
		0000000000008480:  R_AARCH64_CALL26	i2c_w_bytes
    8484: 39530a63     	ldrb	w3, [x19, #0x4c2]
    8488: aa1303e0     	mov	x0, x19
    848c: 52800ac1     	mov	w1, #0x56               // =86
    8490: 12800062     	mov	w2, #-0x4               // =-4
    8494: 94000000     	bl	0x8494 <aw8693x_misc_para_init+0x210>
		0000000000008494:  R_AARCH64_CALL26	i2c_w_bits
    8498: 910043e2     	add	x2, sp, #0x10
    849c: aa1303e0     	mov	x0, x19
    84a0: 52800de1     	mov	w1, #0x6f               // =111
    84a4: 52800043     	mov	w3, #0x2                // =2
    84a8: 94000000     	bl	0x84a8 <aw8693x_misc_para_init+0x224>
		00000000000084a8:  R_AARCH64_CALL26	i2c_w_bytes
    84ac: b27f02a2     	orr	x2, x21, #0x2
    84b0: aa1303e0     	mov	x0, x19
    84b4: 52800e41     	mov	w1, #0x72               // =114
    84b8: 52800023     	mov	w3, #0x1                // =1
    84bc: 94000000     	bl	0x84bc <aw8693x_misc_para_init+0x238>
		00000000000084bc:  R_AARCH64_CALL26	i2c_w_bytes
    84c0: b24006a2     	orr	x2, x21, #0x3
    84c4: aa1303e0     	mov	x0, x19
    84c8: 52800ee1     	mov	w1, #0x77               // =119
    84cc: 52800023     	mov	w3, #0x1                // =1
    84d0: 94000000     	bl	0x84d0 <aw8693x_misc_para_init+0x24c>
		00000000000084d0:  R_AARCH64_CALL26	i2c_w_bytes
    84d4: b27e02a2     	orr	x2, x21, #0x4
    84d8: aa1303e0     	mov	x0, x19
    84dc: 52800fa1     	mov	w1, #0x7d               // =125
    84e0: 52800023     	mov	w3, #0x1                // =1
    84e4: 94000000     	bl	0x84e4 <aw8693x_misc_para_init+0x260>
		00000000000084e4:  R_AARCH64_CALL26	i2c_w_bytes
    84e8: aa1402a2     	orr	x2, x21, x20
    84ec: aa1303e0     	mov	x0, x19
    84f0: 52800d61     	mov	w1, #0x6b               // =107
    84f4: 52800023     	mov	w3, #0x1                // =1
    84f8: 94000000     	bl	0x84f8 <aw8693x_misc_para_init+0x274>
		00000000000084f8:  R_AARCH64_CALL26	i2c_w_bytes
    84fc: 910033e2     	add	x2, sp, #0xc
    8500: aa1303e0     	mov	x0, x19
    8504: 52800bc1     	mov	w1, #0x5e               // =94
    8508: 52800023     	mov	w3, #0x1                // =1
    850c: 390033ff     	strb	wzr, [sp, #0xc]
    8510: 94000000     	bl	0x8510 <aw8693x_misc_para_init+0x28c>
		0000000000008510:  R_AARCH64_CALL26	i2c_w_bytes
    8514: d5384108     	mrs	x8, SP_EL0
    8518: f9438908     	ldr	x8, [x8, #0x710]
    851c: f85f83a9     	ldur	x9, [x29, #-0x8]
    8520: eb09011f     	cmp	x8, x9
    8524: 540000e1     	b.ne	0x8540 <aw8693x_misc_para_init+0x2bc>
    8528: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    852c: f9401bf5     	ldr	x21, [sp, #0x30]
    8530: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    8534: 910143ff     	add	sp, sp, #0x50
    8538: d50323bf     	autiasp
    853c: d65f03c0     	ret
    8540: 94000000     	bl	0x8540 <aw8693x_misc_para_init+0x2bc>
		0000000000008540:  R_AARCH64_CALL26	__stack_chk_fail
