
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006c88 <haptic_lifetime_attach_vma>:
    6c88: d503233f     	paciasp
    6c8c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    6c90: a9014ff4     	stp	x20, x19, [sp, #0x10]
    6c94: 910003fd     	mov	x29, sp
    6c98: aa0003f3     	mov	x19, x0
    6c9c: 91002000     	add	x0, x0, #0x8
    6ca0: aa0103f4     	mov	x20, x1
    6ca4: 94000000     	bl	0x6ca4 <haptic_lifetime_attach_vma+0x1c>
		0000000000006ca4:  R_AARCH64_CALL26	mutex_lock
    6ca8: 14000016     	b	0x6d00 <haptic_lifetime_attach_vma+0x78>
    6cac: 52800028     	mov	w8, #0x1                // =1
    6cb0: b8280268     	ldadd	w8, w8, [x19]
    6cb4: 34000328     	cbz	w8, 0x6d18 <haptic_lifetime_attach_vma+0x90>
    6cb8: 11000509     	add	w9, w8, #0x1
    6cbc: 2a080128     	orr	w8, w9, w8
    6cc0: 37f801c8     	tbnz	w8, #0x1f, 0x6cf8 <haptic_lifetime_attach_vma+0x70>
    6cc4: b9405e68     	ldr	w8, [x19, #0x5c]
    6cc8: 91002260     	add	x0, x19, #0x8
    6ccc: 11000508     	add	w8, w8, #0x1
    6cd0: b9005e68     	str	w8, [x19, #0x5c]
    6cd4: 90000008     	adrp	x8, 0x6000 <aw8693x_get_wav_loop+0x90>
		0000000000006cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
    6cd8: 91000108     	add	x8, x8, #0x0
		0000000000006cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
    6cdc: f9003293     	str	x19, [x20, #0x60]
    6ce0: f9002688     	str	x8, [x20, #0x48]
    6ce4: 94000000     	bl	0x6ce4 <haptic_lifetime_attach_vma+0x5c>
		0000000000006ce4:  R_AARCH64_CALL26	mutex_unlock
    6ce8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    6cec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6cf0: d50323bf     	autiasp
    6cf4: d65f03c0     	ret
    6cf8: 52800021     	mov	w1, #0x1                // =1
    6cfc: 14000008     	b	0x6d1c <haptic_lifetime_attach_vma+0x94>
    6d00: f9800271     	prfm	pstl1strm, [x19]
    6d04: 885f7e68     	ldxr	w8, [x19]
    6d08: 11000509     	add	w9, w8, #0x1
    6d0c: 880a7e69     	stxr	w10, w9, [x19]
    6d10: 35ffffaa     	cbnz	w10, 0x6d04 <haptic_lifetime_attach_vma+0x7c>
    6d14: 35fffd28     	cbnz	w8, 0x6cb8 <haptic_lifetime_attach_vma+0x30>
    6d18: 52800041     	mov	w1, #0x2                // =2
    6d1c: aa1303e0     	mov	x0, x19
    6d20: 94000000     	bl	0x6d20 <haptic_lifetime_attach_vma+0x98>
		0000000000006d20:  R_AARCH64_CALL26	refcount_warn_saturate
    6d24: 17ffffe8     	b	0x6cc4 <haptic_lifetime_attach_vma+0x3c>
