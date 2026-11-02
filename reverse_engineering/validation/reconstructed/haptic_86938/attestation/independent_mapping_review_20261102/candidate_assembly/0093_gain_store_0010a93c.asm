
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000436c <gain_store>:
    436c: d503233f     	paciasp
    4370: d10103ff     	sub	sp, sp, #0x40
    4374: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4378: f90013f5     	str	x21, [sp, #0x20]
    437c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4380: 910043fd     	add	x29, sp, #0x10
    4384: d5384109     	mrs	x9, SP_EL0
    4388: aa0203e8     	mov	x8, x2
    438c: 910013e2     	add	x2, sp, #0x4
    4390: f9438929     	ldr	x9, [x9, #0x710]
    4394: 2a1f03e1     	mov	w1, wzr
    4398: aa0303f3     	mov	x19, x3
    439c: f90007e9     	str	x9, [sp, #0x8]
    43a0: f9404c15     	ldr	x21, [x0, #0x98]
    43a4: aa0803e0     	mov	x0, x8
    43a8: b90007ff     	str	wzr, [sp, #0x4]
    43ac: 94000000     	bl	0x43ac <gain_store+0x40>
		00000000000043ac:  R_AARCH64_CALL26	kstrtouint
    43b0: 36f801c0     	tbz	w0, #0x1f, 0x43e8 <gain_store+0x7c>
    43b4: 93407c13     	sxtw	x19, w0
    43b8: d5384108     	mrs	x8, SP_EL0
    43bc: f9438908     	ldr	x8, [x8, #0x710]
    43c0: f94007e9     	ldr	x9, [sp, #0x8]
    43c4: eb09011f     	cmp	x8, x9
    43c8: 54000461     	b.ne	0x4454 <gain_store+0xe8>
    43cc: aa1303e0     	mov	x0, x19
    43d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    43d4: f94013f5     	ldr	x21, [sp, #0x20]
    43d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    43dc: 910103ff     	add	sp, sp, #0x40
    43e0: d50323bf     	autiasp
    43e4: d65f03c0     	ret
    43e8: b94007e4     	ldr	w4, [sp, #0x4]
    43ec: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000043ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x226
    43f0: 91000000     	add	x0, x0, #0x0
		00000000000043f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x226
    43f4: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000043f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    43f8: 91000021     	add	x1, x1, #0x0
		00000000000043f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    43fc: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000043fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    4400: 91000063     	add	x3, x3, #0x0
		0000000000004400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    4404: 52813602     	mov	w2, #0x9b0              // =2480
    4408: d102a2b4     	sub	x20, x21, #0xa8
    440c: 94000000     	bl	0x440c <gain_store+0xa0>
		000000000000440c:  R_AARCH64_CALL26	_printk
    4410: 910922a0     	add	x0, x21, #0x248
    4414: 94000000     	bl	0x4414 <gain_store+0xa8>
		0000000000004414:  R_AARCH64_CALL26	mutex_lock
    4418: b94007e1     	ldr	w1, [sp, #0x4]
    441c: f94292a8     	ldr	x8, [x21, #0x520]
    4420: aa1403e0     	mov	x0, x20
    4424: b818c2a1     	stur	w1, [x21, #-0x74]
    4428: f9404508     	ldr	x8, [x8, #0x88]
    442c: b85fc110     	ldur	w16, [x8, #-0x4]
    4430: 729bedd1     	movk	w17, #0xdf6e
    4434: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    4438: 6b11021f     	cmp	w16, w17
    443c: 54000040     	b.eq	0x4444 <gain_store+0xd8>
    4440: d4304500     	brk	#0x8228
    4444: d63f0100     	blr	x8
    4448: 910922a0     	add	x0, x21, #0x248
    444c: 94000000     	bl	0x444c <gain_store+0xe0>
		000000000000444c:  R_AARCH64_CALL26	mutex_unlock
    4450: 17ffffda     	b	0x43b8 <gain_store+0x4c>
    4454: 94000000     	bl	0x4454 <gain_store+0xe8>
		0000000000004454:  R_AARCH64_CALL26	__stack_chk_fail
