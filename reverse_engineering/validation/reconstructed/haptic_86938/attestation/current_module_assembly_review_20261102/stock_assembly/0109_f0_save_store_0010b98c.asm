
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008b6c <f0_save_store>:
    8b6c: d503233f     	paciasp
    8b70: d100c3ff     	sub	sp, sp, #0x30
    8b74: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8b78: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8b7c: 910043fd     	add	x29, sp, #0x10
    8b80: d5384109     	mrs	x9, SP_EL0
    8b84: aa0203e8     	mov	x8, x2
    8b88: 910013e2     	add	x2, sp, #0x4
    8b8c: f9438929     	ldr	x9, [x9, #0x710]
    8b90: 2a1f03e1     	mov	w1, wzr
    8b94: aa0303f3     	mov	x19, x3
    8b98: f90007e9     	str	x9, [sp, #0x8]
    8b9c: f9404c14     	ldr	x20, [x0, #0x98]
    8ba0: aa0803e0     	mov	x0, x8
    8ba4: b90007ff     	str	wzr, [sp, #0x4]
    8ba8: 94000000     	bl	0x8ba8 <f0_save_store+0x3c>
		0000000000008ba8:  R_AARCH64_CALL26	kstrtouint
    8bac: 37f80080     	tbnz	w0, #0x1f, 0x8bbc <f0_save_store+0x50>
    8bb0: b94007e8     	ldr	w8, [sp, #0x4]
    8bb4: b81e0288     	stur	w8, [x20, #-0x20]
    8bb8: 14000002     	b	0x8bc0 <f0_save_store+0x54>
    8bbc: 93407c13     	sxtw	x19, w0
    8bc0: d5384108     	mrs	x8, SP_EL0
    8bc4: f9438908     	ldr	x8, [x8, #0x710]
    8bc8: f94007e9     	ldr	x9, [sp, #0x8]
    8bcc: eb09011f     	cmp	x8, x9
    8bd0: 540000e1     	b.ne	0x8bec <f0_save_store+0x80>
    8bd4: aa1303e0     	mov	x0, x19
    8bd8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8bdc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8be0: 9100c3ff     	add	sp, sp, #0x30
    8be4: d50323bf     	autiasp
    8be8: d65f03c0     	ret
    8bec: 94000000     	bl	0x8bec <f0_save_store+0x80>
		0000000000008bec:  R_AARCH64_CALL26	__stack_chk_fail
