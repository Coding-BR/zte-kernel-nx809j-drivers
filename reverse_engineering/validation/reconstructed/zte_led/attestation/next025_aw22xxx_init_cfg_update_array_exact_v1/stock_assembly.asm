
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000258 <aw22xxx_init_cfg_update_array>:
     258: d503233f     	paciasp
     25c: d100c3ff     	sub	sp, sp, #0x30
     260: a9017bfd     	stp	x29, x30, [sp, #0x10]
     264: f90013f3     	str	x19, [sp, #0x20]
     268: 910043fd     	add	x29, sp, #0x10
     26c: d5384108     	mrs	x8, SP_EL0
     270: aa0003f3     	mov	x19, x0
     274: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80e
     278: 91000000     	add	x0, x0, #0x0
		0000000000000278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80e
     27c: f9438908     	ldr	x8, [x8, #0x710]
     280: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x146e
     284: 91000021     	add	x1, x1, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x146e
     288: 52803942     	mov	w2, #0x1ca              // =458
     28c: f90007e8     	str	x8, [sp, #0x8]
     290: 94000000     	bl	0x290 <aw22xxx_init_cfg_update_array+0x38>
		0000000000000290:  R_AARCH64_CALL26	_printk
     294: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
     298: 91000000     	add	x0, x0, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
     29c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
     2a0: 91000021     	add	x1, x1, #0x0
		00000000000002a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
     2a4: 52803542     	mov	w2, #0x1aa              // =426
     2a8: 52800023     	mov	w3, #0x1                // =1
     2ac: 94000000     	bl	0x2ac <aw22xxx_init_cfg_update_array+0x54>
		00000000000002ac:  R_AARCH64_CALL26	_printk
     2b0: 910013e2     	add	x2, sp, #0x4
     2b4: aa1303e0     	mov	x0, x19
     2b8: 52800041     	mov	w1, #0x2                // =2
     2bc: 390013ff     	strb	wzr, [sp, #0x4]
     2c0: 940000a3     	bl	0x54c <aw22xxx_i2c_read>
     2c4: 394013e8     	ldrb	w8, [sp, #0x4]
     2c8: aa1303e0     	mov	x0, x19
     2cc: 52800041     	mov	w1, #0x2                // =2
     2d0: 32000102     	orr	w2, w8, #0x1
     2d4: 390013e2     	strb	w2, [sp, #0x4]
     2d8: 94000051     	bl	0x41c <aw22xxx_i2c_write>
     2dc: 5280fa00     	mov	w0, #0x7d0              // =2000
     2e0: 52817701     	mov	w1, #0xbb8              // =3000
     2e4: 52800042     	mov	w2, #0x2                // =2
     2e8: 94000000     	bl	0x2e8 <aw22xxx_init_cfg_update_array+0x90>
		00000000000002e8:  R_AARCH64_CALL26	usleep_range_state
     2ec: aa1303e0     	mov	x0, x19
     2f0: 52801fe1     	mov	w1, #0xff               // =255
     2f4: 2a1f03e2     	mov	w2, wzr
     2f8: 94000049     	bl	0x41c <aw22xxx_i2c_write>
     2fc: aa1303e0     	mov	x0, x19
     300: 52800041     	mov	w1, #0x2                // =2
     304: 52800022     	mov	w2, #0x1                // =1
     308: 94000045     	bl	0x41c <aw22xxx_i2c_write>
     30c: aa1303e0     	mov	x0, x19
     310: 52800181     	mov	w1, #0xc                // =12
     314: 2a1f03e2     	mov	w2, wzr
     318: 94000041     	bl	0x41c <aw22xxx_i2c_write>
     31c: aa1303e0     	mov	x0, x19
     320: 52800161     	mov	w1, #0xb                // =11
     324: 528000a2     	mov	w2, #0x5                // =5
     328: 9400003d     	bl	0x41c <aw22xxx_i2c_write>
     32c: aa1303e0     	mov	x0, x19
     330: 528000a1     	mov	w1, #0x5                // =5
     334: 52800022     	mov	w2, #0x1                // =1
     338: 94000039     	bl	0x41c <aw22xxx_i2c_write>
     33c: aa1303e0     	mov	x0, x19
     340: 52800081     	mov	w1, #0x4                // =4
     344: 52800022     	mov	w2, #0x1                // =1
     348: 94000035     	bl	0x41c <aw22xxx_i2c_write>
     34c: aa1303e0     	mov	x0, x19
     350: 52800121     	mov	w1, #0x9                // =9
     354: 52800022     	mov	w2, #0x1                // =1
     358: 94000031     	bl	0x41c <aw22xxx_i2c_write>
     35c: aa1303e0     	mov	x0, x19
     360: 52800081     	mov	w1, #0x4                // =4
     364: 52800062     	mov	w2, #0x3                // =3
     368: 9400002d     	bl	0x41c <aw22xxx_i2c_write>
     36c: aa1303e0     	mov	x0, x19
     370: 528000a1     	mov	w1, #0x5                // =5
     374: 52800822     	mov	w2, #0x41               // =65
     378: 94000029     	bl	0x41c <aw22xxx_i2c_write>
     37c: d5384108     	mrs	x8, SP_EL0
     380: f9438908     	ldr	x8, [x8, #0x710]
     384: f94007e9     	ldr	x9, [sp, #0x8]
     388: eb09011f     	cmp	x8, x9
     38c: 540000c1     	b.ne	0x3a4 <aw22xxx_init_cfg_update_array+0x14c>
     390: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     394: f94013f3     	ldr	x19, [sp, #0x20]
     398: 9100c3ff     	add	sp, sp, #0x30
     39c: d50323bf     	autiasp
     3a0: d65f03c0     	ret
     3a4: 94000000     	bl	0x3a4 <aw22xxx_init_cfg_update_array+0x14c>
		00000000000003a4:  R_AARCH64_CALL26	__stack_chk_fail
