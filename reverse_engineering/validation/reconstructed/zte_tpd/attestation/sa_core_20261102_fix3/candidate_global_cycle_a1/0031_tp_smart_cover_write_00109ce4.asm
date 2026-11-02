
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024f2c <tp_smart_cover_write>:
   24f2c: d503233f     	paciasp
   24f30: d100c3ff     	sub	sp, sp, #0x30
   24f34: a9017bfd     	stp	x29, x30, [sp, #0x10]
   24f38: a9024ff4     	stp	x20, x19, [sp, #0x20]
   24f3c: 910043fd     	add	x29, sp, #0x10
   24f40: d5384108     	mrs	x8, SP_EL0
   24f44: aa0203f3     	mov	x19, x2
   24f48: aa0103e0     	mov	x0, x1
   24f4c: f9438908     	ldr	x8, [x8, #0x710]
   24f50: 910013e3     	add	x3, sp, #0x4
   24f54: aa0203e1     	mov	x1, x2
   24f58: 52800142     	mov	w2, #0xa                // =10
   24f5c: f90007e8     	str	x8, [sp, #0x8]
   24f60: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024f60:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24f64: f9400114     	ldr	x20, [x8]
		0000000000024f64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24f68: b90007ff     	str	wzr, [sp, #0x4]
   24f6c: 94000000     	bl	0x24f6c <tp_smart_cover_write+0x40>
		0000000000024f6c:  R_AARCH64_CALL26	kstrtouint_from_user
   24f70: 340001a0     	cbz	w0, 0x24fa4 <tp_smart_cover_write+0x78>
   24f74: 928002b3     	mov	x19, #-0x16             // =-22
   24f78: d5384108     	mrs	x8, SP_EL0
   24f7c: f9438908     	ldr	x8, [x8, #0x710]
   24f80: f94007e9     	ldr	x9, [sp, #0x8]
   24f84: eb09011f     	cmp	x8, x9
   24f88: 54000381     	b.ne	0x24ff8 <tp_smart_cover_write+0xcc>
   24f8c: aa1303e0     	mov	x0, x19
   24f90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   24f94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   24f98: 9100c3ff     	add	sp, sp, #0x30
   24f9c: d50323bf     	autiasp
   24fa0: d65f03c0     	ret
   24fa4: b94007e8     	ldr	w8, [sp, #0x4]
   24fa8: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
   24fac: 91000000     	add	x0, x0, #0x0
		0000000000024fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
   24fb0: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a954
   24fb4: 91000021     	add	x1, x1, #0x0
		0000000000024fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a954
   24fb8: 7100011f     	cmp	w8, #0x0
   24fbc: 1a9f07e2     	cset	w2, ne
   24fc0: b90007e2     	str	w2, [sp, #0x4]
   24fc4: 94000000     	bl	0x24fc4 <tp_smart_cover_write+0x98>
		0000000000024fc4:  R_AARCH64_CALL26	_printk
   24fc8: f9472288     	ldr	x8, [x20, #0xe40]
   24fcc: b4fffd68     	cbz	x8, 0x24f78 <tp_smart_cover_write+0x4c>
   24fd0: b94007e1     	ldr	w1, [sp, #0x4]
   24fd4: aa1403e0     	mov	x0, x20
   24fd8: b85fc110     	ldur	w16, [x8, #-0x4]
   24fdc: 72969331     	movk	w17, #0xb499
   24fe0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   24fe4: 6b11021f     	cmp	w16, w17
   24fe8: 54000040     	b.eq	0x24ff0 <tp_smart_cover_write+0xc4>
   24fec: d4304500     	brk	#0x8228
   24ff0: d63f0100     	blr	x8
   24ff4: 17ffffe1     	b	0x24f78 <tp_smart_cover_write+0x4c>
   24ff8: 94000000     	bl	0x24ff8 <tp_smart_cover_write+0xcc>
		0000000000024ff8:  R_AARCH64_CALL26	__stack_chk_fail
