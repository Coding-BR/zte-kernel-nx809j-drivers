
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029918 <syna_sysfs_reset_store>:
   29918: d503233f     	paciasp
   2991c: d10103ff     	sub	sp, sp, #0x40
   29920: a9017bfd     	stp	x29, x30, [sp, #0x10]
   29924: f90013f5     	str	x21, [sp, #0x20]
   29928: a9034ff4     	stp	x20, x19, [sp, #0x30]
   2992c: 910043fd     	add	x29, sp, #0x10
   29930: d5384109     	mrs	x9, SP_EL0
   29934: aa0203e8     	mov	x8, x2
   29938: 910013e2     	add	x2, sp, #0x4
   2993c: f9438929     	ldr	x9, [x9, #0x710]
   29940: 52800141     	mov	w1, #0xa                // =10
   29944: aa0303f3     	mov	x19, x3
   29948: f90007e9     	str	x9, [sp, #0x8]
   2994c: f9400c09     	ldr	x9, [x0, #0x18]
   29950: aa0803e0     	mov	x0, x8
   29954: b90007ff     	str	wzr, [sp, #0x4]
   29958: 390003ff     	strb	wzr, [sp]
   2995c: f9400d29     	ldr	x9, [x9, #0x18]
   29960: f9404d34     	ldr	x20, [x9, #0x98]
   29964: f9413a95     	ldr	x21, [x20, #0x270]
   29968: 94000000     	bl	0x29968 <syna_sysfs_reset_store+0x50>
		0000000000029968:  R_AARCH64_CALL26	kstrtouint
   2996c: 34000060     	cbz	w0, 0x29978 <syna_sysfs_reset_store+0x60>
   29970: 928002b3     	mov	x19, #-0x16             // =-22
   29974: 14000021     	b	0x299f8 <syna_sysfs_reset_store+0xe0>
   29978: 39560a88     	ldrb	w8, [x20, #0x582]
   2997c: 36000568     	tbz	w8, #0x0, 0x29a28 <syna_sysfs_reset_store+0x110>
   29980: b9457e88     	ldr	w8, [x20, #0x57c]
   29984: b94007e2     	ldr	w2, [sp, #0x4]
   29988: 71000d1f     	cmp	w8, #0x3
   2998c: 7a421844     	ccmp	w2, #0x2, #0x4, ne
   29990: 54000241     	b.ne	0x299d8 <syna_sysfs_reset_store+0xc0>
   29994: f9413a80     	ldr	x0, [x20, #0x270]
   29998: f940c408     	ldr	x8, [x0, #0x188]
   2999c: b4000528     	cbz	x8, 0x29a40 <syna_sysfs_reset_store+0x128>
   299a0: b85fc110     	ldur	w16, [x8, #-0x4]
   299a4: 72974371     	movk	w17, #0xba1b
   299a8: 72a56791     	movk	w17, #0x2b3c, lsl #16
   299ac: 6b11021f     	cmp	w16, w17
   299b0: 54000040     	b.eq	0x299b8 <syna_sysfs_reset_store+0xa0>
   299b4: d4304500     	brk	#0x8228
   299b8: d63f0100     	blr	x8
   299bc: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   299c0: 37000188     	tbnz	w8, #0x0, 0x299f0 <syna_sysfs_reset_store+0xd8>
   299c4: f9400280     	ldr	x0, [x20]
   299c8: 910003e1     	mov	x1, sp
   299cc: aa1f03e2     	mov	x2, xzr
   299d0: 94000000     	bl	0x299d0 <syna_sysfs_reset_store+0xb8>
		00000000000299d0:  R_AARCH64_CALL26	syna_tcm_get_event_data
   299d4: 14000007     	b	0x299f0 <syna_sysfs_reset_store+0xd8>
   299d8: 7100045f     	cmp	w2, #0x1
   299dc: 54000401     	b.ne	0x29a5c <syna_sysfs_reset_store+0x144>
   299e0: f9400280     	ldr	x0, [x20]
   299e4: b9420c01     	ldr	w1, [x0, #0x20c]
   299e8: 94000000     	bl	0x299e8 <syna_sysfs_reset_store+0xd0>
		00000000000299e8:  R_AARCH64_CALL26	syna_tcm_reset
   299ec: 37f80460     	tbnz	w0, #0x1f, 0x29a78 <syna_sysfs_reset_store+0x160>
   299f0: 2a1303f4     	mov	w20, w19
   299f4: 93407e93     	sxtw	x19, w20
   299f8: d5384108     	mrs	x8, SP_EL0
   299fc: f9438908     	ldr	x8, [x8, #0x710]
   29a00: f94007e9     	ldr	x9, [sp, #0x8]
   29a04: eb09011f     	cmp	x8, x9
   29a08: 54000461     	b.ne	0x29a94 <syna_sysfs_reset_store+0x17c>
   29a0c: aa1303e0     	mov	x0, x19
   29a10: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29a14: f94013f5     	ldr	x21, [sp, #0x20]
   29a18: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   29a1c: 910103ff     	add	sp, sp, #0x40
   29a20: d50323bf     	autiasp
   29a24: d65f03c0     	ret
   29a28: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19438
   29a2c: 91000000     	add	x0, x0, #0x0
		0000000000029a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19438
   29a30: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17613
   29a34: 91000021     	add	x1, x1, #0x0
		0000000000029a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17613
   29a38: 94000000     	bl	0x29a38 <syna_sysfs_reset_store+0x120>
		0000000000029a38:  R_AARCH64_CALL26	_printk
   29a3c: 17ffffef     	b	0x299f8 <syna_sysfs_reset_store+0xe0>
   29a40: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8fd
   29a44: 91000000     	add	x0, x0, #0x0
		0000000000029a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8fd
   29a48: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17613
   29a4c: 91000021     	add	x1, x1, #0x0
		0000000000029a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17613
   29a50: 94000000     	bl	0x29a50 <syna_sysfs_reset_store+0x138>
		0000000000029a50:  R_AARCH64_CALL26	_printk
   29a54: 2a1f03f4     	mov	w20, wzr
   29a58: 17ffffe7     	b	0x299f4 <syna_sysfs_reset_store+0xdc>
   29a5c: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18585
   29a60: 91000000     	add	x0, x0, #0x0
		0000000000029a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18585
   29a64: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17613
   29a68: 91000021     	add	x1, x1, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17613
   29a6c: 94000000     	bl	0x29a6c <syna_sysfs_reset_store+0x154>
		0000000000029a6c:  R_AARCH64_CALL26	_printk
   29a70: 128002b4     	mov	w20, #-0x16             // =-22
   29a74: 17ffffe0     	b	0x299f4 <syna_sysfs_reset_store+0xdc>
   29a78: 2a0003f4     	mov	w20, w0
   29a7c: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b42e
   29a80: 91000000     	add	x0, x0, #0x0
		0000000000029a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b42e
   29a84: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0xc4>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17613
   29a88: 91000021     	add	x1, x1, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17613
   29a8c: 94000000     	bl	0x29a8c <syna_sysfs_reset_store+0x174>
		0000000000029a8c:  R_AARCH64_CALL26	_printk
   29a90: 17ffffd9     	b	0x299f4 <syna_sysfs_reset_store+0xdc>
   29a94: 94000000     	bl	0x29a94 <syna_sysfs_reset_store+0x17c>
		0000000000029a94:  R_AARCH64_CALL26	__stack_chk_fail
