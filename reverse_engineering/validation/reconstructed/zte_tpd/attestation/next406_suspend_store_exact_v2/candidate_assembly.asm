
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000add8 <suspend_store>:
    add8: d503233f     	paciasp
    addc: d100c3ff     	sub	sp, sp, #0x30
    ade0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ade4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    ade8: 910043fd     	add	x29, sp, #0x10
    adec: d5384108     	mrs	x8, SP_EL0
    adf0: aa0203f3     	mov	x19, x2
    adf4: aa0103e0     	mov	x0, x1
    adf8: f9438908     	ldr	x8, [x8, #0x710]
    adfc: 910013e3     	add	x3, sp, #0x4
    ae00: aa0203e1     	mov	x1, x2
    ae04: 52800142     	mov	w2, #0xa                // =10
    ae08: f90007e8     	str	x8, [sp, #0x8]
    ae0c: 90000008     	adrp	x8, 0xa000 <sub_153EC+0x8>
		000000000000ae0c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    ae10: f9400114     	ldr	x20, [x8]
		000000000000ae10:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    ae14: b90007ff     	str	wzr, [sp, #0x4]
    ae18: 94000000     	bl	0xae18 <suspend_store+0x40>
		000000000000ae18:  R_AARCH64_CALL26	kstrtouint_from_user
    ae1c: 340001a0     	cbz	w0, 0xae50 <suspend_store+0x78>
    ae20: 928002b3     	mov	x19, #-0x16             // =-22
    ae24: d5384108     	mrs	x8, SP_EL0
    ae28: f9438908     	ldr	x8, [x8, #0x710]
    ae2c: f94007e9     	ldr	x9, [sp, #0x8]
    ae30: eb09011f     	cmp	x8, x9
    ae34: 540005a1     	b.ne	0xaee8 <suspend_store+0x110>
    ae38: aa1303e0     	mov	x0, x19
    ae3c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ae40: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ae44: 9100c3ff     	add	sp, sp, #0x30
    ae48: d50323bf     	autiasp
    ae4c: d65f03c0     	ret
    ae50: b94007e8     	ldr	w8, [sp, #0x4]
    ae54: 90000000     	adrp	x0, 0xa000 <sub_153EC+0x8>
		000000000000ae54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d32
    ae58: 91000000     	add	x0, x0, #0x0
		000000000000ae58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d32
    ae5c: 90000001     	adrp	x1, 0xa000 <sub_153EC+0x8>
		000000000000ae5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17454
    ae60: 91000021     	add	x1, x1, #0x0
		000000000000ae60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17454
    ae64: 7100011f     	cmp	w8, #0x0
    ae68: 1a9f07e2     	cset	w2, ne
    ae6c: b90007e2     	str	w2, [sp, #0x4]
    ae70: 94000000     	bl	0xae70 <suspend_store+0x98>
		000000000000ae70:  R_AARCH64_CALL26	_printk
    ae74: 91318280     	add	x0, x20, #0xc60
    ae78: 94000000     	bl	0xae78 <suspend_store+0xa0>
		000000000000ae78:  R_AARCH64_CALL26	mutex_lock
    ae7c: 39405a88     	ldrb	w8, [x20, #0x16]
    ae80: b94007e2     	ldr	w2, [sp, #0x4]
    ae84: 6b08005f     	cmp	w2, w8
    ae88: 54000240     	b.eq	0xaed0 <suspend_store+0xf8>
    ae8c: 7100005f     	cmp	w2, #0x0
    ae90: f9473288     	ldr	x8, [x20, #0xe60]
    ae94: 1a9f07e9     	cset	w9, ne
    ae98: 39005a89     	strb	w9, [x20, #0x16]
    ae9c: b4000148     	cbz	x8, 0xaec4 <suspend_store+0xec>
    aea0: aa1403e0     	mov	x0, x20
    aea4: 2a1f03e1     	mov	w1, wzr
    aea8: b85fc110     	ldur	w16, [x8, #-0x4]
    aeac: 72969211     	movk	w17, #0xb490
    aeb0: 72a71ab1     	movk	w17, #0x38d5, lsl #16
    aeb4: 6b11021f     	cmp	w16, w17
    aeb8: 54000040     	b.eq	0xaec0 <suspend_store+0xe8>
    aebc: d4304500     	brk	#0x8228
    aec0: d63f0100     	blr	x8
    aec4: 91318280     	add	x0, x20, #0xc60
    aec8: 94000000     	bl	0xaec8 <suspend_store+0xf0>
		000000000000aec8:  R_AARCH64_CALL26	mutex_unlock
    aecc: 17ffffd6     	b	0xae24 <suspend_store+0x4c>
    aed0: 90000000     	adrp	x0, 0xa000 <sub_153EC+0x8>
		000000000000aed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d57e
    aed4: 91000000     	add	x0, x0, #0x0
		000000000000aed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d57e
    aed8: 90000001     	adrp	x1, 0xa000 <sub_153EC+0x8>
		000000000000aed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17454
    aedc: 91000021     	add	x1, x1, #0x0
		000000000000aedc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17454
    aee0: 94000000     	bl	0xaee0 <suspend_store+0x108>
		000000000000aee0:  R_AARCH64_CALL26	_printk
    aee4: 17fffff8     	b	0xaec4 <suspend_store+0xec>
    aee8: 94000000     	bl	0xaee8 <suspend_store+0x110>
		000000000000aee8:  R_AARCH64_CALL26	__stack_chk_fail
