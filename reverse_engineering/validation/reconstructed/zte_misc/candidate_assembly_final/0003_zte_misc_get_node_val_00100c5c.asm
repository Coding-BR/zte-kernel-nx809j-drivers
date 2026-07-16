
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000150 <zte_misc_get_node_val>:
     150: d503233f     	paciasp
     154: d10243ff     	sub	sp, sp, #0x90
     158: a9057bfd     	stp	x29, x30, [sp, #0x50]
     15c: f90033f7     	str	x23, [sp, #0x60]
     160: a90757f6     	stp	x22, x21, [sp, #0x70]
     164: a9084ff4     	stp	x20, x19, [sp, #0x80]
     168: 910143fd     	add	x29, sp, #0x50
     16c: d5384108     	mrs	x8, SP_EL0
     170: f9438908     	ldr	x8, [x8, #0x710]
     174: f81f83a8     	stur	x8, [x29, #-0x8]
     178: b90007ff     	str	wzr, [sp, #0x4]
     17c: b4000700     	cbz	x0, 0x25c <zte_misc_get_node_val+0x10c>
     180: 39400008     	ldrb	w8, [x0]
     184: aa0003f3     	mov	x19, x0
     188: 340006a8     	cbz	w8, 0x25c <zte_misc_get_node_val+0x10c>
     18c: aa1303e0     	mov	x0, x19
     190: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     194: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     198: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     19c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     1a0: 94000000     	bl	0x1a0 <zte_misc_get_node_val+0x50>
		00000000000001a0:  R_AARCH64_CALL26	strlen
     1a4: aa0003f4     	mov	x20, x0
     1a8: aa1f03f6     	mov	x22, xzr
     1ac: 90000017     	adrp	x23, 0x0 <.text>
		00000000000001ac:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list
     1b0: 910002f7     	add	x23, x23, #0x0
		00000000000001b0:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list
     1b4: 14000004     	b	0x1c4 <zte_misc_get_node_val+0x74>
     1b8: 9100a2d6     	add	x22, x22, #0x28
     1bc: f11682df     	cmp	x22, #0x5a0
     1c0: 54000480     	b.eq	0x250 <zte_misc_get_node_val+0x100>
     1c4: f8766af5     	ldr	x21, [x23, x22]
     1c8: aa1303e1     	mov	x1, x19
     1cc: aa1403e2     	mov	x2, x20
     1d0: aa1503e0     	mov	x0, x21
     1d4: 94000000     	bl	0x1d4 <zte_misc_get_node_val+0x84>
		00000000000001d4:  R_AARCH64_CALL26	strncmp
     1d8: 35ffff00     	cbnz	w0, 0x1b8 <zte_misc_get_node_val+0x68>
     1dc: aa1503e0     	mov	x0, x21
     1e0: 94000000     	bl	0x1e0 <zte_misc_get_node_val+0x90>
		00000000000001e0:  R_AARCH64_CALL26	strlen
     1e4: aa0003f5     	mov	x21, x0
     1e8: aa1303e0     	mov	x0, x19
     1ec: 94000000     	bl	0x1ec <zte_misc_get_node_val+0x9c>
		00000000000001ec:  R_AARCH64_CALL26	strlen
     1f0: eb0002bf     	cmp	x21, x0
     1f4: 54fffe21     	b.ne	0x1b8 <zte_misc_get_node_val+0x68>
     1f8: 8b1602e9     	add	x9, x23, x22
     1fc: f9400928     	ldr	x8, [x9, #0x10]
     200: b4fffdc8     	cbz	x8, 0x1b8 <zte_misc_get_node_val+0x68>
     204: f9401121     	ldr	x1, [x9, #0x20]
     208: 910023e0     	add	x0, sp, #0x8
     20c: b85fc110     	ldur	w16, [x8, #-0x4]
     210: 7296dd31     	movk	w17, #0xb6e9
     214: 72a53211     	movk	w17, #0x2990, lsl #16
     218: 6b11021f     	cmp	w16, w17
     21c: 54000040     	b.eq	0x224 <zte_misc_get_node_val+0xd4>
     220: d4304500     	brk	#0x8228
     224: d63f0100     	blr	x8
     228: 37f801a0     	tbnz	w0, #0x1f, 0x25c <zte_misc_get_node_val+0x10c>
     22c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261
     230: 91000021     	add	x1, x1, #0x0
		0000000000000230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261
     234: 910023e0     	add	x0, sp, #0x8
     238: 910013e2     	add	x2, sp, #0x4
     23c: 94000000     	bl	0x23c <zte_misc_get_node_val+0xec>
		000000000000023c:  R_AARCH64_CALL26	sscanf
     240: 7100041f     	cmp	w0, #0x1
     244: 54000261     	b.ne	0x290 <zte_misc_get_node_val+0x140>
     248: b94007e0     	ldr	w0, [sp, #0x4]
     24c: 14000005     	b	0x260 <zte_misc_get_node_val+0x110>
     250: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e7
     254: 91000000     	add	x0, x0, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e7
     258: 94000000     	bl	0x258 <zte_misc_get_node_val+0x108>
		0000000000000258:  R_AARCH64_CALL26	_printk
     25c: 128002a0     	mov	w0, #-0x16              // =-22
     260: d5384108     	mrs	x8, SP_EL0
     264: f9438908     	ldr	x8, [x8, #0x710]
     268: f85f83a9     	ldur	x9, [x29, #-0x8]
     26c: eb09011f     	cmp	x8, x9
     270: 54000161     	b.ne	0x29c <zte_misc_get_node_val+0x14c>
     274: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     278: f94033f7     	ldr	x23, [sp, #0x60]
     27c: a94757f6     	ldp	x22, x21, [sp, #0x70]
     280: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     284: 910243ff     	add	sp, sp, #0x90
     288: d50323bf     	autiasp
     28c: d65f03c0     	ret
     290: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f
     294: 91000000     	add	x0, x0, #0x0
		0000000000000294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f
     298: 17fffff0     	b	0x258 <zte_misc_get_node_val+0x108>
     29c: 94000000     	bl	0x29c <zte_misc_get_node_val+0x14c>
		000000000000029c:  R_AARCH64_CALL26	__stack_chk_fail
