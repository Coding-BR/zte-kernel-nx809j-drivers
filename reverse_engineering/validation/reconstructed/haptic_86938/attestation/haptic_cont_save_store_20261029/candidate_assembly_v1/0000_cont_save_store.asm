
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f88 <cont_save_store>:
    1f88: d503233f     	paciasp
    1f8c: d100c3ff     	sub	sp, sp, #0x30
    1f90: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f94: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1f98: 910043fd     	add	x29, sp, #0x10
    1f9c: d5384109     	mrs	x9, SP_EL0
    1fa0: aa0203e8     	mov	x8, x2
    1fa4: 910013e2     	add	x2, sp, #0x4
    1fa8: f9438929     	ldr	x9, [x9, #0x710]
    1fac: 2a1f03e1     	mov	w1, wzr
    1fb0: aa0303f3     	mov	x19, x3
    1fb4: f90007e9     	str	x9, [sp, #0x8]
    1fb8: f9404c14     	ldr	x20, [x0, #0x98]
    1fbc: aa0803e0     	mov	x0, x8
    1fc0: b90007ff     	str	wzr, [sp, #0x4]
    1fc4: 94000000     	bl	0x1fc4 <cont_save_store+0x3c>
		0000000000001fc4:  R_AARCH64_CALL26	kstrtouint
    1fc8: 37f80080     	tbnz	w0, #0x1f, 0x1fd8 <cont_save_store+0x50>
    1fcc: b94007e8     	ldr	w8, [sp, #0x4]
    1fd0: b81c8288     	stur	w8, [x20, #-0x38]
    1fd4: 14000002     	b	0x1fdc <cont_save_store+0x54>
    1fd8: 93407c13     	sxtw	x19, w0
    1fdc: d5384108     	mrs	x8, SP_EL0
    1fe0: f9438908     	ldr	x8, [x8, #0x710]
    1fe4: f94007e9     	ldr	x9, [sp, #0x8]
    1fe8: eb09011f     	cmp	x8, x9
    1fec: 540000e1     	b.ne	0x2008 <cont_save_store+0x80>
    1ff0: aa1303e0     	mov	x0, x19
    1ff4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1ff8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1ffc: 9100c3ff     	add	sp, sp, #0x30
    2000: d50323bf     	autiasp
    2004: d65f03c0     	ret
    2008: 94000000     	bl	0x2008 <cont_save_store+0x80>
		0000000000002008:  R_AARCH64_CALL26	__stack_chk_fail
