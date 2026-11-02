
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004734 <prct_mode_store>:
    4734: d503233f     	paciasp
    4738: d10143ff     	sub	sp, sp, #0x50
    473c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4740: f90013f7     	str	x23, [sp, #0x20]
    4744: a90357f6     	stp	x22, x21, [sp, #0x30]
    4748: a9044ff4     	stp	x20, x19, [sp, #0x40]
    474c: 910043fd     	add	x29, sp, #0x10
    4750: d5384109     	mrs	x9, SP_EL0
    4754: aa0203e8     	mov	x8, x2
    4758: aa0303f3     	mov	x19, x3
    475c: f9438929     	ldr	x9, [x9, #0x710]
    4760: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf2
    4764: 91000021     	add	x1, x1, #0x0
		0000000000004764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf2
    4768: 910003e2     	mov	x2, sp
    476c: f90007e9     	str	x9, [sp, #0x8]
    4770: 910003e9     	mov	x9, sp
    4774: f9404c17     	ldr	x23, [x0, #0x98]
    4778: b27e0123     	orr	x3, x9, #0x4
    477c: aa0803e0     	mov	x0, x8
    4780: f90003ff     	str	xzr, [sp]
    4784: 94000000     	bl	0x4784 <prct_mode_store+0x50>
		0000000000004784:  R_AARCH64_CALL26	sscanf
    4788: 7100081f     	cmp	w0, #0x2
    478c: 54000261     	b.ne	0x47d8 <prct_mode_store+0xa4>
    4790: 294057f4     	ldp	w20, w21, [sp]
    4794: 910922e0     	add	x0, x23, #0x248
    4798: d102a2f6     	sub	x22, x23, #0xa8
    479c: 94000000     	bl	0x479c <prct_mode_store+0x68>
		000000000000479c:  R_AARCH64_CALL26	mutex_lock
    47a0: f94292e8     	ldr	x8, [x23, #0x520]
    47a4: aa1603e0     	mov	x0, x22
    47a8: 2a1403e1     	mov	w1, w20
    47ac: 2a1503e2     	mov	w2, w21
    47b0: f9406d08     	ldr	x8, [x8, #0xd8]
    47b4: b85fc110     	ldur	w16, [x8, #-0x4]
    47b8: 728fccb1     	movk	w17, #0x7e65
    47bc: 72af70f1     	movk	w17, #0x7b87, lsl #16
    47c0: 6b11021f     	cmp	w16, w17
    47c4: 54000040     	b.eq	0x47cc <prct_mode_store+0x98>
    47c8: d4304500     	brk	#0x8228
    47cc: d63f0100     	blr	x8
    47d0: 910922e0     	add	x0, x23, #0x248
    47d4: 94000000     	bl	0x47d4 <prct_mode_store+0xa0>
		00000000000047d4:  R_AARCH64_CALL26	mutex_unlock
    47d8: d5384108     	mrs	x8, SP_EL0
    47dc: f9438908     	ldr	x8, [x8, #0x710]
    47e0: f94007e9     	ldr	x9, [sp, #0x8]
    47e4: eb09011f     	cmp	x8, x9
    47e8: 54000121     	b.ne	0x480c <prct_mode_store+0xd8>
    47ec: aa1303e0     	mov	x0, x19
    47f0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    47f4: f94013f7     	ldr	x23, [sp, #0x20]
    47f8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    47fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4800: 910143ff     	add	sp, sp, #0x50
    4804: d50323bf     	autiasp
    4808: d65f03c0     	ret
    480c: 94000000     	bl	0x480c <prct_mode_store+0xd8>
		000000000000480c:  R_AARCH64_CALL26	__stack_chk_fail
