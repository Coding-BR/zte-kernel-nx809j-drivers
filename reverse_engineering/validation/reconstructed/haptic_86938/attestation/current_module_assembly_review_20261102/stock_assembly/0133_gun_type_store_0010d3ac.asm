
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a58c <gun_type_store>:
    a58c: d503233f     	paciasp
    a590: d100c3ff     	sub	sp, sp, #0x30
    a594: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a598: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a59c: 910043fd     	add	x29, sp, #0x10
    a5a0: d5384109     	mrs	x9, SP_EL0
    a5a4: aa0203e8     	mov	x8, x2
    a5a8: 910013e2     	add	x2, sp, #0x4
    a5ac: f9438929     	ldr	x9, [x9, #0x710]
    a5b0: 2a1f03e1     	mov	w1, wzr
    a5b4: aa0303f3     	mov	x19, x3
    a5b8: f90007e9     	str	x9, [sp, #0x8]
    a5bc: f9404c14     	ldr	x20, [x0, #0x98]
    a5c0: aa0803e0     	mov	x0, x8
    a5c4: b90007ff     	str	wzr, [sp, #0x4]
    a5c8: 94000000     	bl	0xa5c8 <gun_type_store+0x3c>
		000000000000a5c8:  R_AARCH64_CALL26	kstrtouint
    a5cc: 37f80100     	tbnz	w0, #0x1f, 0xa5ec <gun_type_store+0x60>
    a5d0: 91092280     	add	x0, x20, #0x248
    a5d4: 94000000     	bl	0xa5d4 <gun_type_store+0x48>
		000000000000a5d4:  R_AARCH64_CALL26	mutex_lock
    a5d8: b94007e8     	ldr	w8, [sp, #0x4]
    a5dc: 91092280     	add	x0, x20, #0x248
    a5e0: b81d4288     	stur	w8, [x20, #-0x2c]
    a5e4: 94000000     	bl	0xa5e4 <gun_type_store+0x58>
		000000000000a5e4:  R_AARCH64_CALL26	mutex_unlock
    a5e8: 14000002     	b	0xa5f0 <gun_type_store+0x64>
    a5ec: 93407c13     	sxtw	x19, w0
    a5f0: d5384108     	mrs	x8, SP_EL0
    a5f4: f9438908     	ldr	x8, [x8, #0x710]
    a5f8: f94007e9     	ldr	x9, [sp, #0x8]
    a5fc: eb09011f     	cmp	x8, x9
    a600: 540000e1     	b.ne	0xa61c <gun_type_store+0x90>
    a604: aa1303e0     	mov	x0, x19
    a608: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a60c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a610: 9100c3ff     	add	sp, sp, #0x30
    a614: d50323bf     	autiasp
    a618: d65f03c0     	ret
    a61c: 94000000     	bl	0xa61c <gun_type_store+0x90>
		000000000000a61c:  R_AARCH64_CALL26	__stack_chk_fail
