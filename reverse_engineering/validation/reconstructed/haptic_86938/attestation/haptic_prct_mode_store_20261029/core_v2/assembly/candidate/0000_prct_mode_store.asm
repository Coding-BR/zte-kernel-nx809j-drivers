
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004704 <prct_mode_store>:
    4704: d503233f     	paciasp
    4708: d10143ff     	sub	sp, sp, #0x50
    470c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4710: f90013f7     	str	x23, [sp, #0x20]
    4714: a90357f6     	stp	x22, x21, [sp, #0x30]
    4718: a9044ff4     	stp	x20, x19, [sp, #0x40]
    471c: 910043fd     	add	x29, sp, #0x10
    4720: d5384109     	mrs	x9, SP_EL0
    4724: aa0203e8     	mov	x8, x2
    4728: aa0303f3     	mov	x19, x3
    472c: f9438929     	ldr	x9, [x9, #0x710]
    4730: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c5
    4734: 91000021     	add	x1, x1, #0x0
		0000000000004734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c5
    4738: 910003e2     	mov	x2, sp
    473c: f90007e9     	str	x9, [sp, #0x8]
    4740: 910003e9     	mov	x9, sp
    4744: f9404c17     	ldr	x23, [x0, #0x98]
    4748: b27e0123     	orr	x3, x9, #0x4
    474c: aa0803e0     	mov	x0, x8
    4750: f90003ff     	str	xzr, [sp]
    4754: 94000000     	bl	0x4754 <prct_mode_store+0x50>
		0000000000004754:  R_AARCH64_CALL26	sscanf
    4758: 7100081f     	cmp	w0, #0x2
    475c: 54000261     	b.ne	0x47a8 <prct_mode_store+0xa4>
    4760: 294057f4     	ldp	w20, w21, [sp]
    4764: 910922e0     	add	x0, x23, #0x248
    4768: d102a2f6     	sub	x22, x23, #0xa8
    476c: 94000000     	bl	0x476c <prct_mode_store+0x68>
		000000000000476c:  R_AARCH64_CALL26	mutex_lock
    4770: f94292e8     	ldr	x8, [x23, #0x520]
    4774: aa1603e0     	mov	x0, x22
    4778: 2a1403e1     	mov	w1, w20
    477c: 2a1503e2     	mov	w2, w21
    4780: f9406d08     	ldr	x8, [x8, #0xd8]
    4784: b85fc110     	ldur	w16, [x8, #-0x4]
    4788: 728fccb1     	movk	w17, #0x7e65
    478c: 72af70f1     	movk	w17, #0x7b87, lsl #16
    4790: 6b11021f     	cmp	w16, w17
    4794: 54000040     	b.eq	0x479c <prct_mode_store+0x98>
    4798: d4304500     	brk	#0x8228
    479c: d63f0100     	blr	x8
    47a0: 910922e0     	add	x0, x23, #0x248
    47a4: 94000000     	bl	0x47a4 <prct_mode_store+0xa0>
		00000000000047a4:  R_AARCH64_CALL26	mutex_unlock
    47a8: d5384108     	mrs	x8, SP_EL0
    47ac: f9438908     	ldr	x8, [x8, #0x710]
    47b0: f94007e9     	ldr	x9, [sp, #0x8]
    47b4: eb09011f     	cmp	x8, x9
    47b8: 54000121     	b.ne	0x47dc <prct_mode_store+0xd8>
    47bc: aa1303e0     	mov	x0, x19
    47c0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    47c4: f94013f7     	ldr	x23, [sp, #0x20]
    47c8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    47cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    47d0: 910143ff     	add	sp, sp, #0x50
    47d4: d50323bf     	autiasp
    47d8: d65f03c0     	ret
    47dc: 94000000     	bl	0x47dc <prct_mode_store+0xd8>
		00000000000047dc:  R_AARCH64_CALL26	__stack_chk_fail
