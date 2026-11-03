
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009eb8 <osc_save_store>:
    9eb8: d503233f     	paciasp
    9ebc: d100c3ff     	sub	sp, sp, #0x30
    9ec0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9ec4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9ec8: 910043fd     	add	x29, sp, #0x10
    9ecc: d5384109     	mrs	x9, SP_EL0
    9ed0: aa0203e8     	mov	x8, x2
    9ed4: 910013e2     	add	x2, sp, #0x4
    9ed8: f9438929     	ldr	x9, [x9, #0x710]
    9edc: 2a1f03e1     	mov	w1, wzr
    9ee0: aa0303f3     	mov	x19, x3
    9ee4: f90007e9     	str	x9, [sp, #0x8]
    9ee8: f9404c14     	ldr	x20, [x0, #0x98]
    9eec: aa0803e0     	mov	x0, x8
    9ef0: b90007ff     	str	wzr, [sp, #0x4]
    9ef4: 94000000     	bl	0x9ef4 <osc_save_store+0x3c>
		0000000000009ef4:  R_AARCH64_CALL26	kstrtouint
    9ef8: 37f80080     	tbnz	w0, #0x1f, 0x9f08 <osc_save_store+0x50>
    9efc: b94007e8     	ldr	w8, [sp, #0x4]
    9f00: b81f0288     	stur	w8, [x20, #-0x10]
    9f04: 14000002     	b	0x9f0c <osc_save_store+0x54>
    9f08: 93407c13     	sxtw	x19, w0
    9f0c: d5384108     	mrs	x8, SP_EL0
    9f10: f9438908     	ldr	x8, [x8, #0x710]
    9f14: f94007e9     	ldr	x9, [sp, #0x8]
    9f18: eb09011f     	cmp	x8, x9
    9f1c: 540000e1     	b.ne	0x9f38 <osc_save_store+0x80>
    9f20: aa1303e0     	mov	x0, x19
    9f24: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9f28: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9f2c: 9100c3ff     	add	sp, sp, #0x30
    9f30: d50323bf     	autiasp
    9f34: d65f03c0     	ret
    9f38: 94000000     	bl	0x9f38 <osc_save_store+0x80>
		0000000000009f38:  R_AARCH64_CALL26	__stack_chk_fail
