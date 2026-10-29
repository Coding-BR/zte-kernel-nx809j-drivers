
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000021f4 <bullet_nr_store>:
    21f4: d503233f     	paciasp
    21f8: d100c3ff     	sub	sp, sp, #0x30
    21fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2200: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2204: 910043fd     	add	x29, sp, #0x10
    2208: d5384109     	mrs	x9, SP_EL0
    220c: aa0203e8     	mov	x8, x2
    2210: 910013e2     	add	x2, sp, #0x4
    2214: f9438929     	ldr	x9, [x9, #0x710]
    2218: 2a1f03e1     	mov	w1, wzr
    221c: aa0303f3     	mov	x19, x3
    2220: f90007e9     	str	x9, [sp, #0x8]
    2224: f9404c14     	ldr	x20, [x0, #0x98]
    2228: aa0803e0     	mov	x0, x8
    222c: b90007ff     	str	wzr, [sp, #0x4]
    2230: 94000000     	bl	0x2230 <bullet_nr_store+0x3c>
		0000000000002230:  R_AARCH64_CALL26	kstrtouint
    2234: 37f80100     	tbnz	w0, #0x1f, 0x2254 <bullet_nr_store+0x60>
    2238: 91092280     	add	x0, x20, #0x248
    223c: 94000000     	bl	0x223c <bullet_nr_store+0x48>
		000000000000223c:  R_AARCH64_CALL26	mutex_lock
    2240: b94007e8     	ldr	w8, [sp, #0x4]
    2244: 91092280     	add	x0, x20, #0x248
    2248: b81d8288     	stur	w8, [x20, #-0x28]
    224c: 94000000     	bl	0x224c <bullet_nr_store+0x58>
		000000000000224c:  R_AARCH64_CALL26	mutex_unlock
    2250: 14000002     	b	0x2258 <bullet_nr_store+0x64>
    2254: 93407c13     	sxtw	x19, w0
    2258: d5384108     	mrs	x8, SP_EL0
    225c: f9438908     	ldr	x8, [x8, #0x710]
    2260: f94007e9     	ldr	x9, [sp, #0x8]
    2264: eb09011f     	cmp	x8, x9
    2268: 540000e1     	b.ne	0x2284 <bullet_nr_store+0x90>
    226c: aa1303e0     	mov	x0, x19
    2270: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2274: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2278: 9100c3ff     	add	sp, sp, #0x30
    227c: d50323bf     	autiasp
    2280: d65f03c0     	ret
    2284: 94000000     	bl	0x2284 <bullet_nr_store+0x90>
		0000000000002284:  R_AARCH64_CALL26	__stack_chk_fail
