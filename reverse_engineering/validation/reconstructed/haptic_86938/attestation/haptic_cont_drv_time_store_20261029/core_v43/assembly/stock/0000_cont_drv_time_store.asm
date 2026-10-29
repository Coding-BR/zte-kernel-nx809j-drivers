
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003870 <cont_drv_time_store>:
    3870: d503233f     	paciasp
    3874: d10143ff     	sub	sp, sp, #0x50
    3878: a9027bfd     	stp	x29, x30, [sp, #0x20]
    387c: f9001bf5     	str	x21, [sp, #0x30]
    3880: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3884: 910083fd     	add	x29, sp, #0x20
    3888: d5384109     	mrs	x9, SP_EL0
    388c: aa0203e8     	mov	x8, x2
    3890: aa0303f3     	mov	x19, x3
    3894: f9438929     	ldr	x9, [x9, #0x710]
    3898: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d6
    389c: 91000021     	add	x1, x1, #0x0
		000000000000389c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d6
    38a0: 910043e2     	add	x2, sp, #0x10
    38a4: f81f83a9     	stur	x9, [x29, #-0x8]
    38a8: 910043e9     	add	x9, sp, #0x10
    38ac: f9404c15     	ldr	x21, [x0, #0x98]
    38b0: b27e0123     	orr	x3, x9, #0x4
    38b4: aa0803e0     	mov	x0, x8
    38b8: f9000bff     	str	xzr, [sp, #0x10]
    38bc: 94000000     	bl	0x38bc <cont_drv_time_store+0x4c>
		00000000000038bc:  R_AARCH64_CALL26	sscanf
    38c0: 7100081f     	cmp	w0, #0x2
    38c4: 54000221     	b.ne	0x3908 <cont_drv_time_store+0x98>
    38c8: 394043e8     	ldrb	w8, [sp, #0x10]
    38cc: 910922a0     	add	x0, x21, #0x248
    38d0: d102a2b4     	sub	x20, x21, #0xa8
    38d4: 390fe2a8     	strb	w8, [x21, #0x3f8]
    38d8: 394053e9     	ldrb	w9, [sp, #0x14]
    38dc: 390fe6a9     	strb	w9, [x21, #0x3f9]
    38e0: 390033e8     	strb	w8, [sp, #0xc]
    38e4: 390037e9     	strb	w9, [sp, #0xd]
    38e8: 94000000     	bl	0x38e8 <cont_drv_time_store+0x78>
		00000000000038e8:  R_AARCH64_CALL26	mutex_lock
    38ec: 910033e2     	add	x2, sp, #0xc
    38f0: aa1403e0     	mov	x0, x20
    38f4: 528003e1     	mov	w1, #0x1f               // =31
    38f8: 52800043     	mov	w3, #0x2                // =2
    38fc: 94000000     	bl	0x38fc <cont_drv_time_store+0x8c>
		00000000000038fc:  R_AARCH64_CALL26	i2c_w_bytes
    3900: 910922a0     	add	x0, x21, #0x248
    3904: 94000000     	bl	0x3904 <cont_drv_time_store+0x94>
		0000000000003904:  R_AARCH64_CALL26	mutex_unlock
    3908: d5384108     	mrs	x8, SP_EL0
    390c: f9438908     	ldr	x8, [x8, #0x710]
    3910: f85f83a9     	ldur	x9, [x29, #-0x8]
    3914: eb09011f     	cmp	x8, x9
    3918: 54000101     	b.ne	0x3938 <cont_drv_time_store+0xc8>
    391c: aa1303e0     	mov	x0, x19
    3920: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3924: f9401bf5     	ldr	x21, [sp, #0x30]
    3928: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    392c: 910143ff     	add	sp, sp, #0x50
    3930: d50323bf     	autiasp
    3934: d65f03c0     	ret
    3938: 94000000     	bl	0x3938 <cont_drv_time_store+0xc8>
		0000000000003938:  R_AARCH64_CALL26	__stack_chk_fail
