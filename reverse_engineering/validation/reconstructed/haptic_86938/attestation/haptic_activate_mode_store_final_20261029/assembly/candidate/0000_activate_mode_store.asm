
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000322c <activate_mode_store>:
    322c: d503233f     	paciasp
    3230: d100c3ff     	sub	sp, sp, #0x30
    3234: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3238: a9024ff4     	stp	x20, x19, [sp, #0x20]
    323c: 910043fd     	add	x29, sp, #0x10
    3240: d5384109     	mrs	x9, SP_EL0
    3244: aa0203e8     	mov	x8, x2
    3248: 910013e2     	add	x2, sp, #0x4
    324c: f9438929     	ldr	x9, [x9, #0x710]
    3250: 2a1f03e1     	mov	w1, wzr
    3254: aa0303f3     	mov	x19, x3
    3258: f90007e9     	str	x9, [sp, #0x8]
    325c: f9404c14     	ldr	x20, [x0, #0x98]
    3260: aa0803e0     	mov	x0, x8
    3264: b90007ff     	str	wzr, [sp, #0x4]
    3268: 94000000     	bl	0x3268 <activate_mode_store+0x3c>
		0000000000003268:  R_AARCH64_CALL26	kstrtouint
    326c: 37f80100     	tbnz	w0, #0x1f, 0x328c <activate_mode_store+0x60>
    3270: 91092280     	add	x0, x20, #0x248
    3274: 94000000     	bl	0x3274 <activate_mode_store+0x48>
		0000000000003274:  R_AARCH64_CALL26	mutex_lock
    3278: b94007e8     	ldr	w8, [sp, #0x4]
    327c: 91092280     	add	x0, x20, #0x248
    3280: 38173288     	sturb	w8, [x20, #-0x8d]
    3284: 94000000     	bl	0x3284 <activate_mode_store+0x58>
		0000000000003284:  R_AARCH64_CALL26	mutex_unlock
    3288: 14000002     	b	0x3290 <activate_mode_store+0x64>
    328c: 93407c13     	sxtw	x19, w0
    3290: d5384108     	mrs	x8, SP_EL0
    3294: f9438908     	ldr	x8, [x8, #0x710]
    3298: f94007e9     	ldr	x9, [sp, #0x8]
    329c: eb09011f     	cmp	x8, x9
    32a0: 540000e1     	b.ne	0x32bc <activate_mode_store+0x90>
    32a4: aa1303e0     	mov	x0, x19
    32a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    32ac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    32b0: 9100c3ff     	add	sp, sp, #0x30
    32b4: d50323bf     	autiasp
    32b8: d65f03c0     	ret
    32bc: 94000000     	bl	0x32bc <activate_mode_store+0x90>
		00000000000032bc:  R_AARCH64_CALL26	__stack_chk_fail
