
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000264 <store_efs_recovery>:
     264: d503233f     	paciasp
     268: d10103ff     	sub	sp, sp, #0x40
     26c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     270: f90013f5     	str	x21, [sp, #0x20]
     274: a9034ff4     	stp	x20, x19, [sp, #0x30]
     278: 910043fd     	add	x29, sp, #0x10
     27c: d5384108     	mrs	x8, SP_EL0
     280: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122
     284: 91000000     	add	x0, x0, #0x0
		0000000000000284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122
     288: f9438908     	ldr	x8, [x8, #0x710]
     28c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e
     290: 91000021     	add	x1, x1, #0x0
		0000000000000290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e
     294: aa0303f3     	mov	x19, x3
     298: aa0203f4     	mov	x20, x2
     29c: f90007e8     	str	x8, [sp, #0x8]
     2a0: b90007ff     	str	wzr, [sp, #0x4]
     2a4: 94000000     	bl	0x2a4 <store_efs_recovery+0x40>
		00000000000002a4:  R_AARCH64_CALL26	_printk
     2a8: 90000015     	adrp	x21, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     2ac: f94002a8     	ldr	x8, [x21]
		00000000000002ac:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     2b0: b50001c8     	cbnz	x8, 0x2e8 <store_efs_recovery+0x84>
     2b4: 928001b3     	mov	x19, #-0xe              // =-14
     2b8: d5384108     	mrs	x8, SP_EL0
     2bc: f9438908     	ldr	x8, [x8, #0x710]
     2c0: f94007e9     	ldr	x9, [sp, #0x8]
     2c4: eb09011f     	cmp	x8, x9
     2c8: 540003e1     	b.ne	0x344 <store_efs_recovery+0xe0>
     2cc: aa1303e0     	mov	x0, x19
     2d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     2d4: f94013f5     	ldr	x21, [sp, #0x20]
     2d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     2dc: 910103ff     	add	sp, sp, #0x40
     2e0: d50323bf     	autiasp
     2e4: d65f03c0     	ret
     2e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     2ec: 91000021     	add	x1, x1, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     2f0: 910013e2     	add	x2, sp, #0x4
     2f4: aa1403e0     	mov	x0, x20
     2f8: 94000000     	bl	0x2f8 <store_efs_recovery+0x94>
		00000000000002f8:  R_AARCH64_CALL26	sscanf
     2fc: b94007e2     	ldr	w2, [sp, #0x4]
     300: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e
     304: 91000294     	add	x20, x20, #0x0
		0000000000000304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e
     308: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199
     30c: 91000000     	add	x0, x0, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199
     310: aa1403e1     	mov	x1, x20
     314: 94000000     	bl	0x314 <store_efs_recovery+0xb0>
		0000000000000314:  R_AARCH64_CALL26	_printk
     318: b94007e8     	ldr	w8, [sp, #0x4]
     31c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
     320: 91000000     	add	x0, x0, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
     324: aa1403e1     	mov	x1, x20
     328: 7100011f     	cmp	w8, #0x0
     32c: f94002a8     	ldr	x8, [x21]
		000000000000032c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     330: 1a9f07e9     	cset	w9, ne
     334: b9000509     	str	w9, [x8, #0x4]
     338: d5033f9f     	dsb	sy
     33c: 94000000     	bl	0x33c <store_efs_recovery+0xd8>
		000000000000033c:  R_AARCH64_CALL26	_printk
     340: 17ffffde     	b	0x2b8 <store_efs_recovery+0x54>
     344: 94000000     	bl	0x344 <store_efs_recovery+0xe0>
		0000000000000344:  R_AARCH64_CALL26	__stack_chk_fail
