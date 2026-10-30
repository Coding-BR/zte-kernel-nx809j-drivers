
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000215c <gun_type_store>:
    215c: d503233f     	paciasp
    2160: d100c3ff     	sub	sp, sp, #0x30
    2164: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2168: a9024ff4     	stp	x20, x19, [sp, #0x20]
    216c: 910043fd     	add	x29, sp, #0x10
    2170: d5384109     	mrs	x9, SP_EL0
    2174: aa0203e8     	mov	x8, x2
    2178: 910013e2     	add	x2, sp, #0x4
    217c: f9438929     	ldr	x9, [x9, #0x710]
    2180: 2a1f03e1     	mov	w1, wzr
    2184: aa0303f3     	mov	x19, x3
    2188: f90007e9     	str	x9, [sp, #0x8]
    218c: f9404c14     	ldr	x20, [x0, #0x98]
    2190: aa0803e0     	mov	x0, x8
    2194: b90007ff     	str	wzr, [sp, #0x4]
    2198: 94000000     	bl	0x2198 <gun_type_store+0x3c>
		0000000000002198:  R_AARCH64_CALL26	kstrtouint
    219c: 37f80100     	tbnz	w0, #0x1f, 0x21bc <gun_type_store+0x60>
    21a0: 91092280     	add	x0, x20, #0x248
    21a4: 94000000     	bl	0x21a4 <gun_type_store+0x48>
		00000000000021a4:  R_AARCH64_CALL26	mutex_lock
    21a8: b94007e8     	ldr	w8, [sp, #0x4]
    21ac: 91092280     	add	x0, x20, #0x248
    21b0: b81d4288     	stur	w8, [x20, #-0x2c]
    21b4: 94000000     	bl	0x21b4 <gun_type_store+0x58>
		00000000000021b4:  R_AARCH64_CALL26	mutex_unlock
    21b8: 14000002     	b	0x21c0 <gun_type_store+0x64>
    21bc: 93407c13     	sxtw	x19, w0
    21c0: d5384108     	mrs	x8, SP_EL0
    21c4: f9438908     	ldr	x8, [x8, #0x710]
    21c8: f94007e9     	ldr	x9, [sp, #0x8]
    21cc: eb09011f     	cmp	x8, x9
    21d0: 540000e1     	b.ne	0x21ec <gun_type_store+0x90>
    21d4: aa1303e0     	mov	x0, x19
    21d8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    21dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    21e0: 9100c3ff     	add	sp, sp, #0x30
    21e4: d50323bf     	autiasp
    21e8: d65f03c0     	ret
    21ec: 94000000     	bl	0x21ec <gun_type_store+0x90>
		00000000000021ec:  R_AARCH64_CALL26	__stack_chk_fail
