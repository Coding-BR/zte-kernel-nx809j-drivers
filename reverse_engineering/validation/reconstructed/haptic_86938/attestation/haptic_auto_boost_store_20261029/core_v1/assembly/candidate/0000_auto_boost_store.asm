
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000044f4 <auto_boost_store>:
    44f4: d503233f     	paciasp
    44f8: d10103ff     	sub	sp, sp, #0x40
    44fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4500: f90013f5     	str	x21, [sp, #0x20]
    4504: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4508: 910043fd     	add	x29, sp, #0x10
    450c: d5384109     	mrs	x9, SP_EL0
    4510: aa0203e8     	mov	x8, x2
    4514: 910013e2     	add	x2, sp, #0x4
    4518: f9438929     	ldr	x9, [x9, #0x710]
    451c: 2a1f03e1     	mov	w1, wzr
    4520: aa0303f3     	mov	x19, x3
    4524: f90007e9     	str	x9, [sp, #0x8]
    4528: f9404c15     	ldr	x21, [x0, #0x98]
    452c: aa0803e0     	mov	x0, x8
    4530: b90007ff     	str	wzr, [sp, #0x4]
    4534: 94000000     	bl	0x4534 <auto_boost_store+0x40>
		0000000000004534:  R_AARCH64_CALL26	kstrtouint
    4538: 37f80380     	tbnz	w0, #0x1f, 0x45a8 <auto_boost_store+0xb4>
    453c: 910922a0     	add	x0, x21, #0x248
    4540: d102a2b4     	sub	x20, x21, #0xa8
    4544: 94000000     	bl	0x4544 <auto_boost_store+0x50>
		0000000000004544:  R_AARCH64_CALL26	mutex_lock
    4548: f94292a8     	ldr	x8, [x21, #0x520]
    454c: aa1403e0     	mov	x0, x20
    4550: f9401d08     	ldr	x8, [x8, #0x38]
    4554: b85fc110     	ldur	w16, [x8, #-0x4]
    4558: 72810611     	movk	w17, #0x830
    455c: 72b08f51     	movk	w17, #0x847a, lsl #16
    4560: 6b11021f     	cmp	w16, w17
    4564: 54000040     	b.eq	0x456c <auto_boost_store+0x78>
    4568: d4304500     	brk	#0x8228
    456c: d63f0100     	blr	x8
    4570: f94292a8     	ldr	x8, [x21, #0x520]
    4574: b94007e1     	ldr	w1, [sp, #0x4]
    4578: aa1403e0     	mov	x0, x20
    457c: f9405908     	ldr	x8, [x8, #0xb0]
    4580: b85fc110     	ldur	w16, [x8, #-0x4]
    4584: 729bedd1     	movk	w17, #0xdf6e
    4588: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    458c: 6b11021f     	cmp	w16, w17
    4590: 54000040     	b.eq	0x4598 <auto_boost_store+0xa4>
    4594: d4304500     	brk	#0x8228
    4598: d63f0100     	blr	x8
    459c: 910922a0     	add	x0, x21, #0x248
    45a0: 94000000     	bl	0x45a0 <auto_boost_store+0xac>
		00000000000045a0:  R_AARCH64_CALL26	mutex_unlock
    45a4: 14000002     	b	0x45ac <auto_boost_store+0xb8>
    45a8: 93407c13     	sxtw	x19, w0
    45ac: d5384108     	mrs	x8, SP_EL0
    45b0: f9438908     	ldr	x8, [x8, #0x710]
    45b4: f94007e9     	ldr	x9, [sp, #0x8]
    45b8: eb09011f     	cmp	x8, x9
    45bc: 54000101     	b.ne	0x45dc <auto_boost_store+0xe8>
    45c0: aa1303e0     	mov	x0, x19
    45c4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    45c8: f94013f5     	ldr	x21, [sp, #0x20]
    45cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    45d0: 910103ff     	add	sp, sp, #0x40
    45d4: d50323bf     	autiasp
    45d8: d65f03c0     	ret
    45dc: 94000000     	bl	0x45dc <auto_boost_store+0xe8>
		00000000000045dc:  R_AARCH64_CALL26	__stack_chk_fail
