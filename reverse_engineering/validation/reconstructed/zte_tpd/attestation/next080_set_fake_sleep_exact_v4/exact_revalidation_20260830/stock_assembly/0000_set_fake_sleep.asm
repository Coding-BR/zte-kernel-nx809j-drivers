
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000068e4 <set_fake_sleep>:
    68e4: d503233f     	paciasp
    68e8: d100c3ff     	sub	sp, sp, #0x30
    68ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    68f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    68f4: 910043fd     	add	x29, sp, #0x10
    68f8: d5384108     	mrs	x8, SP_EL0
    68fc: aa0203f3     	mov	x19, x2
    6900: aa0103e0     	mov	x0, x1
    6904: f9438908     	ldr	x8, [x8, #0x710]
    6908: 910013e3     	add	x3, sp, #0x4
    690c: aa0203e1     	mov	x1, x2
    6910: 52800142     	mov	w2, #0xa                // =10
    6914: f90007e8     	str	x8, [sp, #0x8]
    6918: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006918:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    691c: f9400114     	ldr	x20, [x8]
		000000000000691c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6920: b90007ff     	str	wzr, [sp, #0x4]
    6924: 94000000     	bl	0x6924 <set_fake_sleep+0x40>
		0000000000006924:  R_AARCH64_CALL26	kstrtouint_from_user
    6928: 340001a0     	cbz	w0, 0x695c <set_fake_sleep+0x78>
    692c: 928002b3     	mov	x19, #-0x16             // =-22
    6930: d5384108     	mrs	x8, SP_EL0
    6934: f9438908     	ldr	x8, [x8, #0x710]
    6938: f94007e9     	ldr	x9, [sp, #0x8]
    693c: eb09011f     	cmp	x8, x9
    6940: 54000381     	b.ne	0x69b0 <set_fake_sleep+0xcc>
    6944: aa1303e0     	mov	x0, x19
    6948: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    694c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6950: 9100c3ff     	add	sp, sp, #0x30
    6954: d50323bf     	autiasp
    6958: d65f03c0     	ret
    695c: b94007e8     	ldr	w8, [sp, #0x4]
    6960: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    6964: 91000000     	add	x0, x0, #0x0
		0000000000006964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    6968: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		0000000000006968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ea0
    696c: 91000021     	add	x1, x1, #0x0
		000000000000696c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ea0
    6970: 7100011f     	cmp	w8, #0x0
    6974: 1a9f07e2     	cset	w2, ne
    6978: b90007e2     	str	w2, [sp, #0x4]
    697c: 94000000     	bl	0x697c <set_fake_sleep+0x98>
		000000000000697c:  R_AARCH64_CALL26	_printk
    6980: f947ea88     	ldr	x8, [x20, #0xfd0]
    6984: b4fffd68     	cbz	x8, 0x6930 <set_fake_sleep+0x4c>
    6988: b94007e1     	ldr	w1, [sp, #0x4]
    698c: aa1403e0     	mov	x0, x20
    6990: b85fc110     	ldur	w16, [x8, #-0x4]
    6994: 72969331     	movk	w17, #0xb499
    6998: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    699c: 6b11021f     	cmp	w16, w17
    69a0: 54000040     	b.eq	0x69a8 <set_fake_sleep+0xc4>
    69a4: d4304500     	brk	#0x8228
    69a8: d63f0100     	blr	x8
    69ac: 17ffffe1     	b	0x6930 <set_fake_sleep+0x4c>
    69b0: 94000000     	bl	0x69b0 <set_fake_sleep+0xcc>
		00000000000069b0:  R_AARCH64_CALL26	__stack_chk_fail
