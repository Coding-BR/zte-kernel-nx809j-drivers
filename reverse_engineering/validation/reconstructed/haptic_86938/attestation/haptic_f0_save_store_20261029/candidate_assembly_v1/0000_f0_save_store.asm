
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f00 <f0_save_store>:
    1f00: d503233f     	paciasp
    1f04: d100c3ff     	sub	sp, sp, #0x30
    1f08: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1f0c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1f10: 910043fd     	add	x29, sp, #0x10
    1f14: d5384109     	mrs	x9, SP_EL0
    1f18: aa0203e8     	mov	x8, x2
    1f1c: 910013e2     	add	x2, sp, #0x4
    1f20: f9438929     	ldr	x9, [x9, #0x710]
    1f24: 2a1f03e1     	mov	w1, wzr
    1f28: aa0303f3     	mov	x19, x3
    1f2c: f90007e9     	str	x9, [sp, #0x8]
    1f30: f9404c14     	ldr	x20, [x0, #0x98]
    1f34: aa0803e0     	mov	x0, x8
    1f38: b90007ff     	str	wzr, [sp, #0x4]
    1f3c: 94000000     	bl	0x1f3c <f0_save_store+0x3c>
		0000000000001f3c:  R_AARCH64_CALL26	kstrtouint
    1f40: 37f80080     	tbnz	w0, #0x1f, 0x1f50 <f0_save_store+0x50>
    1f44: b94007e8     	ldr	w8, [sp, #0x4]
    1f48: b81e0288     	stur	w8, [x20, #-0x20]
    1f4c: 14000002     	b	0x1f54 <f0_save_store+0x54>
    1f50: 93407c13     	sxtw	x19, w0
    1f54: d5384108     	mrs	x8, SP_EL0
    1f58: f9438908     	ldr	x8, [x8, #0x710]
    1f5c: f94007e9     	ldr	x9, [sp, #0x8]
    1f60: eb09011f     	cmp	x8, x9
    1f64: 540000e1     	b.ne	0x1f80 <f0_save_store+0x80>
    1f68: aa1303e0     	mov	x0, x19
    1f6c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1f70: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1f74: 9100c3ff     	add	sp, sp, #0x30
    1f78: d50323bf     	autiasp
    1f7c: d65f03c0     	ret
    1f80: 94000000     	bl	0x1f80 <f0_save_store+0x80>
		0000000000001f80:  R_AARCH64_CALL26	__stack_chk_fail
