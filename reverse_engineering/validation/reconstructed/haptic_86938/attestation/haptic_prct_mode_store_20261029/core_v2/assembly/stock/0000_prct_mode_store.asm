
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000093e8 <prct_mode_store>:
    93e8: d503233f     	paciasp
    93ec: d10143ff     	sub	sp, sp, #0x50
    93f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    93f4: f90013f7     	str	x23, [sp, #0x20]
    93f8: a90357f6     	stp	x22, x21, [sp, #0x30]
    93fc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    9400: 910043fd     	add	x29, sp, #0x10
    9404: d5384109     	mrs	x9, SP_EL0
    9408: aa0203e8     	mov	x8, x2
    940c: aa0303f3     	mov	x19, x3
    9410: f9438929     	ldr	x9, [x9, #0x710]
    9414: 90000001     	adrp	x1, 0x9000 <cont_show+0x34>
		0000000000009414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d6
    9418: 91000021     	add	x1, x1, #0x0
		0000000000009418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d6
    941c: 910003e2     	mov	x2, sp
    9420: f90007e9     	str	x9, [sp, #0x8]
    9424: 910003e9     	mov	x9, sp
    9428: f9404c17     	ldr	x23, [x0, #0x98]
    942c: b27e0123     	orr	x3, x9, #0x4
    9430: aa0803e0     	mov	x0, x8
    9434: f90003ff     	str	xzr, [sp]
    9438: 94000000     	bl	0x9438 <prct_mode_store+0x50>
		0000000000009438:  R_AARCH64_CALL26	sscanf
    943c: 7100081f     	cmp	w0, #0x2
    9440: 54000261     	b.ne	0x948c <prct_mode_store+0xa4>
    9444: 294057f4     	ldp	w20, w21, [sp]
    9448: 910922e0     	add	x0, x23, #0x248
    944c: d102a2f6     	sub	x22, x23, #0xa8
    9450: 94000000     	bl	0x9450 <prct_mode_store+0x68>
		0000000000009450:  R_AARCH64_CALL26	mutex_lock
    9454: f94292e8     	ldr	x8, [x23, #0x520]
    9458: aa1603e0     	mov	x0, x22
    945c: 2a1403e1     	mov	w1, w20
    9460: 2a1503e2     	mov	w2, w21
    9464: f9406d08     	ldr	x8, [x8, #0xd8]
    9468: b85fc110     	ldur	w16, [x8, #-0x4]
    946c: 728fccb1     	movk	w17, #0x7e65
    9470: 72af70f1     	movk	w17, #0x7b87, lsl #16
    9474: 6b11021f     	cmp	w16, w17
    9478: 54000040     	b.eq	0x9480 <prct_mode_store+0x98>
    947c: d4304500     	brk	#0x8228
    9480: d63f0100     	blr	x8
    9484: 910922e0     	add	x0, x23, #0x248
    9488: 94000000     	bl	0x9488 <prct_mode_store+0xa0>
		0000000000009488:  R_AARCH64_CALL26	mutex_unlock
    948c: d5384108     	mrs	x8, SP_EL0
    9490: f9438908     	ldr	x8, [x8, #0x710]
    9494: f94007e9     	ldr	x9, [sp, #0x8]
    9498: eb09011f     	cmp	x8, x9
    949c: 54000121     	b.ne	0x94c0 <prct_mode_store+0xd8>
    94a0: aa1303e0     	mov	x0, x19
    94a4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    94a8: f94013f7     	ldr	x23, [sp, #0x20]
    94ac: a94357f6     	ldp	x22, x21, [sp, #0x30]
    94b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    94b4: 910143ff     	add	sp, sp, #0x50
    94b8: d50323bf     	autiasp
    94bc: d65f03c0     	ret
    94c0: 94000000     	bl	0x94c0 <prct_mode_store+0xd8>
		00000000000094c0:  R_AARCH64_CALL26	__stack_chk_fail
