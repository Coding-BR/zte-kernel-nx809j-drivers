
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000abdc <duration_aw_store>:
    abdc: d503233f     	paciasp
    abe0: d100c3ff     	sub	sp, sp, #0x30
    abe4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    abe8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    abec: 910043fd     	add	x29, sp, #0x10
    abf0: d5384109     	mrs	x9, SP_EL0
    abf4: aa0203e8     	mov	x8, x2
    abf8: 910013e2     	add	x2, sp, #0x4
    abfc: f9438929     	ldr	x9, [x9, #0x710]
    ac00: 2a1f03e1     	mov	w1, wzr
    ac04: aa0303f3     	mov	x19, x3
    ac08: f90007e9     	str	x9, [sp, #0x8]
    ac0c: f9404c14     	ldr	x20, [x0, #0x98]
    ac10: aa0803e0     	mov	x0, x8
    ac14: b90007ff     	str	wzr, [sp, #0x4]
    ac18: 94000000     	bl	0xac18 <duration_aw_store+0x3c>
		000000000000ac18:  R_AARCH64_CALL26	kstrtouint
    ac1c: 37f800a0     	tbnz	w0, #0x1f, 0xac30 <duration_aw_store+0x54>
    ac20: b94007e8     	ldr	w8, [sp, #0x4]
    ac24: 34000088     	cbz	w8, 0xac34 <duration_aw_store+0x58>
    ac28: b81ac288     	stur	w8, [x20, #-0x54]
    ac2c: 14000002     	b	0xac34 <duration_aw_store+0x58>
    ac30: 93407c13     	sxtw	x19, w0
    ac34: d5384108     	mrs	x8, SP_EL0
    ac38: f9438908     	ldr	x8, [x8, #0x710]
    ac3c: f94007e9     	ldr	x9, [sp, #0x8]
    ac40: eb09011f     	cmp	x8, x9
    ac44: 540000e1     	b.ne	0xac60 <duration_aw_store+0x84>
    ac48: aa1303e0     	mov	x0, x19
    ac4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ac50: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ac54: 9100c3ff     	add	sp, sp, #0x30
    ac58: d50323bf     	autiasp
    ac5c: d65f03c0     	ret
    ac60: 94000000     	bl	0xac60 <duration_aw_store+0x84>
		000000000000ac60:  R_AARCH64_CALL26	__stack_chk_fail
