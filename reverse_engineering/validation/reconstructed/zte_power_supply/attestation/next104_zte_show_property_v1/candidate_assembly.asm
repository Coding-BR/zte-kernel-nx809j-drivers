
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000025c <zte_power_supply_show_property>:
     25c: d503233f     	paciasp
     260: d10103ff     	sub	sp, sp, #0x40
     264: a9017bfd     	stp	x29, x30, [sp, #0x10]
     268: f90013f5     	str	x21, [sp, #0x20]
     26c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     270: 910043fd     	add	x29, sp, #0x10
     274: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000274:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
     278: 91000108     	add	x8, x8, #0x0
		0000000000000278:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
     27c: d5384109     	mrs	x9, SP_EL0
     280: cb080028     	sub	x8, x1, x8
     284: 5291746a     	mov	w10, #0x8ba3            // =35747
     288: f9438929     	ldr	x9, [x9, #0x710]
     28c: d100a108     	sub	x8, x8, #0x28
     290: 72b745ca     	movk	w10, #0xba2e, lsl #16
     294: aa0103f3     	mov	x19, x1
     298: d343fd08     	lsr	x8, x8, #3
     29c: f90007e9     	str	x9, [sp, #0x8]
     2a0: aa0203f4     	mov	x20, x2
     2a4: f90003ff     	str	xzr, [sp]
     2a8: 1b0a7d01     	mul	w1, w8, w10
     2ac: f9404c08     	ldr	x8, [x0, #0x98]
     2b0: 7101003f     	cmp	w1, #0x40
     2b4: 540000a1     	b.ne	0x2c8 <zte_power_supply_show_property+0x6c>
     2b8: f9400108     	ldr	x8, [x8]
     2bc: b9400902     	ldr	w2, [x8, #0x8]
     2c0: b90003e2     	str	w2, [sp]
     2c4: 14000007     	b	0x2e0 <zte_power_supply_show_property+0x84>
     2c8: aa0003f5     	mov	x21, x0
     2cc: 910003e2     	mov	x2, sp
     2d0: aa0803e0     	mov	x0, x8
     2d4: 94000000     	bl	0x2d4 <zte_power_supply_show_property+0x78>
		00000000000002d4:  R_AARCH64_CALL26	zte_power_supply_get_property
     2d8: 37f803c0     	tbnz	w0, #0x1f, 0x350 <zte_power_supply_show_property+0xf4>
     2dc: b94003e2     	ldr	w2, [sp]
     2e0: b9402a68     	ldr	w8, [x19, #0x28]
     2e4: 7100051f     	cmp	w8, #0x1
     2e8: 5400014b     	b.lt	0x310 <zte_power_supply_show_property+0xb4>
     2ec: 6b08005f     	cmp	w2, w8
     2f0: 54000102     	b.hs	0x310 <zte_power_supply_show_property+0xb4>
     2f4: f9401268     	ldr	x8, [x19, #0x20]
     2f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
     2fc: 91000021     	add	x1, x1, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
     300: aa1403e0     	mov	x0, x20
     304: f8625902     	ldr	x2, [x8, w2, uxtw #3]
     308: 94000000     	bl	0x308 <zte_power_supply_show_property+0xac>
		0000000000000308:  R_AARCH64_CALL26	sprintf
     30c: 14000005     	b	0x320 <zte_power_supply_show_property+0xc4>
     310: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x134
     314: 91000021     	add	x1, x1, #0x0
		0000000000000314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x134
     318: aa1403e0     	mov	x0, x20
     31c: 94000000     	bl	0x31c <zte_power_supply_show_property+0xc0>
		000000000000031c:  R_AARCH64_CALL26	sprintf
     320: 93407c00     	sxtw	x0, w0
     324: d5384108     	mrs	x8, SP_EL0
     328: f9438908     	ldr	x8, [x8, #0x710]
     32c: f94007e9     	ldr	x9, [sp, #0x8]
     330: eb09011f     	cmp	x8, x9
     334: 54000461     	b.ne	0x3c0 <zte_power_supply_show_property+0x164>
     338: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     33c: f94013f5     	ldr	x21, [sp, #0x20]
     340: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     344: 910103ff     	add	sp, sp, #0x40
     348: d50323bf     	autiasp
     34c: d65f03c0     	ret
     350: 93407c00     	sxtw	x0, w0
     354: 52800029     	mov	w9, #0x1                // =1
     358: d280002a     	mov	x10, #0x1               // =1
     35c: f2c0800a     	movk	x10, #0x400, lsl #32
     360: 1100f408     	add	w8, w0, #0x3d
     364: f2e0008a     	movk	x10, #0x4, lsl #48
     368: 9ac82129     	lsl	x9, x9, x8
     36c: 7100c91f     	cmp	w8, #0x32
     370: 8a0a0128     	and	x8, x9, x10
     374: fa409904     	ccmp	x8, #0x0, #0x4, ls
     378: 54fffd61     	b.ne	0x324 <zte_power_supply_show_property+0xc8>
     37c: aa0003f4     	mov	x20, x0
     380: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000380:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x6c0
     384: 91000000     	add	x0, x0, #0x0
		0000000000000384:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x6c0
     388: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60
     38c: 91000021     	add	x1, x1, #0x0
		000000000000038c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60
     390: 94000000     	bl	0x390 <zte_power_supply_show_property+0x134>
		0000000000000390:  R_AARCH64_CALL26	___ratelimit
     394: 35000060     	cbnz	w0, 0x3a0 <zte_power_supply_show_property+0x144>
     398: aa1403e0     	mov	x0, x20
     39c: 17ffffe2     	b	0x324 <zte_power_supply_show_property+0xc8>
     3a0: f9400262     	ldr	x2, [x19]
     3a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa
     3a8: 91000021     	add	x1, x1, #0x0
		00000000000003a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa
     3ac: aa1503e0     	mov	x0, x21
     3b0: aa1403e3     	mov	x3, x20
     3b4: 94000000     	bl	0x3b4 <zte_power_supply_show_property+0x158>
		00000000000003b4:  R_AARCH64_CALL26	_dev_err
     3b8: aa1403e0     	mov	x0, x20
     3bc: 17ffffda     	b	0x324 <zte_power_supply_show_property+0xc8>
     3c0: 94000000     	bl	0x3c0 <zte_power_supply_show_property+0x164>
		00000000000003c0:  R_AARCH64_CALL26	__stack_chk_fail
