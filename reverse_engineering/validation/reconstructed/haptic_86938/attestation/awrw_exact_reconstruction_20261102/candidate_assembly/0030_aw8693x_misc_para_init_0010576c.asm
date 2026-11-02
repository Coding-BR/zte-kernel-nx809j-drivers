
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008254 <aw8693x_misc_para_init>:
    8254: d503233f     	paciasp
    8258: d10143ff     	sub	sp, sp, #0x50
    825c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    8260: f9001bf5     	str	x21, [sp, #0x30]
    8264: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8268: 910083fd     	add	x29, sp, #0x20
    826c: d5384108     	mrs	x8, SP_EL0
    8270: 910043e2     	add	x2, sp, #0x10
    8274: 528008e1     	mov	w1, #0x47               // =71
    8278: f9438908     	ldr	x8, [x8, #0x710]
    827c: 52800023     	mov	w3, #0x1                // =1
    8280: aa0003f3     	mov	x19, x0
    8284: 910043f5     	add	x21, sp, #0x10
    8288: f81f83a8     	stur	x8, [x29, #-0x8]
    828c: f9419408     	ldr	x8, [x0, #0x328]
    8290: f9000bff     	str	xzr, [sp, #0x10]
    8294: 39400909     	ldrb	w9, [x8, #0x2]
    8298: 39004809     	strb	w9, [x0, #0x12]
    829c: 39400908     	ldrb	w8, [x8, #0x2]
    82a0: 390043e8     	strb	w8, [sp, #0x10]
    82a4: 94000000     	bl	0x82a4 <aw8693x_misc_para_init+0x50>
		00000000000082a4:  R_AARCH64_CALL26	i2c_w_bytes
    82a8: b9446a68     	ldr	w8, [x19, #0x468]
    82ac: 5280f8c9     	mov	w9, #0x7c6              // =1990
    82b0: 5280e22a     	mov	w10, #0x711             // =1809
    82b4: 910043e2     	add	x2, sp, #0x10
    82b8: aa1303e0     	mov	x0, x19
    82bc: 528000e1     	mov	w1, #0x7                // =7
    82c0: 711c211f     	cmp	w8, #0x708
    82c4: b944c668     	ldr	w8, [x19, #0x4c4]
    82c8: 52800023     	mov	w3, #0x1                // =1
    82cc: 1a893149     	csel	w9, w10, w9, lo
    82d0: 1b087d28     	mul	w8, w9, w8
    82d4: 5282eb29     	mov	w9, #0x1759             // =5977
    82d8: 72ba36e9     	movk	w9, #0xd1b7, lsl #16
    82dc: 9ba97d08     	umull	x8, w8, w9
    82e0: 52800fe9     	mov	w9, #0x7f               // =127
    82e4: d36ffd08     	lsr	x8, x8, #47
    82e8: 7101fd1f     	cmp	w8, #0x7f
    82ec: 1a893108     	csel	w8, w8, w9, lo
    82f0: 39518e69     	ldrb	w9, [x19, #0x463]
    82f4: 39126e68     	strb	w8, [x19, #0x49b]
    82f8: b9003269     	str	w9, [x19, #0x30]
    82fc: 94000000     	bl	0x82fc <aw8693x_misc_para_init+0xa8>
		00000000000082fc:  R_AARCH64_CALL26	i2c_r_bytes
    8300: 394043e8     	ldrb	w8, [sp, #0x10]
    8304: 910043e2     	add	x2, sp, #0x10
    8308: aa1303e0     	mov	x0, x19
    830c: 52800141     	mov	w1, #0xa                // =10
    8310: 52800103     	mov	w3, #0x8                // =8
    8314: b9003668     	str	w8, [x19, #0x34]
    8318: 94000000     	bl	0x8318 <aw8693x_misc_para_init+0xc4>
		0000000000008318:  R_AARCH64_CALL26	i2c_r_bytes
    831c: 394043e8     	ldrb	w8, [sp, #0x10]
    8320: f9400be9     	ldr	x9, [sp, #0x10]
    8324: aa1303e0     	mov	x0, x19
    8328: 39530663     	ldrb	w3, [x19, #0x4c1]
    832c: 528008c1     	mov	w1, #0x46               // =70
    8330: 12800022     	mov	w2, #-0x2               // =-2
    8334: b9004668     	str	w8, [x19, #0x44]
    8338: f801e269     	stur	x9, [x19, #0x1e]
    833c: 94000000     	bl	0x833c <aw8693x_misc_para_init+0xe8>
		000000000000833c:  R_AARCH64_CALL26	i2c_w_bits
    8340: 39530e68     	ldrb	w8, [x19, #0x4c3]
    8344: aa1303e0     	mov	x0, x19
    8348: 52800301     	mov	w1, #0x18               // =24
    834c: 12801002     	mov	w2, #-0x81              // =-129
    8350: 53196103     	lsl	w3, w8, #7
    8354: 94000000     	bl	0x8354 <aw8693x_misc_para_init+0x100>
		0000000000008354:  R_AARCH64_CALL26	i2c_w_bits
    8358: 39527e63     	ldrb	w3, [x19, #0x49f]
    835c: aa1303e0     	mov	x0, x19
    8360: 52800381     	mov	w1, #0x1c               // =28
    8364: 128001e2     	mov	w2, #-0x10              // =-16
    8368: 94000000     	bl	0x8368 <aw8693x_misc_para_init+0x114>
		0000000000008368:  R_AARCH64_CALL26	i2c_w_bits
    836c: 91127662     	add	x2, x19, #0x49d
    8370: aa1303e0     	mov	x0, x19
    8374: 52800421     	mov	w1, #0x21               // =33
    8378: 52800023     	mov	w3, #0x1                // =1
    837c: 94000000     	bl	0x837c <aw8693x_misc_para_init+0x128>
		000000000000837c:  R_AARCH64_CALL26	i2c_w_bytes
    8380: 52800648     	mov	w8, #0x32               // =50
    8384: aa1303e0     	mov	x0, x19
    8388: 52800901     	mov	w1, #0x48               // =72
    838c: 12801002     	mov	w2, #-0x81              // =-129
    8390: 2a1f03e3     	mov	w3, wzr
    8394: 390033e8     	strb	w8, [sp, #0xc]
    8398: 94000000     	bl	0x8398 <aw8693x_misc_para_init+0x144>
		0000000000008398:  R_AARCH64_CALL26	i2c_w_bits
    839c: 90000014     	adrp	x20, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000839c:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_haptic_hv
    83a0: 91000294     	add	x20, x20, #0x0
		00000000000083a0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_haptic_hv
    83a4: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000083a4:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_protection_enabled
    83a8: 91000000     	add	x0, x0, #0x0
		00000000000083a8:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_protection_enabled
    83ac: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000083ac:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_protect_config
    83b0: 91000063     	add	x3, x3, #0x0
		00000000000083b0:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_protect_config
    83b4: aa1403e1     	mov	x1, x20
    83b8: 52805cc2     	mov	w2, #0x2e6              // =742
    83bc: 94000000     	bl	0x83bc <aw8693x_misc_para_init+0x168>
		00000000000083bc:  R_AARCH64_CALL26	_printk
    83c0: 528017e8     	mov	w8, #0xbf               // =191
    83c4: 910023e2     	add	x2, sp, #0x8
    83c8: aa1303e0     	mov	x0, x19
    83cc: 52800941     	mov	w1, #0x4a               // =74
    83d0: 52800023     	mov	w3, #0x1                // =1
    83d4: 390023e8     	strb	w8, [sp, #0x8]
    83d8: 94000000     	bl	0x83d8 <aw8693x_misc_para_init+0x184>
		00000000000083d8:  R_AARCH64_CALL26	i2c_w_bytes
    83dc: 910033e2     	add	x2, sp, #0xc
    83e0: aa1303e0     	mov	x0, x19
    83e4: 52800961     	mov	w1, #0x4b               // =75
    83e8: 52800023     	mov	w3, #0x1                // =1
    83ec: 94000000     	bl	0x83ec <aw8693x_misc_para_init+0x198>
		00000000000083ec:  R_AARCH64_CALL26	i2c_w_bytes
    83f0: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000083f0:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_enter
    83f4: 91000000     	add	x0, x0, #0x0
		00000000000083f4:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_enter
    83f8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000083f8:  R_AARCH64_ADR_PREL_PG_HI21	haptic_86938_cb_vbat_ref_config
    83fc: 91000063     	add	x3, x3, #0x0
		00000000000083fc:  R_AARCH64_ADD_ABS_LO12_NC	haptic_86938_cb_vbat_ref_config
    8400: aa1403e1     	mov	x1, x20
    8404: 528041a2     	mov	w2, #0x20d              // =525
    8408: 94000000     	bl	0x8408 <aw8693x_misc_para_init+0x1b4>
		0000000000008408:  R_AARCH64_CALL26	_printk
    840c: aa1303e0     	mov	x0, x19
    8410: 528009a1     	mov	w1, #0x4d               // =77
    8414: 12800e02     	mov	w2, #-0x71              // =-113
    8418: 52800803     	mov	w3, #0x40               // =64
    841c: 94000000     	bl	0x841c <aw8693x_misc_para_init+0x1c8>
		000000000000841c:  R_AARCH64_CALL26	i2c_w_bits
    8420: 5281c388     	mov	w8, #0xe1c              // =3612
    8424: 5284a829     	mov	w9, #0x2541             // =9537
    8428: 910033e2     	add	x2, sp, #0xc
    842c: 72b00068     	movk	w8, #0x8003, lsl #16
    8430: aa1303e0     	mov	x0, x19
    8434: 52800bc1     	mov	w1, #0x5e               // =94
    8438: b90013e8     	str	w8, [sp, #0x10]
    843c: 52800fa8     	mov	w8, #0x7d               // =125
    8440: 52800023     	mov	w3, #0x1                // =1
    8444: 79002be9     	strh	w9, [sp, #0x14]
    8448: 528000b4     	mov	w20, #0x5               // =5
    844c: 390033e8     	strb	w8, [sp, #0xc]
    8450: 94000000     	bl	0x8450 <aw8693x_misc_para_init+0x1fc>
		0000000000008450:  R_AARCH64_CALL26	i2c_w_bytes
    8454: 39530a63     	ldrb	w3, [x19, #0x4c2]
    8458: aa1303e0     	mov	x0, x19
    845c: 52800ac1     	mov	w1, #0x56               // =86
    8460: 12800062     	mov	w2, #-0x4               // =-4
    8464: 94000000     	bl	0x8464 <aw8693x_misc_para_init+0x210>
		0000000000008464:  R_AARCH64_CALL26	i2c_w_bits
    8468: 910043e2     	add	x2, sp, #0x10
    846c: aa1303e0     	mov	x0, x19
    8470: 52800de1     	mov	w1, #0x6f               // =111
    8474: 52800043     	mov	w3, #0x2                // =2
    8478: 94000000     	bl	0x8478 <aw8693x_misc_para_init+0x224>
		0000000000008478:  R_AARCH64_CALL26	i2c_w_bytes
    847c: b27f02a2     	orr	x2, x21, #0x2
    8480: aa1303e0     	mov	x0, x19
    8484: 52800e41     	mov	w1, #0x72               // =114
    8488: 52800023     	mov	w3, #0x1                // =1
    848c: 94000000     	bl	0x848c <aw8693x_misc_para_init+0x238>
		000000000000848c:  R_AARCH64_CALL26	i2c_w_bytes
    8490: b24006a2     	orr	x2, x21, #0x3
    8494: aa1303e0     	mov	x0, x19
    8498: 52800ee1     	mov	w1, #0x77               // =119
    849c: 52800023     	mov	w3, #0x1                // =1
    84a0: 94000000     	bl	0x84a0 <aw8693x_misc_para_init+0x24c>
		00000000000084a0:  R_AARCH64_CALL26	i2c_w_bytes
    84a4: b27e02a2     	orr	x2, x21, #0x4
    84a8: aa1303e0     	mov	x0, x19
    84ac: 52800fa1     	mov	w1, #0x7d               // =125
    84b0: 52800023     	mov	w3, #0x1                // =1
    84b4: 94000000     	bl	0x84b4 <aw8693x_misc_para_init+0x260>
		00000000000084b4:  R_AARCH64_CALL26	i2c_w_bytes
    84b8: aa1402a2     	orr	x2, x21, x20
    84bc: aa1303e0     	mov	x0, x19
    84c0: 52800d61     	mov	w1, #0x6b               // =107
    84c4: 52800023     	mov	w3, #0x1                // =1
    84c8: 94000000     	bl	0x84c8 <aw8693x_misc_para_init+0x274>
		00000000000084c8:  R_AARCH64_CALL26	i2c_w_bytes
    84cc: 910033e2     	add	x2, sp, #0xc
    84d0: aa1303e0     	mov	x0, x19
    84d4: 52800bc1     	mov	w1, #0x5e               // =94
    84d8: 52800023     	mov	w3, #0x1                // =1
    84dc: 390033ff     	strb	wzr, [sp, #0xc]
    84e0: 94000000     	bl	0x84e0 <aw8693x_misc_para_init+0x28c>
		00000000000084e0:  R_AARCH64_CALL26	i2c_w_bytes
    84e4: d5384108     	mrs	x8, SP_EL0
    84e8: f9438908     	ldr	x8, [x8, #0x710]
    84ec: f85f83a9     	ldur	x9, [x29, #-0x8]
    84f0: eb09011f     	cmp	x8, x9
    84f4: 540000e1     	b.ne	0x8510 <aw8693x_misc_para_init+0x2bc>
    84f8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    84fc: f9401bf5     	ldr	x21, [sp, #0x30]
    8500: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    8504: 910143ff     	add	sp, sp, #0x50
    8508: d50323bf     	autiasp
    850c: d65f03c0     	ret
    8510: 94000000     	bl	0x8510 <aw8693x_misc_para_init+0x2bc>
		0000000000008510:  R_AARCH64_CALL26	__stack_chk_fail
