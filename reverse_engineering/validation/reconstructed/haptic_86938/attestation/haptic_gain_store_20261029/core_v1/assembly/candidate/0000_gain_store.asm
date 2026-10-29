
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000433c <gain_store>:
    433c: d503233f     	paciasp
    4340: d10103ff     	sub	sp, sp, #0x40
    4344: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4348: f90013f5     	str	x21, [sp, #0x20]
    434c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4350: 910043fd     	add	x29, sp, #0x10
    4354: d5384109     	mrs	x9, SP_EL0
    4358: aa0203e8     	mov	x8, x2
    435c: 910013e2     	add	x2, sp, #0x4
    4360: f9438929     	ldr	x9, [x9, #0x710]
    4364: 2a1f03e1     	mov	w1, wzr
    4368: aa0303f3     	mov	x19, x3
    436c: f90007e9     	str	x9, [sp, #0x8]
    4370: f9404c15     	ldr	x21, [x0, #0x98]
    4374: aa0803e0     	mov	x0, x8
    4378: b90007ff     	str	wzr, [sp, #0x4]
    437c: 94000000     	bl	0x437c <gain_store+0x40>
		000000000000437c:  R_AARCH64_CALL26	kstrtouint
    4380: 36f801c0     	tbz	w0, #0x1f, 0x43b8 <gain_store+0x7c>
    4384: 93407c13     	sxtw	x19, w0
    4388: d5384108     	mrs	x8, SP_EL0
    438c: f9438908     	ldr	x8, [x8, #0x710]
    4390: f94007e9     	ldr	x9, [sp, #0x8]
    4394: eb09011f     	cmp	x8, x9
    4398: 54000461     	b.ne	0x4424 <gain_store+0xe8>
    439c: aa1303e0     	mov	x0, x19
    43a0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    43a4: f94013f5     	ldr	x21, [sp, #0x20]
    43a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    43ac: 910103ff     	add	sp, sp, #0x40
    43b0: d50323bf     	autiasp
    43b4: d65f03c0     	ret
    43b8: b94007e4     	ldr	w4, [sp, #0x4]
    43bc: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		00000000000043bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121
    43c0: 91000000     	add	x0, x0, #0x0
		00000000000043c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121
    43c4: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		00000000000043c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    43c8: 91000021     	add	x1, x1, #0x0
		00000000000043c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    43cc: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000043cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x47f
    43d0: 91000063     	add	x3, x3, #0x0
		00000000000043d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x47f
    43d4: 52813602     	mov	w2, #0x9b0              // =2480
    43d8: d102a2b4     	sub	x20, x21, #0xa8
    43dc: 94000000     	bl	0x43dc <gain_store+0xa0>
		00000000000043dc:  R_AARCH64_CALL26	_printk
    43e0: 910922a0     	add	x0, x21, #0x248
    43e4: 94000000     	bl	0x43e4 <gain_store+0xa8>
		00000000000043e4:  R_AARCH64_CALL26	mutex_lock
    43e8: b94007e1     	ldr	w1, [sp, #0x4]
    43ec: f94292a8     	ldr	x8, [x21, #0x520]
    43f0: aa1403e0     	mov	x0, x20
    43f4: b818c2a1     	stur	w1, [x21, #-0x74]
    43f8: f9404508     	ldr	x8, [x8, #0x88]
    43fc: b85fc110     	ldur	w16, [x8, #-0x4]
    4400: 729bedd1     	movk	w17, #0xdf6e
    4404: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    4408: 6b11021f     	cmp	w16, w17
    440c: 54000040     	b.eq	0x4414 <gain_store+0xd8>
    4410: d4304500     	brk	#0x8228
    4414: d63f0100     	blr	x8
    4418: 910922a0     	add	x0, x21, #0x248
    441c: 94000000     	bl	0x441c <gain_store+0xe0>
		000000000000441c:  R_AARCH64_CALL26	mutex_unlock
    4420: 17ffffda     	b	0x4388 <gain_store+0x4c>
    4424: 94000000     	bl	0x4424 <gain_store+0xe8>
		0000000000004424:  R_AARCH64_CALL26	__stack_chk_fail
