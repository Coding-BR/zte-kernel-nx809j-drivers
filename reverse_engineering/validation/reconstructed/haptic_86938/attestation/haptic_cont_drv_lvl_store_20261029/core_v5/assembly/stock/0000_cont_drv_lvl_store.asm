
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003734 <cont_drv_lvl_store>:
    3734: d503233f     	paciasp
    3738: d10143ff     	sub	sp, sp, #0x50
    373c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3740: f9001bf5     	str	x21, [sp, #0x30]
    3744: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3748: 910083fd     	add	x29, sp, #0x20
    374c: d5384109     	mrs	x9, SP_EL0
    3750: aa0203e8     	mov	x8, x2
    3754: aa0303f3     	mov	x19, x3
    3758: f9438929     	ldr	x9, [x9, #0x710]
    375c: 90000001     	adrp	x1, 0x3000 <aw8693x_get_wav_loop+0x30>
		000000000000375c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d6
    3760: 91000021     	add	x1, x1, #0x0
		0000000000003760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d6
    3764: 910043e2     	add	x2, sp, #0x10
    3768: f81f83a9     	stur	x9, [x29, #-0x8]
    376c: 910043e9     	add	x9, sp, #0x10
    3770: f9404c15     	ldr	x21, [x0, #0x98]
    3774: b27e0123     	orr	x3, x9, #0x4
    3778: aa0803e0     	mov	x0, x8
    377c: f9000bff     	str	xzr, [sp, #0x10]
    3780: 79001bff     	strh	wzr, [sp, #0xc]
    3784: 94000000     	bl	0x3784 <cont_drv_lvl_store+0x50>
		0000000000003784:  R_AARCH64_CALL26	sscanf
    3788: 7100081f     	cmp	w0, #0x2
    378c: 54000361     	b.ne	0x37f8 <cont_drv_lvl_store+0xc4>
    3790: b94013e8     	ldr	w8, [sp, #0x10]
    3794: 910922a0     	add	x0, x21, #0x248
    3798: d102a2b4     	sub	x20, x21, #0xa8
    379c: 390fcaa8     	strb	w8, [x21, #0x3f2]
    37a0: b94017e8     	ldr	w8, [sp, #0x14]
    37a4: 390fcea8     	strb	w8, [x21, #0x3f3]
    37a8: 94000000     	bl	0x37a8 <cont_drv_lvl_store+0x74>
		00000000000037a8:  R_AARCH64_CALL26	mutex_lock
    37ac: 910033e2     	add	x2, sp, #0xc
    37b0: aa1403e0     	mov	x0, x20
    37b4: 528003a1     	mov	w1, #0x1d               // =29
    37b8: 52800023     	mov	w3, #0x1                // =1
    37bc: 94000000     	bl	0x37bc <cont_drv_lvl_store+0x88>
		00000000000037bc:  R_AARCH64_CALL26	i2c_r_bytes
    37c0: 394033e8     	ldrb	w8, [sp, #0xc]
    37c4: 394fcaa9     	ldrb	w9, [x21, #0x3f2]
    37c8: 910033e2     	add	x2, sp, #0xc
    37cc: aa1403e0     	mov	x0, x20
    37d0: 528003a1     	mov	w1, #0x1d               // =29
    37d4: 52800043     	mov	w3, #0x2                // =2
    37d8: 12190108     	and	w8, w8, #0x80
    37dc: 2a080128     	orr	w8, w9, w8
    37e0: 390033e8     	strb	w8, [sp, #0xc]
    37e4: 394fcea8     	ldrb	w8, [x21, #0x3f3]
    37e8: 390037e8     	strb	w8, [sp, #0xd]
    37ec: 94000000     	bl	0x37ec <cont_drv_lvl_store+0xb8>
		00000000000037ec:  R_AARCH64_CALL26	i2c_w_bytes
    37f0: 910922a0     	add	x0, x21, #0x248
    37f4: 94000000     	bl	0x37f4 <cont_drv_lvl_store+0xc0>
		00000000000037f4:  R_AARCH64_CALL26	mutex_unlock
    37f8: d5384108     	mrs	x8, SP_EL0
    37fc: f9438908     	ldr	x8, [x8, #0x710]
    3800: f85f83a9     	ldur	x9, [x29, #-0x8]
    3804: eb09011f     	cmp	x8, x9
    3808: 54000101     	b.ne	0x3828 <cont_drv_lvl_store+0xf4>
    380c: aa1303e0     	mov	x0, x19
    3810: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3814: f9401bf5     	ldr	x21, [sp, #0x30]
    3818: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    381c: 910143ff     	add	sp, sp, #0x50
    3820: d50323bf     	autiasp
    3824: d65f03c0     	ret
    3828: 94000000     	bl	0x3828 <cont_drv_lvl_store+0xf4>
		0000000000003828:  R_AARCH64_CALL26	__stack_chk_fail
