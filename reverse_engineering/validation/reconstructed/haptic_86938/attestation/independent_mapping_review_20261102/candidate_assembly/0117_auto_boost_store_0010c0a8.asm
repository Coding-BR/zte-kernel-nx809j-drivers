
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004524 <auto_boost_store>:
    4524: d503233f     	paciasp
    4528: d10103ff     	sub	sp, sp, #0x40
    452c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4530: f90013f5     	str	x21, [sp, #0x20]
    4534: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4538: 910043fd     	add	x29, sp, #0x10
    453c: d5384109     	mrs	x9, SP_EL0
    4540: aa0203e8     	mov	x8, x2
    4544: 910013e2     	add	x2, sp, #0x4
    4548: f9438929     	ldr	x9, [x9, #0x710]
    454c: 2a1f03e1     	mov	w1, wzr
    4550: aa0303f3     	mov	x19, x3
    4554: f90007e9     	str	x9, [sp, #0x8]
    4558: f9404c15     	ldr	x21, [x0, #0x98]
    455c: aa0803e0     	mov	x0, x8
    4560: b90007ff     	str	wzr, [sp, #0x4]
    4564: 94000000     	bl	0x4564 <auto_boost_store+0x40>
		0000000000004564:  R_AARCH64_CALL26	kstrtouint
    4568: 37f80380     	tbnz	w0, #0x1f, 0x45d8 <auto_boost_store+0xb4>
    456c: 910922a0     	add	x0, x21, #0x248
    4570: d102a2b4     	sub	x20, x21, #0xa8
    4574: 94000000     	bl	0x4574 <auto_boost_store+0x50>
		0000000000004574:  R_AARCH64_CALL26	mutex_lock
    4578: f94292a8     	ldr	x8, [x21, #0x520]
    457c: aa1403e0     	mov	x0, x20
    4580: f9401d08     	ldr	x8, [x8, #0x38]
    4584: b85fc110     	ldur	w16, [x8, #-0x4]
    4588: 72810611     	movk	w17, #0x830
    458c: 72b08f51     	movk	w17, #0x847a, lsl #16
    4590: 6b11021f     	cmp	w16, w17
    4594: 54000040     	b.eq	0x459c <auto_boost_store+0x78>
    4598: d4304500     	brk	#0x8228
    459c: d63f0100     	blr	x8
    45a0: f94292a8     	ldr	x8, [x21, #0x520]
    45a4: b94007e1     	ldr	w1, [sp, #0x4]
    45a8: aa1403e0     	mov	x0, x20
    45ac: f9405908     	ldr	x8, [x8, #0xb0]
    45b0: b85fc110     	ldur	w16, [x8, #-0x4]
    45b4: 729bedd1     	movk	w17, #0xdf6e
    45b8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    45bc: 6b11021f     	cmp	w16, w17
    45c0: 54000040     	b.eq	0x45c8 <auto_boost_store+0xa4>
    45c4: d4304500     	brk	#0x8228
    45c8: d63f0100     	blr	x8
    45cc: 910922a0     	add	x0, x21, #0x248
    45d0: 94000000     	bl	0x45d0 <auto_boost_store+0xac>
		00000000000045d0:  R_AARCH64_CALL26	mutex_unlock
    45d4: 14000002     	b	0x45dc <auto_boost_store+0xb8>
    45d8: 93407c13     	sxtw	x19, w0
    45dc: d5384108     	mrs	x8, SP_EL0
    45e0: f9438908     	ldr	x8, [x8, #0x710]
    45e4: f94007e9     	ldr	x9, [sp, #0x8]
    45e8: eb09011f     	cmp	x8, x9
    45ec: 54000101     	b.ne	0x460c <auto_boost_store+0xe8>
    45f0: aa1303e0     	mov	x0, x19
    45f4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    45f8: f94013f5     	ldr	x21, [sp, #0x20]
    45fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4600: 910103ff     	add	sp, sp, #0x40
    4604: d50323bf     	autiasp
    4608: d65f03c0     	ret
    460c: 94000000     	bl	0x460c <auto_boost_store+0xe8>
		000000000000460c:  R_AARCH64_CALL26	__stack_chk_fail
