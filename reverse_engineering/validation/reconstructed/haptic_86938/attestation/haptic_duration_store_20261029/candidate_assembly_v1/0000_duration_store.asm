
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e74 <duration_store>:
    1e74: d503233f     	paciasp
    1e78: d100c3ff     	sub	sp, sp, #0x30
    1e7c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1e80: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1e84: 910043fd     	add	x29, sp, #0x10
    1e88: d5384109     	mrs	x9, SP_EL0
    1e8c: aa0203e8     	mov	x8, x2
    1e90: 910013e2     	add	x2, sp, #0x4
    1e94: f9438929     	ldr	x9, [x9, #0x710]
    1e98: 2a1f03e1     	mov	w1, wzr
    1e9c: aa0303f3     	mov	x19, x3
    1ea0: f90007e9     	str	x9, [sp, #0x8]
    1ea4: f9404c14     	ldr	x20, [x0, #0x98]
    1ea8: aa0803e0     	mov	x0, x8
    1eac: b90007ff     	str	wzr, [sp, #0x4]
    1eb0: 94000000     	bl	0x1eb0 <duration_store+0x3c>
		0000000000001eb0:  R_AARCH64_CALL26	kstrtouint
    1eb4: 37f800a0     	tbnz	w0, #0x1f, 0x1ec8 <duration_store+0x54>
    1eb8: b94007e8     	ldr	w8, [sp, #0x4]
    1ebc: 34000088     	cbz	w8, 0x1ecc <duration_store+0x58>
    1ec0: b81ac288     	stur	w8, [x20, #-0x54]
    1ec4: 14000002     	b	0x1ecc <duration_store+0x58>
    1ec8: 93407c13     	sxtw	x19, w0
    1ecc: d5384108     	mrs	x8, SP_EL0
    1ed0: f9438908     	ldr	x8, [x8, #0x710]
    1ed4: f94007e9     	ldr	x9, [sp, #0x8]
    1ed8: eb09011f     	cmp	x8, x9
    1edc: 540000e1     	b.ne	0x1ef8 <duration_store+0x84>
    1ee0: aa1303e0     	mov	x0, x19
    1ee4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1ee8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1eec: 9100c3ff     	add	sp, sp, #0x30
    1ef0: d50323bf     	autiasp
    1ef4: d65f03c0     	ret
    1ef8: 94000000     	bl	0x1ef8 <duration_store+0x84>
		0000000000001ef8:  R_AARCH64_CALL26	__stack_chk_fail
