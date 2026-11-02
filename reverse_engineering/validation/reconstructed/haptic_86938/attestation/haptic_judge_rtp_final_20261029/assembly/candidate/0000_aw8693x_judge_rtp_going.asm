
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000032c4 <aw8693x_judge_rtp_going>:
    32c4: d503233f     	paciasp
    32c8: d10083ff     	sub	sp, sp, #0x20
    32cc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    32d0: 910043fd     	add	x29, sp, #0x10
    32d4: d5384108     	mrs	x8, SP_EL0
    32d8: 910013e2     	add	x2, sp, #0x4
    32dc: 528007e1     	mov	w1, #0x3f               // =63
    32e0: f9438908     	ldr	x8, [x8, #0x710]
    32e4: 52800023     	mov	w3, #0x1                // =1
    32e8: f90007e8     	str	x8, [sp, #0x8]
    32ec: 390013ff     	strb	wzr, [sp, #0x4]
    32f0: 94000000     	bl	0x32f0 <aw8693x_judge_rtp_going+0x2c>
		00000000000032f0:  R_AARCH64_CALL26	i2c_r_bytes
    32f4: 394013e8     	ldrb	w8, [sp, #0x4]
    32f8: 2a1f03e0     	mov	w0, wzr
    32fc: 7100211f     	cmp	w8, #0x8
    3300: 54000140     	b.eq	0x3328 <aw8693x_judge_rtp_going+0x64>
    3304: d5384108     	mrs	x8, SP_EL0
    3308: f9438908     	ldr	x8, [x8, #0x710]
    330c: f94007e9     	ldr	x9, [sp, #0x8]
    3310: eb09011f     	cmp	x8, x9
    3314: 540001e1     	b.ne	0x3350 <aw8693x_judge_rtp_going+0x8c>
    3318: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    331c: 910083ff     	add	sp, sp, #0x20
    3320: d50323bf     	autiasp
    3324: d65f03c0     	ret
    3328: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x712
    332c: 91000000     	add	x0, x0, #0x0
		000000000000332c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x712
    3330: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3334: 91000021     	add	x1, x1, #0x0
		0000000000003334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3338: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125
    333c: 91000063     	add	x3, x3, #0x0
		000000000000333c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125
    3340: 52807fc2     	mov	w2, #0x3fe              // =1022
    3344: 94000000     	bl	0x3344 <aw8693x_judge_rtp_going+0x80>
		0000000000003344:  R_AARCH64_CALL26	_printk
    3348: 52800020     	mov	w0, #0x1                // =1
    334c: 17ffffee     	b	0x3304 <aw8693x_judge_rtp_going+0x40>
    3350: 94000000     	bl	0x3350 <aw8693x_judge_rtp_going+0x8c>
		0000000000003350:  R_AARCH64_CALL26	__stack_chk_fail
