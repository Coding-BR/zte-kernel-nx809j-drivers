
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004700 <aw22xxx_led_init>:
    4700: d503233f     	paciasp
    4704: d10103ff     	sub	sp, sp, #0x40
    4708: a9017bfd     	stp	x29, x30, [sp, #0x10]
    470c: f90013f5     	str	x21, [sp, #0x20]
    4710: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4714: 910043fd     	add	x29, sp, #0x10
    4718: d5384108     	mrs	x8, SP_EL0
    471c: 90000014     	adrp	x20, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000471c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb04
    4720: 91000294     	add	x20, x20, #0x0
		0000000000004720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb04
    4724: f9438908     	ldr	x8, [x8, #0x710]
    4728: aa0003f3     	mov	x19, x0
    472c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000472c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    4730: 91000000     	add	x0, x0, #0x0
		0000000000004730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    4734: aa1403e1     	mov	x1, x20
    4738: f90007e8     	str	x8, [sp, #0x8]
    473c: 390013ff     	strb	wzr, [sp, #0x4]
    4740: 94000000     	bl	0x4740 <aw22xxx_led_init+0x40>
		0000000000004740:  R_AARCH64_CALL26	_printk
    4744: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x720
    4748: 91000000     	add	x0, x0, #0x0
		0000000000004748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x720
    474c: aa1403e1     	mov	x1, x20
    4750: 94000000     	bl	0x4750 <aw22xxx_led_init+0x50>
		0000000000004750:  R_AARCH64_CALL26	_printk
    4754: aa1303e0     	mov	x0, x19
    4758: 52800021     	mov	w1, #0x1                // =1
    475c: 52800aa2     	mov	w2, #0x55               // =85
    4760: 97ffee40     	bl	0x60 <aw22xxx_i2c_write>
    4764: 5280fa00     	mov	w0, #0x7d0              // =2000
    4768: 52817701     	mov	w1, #0xbb8              // =3000
    476c: 52800042     	mov	w2, #0x2                // =2
    4770: 94000000     	bl	0x4770 <aw22xxx_led_init+0x70>
		0000000000004770:  R_AARCH64_CALL26	usleep_range_state
    4774: 910013e2     	add	x2, sp, #0x4
    4778: aa1303e0     	mov	x0, x19
    477c: 52800041     	mov	w1, #0x2                // =2
    4780: 97fff328     	bl	0x1420 <aw22xxx_i2c_read>
    4784: 394013e8     	ldrb	w8, [sp, #0x4]
    4788: aa1303e0     	mov	x0, x19
    478c: 52800041     	mov	w1, #0x2                // =2
    4790: 32000102     	orr	w2, w8, #0x1
    4794: 390013e2     	strb	w2, [sp, #0x4]
    4798: 97ffee32     	bl	0x60 <aw22xxx_i2c_write>
    479c: 5280fa00     	mov	w0, #0x7d0              // =2000
    47a0: 52817701     	mov	w1, #0xbb8              // =3000
    47a4: 52800042     	mov	w2, #0x2                // =2
    47a8: 94000000     	bl	0x47a8 <aw22xxx_led_init+0xa8>
		00000000000047a8:  R_AARCH64_CALL26	usleep_range_state
    47ac: b942f274     	ldr	w20, [x19, #0x2f0]
    47b0: 7100329f     	cmp	w20, #0xc
    47b4: 54000189     	b.ls	0x47e4 <aw22xxx_led_init+0xe4>
    47b8: d5384108     	mrs	x8, SP_EL0
    47bc: f9438908     	ldr	x8, [x8, #0x710]
    47c0: f94007e9     	ldr	x9, [sp, #0x8]
    47c4: eb09011f     	cmp	x8, x9
    47c8: 54000541     	b.ne	0x4870 <aw22xxx_led_init+0x170>
    47cc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    47d0: f94013f5     	ldr	x21, [sp, #0x20]
    47d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    47d8: 910103ff     	add	sp, sp, #0x40
    47dc: d50323bf     	autiasp
    47e0: d65f03c0     	ret
    47e4: aa1303e0     	mov	x0, x19
    47e8: 52801fe1     	mov	w1, #0xff               // =255
    47ec: 2a1f03e2     	mov	w2, wzr
    47f0: 90000015     	adrp	x21, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000047f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1f8
    47f4: 910002b5     	add	x21, x21, #0x0
		00000000000047f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1f8
    47f8: 97ffee1a     	bl	0x60 <aw22xxx_i2c_write>
    47fc: 38746aa2     	ldrb	w2, [x21, x20]
    4800: aa1303e0     	mov	x0, x19
    4804: 52800161     	mov	w1, #0xb                // =11
    4808: 97ffee16     	bl	0x60 <aw22xxx_i2c_write>
    480c: 90000014     	adrp	x20, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000480c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb04
    4810: 91000294     	add	x20, x20, #0x0
		0000000000004810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb04
    4814: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182e
    4818: 91000000     	add	x0, x0, #0x0
		0000000000004818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182e
    481c: aa1403e1     	mov	x1, x20
    4820: 94000000     	bl	0x4820 <aw22xxx_led_init+0x120>
		0000000000004820:  R_AARCH64_CALL26	_printk
    4824: 910013e2     	add	x2, sp, #0x4
    4828: aa1303e0     	mov	x0, x19
    482c: 52800041     	mov	w1, #0x2                // =2
    4830: 97fff2fc     	bl	0x1420 <aw22xxx_i2c_read>
    4834: 394013e8     	ldrb	w8, [sp, #0x4]
    4838: aa1303e0     	mov	x0, x19
    483c: 52800041     	mov	w1, #0x2                // =2
    4840: 121f7902     	and	w2, w8, #0xfffffffe
    4844: 390013e2     	strb	w2, [sp, #0x4]
    4848: 97ffee06     	bl	0x60 <aw22xxx_i2c_write>
    484c: 5280fa00     	mov	w0, #0x7d0              // =2000
    4850: 52817701     	mov	w1, #0xbb8              // =3000
    4854: 52800042     	mov	w2, #0x2                // =2
    4858: 94000000     	bl	0x4858 <aw22xxx_led_init+0x158>
		0000000000004858:  R_AARCH64_CALL26	usleep_range_state
    485c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000485c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
    4860: 91000000     	add	x0, x0, #0x0
		0000000000004860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
    4864: aa1403e1     	mov	x1, x20
    4868: 94000000     	bl	0x4868 <aw22xxx_led_init+0x168>
		0000000000004868:  R_AARCH64_CALL26	_printk
    486c: 17ffffd3     	b	0x47b8 <aw22xxx_led_init+0xb8>
    4870: 94000000     	bl	0x4870 <aw22xxx_led_init+0x170>
		0000000000004870:  R_AARCH64_CALL26	__stack_chk_fail
