
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000352c <aw8693x_play_go>:
    352c: d503233f     	paciasp
    3530: d100c3ff     	sub	sp, sp, #0x30
    3534: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3538: a9024ff4     	stp	x20, x19, [sp, #0x20]
    353c: 910043fd     	add	x29, sp, #0x10
    3540: d5384108     	mrs	x8, SP_EL0
    3544: aa0003f3     	mov	x19, x0
    3548: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4
    354c: 91000000     	add	x0, x0, #0x0
		000000000000354c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4
    3550: f9438908     	ldr	x8, [x8, #0x710]
    3554: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6
    3558: 91000063     	add	x3, x3, #0x0
		0000000000003558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6
    355c: 72000024     	ands	w4, w1, #0x1
    3560: 52800029     	mov	w9, #0x1                // =1
    3564: f90007e8     	str	x8, [sp, #0x8]
    3568: 90000008     	adrp	x8, 0x3000 <f0_show+0xb4>
		0000000000003568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    356c: 91000108     	add	x8, x8, #0x0
		000000000000356c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3570: aa0803e1     	mov	x1, x8
    3574: 52803ae2     	mov	w2, #0x1d7              // =471
    3578: 1a891534     	cinc	w20, w9, eq
    357c: 94000000     	bl	0x357c <aw8693x_play_go+0x50>
		000000000000357c:  R_AARCH64_CALL26	_printk
    3580: 910013e2     	add	x2, sp, #0x4
    3584: aa1303e0     	mov	x0, x19
    3588: 52800121     	mov	w1, #0x9                // =9
    358c: 52800023     	mov	w3, #0x1                // =1
    3590: 390013f4     	strb	w20, [sp, #0x4]
    3594: 94000000     	bl	0x3594 <aw8693x_play_go+0x68>
		0000000000003594:  R_AARCH64_CALL26	i2c_w_bytes
    3598: d5384108     	mrs	x8, SP_EL0
    359c: f9438908     	ldr	x8, [x8, #0x710]
    35a0: f94007e9     	ldr	x9, [sp, #0x8]
    35a4: eb09011f     	cmp	x8, x9
    35a8: 540000c1     	b.ne	0x35c0 <aw8693x_play_go+0x94>
    35ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    35b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    35b4: 9100c3ff     	add	sp, sp, #0x30
    35b8: d50323bf     	autiasp
    35bc: d65f03c0     	ret
    35c0: 94000000     	bl	0x35c0 <aw8693x_play_go+0x94>
		00000000000035c0:  R_AARCH64_CALL26	__stack_chk_fail
