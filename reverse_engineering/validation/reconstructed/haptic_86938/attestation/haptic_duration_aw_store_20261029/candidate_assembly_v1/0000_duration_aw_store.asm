
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002098 <duration_aw_store>:
    2098: d503233f     	paciasp
    209c: d100c3ff     	sub	sp, sp, #0x30
    20a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    20a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    20a8: 910043fd     	add	x29, sp, #0x10
    20ac: d5384109     	mrs	x9, SP_EL0
    20b0: aa0203e8     	mov	x8, x2
    20b4: 910013e2     	add	x2, sp, #0x4
    20b8: f9438929     	ldr	x9, [x9, #0x710]
    20bc: 2a1f03e1     	mov	w1, wzr
    20c0: aa0303f3     	mov	x19, x3
    20c4: f90007e9     	str	x9, [sp, #0x8]
    20c8: f9404c14     	ldr	x20, [x0, #0x98]
    20cc: aa0803e0     	mov	x0, x8
    20d0: b90007ff     	str	wzr, [sp, #0x4]
    20d4: 94000000     	bl	0x20d4 <duration_aw_store+0x3c>
		00000000000020d4:  R_AARCH64_CALL26	kstrtouint
    20d8: 37f800a0     	tbnz	w0, #0x1f, 0x20ec <duration_aw_store+0x54>
    20dc: b94007e8     	ldr	w8, [sp, #0x4]
    20e0: 34000088     	cbz	w8, 0x20f0 <duration_aw_store+0x58>
    20e4: b81ac288     	stur	w8, [x20, #-0x54]
    20e8: 14000002     	b	0x20f0 <duration_aw_store+0x58>
    20ec: 93407c13     	sxtw	x19, w0
    20f0: d5384108     	mrs	x8, SP_EL0
    20f4: f9438908     	ldr	x8, [x8, #0x710]
    20f8: f94007e9     	ldr	x9, [sp, #0x8]
    20fc: eb09011f     	cmp	x8, x9
    2100: 540000e1     	b.ne	0x211c <duration_aw_store+0x84>
    2104: aa1303e0     	mov	x0, x19
    2108: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    210c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2110: 9100c3ff     	add	sp, sp, #0x30
    2114: d50323bf     	autiasp
    2118: d65f03c0     	ret
    211c: 94000000     	bl	0x211c <duration_aw_store+0x84>
		000000000000211c:  R_AARCH64_CALL26	__stack_chk_fail
