
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003f2c <set_rotation_limit_level>:
    3f2c: d503233f     	paciasp
    3f30: d100c3ff     	sub	sp, sp, #0x30
    3f34: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3f38: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3f3c: 910043fd     	add	x29, sp, #0x10
    3f40: d5384108     	mrs	x8, SP_EL0
    3f44: aa0203f3     	mov	x19, x2
    3f48: aa0103e0     	mov	x0, x1
    3f4c: f9438908     	ldr	x8, [x8, #0x710]
    3f50: 910013e3     	add	x3, sp, #0x4
    3f54: aa0203e1     	mov	x1, x2
    3f58: 52800142     	mov	w2, #0xa                // =10
    3f5c: f90007e8     	str	x8, [sp, #0x8]
    3f60: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003f60:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3f64: f9400114     	ldr	x20, [x8]
		0000000000003f64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3f68: b90007ff     	str	wzr, [sp, #0x4]
    3f6c: 94000000     	bl	0x3f6c <set_rotation_limit_level+0x40>
		0000000000003f6c:  R_AARCH64_CALL26	kstrtouint_from_user
    3f70: 340001a0     	cbz	w0, 0x3fa4 <set_rotation_limit_level+0x78>
    3f74: 928002b3     	mov	x19, #-0x16             // =-22
    3f78: d5384108     	mrs	x8, SP_EL0
    3f7c: f9438908     	ldr	x8, [x8, #0x710]
    3f80: f94007e9     	ldr	x9, [sp, #0x8]
    3f84: eb09011f     	cmp	x8, x9
    3f88: 54000321     	b.ne	0x3fec <set_rotation_limit_level+0xc0>
    3f8c: aa1303e0     	mov	x0, x19
    3f90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3f94: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3f98: 9100c3ff     	add	sp, sp, #0x30
    3f9c: d50323bf     	autiasp
    3fa0: d65f03c0     	ret
    3fa4: b94007e2     	ldr	w2, [sp, #0x4]
    3fa8: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    3fac: 91000000     	add	x0, x0, #0x0
		0000000000003fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    3fb0: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17da
    3fb4: 91000021     	add	x1, x1, #0x0
		0000000000003fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17da
    3fb8: 94000000     	bl	0x3fb8 <set_rotation_limit_level+0x8c>
		0000000000003fb8:  R_AARCH64_CALL26	_printk
    3fbc: f9474288     	ldr	x8, [x20, #0xe80]
    3fc0: b4fffdc8     	cbz	x8, 0x3f78 <set_rotation_limit_level+0x4c>
    3fc4: b94007e1     	ldr	w1, [sp, #0x4]
    3fc8: aa1403e0     	mov	x0, x20
    3fcc: b85fc110     	ldur	w16, [x8, #-0x4]
    3fd0: 72969331     	movk	w17, #0xb499
    3fd4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    3fd8: 6b11021f     	cmp	w16, w17
    3fdc: 54000040     	b.eq	0x3fe4 <set_rotation_limit_level+0xb8>
    3fe0: d4304500     	brk	#0x8228
    3fe4: d63f0100     	blr	x8
    3fe8: 17ffffe4     	b	0x3f78 <set_rotation_limit_level+0x4c>
    3fec: 94000000     	bl	0x3fec <set_rotation_limit_level+0xc0>
		0000000000003fec:  R_AARCH64_CALL26	__stack_chk_fail
