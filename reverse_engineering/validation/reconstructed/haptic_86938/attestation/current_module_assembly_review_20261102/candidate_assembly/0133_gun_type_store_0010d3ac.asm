
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002764 <gun_type_store>:
    2764: d503233f     	paciasp
    2768: d100c3ff     	sub	sp, sp, #0x30
    276c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2770: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2774: 910043fd     	add	x29, sp, #0x10
    2778: d5384109     	mrs	x9, SP_EL0
    277c: aa0203e8     	mov	x8, x2
    2780: 910013e2     	add	x2, sp, #0x4
    2784: f9438929     	ldr	x9, [x9, #0x710]
    2788: 2a1f03e1     	mov	w1, wzr
    278c: aa0303f3     	mov	x19, x3
    2790: f90007e9     	str	x9, [sp, #0x8]
    2794: f9404c14     	ldr	x20, [x0, #0x98]
    2798: aa0803e0     	mov	x0, x8
    279c: b90007ff     	str	wzr, [sp, #0x4]
    27a0: 94000000     	bl	0x27a0 <gun_type_store+0x3c>
		00000000000027a0:  R_AARCH64_CALL26	kstrtouint
    27a4: 37f80100     	tbnz	w0, #0x1f, 0x27c4 <gun_type_store+0x60>
    27a8: 91092280     	add	x0, x20, #0x248
    27ac: 94000000     	bl	0x27ac <gun_type_store+0x48>
		00000000000027ac:  R_AARCH64_CALL26	mutex_lock
    27b0: b94007e8     	ldr	w8, [sp, #0x4]
    27b4: 91092280     	add	x0, x20, #0x248
    27b8: b81d4288     	stur	w8, [x20, #-0x2c]
    27bc: 94000000     	bl	0x27bc <gun_type_store+0x58>
		00000000000027bc:  R_AARCH64_CALL26	mutex_unlock
    27c0: 14000002     	b	0x27c8 <gun_type_store+0x64>
    27c4: 93407c13     	sxtw	x19, w0
    27c8: d5384108     	mrs	x8, SP_EL0
    27cc: f9438908     	ldr	x8, [x8, #0x710]
    27d0: f94007e9     	ldr	x9, [sp, #0x8]
    27d4: eb09011f     	cmp	x8, x9
    27d8: 540000e1     	b.ne	0x27f4 <gun_type_store+0x90>
    27dc: aa1303e0     	mov	x0, x19
    27e0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    27e4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    27e8: 9100c3ff     	add	sp, sp, #0x30
    27ec: d50323bf     	autiasp
    27f0: d65f03c0     	ret
    27f4: 94000000     	bl	0x27f4 <gun_type_store+0x90>
		00000000000027f4:  R_AARCH64_CALL26	__stack_chk_fail
