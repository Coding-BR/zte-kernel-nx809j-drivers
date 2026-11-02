
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009288 <auto_boost_store>:
    9288: d503233f     	paciasp
    928c: d10103ff     	sub	sp, sp, #0x40
    9290: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9294: f90013f5     	str	x21, [sp, #0x20]
    9298: a9034ff4     	stp	x20, x19, [sp, #0x30]
    929c: 910043fd     	add	x29, sp, #0x10
    92a0: d5384109     	mrs	x9, SP_EL0
    92a4: aa0203e8     	mov	x8, x2
    92a8: 910013e2     	add	x2, sp, #0x4
    92ac: f9438929     	ldr	x9, [x9, #0x710]
    92b0: 2a1f03e1     	mov	w1, wzr
    92b4: aa0303f3     	mov	x19, x3
    92b8: f90007e9     	str	x9, [sp, #0x8]
    92bc: f9404c15     	ldr	x21, [x0, #0x98]
    92c0: aa0803e0     	mov	x0, x8
    92c4: b90007ff     	str	wzr, [sp, #0x4]
    92c8: 94000000     	bl	0x92c8 <auto_boost_store+0x40>
		00000000000092c8:  R_AARCH64_CALL26	kstrtouint
    92cc: 37f80380     	tbnz	w0, #0x1f, 0x933c <auto_boost_store+0xb4>
    92d0: 910922a0     	add	x0, x21, #0x248
    92d4: d102a2b4     	sub	x20, x21, #0xa8
    92d8: 94000000     	bl	0x92d8 <auto_boost_store+0x50>
		00000000000092d8:  R_AARCH64_CALL26	mutex_lock
    92dc: f94292a8     	ldr	x8, [x21, #0x520]
    92e0: aa1403e0     	mov	x0, x20
    92e4: f9401d08     	ldr	x8, [x8, #0x38]
    92e8: b85fc110     	ldur	w16, [x8, #-0x4]
    92ec: 72810611     	movk	w17, #0x830
    92f0: 72b08f51     	movk	w17, #0x847a, lsl #16
    92f4: 6b11021f     	cmp	w16, w17
    92f8: 54000040     	b.eq	0x9300 <auto_boost_store+0x78>
    92fc: d4304500     	brk	#0x8228
    9300: d63f0100     	blr	x8
    9304: f94292a8     	ldr	x8, [x21, #0x520]
    9308: b94007e1     	ldr	w1, [sp, #0x4]
    930c: aa1403e0     	mov	x0, x20
    9310: f9405908     	ldr	x8, [x8, #0xb0]
    9314: b85fc110     	ldur	w16, [x8, #-0x4]
    9318: 729bedd1     	movk	w17, #0xdf6e
    931c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    9320: 6b11021f     	cmp	w16, w17
    9324: 54000040     	b.eq	0x932c <auto_boost_store+0xa4>
    9328: d4304500     	brk	#0x8228
    932c: d63f0100     	blr	x8
    9330: 910922a0     	add	x0, x21, #0x248
    9334: 94000000     	bl	0x9334 <auto_boost_store+0xac>
		0000000000009334:  R_AARCH64_CALL26	mutex_unlock
    9338: 14000002     	b	0x9340 <auto_boost_store+0xb8>
    933c: 93407c13     	sxtw	x19, w0
    9340: d5384108     	mrs	x8, SP_EL0
    9344: f9438908     	ldr	x8, [x8, #0x710]
    9348: f94007e9     	ldr	x9, [sp, #0x8]
    934c: eb09011f     	cmp	x8, x9
    9350: 54000101     	b.ne	0x9370 <auto_boost_store+0xe8>
    9354: aa1303e0     	mov	x0, x19
    9358: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    935c: f94013f5     	ldr	x21, [sp, #0x20]
    9360: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9364: 910103ff     	add	sp, sp, #0x40
    9368: d50323bf     	autiasp
    936c: d65f03c0     	ret
    9370: 94000000     	bl	0x9370 <auto_boost_store+0xe8>
		0000000000009370:  R_AARCH64_CALL26	__stack_chk_fail
