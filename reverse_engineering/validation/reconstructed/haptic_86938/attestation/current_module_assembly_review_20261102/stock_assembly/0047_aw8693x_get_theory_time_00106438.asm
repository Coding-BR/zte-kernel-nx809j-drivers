
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003618 <aw8693x_get_theory_time>:
    3618: d503233f     	paciasp
    361c: d100c3ff     	sub	sp, sp, #0x30
    3620: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3624: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3628: 910043fd     	add	x29, sp, #0x10
    362c: d5384108     	mrs	x8, SP_EL0
    3630: 910013e2     	add	x2, sp, #0x4
    3634: 528008c1     	mov	w1, #0x46               // =70
    3638: f9438908     	ldr	x8, [x8, #0x710]
    363c: 52800023     	mov	w3, #0x1                // =1
    3640: aa0003f3     	mov	x19, x0
    3644: f90007e8     	str	x8, [sp, #0x8]
    3648: 390013ff     	strb	wzr, [sp, #0x4]
    364c: 94000000     	bl	0x364c <aw8693x_get_theory_time+0x34>
		000000000000364c:  R_AARCH64_CALL26	i2c_r_bytes
    3650: 394013e8     	ldrb	w8, [sp, #0x4]
    3654: 121b0508     	and	w8, w8, #0x60
    3658: 7101011f     	cmp	w8, #0x40
    365c: 54000100     	b.eq	0x367c <aw8693x_get_theory_time+0x64>
    3660: 7100811f     	cmp	w8, #0x20
    3664: 54000080     	b.eq	0x3674 <aw8693x_get_theory_time+0x5c>
    3668: 35000168     	cbnz	w8, 0x3694 <aw8693x_get_theory_time+0x7c>
    366c: 52800308     	mov	w8, #0x18               // =24
    3670: 14000004     	b	0x3680 <aw8693x_get_theory_time+0x68>
    3674: 52800608     	mov	w8, #0x30               // =48
    3678: 14000002     	b	0x3680 <aw8693x_get_theory_time+0x68>
    367c: 52800188     	mov	w8, #0xc                // =12
    3680: b9407a69     	ldr	w9, [x19, #0x78]
    3684: 52807d0a     	mov	w10, #0x3e8             // =1000
    3688: 1b0a7d29     	mul	w9, w9, w10
    368c: 1ac80934     	udiv	w20, w9, w8
    3690: 14000002     	b	0x3698 <aw8693x_get_theory_time+0x80>
    3694: aa1f03f4     	mov	x20, xzr
    3698: f9405264     	ldr	x4, [x19, #0xa0]
    369c: 90000000     	adrp	x0, 0x3000 <aw8693x_get_wav_loop+0x30>
		000000000000369c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5d
    36a0: 91000000     	add	x0, x0, #0x0
		00000000000036a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5d
    36a4: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		00000000000036a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    36a8: 91000021     	add	x1, x1, #0x0
		00000000000036a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    36ac: 90000003     	adrp	x3, 0x3000 <aw8693x_get_wav_loop+0x30>
		00000000000036ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10fd
    36b0: 91000063     	add	x3, x3, #0x0
		00000000000036b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10fd
    36b4: 5280d402     	mov	w2, #0x6a0              // =1696
    36b8: aa1403e5     	mov	x5, x20
    36bc: 94000000     	bl	0x36bc <aw8693x_get_theory_time+0xa4>
		00000000000036bc:  R_AARCH64_CALL26	_printk
    36c0: d5384108     	mrs	x8, SP_EL0
    36c4: f9438908     	ldr	x8, [x8, #0x710]
    36c8: f94007e9     	ldr	x9, [sp, #0x8]
    36cc: eb09011f     	cmp	x8, x9
    36d0: 540000e1     	b.ne	0x36ec <aw8693x_get_theory_time+0xd4>
    36d4: aa1403e0     	mov	x0, x20
    36d8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    36dc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    36e0: 9100c3ff     	add	sp, sp, #0x30
    36e4: d50323bf     	autiasp
    36e8: d65f03c0     	ret
    36ec: 94000000     	bl	0x36ec <aw8693x_get_theory_time+0xd4>
		00000000000036ec:  R_AARCH64_CALL26	__stack_chk_fail
