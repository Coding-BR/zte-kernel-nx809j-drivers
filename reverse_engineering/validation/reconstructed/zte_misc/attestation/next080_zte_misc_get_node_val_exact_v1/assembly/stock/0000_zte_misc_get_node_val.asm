
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000020c <zte_misc_get_node_val>:
     20c: d503233f     	paciasp
     210: d10243ff     	sub	sp, sp, #0x90
     214: a9057bfd     	stp	x29, x30, [sp, #0x50]
     218: f90033f7     	str	x23, [sp, #0x60]
     21c: a90757f6     	stp	x22, x21, [sp, #0x70]
     220: a9084ff4     	stp	x20, x19, [sp, #0x80]
     224: 910143fd     	add	x29, sp, #0x50
     228: d5384108     	mrs	x8, SP_EL0
     22c: f9438908     	ldr	x8, [x8, #0x710]
     230: f81f83a8     	stur	x8, [x29, #-0x8]
     234: b90007ff     	str	wzr, [sp, #0x4]
     238: b4000700     	cbz	x0, 0x318 <zte_misc_get_node_val+0x10c>
     23c: 39400008     	ldrb	w8, [x0]
     240: aa0003f3     	mov	x19, x0
     244: 340006a8     	cbz	w8, 0x318 <zte_misc_get_node_val+0x10c>
     248: aa1303e0     	mov	x0, x19
     24c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     250: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     254: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     258: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     25c: 94000000     	bl	0x25c <zte_misc_get_node_val+0x50>
		000000000000025c:  R_AARCH64_CALL26	strlen
     260: aa0003f4     	mov	x20, x0
     264: aa1f03f6     	mov	x22, xzr
     268: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000268:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     26c: 910002f7     	add	x23, x23, #0x0
		000000000000026c:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     270: 14000004     	b	0x280 <zte_misc_get_node_val+0x74>
     274: 9100a2d6     	add	x22, x22, #0x28
     278: f11682df     	cmp	x22, #0x5a0
     27c: 54000480     	b.eq	0x30c <zte_misc_get_node_val+0x100>
     280: f8766af5     	ldr	x21, [x23, x22]
     284: aa1303e1     	mov	x1, x19
     288: aa1403e2     	mov	x2, x20
     28c: aa1503e0     	mov	x0, x21
     290: 94000000     	bl	0x290 <zte_misc_get_node_val+0x84>
		0000000000000290:  R_AARCH64_CALL26	strncmp
     294: 35ffff00     	cbnz	w0, 0x274 <zte_misc_get_node_val+0x68>
     298: aa1503e0     	mov	x0, x21
     29c: 94000000     	bl	0x29c <zte_misc_get_node_val+0x90>
		000000000000029c:  R_AARCH64_CALL26	strlen
     2a0: aa0003f5     	mov	x21, x0
     2a4: aa1303e0     	mov	x0, x19
     2a8: 94000000     	bl	0x2a8 <zte_misc_get_node_val+0x9c>
		00000000000002a8:  R_AARCH64_CALL26	strlen
     2ac: eb0002bf     	cmp	x21, x0
     2b0: 54fffe21     	b.ne	0x274 <zte_misc_get_node_val+0x68>
     2b4: 8b1602e9     	add	x9, x23, x22
     2b8: f9400928     	ldr	x8, [x9, #0x10]
     2bc: b4fffdc8     	cbz	x8, 0x274 <zte_misc_get_node_val+0x68>
     2c0: f9401121     	ldr	x1, [x9, #0x20]
     2c4: 910023e0     	add	x0, sp, #0x8
     2c8: b85fc110     	ldur	w16, [x8, #-0x4]
     2cc: 7296dd31     	movk	w17, #0xb6e9
     2d0: 72a53211     	movk	w17, #0x2990, lsl #16
     2d4: 6b11021f     	cmp	w16, w17
     2d8: 54000040     	b.eq	0x2e0 <zte_misc_get_node_val+0xd4>
     2dc: d4304500     	brk	#0x8228
     2e0: d63f0100     	blr	x8
     2e4: 37f801a0     	tbnz	w0, #0x1f, 0x318 <zte_misc_get_node_val+0x10c>
     2e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261
     2ec: 91000021     	add	x1, x1, #0x0
		00000000000002ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261
     2f0: 910023e0     	add	x0, sp, #0x8
     2f4: 910013e2     	add	x2, sp, #0x4
     2f8: 94000000     	bl	0x2f8 <zte_misc_get_node_val+0xec>
		00000000000002f8:  R_AARCH64_CALL26	sscanf
     2fc: 7100041f     	cmp	w0, #0x1
     300: 54000261     	b.ne	0x34c <zte_misc_get_node_val+0x140>
     304: b94007e0     	ldr	w0, [sp, #0x4]
     308: 14000005     	b	0x31c <zte_misc_get_node_val+0x110>
     30c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e7
     310: 91000000     	add	x0, x0, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e7
     314: 94000000     	bl	0x314 <zte_misc_get_node_val+0x108>
		0000000000000314:  R_AARCH64_CALL26	_printk
     318: 128002a0     	mov	w0, #-0x16              // =-22
     31c: d5384108     	mrs	x8, SP_EL0
     320: f9438908     	ldr	x8, [x8, #0x710]
     324: f85f83a9     	ldur	x9, [x29, #-0x8]
     328: eb09011f     	cmp	x8, x9
     32c: 54000161     	b.ne	0x358 <zte_misc_get_node_val+0x14c>
     330: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     334: f94033f7     	ldr	x23, [sp, #0x60]
     338: a94757f6     	ldp	x22, x21, [sp, #0x70]
     33c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     340: 910243ff     	add	sp, sp, #0x90
     344: d50323bf     	autiasp
     348: d65f03c0     	ret
     34c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f
     350: 91000000     	add	x0, x0, #0x0
		0000000000000350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f
     354: 17fffff0     	b	0x314 <zte_misc_get_node_val+0x108>
     358: 94000000     	bl	0x358 <zte_misc_get_node_val+0x14c>
		0000000000000358:  R_AARCH64_CALL26	__stack_chk_fail
