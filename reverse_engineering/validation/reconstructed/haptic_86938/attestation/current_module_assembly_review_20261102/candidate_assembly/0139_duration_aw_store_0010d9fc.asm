
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000026a0 <duration_aw_store>:
    26a0: d503233f     	paciasp
    26a4: d100c3ff     	sub	sp, sp, #0x30
    26a8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    26ac: a9024ff4     	stp	x20, x19, [sp, #0x20]
    26b0: 910043fd     	add	x29, sp, #0x10
    26b4: d5384109     	mrs	x9, SP_EL0
    26b8: aa0203e8     	mov	x8, x2
    26bc: 910013e2     	add	x2, sp, #0x4
    26c0: f9438929     	ldr	x9, [x9, #0x710]
    26c4: 2a1f03e1     	mov	w1, wzr
    26c8: aa0303f3     	mov	x19, x3
    26cc: f90007e9     	str	x9, [sp, #0x8]
    26d0: f9404c14     	ldr	x20, [x0, #0x98]
    26d4: aa0803e0     	mov	x0, x8
    26d8: b90007ff     	str	wzr, [sp, #0x4]
    26dc: 94000000     	bl	0x26dc <duration_aw_store+0x3c>
		00000000000026dc:  R_AARCH64_CALL26	kstrtouint
    26e0: 37f800a0     	tbnz	w0, #0x1f, 0x26f4 <duration_aw_store+0x54>
    26e4: b94007e8     	ldr	w8, [sp, #0x4]
    26e8: 34000088     	cbz	w8, 0x26f8 <duration_aw_store+0x58>
    26ec: b81ac288     	stur	w8, [x20, #-0x54]
    26f0: 14000002     	b	0x26f8 <duration_aw_store+0x58>
    26f4: 93407c13     	sxtw	x19, w0
    26f8: d5384108     	mrs	x8, SP_EL0
    26fc: f9438908     	ldr	x8, [x8, #0x710]
    2700: f94007e9     	ldr	x9, [sp, #0x8]
    2704: eb09011f     	cmp	x8, x9
    2708: 540000e1     	b.ne	0x2724 <duration_aw_store+0x84>
    270c: aa1303e0     	mov	x0, x19
    2710: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2714: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2718: 9100c3ff     	add	sp, sp, #0x30
    271c: d50323bf     	autiasp
    2720: d65f03c0     	ret
    2724: 94000000     	bl	0x2724 <duration_aw_store+0x84>
		0000000000002724:  R_AARCH64_CALL26	__stack_chk_fail
