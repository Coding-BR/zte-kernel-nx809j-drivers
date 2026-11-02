
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ade0 <cont_save_store>:
    ade0: d503233f     	paciasp
    ade4: d100c3ff     	sub	sp, sp, #0x30
    ade8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    adec: a9024ff4     	stp	x20, x19, [sp, #0x20]
    adf0: 910043fd     	add	x29, sp, #0x10
    adf4: d5384109     	mrs	x9, SP_EL0
    adf8: aa0203e8     	mov	x8, x2
    adfc: 910013e2     	add	x2, sp, #0x4
    ae00: f9438929     	ldr	x9, [x9, #0x710]
    ae04: 2a1f03e1     	mov	w1, wzr
    ae08: aa0303f3     	mov	x19, x3
    ae0c: f90007e9     	str	x9, [sp, #0x8]
    ae10: f9404c14     	ldr	x20, [x0, #0x98]
    ae14: aa0803e0     	mov	x0, x8
    ae18: b90007ff     	str	wzr, [sp, #0x4]
    ae1c: 94000000     	bl	0xae1c <cont_save_store+0x3c>
		000000000000ae1c:  R_AARCH64_CALL26	kstrtouint
    ae20: 37f80080     	tbnz	w0, #0x1f, 0xae30 <cont_save_store+0x50>
    ae24: b94007e8     	ldr	w8, [sp, #0x4]
    ae28: b81c8288     	stur	w8, [x20, #-0x38]
    ae2c: 14000002     	b	0xae34 <cont_save_store+0x54>
    ae30: 93407c13     	sxtw	x19, w0
    ae34: d5384108     	mrs	x8, SP_EL0
    ae38: f9438908     	ldr	x8, [x8, #0x710]
    ae3c: f94007e9     	ldr	x9, [sp, #0x8]
    ae40: eb09011f     	cmp	x8, x9
    ae44: 540000e1     	b.ne	0xae60 <cont_save_store+0x80>
    ae48: aa1303e0     	mov	x0, x19
    ae4c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ae50: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ae54: 9100c3ff     	add	sp, sp, #0x30
    ae58: d50323bf     	autiasp
    ae5c: d65f03c0     	ret
    ae60: 94000000     	bl	0xae60 <cont_save_store+0x80>
		000000000000ae60:  R_AARCH64_CALL26	__stack_chk_fail
