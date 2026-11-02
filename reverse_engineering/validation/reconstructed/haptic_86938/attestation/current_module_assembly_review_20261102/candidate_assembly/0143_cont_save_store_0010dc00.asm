
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002590 <cont_save_store>:
    2590: d503233f     	paciasp
    2594: d100c3ff     	sub	sp, sp, #0x30
    2598: a9017bfd     	stp	x29, x30, [sp, #0x10]
    259c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    25a0: 910043fd     	add	x29, sp, #0x10
    25a4: d5384109     	mrs	x9, SP_EL0
    25a8: aa0203e8     	mov	x8, x2
    25ac: 910013e2     	add	x2, sp, #0x4
    25b0: f9438929     	ldr	x9, [x9, #0x710]
    25b4: 2a1f03e1     	mov	w1, wzr
    25b8: aa0303f3     	mov	x19, x3
    25bc: f90007e9     	str	x9, [sp, #0x8]
    25c0: f9404c14     	ldr	x20, [x0, #0x98]
    25c4: aa0803e0     	mov	x0, x8
    25c8: b90007ff     	str	wzr, [sp, #0x4]
    25cc: 94000000     	bl	0x25cc <cont_save_store+0x3c>
		00000000000025cc:  R_AARCH64_CALL26	kstrtouint
    25d0: 37f80080     	tbnz	w0, #0x1f, 0x25e0 <cont_save_store+0x50>
    25d4: b94007e8     	ldr	w8, [sp, #0x4]
    25d8: b81c8288     	stur	w8, [x20, #-0x38]
    25dc: 14000002     	b	0x25e4 <cont_save_store+0x54>
    25e0: 93407c13     	sxtw	x19, w0
    25e4: d5384108     	mrs	x8, SP_EL0
    25e8: f9438908     	ldr	x8, [x8, #0x710]
    25ec: f94007e9     	ldr	x9, [sp, #0x8]
    25f0: eb09011f     	cmp	x8, x9
    25f4: 540000e1     	b.ne	0x2610 <cont_save_store+0x80>
    25f8: aa1303e0     	mov	x0, x19
    25fc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2600: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2604: 9100c3ff     	add	sp, sp, #0x30
    2608: d50323bf     	autiasp
    260c: d65f03c0     	ret
    2610: 94000000     	bl	0x2610 <cont_save_store+0x80>
		0000000000002610:  R_AARCH64_CALL26	__stack_chk_fail
