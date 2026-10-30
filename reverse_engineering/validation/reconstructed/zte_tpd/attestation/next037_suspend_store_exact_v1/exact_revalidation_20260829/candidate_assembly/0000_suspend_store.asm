
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000096a8 <suspend_store>:
    96a8: d503233f     	paciasp
    96ac: d100c3ff     	sub	sp, sp, #0x30
    96b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    96b4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    96b8: 910043fd     	add	x29, sp, #0x10
    96bc: d5384108     	mrs	x8, SP_EL0
    96c0: aa0203f3     	mov	x19, x2
    96c4: aa0103e0     	mov	x0, x1
    96c8: f9438908     	ldr	x8, [x8, #0x710]
    96cc: 910013e3     	add	x3, sp, #0x4
    96d0: aa0203e1     	mov	x1, x2
    96d4: 52800142     	mov	w2, #0xa                // =10
    96d8: f90007e8     	str	x8, [sp, #0x8]
    96dc: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000096dc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    96e0: f9400114     	ldr	x20, [x8]
		00000000000096e0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    96e4: b90007ff     	str	wzr, [sp, #0x4]
    96e8: 94000000     	bl	0x96e8 <suspend_store+0x40>
		00000000000096e8:  R_AARCH64_CALL26	kstrtouint_from_user
    96ec: 340001a0     	cbz	w0, 0x9720 <suspend_store+0x78>
    96f0: 928002b3     	mov	x19, #-0x16             // =-22
    96f4: d5384108     	mrs	x8, SP_EL0
    96f8: f9438908     	ldr	x8, [x8, #0x710]
    96fc: f94007e9     	ldr	x9, [sp, #0x8]
    9700: eb09011f     	cmp	x8, x9
    9704: 540005a1     	b.ne	0x97b8 <suspend_store+0x110>
    9708: aa1303e0     	mov	x0, x19
    970c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9710: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9714: 9100c3ff     	add	sp, sp, #0x30
    9718: d50323bf     	autiasp
    971c: d65f03c0     	ret
    9720: b94007e8     	ldr	w8, [sp, #0x4]
    9724: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
    9728: 91000000     	add	x0, x0, #0x0
		0000000000009728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
    972c: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000972c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17454
    9730: 91000021     	add	x1, x1, #0x0
		0000000000009730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17454
    9734: 7100011f     	cmp	w8, #0x0
    9738: 1a9f07e2     	cset	w2, ne
    973c: b90007e2     	str	w2, [sp, #0x4]
    9740: 94000000     	bl	0x9740 <suspend_store+0x98>
		0000000000009740:  R_AARCH64_CALL26	_printk
    9744: 91318280     	add	x0, x20, #0xc60
    9748: 94000000     	bl	0x9748 <suspend_store+0xa0>
		0000000000009748:  R_AARCH64_CALL26	mutex_lock
    974c: 39405a88     	ldrb	w8, [x20, #0x16]
    9750: b94007e2     	ldr	w2, [sp, #0x4]
    9754: 6b08005f     	cmp	w2, w8
    9758: 54000240     	b.eq	0x97a0 <suspend_store+0xf8>
    975c: 7100005f     	cmp	w2, #0x0
    9760: f9473288     	ldr	x8, [x20, #0xe60]
    9764: 1a9f07e9     	cset	w9, ne
    9768: 39005a89     	strb	w9, [x20, #0x16]
    976c: b4000148     	cbz	x8, 0x9794 <suspend_store+0xec>
    9770: aa1403e0     	mov	x0, x20
    9774: 2a1f03e1     	mov	w1, wzr
    9778: b85fc110     	ldur	w16, [x8, #-0x4]
    977c: 72969211     	movk	w17, #0xb490
    9780: 72a71ab1     	movk	w17, #0x38d5, lsl #16
    9784: 6b11021f     	cmp	w16, w17
    9788: 54000040     	b.eq	0x9790 <suspend_store+0xe8>
    978c: d4304500     	brk	#0x8228
    9790: d63f0100     	blr	x8
    9794: 91318280     	add	x0, x20, #0xc60
    9798: 94000000     	bl	0x9798 <suspend_store+0xf0>
		0000000000009798:  R_AARCH64_CALL26	mutex_unlock
    979c: 17ffffd6     	b	0x96f4 <suspend_store+0x4c>
    97a0: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000097a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3c6
    97a4: 91000000     	add	x0, x0, #0x0
		00000000000097a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3c6
    97a8: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000097a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17454
    97ac: 91000021     	add	x1, x1, #0x0
		00000000000097ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17454
    97b0: 94000000     	bl	0x97b0 <suspend_store+0x108>
		00000000000097b0:  R_AARCH64_CALL26	_printk
    97b4: 17fffff8     	b	0x9794 <suspend_store+0xec>
    97b8: 94000000     	bl	0x97b8 <suspend_store+0x110>
		00000000000097b8:  R_AARCH64_CALL26	__stack_chk_fail
