
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007784 <activate_mode_store>:
    7784: d503233f     	paciasp
    7788: d100c3ff     	sub	sp, sp, #0x30
    778c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7790: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7794: 910043fd     	add	x29, sp, #0x10
    7798: d5384109     	mrs	x9, SP_EL0
    779c: aa0203e8     	mov	x8, x2
    77a0: 910013e2     	add	x2, sp, #0x4
    77a4: f9438929     	ldr	x9, [x9, #0x710]
    77a8: 2a1f03e1     	mov	w1, wzr
    77ac: aa0303f3     	mov	x19, x3
    77b0: f90007e9     	str	x9, [sp, #0x8]
    77b4: f9404c14     	ldr	x20, [x0, #0x98]
    77b8: aa0803e0     	mov	x0, x8
    77bc: b90007ff     	str	wzr, [sp, #0x4]
    77c0: 94000000     	bl	0x77c0 <activate_mode_store+0x3c>
		00000000000077c0:  R_AARCH64_CALL26	kstrtouint
    77c4: 37f80100     	tbnz	w0, #0x1f, 0x77e4 <activate_mode_store+0x60>
    77c8: 91092280     	add	x0, x20, #0x248
    77cc: 94000000     	bl	0x77cc <activate_mode_store+0x48>
		00000000000077cc:  R_AARCH64_CALL26	mutex_lock
    77d0: b94007e8     	ldr	w8, [sp, #0x4]
    77d4: 91092280     	add	x0, x20, #0x248
    77d8: 38173288     	sturb	w8, [x20, #-0x8d]
    77dc: 94000000     	bl	0x77dc <activate_mode_store+0x58>
		00000000000077dc:  R_AARCH64_CALL26	mutex_unlock
    77e0: 14000002     	b	0x77e8 <activate_mode_store+0x64>
    77e4: 93407c13     	sxtw	x19, w0
    77e8: d5384108     	mrs	x8, SP_EL0
    77ec: f9438908     	ldr	x8, [x8, #0x710]
    77f0: f94007e9     	ldr	x9, [sp, #0x8]
    77f4: eb09011f     	cmp	x8, x9
    77f8: 540000e1     	b.ne	0x7814 <activate_mode_store+0x90>
    77fc: aa1303e0     	mov	x0, x19
    7800: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7804: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7808: 9100c3ff     	add	sp, sp, #0x30
    780c: d50323bf     	autiasp
    7810: d65f03c0     	ret
    7814: 94000000     	bl	0x7814 <activate_mode_store+0x90>
		0000000000007814:  R_AARCH64_CALL26	__stack_chk_fail
