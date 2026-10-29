
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a660 <bullet_nr_store>:
    a660: d503233f     	paciasp
    a664: d100c3ff     	sub	sp, sp, #0x30
    a668: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a66c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a670: 910043fd     	add	x29, sp, #0x10
    a674: d5384109     	mrs	x9, SP_EL0
    a678: aa0203e8     	mov	x8, x2
    a67c: 910013e2     	add	x2, sp, #0x4
    a680: f9438929     	ldr	x9, [x9, #0x710]
    a684: 2a1f03e1     	mov	w1, wzr
    a688: aa0303f3     	mov	x19, x3
    a68c: f90007e9     	str	x9, [sp, #0x8]
    a690: f9404c14     	ldr	x20, [x0, #0x98]
    a694: aa0803e0     	mov	x0, x8
    a698: b90007ff     	str	wzr, [sp, #0x4]
    a69c: 94000000     	bl	0xa69c <bullet_nr_store+0x3c>
		000000000000a69c:  R_AARCH64_CALL26	kstrtouint
    a6a0: 37f80100     	tbnz	w0, #0x1f, 0xa6c0 <bullet_nr_store+0x60>
    a6a4: 91092280     	add	x0, x20, #0x248
    a6a8: 94000000     	bl	0xa6a8 <bullet_nr_store+0x48>
		000000000000a6a8:  R_AARCH64_CALL26	mutex_lock
    a6ac: b94007e8     	ldr	w8, [sp, #0x4]
    a6b0: 91092280     	add	x0, x20, #0x248
    a6b4: b81d8288     	stur	w8, [x20, #-0x28]
    a6b8: 94000000     	bl	0xa6b8 <bullet_nr_store+0x58>
		000000000000a6b8:  R_AARCH64_CALL26	mutex_unlock
    a6bc: 14000002     	b	0xa6c4 <bullet_nr_store+0x64>
    a6c0: 93407c13     	sxtw	x19, w0
    a6c4: d5384108     	mrs	x8, SP_EL0
    a6c8: f9438908     	ldr	x8, [x8, #0x710]
    a6cc: f94007e9     	ldr	x9, [sp, #0x8]
    a6d0: eb09011f     	cmp	x8, x9
    a6d4: 540000e1     	b.ne	0xa6f0 <bullet_nr_store+0x90>
    a6d8: aa1303e0     	mov	x0, x19
    a6dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a6e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a6e4: 9100c3ff     	add	sp, sp, #0x30
    a6e8: d50323bf     	autiasp
    a6ec: d65f03c0     	ret
    a6f0: 94000000     	bl	0xa6f0 <bullet_nr_store+0x90>
		000000000000a6f0:  R_AARCH64_CALL26	__stack_chk_fail
