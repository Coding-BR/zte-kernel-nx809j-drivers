
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029904 <syna_sysfs_irq_en_store>:
   29904: d503233f     	paciasp
   29908: d10103ff     	sub	sp, sp, #0x40
   2990c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   29910: f90013f5     	str	x21, [sp, #0x20]
   29914: a9034ff4     	stp	x20, x19, [sp, #0x30]
   29918: 910043fd     	add	x29, sp, #0x10
   2991c: d5384109     	mrs	x9, SP_EL0
   29920: aa0203e8     	mov	x8, x2
   29924: 910013e2     	add	x2, sp, #0x4
   29928: f9438929     	ldr	x9, [x9, #0x710]
   2992c: 52800141     	mov	w1, #0xa                // =10
   29930: aa0303f3     	mov	x19, x3
   29934: f90007e9     	str	x9, [sp, #0x8]
   29938: f9400c09     	ldr	x9, [x0, #0x18]
   2993c: aa0803e0     	mov	x0, x8
   29940: b90007ff     	str	wzr, [sp, #0x4]
   29944: f9400d29     	ldr	x9, [x9, #0x18]
   29948: f9404d34     	ldr	x20, [x9, #0x98]
   2994c: f9413a95     	ldr	x21, [x20, #0x270]
   29950: 94000000     	bl	0x29950 <syna_sysfs_irq_en_store+0x4c>
		0000000000029950:  R_AARCH64_CALL26	kstrtouint
   29954: 34000060     	cbz	w0, 0x29960 <syna_sysfs_irq_en_store+0x5c>
   29958: 928002b3     	mov	x19, #-0x16             // =-22
   2995c: 14000028     	b	0x299fc <syna_sysfs_irq_en_store+0xf8>
   29960: 910022a0     	add	x0, x21, #0x8
   29964: b4000320     	cbz	x0, 0x299c8 <syna_sysfs_irq_en_store+0xc4>
   29968: f94022a8     	ldr	x8, [x21, #0x40]
   2996c: b40002e8     	cbz	x8, 0x299c8 <syna_sysfs_irq_en_store+0xc4>
   29970: 39560a89     	ldrb	w9, [x20, #0x582]
   29974: 360005c9     	tbz	w9, #0x0, 0x29a2c <syna_sysfs_irq_en_store+0x128>
   29978: b9457e89     	ldr	w9, [x20, #0x57c]
   2997c: 71000d3f     	cmp	w9, #0x3
   29980: 54000620     	b.eq	0x29a44 <syna_sysfs_irq_en_store+0x140>
   29984: b94007e2     	ldr	w2, [sp, #0x4]
   29988: 7100045f     	cmp	w2, #0x1
   2998c: 54000220     	b.eq	0x299d0 <syna_sysfs_irq_en_store+0xcc>
   29990: 35000662     	cbnz	w2, 0x29a5c <syna_sysfs_irq_en_store+0x158>
   29994: 2a1f03e1     	mov	w1, wzr
   29998: b85fc110     	ldur	w16, [x8, #-0x4]
   2999c: 728c3631     	movk	w17, #0x61b1
   299a0: 72a685d1     	movk	w17, #0x342e, lsl #16
   299a4: 6b11021f     	cmp	w16, w17
   299a8: 54000040     	b.eq	0x299b0 <syna_sysfs_irq_en_store+0xac>
   299ac: d4304500     	brk	#0x8228
   299b0: d63f0100     	blr	x8
   299b4: 36f80200     	tbz	w0, #0x1f, 0x299f4 <syna_sysfs_irq_en_store+0xf0>
   299b8: 2a0003f4     	mov	w20, w0
   299bc: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x3ec>
		00000000000299bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1826b
   299c0: 91000000     	add	x0, x0, #0x0
		00000000000299c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1826b
   299c4: 14000030     	b	0x29a84 <syna_sysfs_irq_en_store+0x180>
   299c8: aa1f03f3     	mov	x19, xzr
   299cc: 1400000c     	b	0x299fc <syna_sysfs_irq_en_store+0xf8>
   299d0: 52800021     	mov	w1, #0x1                // =1
   299d4: b85fc110     	ldur	w16, [x8, #-0x4]
   299d8: 728c3631     	movk	w17, #0x61b1
   299dc: 72a685d1     	movk	w17, #0x342e, lsl #16
   299e0: 6b11021f     	cmp	w16, w17
   299e4: 54000040     	b.eq	0x299ec <syna_sysfs_irq_en_store+0xe8>
   299e8: d4304500     	brk	#0x8228
   299ec: d63f0100     	blr	x8
   299f0: 37f80440     	tbnz	w0, #0x1f, 0x29a78 <syna_sysfs_irq_en_store+0x174>
   299f4: 2a1303f4     	mov	w20, w19
   299f8: 93407e93     	sxtw	x19, w20
   299fc: d5384108     	mrs	x8, SP_EL0
   29a00: f9438908     	ldr	x8, [x8, #0x710]
   29a04: f94007e9     	ldr	x9, [sp, #0x8]
   29a08: eb09011f     	cmp	x8, x9
   29a0c: 54000441     	b.ne	0x29a94 <syna_sysfs_irq_en_store+0x190>
   29a10: aa1303e0     	mov	x0, x19
   29a14: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29a18: f94013f5     	ldr	x21, [sp, #0x20]
   29a1c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   29a20: 910103ff     	add	sp, sp, #0x40
   29a24: d50323bf     	autiasp
   29a28: d65f03c0     	ret
   29a2c: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19489
   29a30: 91000000     	add	x0, x0, #0x0
		0000000000029a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19489
   29a34: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8a2
   29a38: 91000021     	add	x1, x1, #0x0
		0000000000029a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8a2
   29a3c: 94000000     	bl	0x29a3c <syna_sysfs_irq_en_store+0x138>
		0000000000029a3c:  R_AARCH64_CALL26	_printk
   29a40: 17ffffef     	b	0x299fc <syna_sysfs_irq_en_store+0xf8>
   29a44: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a86b
   29a48: 91000000     	add	x0, x0, #0x0
		0000000000029a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a86b
   29a4c: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8a2
   29a50: 91000021     	add	x1, x1, #0x0
		0000000000029a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8a2
   29a54: 94000000     	bl	0x29a54 <syna_sysfs_irq_en_store+0x150>
		0000000000029a54:  R_AARCH64_CALL26	_printk
   29a58: 17ffffe7     	b	0x299f4 <syna_sysfs_irq_en_store+0xf0>
   29a5c: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17952
   29a60: 91000000     	add	x0, x0, #0x0
		0000000000029a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17952
   29a64: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8a2
   29a68: 91000021     	add	x1, x1, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8a2
   29a6c: 94000000     	bl	0x29a6c <syna_sysfs_irq_en_store+0x168>
		0000000000029a6c:  R_AARCH64_CALL26	_printk
   29a70: 128002b4     	mov	w20, #-0x16             // =-22
   29a74: 17ffffe1     	b	0x299f8 <syna_sysfs_irq_en_store+0xf4>
   29a78: 2a0003f4     	mov	w20, w0
   29a7c: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188e7
   29a80: 91000000     	add	x0, x0, #0x0
		0000000000029a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188e7
   29a84: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x3ec>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8a2
   29a88: 91000021     	add	x1, x1, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8a2
   29a8c: 94000000     	bl	0x29a8c <syna_sysfs_irq_en_store+0x188>
		0000000000029a8c:  R_AARCH64_CALL26	_printk
   29a90: 17ffffda     	b	0x299f8 <syna_sysfs_irq_en_store+0xf4>
   29a94: 94000000     	bl	0x29a94 <syna_sysfs_irq_en_store+0x190>
		0000000000029a94:  R_AARCH64_CALL26	__stack_chk_fail
