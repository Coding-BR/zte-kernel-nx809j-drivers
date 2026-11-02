
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000033f8 <ram_vbat_comp_store>:
    33f8: d503233f     	paciasp
    33fc: d100c3ff     	sub	sp, sp, #0x30
    3400: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3404: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3408: 910043fd     	add	x29, sp, #0x10
    340c: d5384109     	mrs	x9, SP_EL0
    3410: aa0203e8     	mov	x8, x2
    3414: 910013e2     	add	x2, sp, #0x4
    3418: f9438929     	ldr	x9, [x9, #0x710]
    341c: 2a1f03e1     	mov	w1, wzr
    3420: aa0303f3     	mov	x19, x3
    3424: f90007e9     	str	x9, [sp, #0x8]
    3428: f9404c14     	ldr	x20, [x0, #0x98]
    342c: aa0803e0     	mov	x0, x8
    3430: b90007ff     	str	wzr, [sp, #0x4]
    3434: 94000000     	bl	0x3434 <ram_vbat_comp_store+0x3c>
		0000000000003434:  R_AARCH64_CALL26	kstrtouint
    3438: 37f80140     	tbnz	w0, #0x1f, 0x3460 <ram_vbat_comp_store+0x68>
    343c: 91092280     	add	x0, x20, #0x248
    3440: 94000000     	bl	0x3440 <ram_vbat_comp_store+0x48>
		0000000000003440:  R_AARCH64_CALL26	mutex_lock
    3444: b94007e8     	ldr	w8, [sp, #0x4]
    3448: 91092280     	add	x0, x20, #0x248
    344c: 7100011f     	cmp	w8, #0x0
    3450: 1a9f07e8     	cset	w8, ne
    3454: 38174288     	sturb	w8, [x20, #-0x8c]
    3458: 94000000     	bl	0x3458 <ram_vbat_comp_store+0x60>
		0000000000003458:  R_AARCH64_CALL26	mutex_unlock
    345c: 14000002     	b	0x3464 <ram_vbat_comp_store+0x6c>
    3460: 93407c13     	sxtw	x19, w0
    3464: d5384108     	mrs	x8, SP_EL0
    3468: f9438908     	ldr	x8, [x8, #0x710]
    346c: f94007e9     	ldr	x9, [sp, #0x8]
    3470: eb09011f     	cmp	x8, x9
    3474: 540000e1     	b.ne	0x3490 <ram_vbat_comp_store+0x98>
    3478: aa1303e0     	mov	x0, x19
    347c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3480: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3484: 9100c3ff     	add	sp, sp, #0x30
    3488: d50323bf     	autiasp
    348c: d65f03c0     	ret
    3490: 94000000     	bl	0x3490 <ram_vbat_comp_store+0x98>
		0000000000003490:  R_AARCH64_CALL26	__stack_chk_fail
