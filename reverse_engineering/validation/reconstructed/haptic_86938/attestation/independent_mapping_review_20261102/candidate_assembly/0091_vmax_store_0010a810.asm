
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000427c <vmax_store>:
    427c: d503233f     	paciasp
    4280: d10103ff     	sub	sp, sp, #0x40
    4284: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4288: f90013f5     	str	x21, [sp, #0x20]
    428c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4290: 910043fd     	add	x29, sp, #0x10
    4294: d5384109     	mrs	x9, SP_EL0
    4298: aa0203e8     	mov	x8, x2
    429c: 910013e2     	add	x2, sp, #0x4
    42a0: f9438929     	ldr	x9, [x9, #0x710]
    42a4: 2a1f03e1     	mov	w1, wzr
    42a8: aa0303f3     	mov	x19, x3
    42ac: f90007e9     	str	x9, [sp, #0x8]
    42b0: f9404c15     	ldr	x21, [x0, #0x98]
    42b4: aa0803e0     	mov	x0, x8
    42b8: b90007ff     	str	wzr, [sp, #0x4]
    42bc: 94000000     	bl	0x42bc <vmax_store+0x40>
		00000000000042bc:  R_AARCH64_CALL26	kstrtouint
    42c0: 36f801c0     	tbz	w0, #0x1f, 0x42f8 <vmax_store+0x7c>
    42c4: 93407c13     	sxtw	x19, w0
    42c8: d5384108     	mrs	x8, SP_EL0
    42cc: f9438908     	ldr	x8, [x8, #0x710]
    42d0: f94007e9     	ldr	x9, [sp, #0x8]
    42d4: eb09011f     	cmp	x8, x9
    42d8: 54000461     	b.ne	0x4364 <vmax_store+0xe8>
    42dc: aa1303e0     	mov	x0, x19
    42e0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    42e4: f94013f5     	ldr	x21, [sp, #0x20]
    42e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    42ec: 910103ff     	add	sp, sp, #0x40
    42f0: d50323bf     	autiasp
    42f4: d65f03c0     	ret
    42f8: b94007e4     	ldr	w4, [sp, #0x4]
    42fc: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000042fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a
    4300: 91000000     	add	x0, x0, #0x0
		0000000000004300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a
    4304: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4308: 91000021     	add	x1, x1, #0x0
		0000000000004308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    430c: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		000000000000430c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fa
    4310: 91000063     	add	x3, x3, #0x0
		0000000000004310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fa
    4314: 52813242     	mov	w2, #0x992              // =2450
    4318: d102a2b4     	sub	x20, x21, #0xa8
    431c: 94000000     	bl	0x431c <vmax_store+0xa0>
		000000000000431c:  R_AARCH64_CALL26	_printk
    4320: 910922a0     	add	x0, x21, #0x248
    4324: 94000000     	bl	0x4324 <vmax_store+0xa8>
		0000000000004324:  R_AARCH64_CALL26	mutex_lock
    4328: b94007e1     	ldr	w1, [sp, #0x4]
    432c: f94292a8     	ldr	x8, [x21, #0x520]
    4330: aa1403e0     	mov	x0, x20
    4334: b81882a1     	stur	w1, [x21, #-0x78]
    4338: f9405108     	ldr	x8, [x8, #0xa0]
    433c: b85fc110     	ldur	w16, [x8, #-0x4]
    4340: 729bedd1     	movk	w17, #0xdf6e
    4344: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    4348: 6b11021f     	cmp	w16, w17
    434c: 54000040     	b.eq	0x4354 <vmax_store+0xd8>
    4350: d4304500     	brk	#0x8228
    4354: d63f0100     	blr	x8
    4358: 910922a0     	add	x0, x21, #0x248
    435c: 94000000     	bl	0x435c <vmax_store+0xe0>
		000000000000435c:  R_AARCH64_CALL26	mutex_unlock
    4360: 17ffffda     	b	0x42c8 <vmax_store+0x4c>
    4364: 94000000     	bl	0x4364 <vmax_store+0xe8>
		0000000000004364:  R_AARCH64_CALL26	__stack_chk_fail
