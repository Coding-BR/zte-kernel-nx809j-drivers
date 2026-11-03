
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000230 <fan_enable_store>:
     230: d503233f     	paciasp
     234: d10103ff     	sub	sp, sp, #0x40
     238: a9017bfd     	stp	x29, x30, [sp, #0x10]
     23c: f90013f5     	str	x21, [sp, #0x20]
     240: a9034ff4     	stp	x20, x19, [sp, #0x30]
     244: 910043fd     	add	x29, sp, #0x10
     248: d5384108     	mrs	x8, SP_EL0
     24c: aa0203e0     	mov	x0, x2
     250: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x918
     254: 91000021     	add	x1, x1, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x918
     258: f9438908     	ldr	x8, [x8, #0x710]
     25c: 910013e2     	add	x2, sp, #0x4
     260: aa0303f3     	mov	x19, x3
     264: f90007e8     	str	x8, [sp, #0x8]
     268: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000268:  R_AARCH64_ADR_PREL_PG_HI21	chip
     26c: f9400115     	ldr	x21, [x8]
		000000000000026c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     270: b90007ff     	str	wzr, [sp, #0x4]
     274: 94000000     	bl	0x274 <fan_enable_store+0x44>
		0000000000000274:  R_AARCH64_CALL26	sscanf
     278: 910062a0     	add	x0, x21, #0x18
     27c: 94000000     	bl	0x27c <fan_enable_store+0x4c>
		000000000000027c:  R_AARCH64_CALL26	mutex_lock
     280: f94006b4     	ldr	x20, [x21, #0x8]
     284: 39403289     	ldrb	w9, [x20, #0xc]
     288: b94007e8     	ldr	w8, [sp, #0x4]
     28c: 7100011f     	cmp	w8, #0x0
     290: 1a9f07e8     	cset	w8, ne
     294: 6b08013f     	cmp	w9, w8
     298: 54000141     	b.ne	0x2c0 <fan_enable_store+0x90>
     29c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x877
     2a0: 91000000     	add	x0, x0, #0x0
		00000000000002a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x877
     2a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     2a8: 91000021     	add	x1, x1, #0x0
		00000000000002a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     2ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d
     2b0: 91000042     	add	x2, x2, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d
     2b4: 528027e3     	mov	w3, #0x13f              // =319
     2b8: 94000000     	bl	0x2b8 <fan_enable_store+0x88>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: 14000015     	b	0x310 <fan_enable_store+0xe0>
     2c0: 39003288     	strb	w8, [x20, #0xc]
     2c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e6
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e6
     2cc: 39403284     	ldrb	w4, [x20, #0xc]
     2d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     2d4: 91000021     	add	x1, x1, #0x0
		00000000000002d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     2d8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d
     2dc: 91000042     	add	x2, x2, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d
     2e0: 52802863     	mov	w3, #0x143              // =323
     2e4: 94000000     	bl	0x2e4 <fan_enable_store+0xb4>
		00000000000002e4:  R_AARCH64_CALL26	_printk
     2e8: 39403288     	ldrb	w8, [x20, #0xc]
     2ec: 370000e8     	tbnz	w8, #0x0, 0x308 <fan_enable_store+0xd8>
     2f0: 39400288     	ldrb	w8, [x20]
     2f4: aa1403e0     	mov	x0, x20
     2f8: 2a1f03e1     	mov	w1, wzr
     2fc: 39000688     	strb	w8, [x20, #0x1]
     300: 94000488     	bl	0x1520 <fan_level_set>
     304: 14000003     	b	0x310 <fan_enable_store+0xe0>
     308: 39400688     	ldrb	w8, [x20, #0x1]
     30c: 350001e8     	cbnz	w8, 0x348 <fan_enable_store+0x118>
     310: 910062a0     	add	x0, x21, #0x18
     314: 94000000     	bl	0x314 <fan_enable_store+0xe4>
		0000000000000314:  R_AARCH64_CALL26	mutex_unlock
     318: d5384108     	mrs	x8, SP_EL0
     31c: f9438908     	ldr	x8, [x8, #0x710]
     320: f94007e9     	ldr	x9, [sp, #0x8]
     324: eb09011f     	cmp	x8, x9
     328: 540002c1     	b.ne	0x380 <fan_enable_store+0x150>
     32c: aa1303e0     	mov	x0, x19
     330: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     334: f94013f5     	ldr	x21, [sp, #0x20]
     338: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     33c: 910103ff     	add	sp, sp, #0x40
     340: d50323bf     	autiasp
     344: d65f03c0     	ret
     348: 39400681     	ldrb	w1, [x20, #0x1]
     34c: aa1403e0     	mov	x0, x20
     350: 94000474     	bl	0x1520 <fan_level_set>
     354: 39400684     	ldrb	w4, [x20, #0x1]
     358: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b5
     35c: 91000000     	add	x0, x0, #0x0
		000000000000035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b5
     360: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     364: 91000021     	add	x1, x1, #0x0
		0000000000000364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     368: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d
     36c: 91000042     	add	x2, x2, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d
     370: 52802983     	mov	w3, #0x14c              // =332
     374: 94000000     	bl	0x374 <fan_enable_store+0x144>
		0000000000000374:  R_AARCH64_CALL26	_printk
     378: 3900069f     	strb	wzr, [x20, #0x1]
     37c: 17ffffe5     	b	0x310 <fan_enable_store+0xe0>
     380: 94000000     	bl	0x380 <fan_enable_store+0x150>
		0000000000000380:  R_AARCH64_CALL26	__stack_chk_fail
