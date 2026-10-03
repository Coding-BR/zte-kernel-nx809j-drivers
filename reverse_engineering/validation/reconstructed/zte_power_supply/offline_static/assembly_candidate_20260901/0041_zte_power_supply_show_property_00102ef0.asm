
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000025c <zte_power_supply_show_property>:
     25c: d503233f     	paciasp
     260: d10103ff     	sub	sp, sp, #0x40
     264: a9017bfd     	stp	x29, x30, [sp, #0x10]
     268: a90257f6     	stp	x22, x21, [sp, #0x20]
     26c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     270: 910043fd     	add	x29, sp, #0x10
     274: d100a036     	sub	x22, x1, #0x28
     278: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x10
     27c: 91000108     	add	x8, x8, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x10
     280: cb0802c8     	sub	x8, x22, x8
     284: d5384109     	mrs	x9, SP_EL0
     288: 5291746a     	mov	w10, #0x8ba3            // =35747
     28c: d343fd08     	lsr	x8, x8, #3
     290: f9438929     	ldr	x9, [x9, #0x710]
     294: 72b745ca     	movk	w10, #0xba2e, lsl #16
     298: aa0103f4     	mov	x20, x1
     29c: aa0203f3     	mov	x19, x2
     2a0: 1b0a7d01     	mul	w1, w8, w10
     2a4: f90007e9     	str	x9, [sp, #0x8]
     2a8: f9404c08     	ldr	x8, [x0, #0x98]
     2ac: f90003ff     	str	xzr, [sp]
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
     2d8: 37f803e0     	tbnz	w0, #0x1f, 0x354 <zte_power_supply_show_property+0xf8>
     2dc: b94003e2     	ldr	w2, [sp]
     2e0: b9402a88     	ldr	w8, [x20, #0x28]
     2e4: 7100051f     	cmp	w8, #0x1
     2e8: 5400016b     	b.lt	0x314 <zte_power_supply_show_property+0xb8>
     2ec: 37f80142     	tbnz	w2, #0x1f, 0x314 <zte_power_supply_show_property+0xb8>
     2f0: 6b08005f     	cmp	w2, w8
     2f4: 5400010a     	b.ge	0x314 <zte_power_supply_show_property+0xb8>
     2f8: f9401288     	ldr	x8, [x20, #0x20]
     2fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139
     300: 91000021     	add	x1, x1, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139
     304: aa1303e0     	mov	x0, x19
     308: f8625902     	ldr	x2, [x8, w2, uxtw #3]
     30c: 94000000     	bl	0x30c <zte_power_supply_show_property+0xb0>
		000000000000030c:  R_AARCH64_CALL26	sprintf
     310: 14000005     	b	0x324 <zte_power_supply_show_property+0xc8>
     314: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9
     318: 91000021     	add	x1, x1, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9
     31c: aa1303e0     	mov	x0, x19
     320: 94000000     	bl	0x320 <zte_power_supply_show_property+0xc4>
		0000000000000320:  R_AARCH64_CALL26	sprintf
     324: 93407c00     	sxtw	x0, w0
     328: d5384108     	mrs	x8, SP_EL0
     32c: f9438908     	ldr	x8, [x8, #0x710]
     330: f94007e9     	ldr	x9, [sp, #0x8]
     334: eb09011f     	cmp	x8, x9
     338: 54000461     	b.ne	0x3c4 <zte_power_supply_show_property+0x168>
     33c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     340: a94257f6     	ldp	x22, x21, [sp, #0x20]
     344: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     348: 910103ff     	add	sp, sp, #0x40
     34c: d50323bf     	autiasp
     350: d65f03c0     	ret
     354: 93407c00     	sxtw	x0, w0
     358: 52800029     	mov	w9, #0x1                // =1
     35c: d280002a     	mov	x10, #0x1               // =1
     360: f2c0800a     	movk	x10, #0x400, lsl #32
     364: 1100f408     	add	w8, w0, #0x3d
     368: f2e0008a     	movk	x10, #0x4, lsl #48
     36c: 9ac82129     	lsl	x9, x9, x8
     370: 7100c91f     	cmp	w8, #0x32
     374: 8a0a0128     	and	x8, x9, x10
     378: fa409904     	ccmp	x8, #0x0, #0x4, ls
     37c: 54fffd61     	b.ne	0x328 <zte_power_supply_show_property+0xcc>
     380: aa0003f3     	mov	x19, x0
     384: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000384:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x698
     388: 91000000     	add	x0, x0, #0x0
		0000000000000388:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x698
     38c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2
     390: 91000021     	add	x1, x1, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2
     394: 94000000     	bl	0x394 <zte_power_supply_show_property+0x138>
		0000000000000394:  R_AARCH64_CALL26	___ratelimit
     398: 35000060     	cbnz	w0, 0x3a4 <zte_power_supply_show_property+0x148>
     39c: aa1303e0     	mov	x0, x19
     3a0: 17ffffe2     	b	0x328 <zte_power_supply_show_property+0xcc>
     3a4: f94002c2     	ldr	x2, [x22]
     3a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27d
     3ac: 91000021     	add	x1, x1, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27d
     3b0: aa1503e0     	mov	x0, x21
     3b4: aa1303e3     	mov	x3, x19
     3b8: 94000000     	bl	0x3b8 <zte_power_supply_show_property+0x15c>
		00000000000003b8:  R_AARCH64_CALL26	_dev_err
     3bc: aa1303e0     	mov	x0, x19
     3c0: 17ffffda     	b	0x328 <zte_power_supply_show_property+0xcc>
     3c4: 94000000     	bl	0x3c4 <zte_power_supply_show_property+0x168>
		00000000000003c4:  R_AARCH64_CALL26	__stack_chk_fail
