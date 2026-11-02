
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000037e4 <aw9620x_irq_handle_func>:
    37e4: d503233f     	paciasp
    37e8: d101c3ff     	sub	sp, sp, #0x70
    37ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    37f0: a9026ffc     	stp	x28, x27, [sp, #0x20]
    37f4: a90367fa     	stp	x26, x25, [sp, #0x30]
    37f8: a9045ff8     	stp	x24, x23, [sp, #0x40]
    37fc: a90557f6     	stp	x22, x21, [sp, #0x50]
    3800: a9064ff4     	stp	x20, x19, [sp, #0x60]
    3804: 910043fd     	add	x29, sp, #0x10
    3808: d5384108     	mrs	x8, SP_EL0
    380c: 910013e2     	add	x2, sp, #0x4
    3810: 52888201     	mov	w1, #0x4410             // =17424
    3814: f9438908     	ldr	x8, [x8, #0x710]
    3818: aa0003f3     	mov	x19, x0
    381c: f90007e8     	str	x8, [sp, #0x8]
    3820: f90003ff     	str	xzr, [sp]
    3824: 940000b7     	bl	0x3b00 <aw9620x_i2c_read>
    3828: 37f81160     	tbnz	w0, #0x1f, 0x3a54 <aw9620x_irq_handle_func+0x270>
    382c: 394013e8     	ldrb	w8, [sp, #0x4]
    3830: 36000108     	tbz	w8, #0x0, 0x3850 <aw9620x_irq_handle_func+0x6c>
    3834: b9400a68     	ldr	w8, [x19, #0x8]
    3838: 7100091f     	cmp	w8, #0x2
    383c: 54001602     	b.hs	0x3afc <aw9620x_irq_handle_func+0x318>
    3840: 90000009     	adrp	x9, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003840:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    3844: 91000129     	add	x9, x9, #0x0
		0000000000003844:  R_AARCH64_ADD_ABS_LO12_NC	.bss
    3848: 5280002a     	mov	w10, #0x1               // =1
    384c: 3828692a     	strb	w10, [x9, x8]
    3850: 910003e2     	mov	x2, sp
    3854: aa1303e0     	mov	x0, x19
    3858: 52834301     	mov	w1, #0x1a18             // =6680
    385c: 940000a9     	bl	0x3b00 <aw9620x_i2c_read>
    3860: 37f810c0     	tbnz	w0, #0x1f, 0x3a78 <aw9620x_irq_handle_func+0x294>
    3864: b94003fb     	ldr	w27, [sp]
    3868: 2a1f03fa     	mov	w26, wzr
    386c: 90000014     	adrp	x20, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000386c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    3870: 91000294     	add	x20, x20, #0x0
		0000000000003870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    3874: 90000016     	adrp	x22, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x377e
    3878: 910002d6     	add	x22, x22, #0x0
		0000000000003878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x377e
    387c: 90000017     	adrp	x23, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000387c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c6
    3880: 910002f7     	add	x23, x23, #0x0
		0000000000003880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c6
    3884: 90000018     	adrp	x24, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd32
    3888: 91000318     	add	x24, x24, #0x0
		0000000000003888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd32
    388c: 92802ffc     	mov	x28, #-0x180            // =-384
    3890: 90000019     	adrp	x25, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec1
    3894: 91000339     	add	x25, x25, #0x0
		0000000000003894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec1
    3898: 14000014     	b	0x38e8 <aw9620x_irq_handle_func+0x104>
    389c: 8b1c0108     	add	x8, x8, x28
    38a0: 52800061     	mov	w1, #0x3                // =3
    38a4: 52800322     	mov	w2, #0x19               // =25
    38a8: f940c500     	ldr	x0, [x8, #0x188]
    38ac: 52800063     	mov	w3, #0x3                // =3
    38b0: 94000000     	bl	0x38b0 <aw9620x_irq_handle_func+0xcc>
		00000000000038b0:  R_AARCH64_CALL26	input_event
    38b4: f9410268     	ldr	x8, [x19, #0x200]
    38b8: 2a1f03e1     	mov	w1, wzr
    38bc: 2a1f03e2     	mov	w2, wzr
    38c0: 2a1f03e3     	mov	w3, wzr
    38c4: 8b1c0108     	add	x8, x8, x28
    38c8: f940c500     	ldr	x0, [x8, #0x188]
    38cc: 94000000     	bl	0x38cc <aw9620x_irq_handle_func+0xe8>
		00000000000038cc:  R_AARCH64_CALL26	input_event
    38d0: f9410268     	ldr	x8, [x19, #0x200]
    38d4: 8b1c0108     	add	x8, x8, x28
    38d8: b9018515     	str	w21, [x8, #0x184]
    38dc: b100c39c     	adds	x28, x28, #0x30
    38e0: 1100075a     	add	w26, w26, #0x1
    38e4: 54000dc0     	b.eq	0x3a9c <aw9620x_irq_handle_func+0x2b8>
    38e8: f9410268     	ldr	x8, [x19, #0x200]
    38ec: 8b1c0109     	add	x9, x8, x28
    38f0: 3946012a     	ldrb	w10, [x9, #0x180]
    38f4: 34ffff4a     	cbz	w10, 0x38dc <aw9620x_irq_handle_func+0xf8>
    38f8: 321d034a     	orr	w10, w26, #0x8
    38fc: 1ada276b     	lsr	w11, w27, w26
    3900: b9418529     	ldr	w9, [x9, #0x184]
    3904: 1aca276a     	lsr	w10, w27, w10
    3908: 12000175     	and	w21, w11, #0x1
    390c: 331f0155     	bfi	w21, w10, #1, #1
    3910: 6b15013f     	cmp	w9, w21
    3914: 54fffe40     	b.eq	0x38dc <aw9620x_irq_handle_func+0xf8>
    3918: 71000ebf     	cmp	w21, #0x3
    391c: 54fffc00     	b.eq	0x389c <aw9620x_irq_handle_func+0xb8>
    3920: 710006bf     	cmp	w21, #0x1
    3924: 54000320     	b.eq	0x3988 <aw9620x_irq_handle_func+0x1a4>
    3928: 35000d75     	cbnz	w21, 0x3ad4 <aw9620x_irq_handle_func+0x2f0>
    392c: 8b1c0108     	add	x8, x8, x28
    3930: 52800061     	mov	w1, #0x3                // =3
    3934: 52800322     	mov	w2, #0x19               // =25
    3938: f940c500     	ldr	x0, [x8, #0x188]
    393c: 2a1f03e3     	mov	w3, wzr
    3940: 94000000     	bl	0x3940 <aw9620x_irq_handle_func+0x15c>
		0000000000003940:  R_AARCH64_CALL26	input_event
    3944: b9400a68     	ldr	w8, [x19, #0x8]
    3948: 7100051f     	cmp	w8, #0x1
    394c: 540004c0     	b.eq	0x39e4 <aw9620x_irq_handle_func+0x200>
    3950: 35fffb28     	cbnz	w8, 0x38b4 <aw9620x_irq_handle_func+0xd0>
    3954: f9410268     	ldr	x8, [x19, #0x200]
    3958: 52800021     	mov	w1, #0x1                // =1
    395c: 52800822     	mov	w2, #0x41               // =65
    3960: 2a1f03e3     	mov	w3, wzr
    3964: 8b1c0108     	add	x8, x8, x28
    3968: f940c500     	ldr	x0, [x8, #0x188]
    396c: 94000000     	bl	0x396c <aw9620x_irq_handle_func+0x188>
		000000000000396c:  R_AARCH64_CALL26	input_event
    3970: f9401a61     	ldr	x1, [x19, #0x30]
    3974: aa1403e0     	mov	x0, x20
    3978: aa1903e2     	mov	x2, x25
    397c: aa1603e3     	mov	x3, x22
    3980: 52814fa4     	mov	w4, #0xa7d              // =2685
    3984: 14000032     	b	0x3a4c <aw9620x_irq_handle_func+0x268>
    3988: 8b1c0108     	add	x8, x8, x28
    398c: 52800061     	mov	w1, #0x3                // =3
    3990: 52800322     	mov	w2, #0x19               // =25
    3994: f940c500     	ldr	x0, [x8, #0x188]
    3998: 52800023     	mov	w3, #0x1                // =1
    399c: 94000000     	bl	0x399c <aw9620x_irq_handle_func+0x1b8>
		000000000000399c:  R_AARCH64_CALL26	input_event
    39a0: b9400a68     	ldr	w8, [x19, #0x8]
    39a4: 7100051f     	cmp	w8, #0x1
    39a8: 54000380     	b.eq	0x3a18 <aw9620x_irq_handle_func+0x234>
    39ac: 35fff848     	cbnz	w8, 0x38b4 <aw9620x_irq_handle_func+0xd0>
    39b0: f9410268     	ldr	x8, [x19, #0x200]
    39b4: 52800021     	mov	w1, #0x1                // =1
    39b8: 52800822     	mov	w2, #0x41               // =65
    39bc: 52800023     	mov	w3, #0x1                // =1
    39c0: 8b1c0108     	add	x8, x8, x28
    39c4: f940c500     	ldr	x0, [x8, #0x188]
    39c8: 94000000     	bl	0x39c8 <aw9620x_irq_handle_func+0x1e4>
		00000000000039c8:  R_AARCH64_CALL26	input_event
    39cc: f9401a61     	ldr	x1, [x19, #0x30]
    39d0: aa1403e0     	mov	x0, x20
    39d4: aa1703e2     	mov	x2, x23
    39d8: aa1603e3     	mov	x3, x22
    39dc: 52815124     	mov	w4, #0xa89              // =2697
    39e0: 1400001b     	b	0x3a4c <aw9620x_irq_handle_func+0x268>
    39e4: f9410268     	ldr	x8, [x19, #0x200]
    39e8: 52800021     	mov	w1, #0x1                // =1
    39ec: 52800842     	mov	w2, #0x42               // =66
    39f0: 2a1f03e3     	mov	w3, wzr
    39f4: 8b1c0108     	add	x8, x8, x28
    39f8: f940c500     	ldr	x0, [x8, #0x188]
    39fc: 94000000     	bl	0x39fc <aw9620x_irq_handle_func+0x218>
		00000000000039fc:  R_AARCH64_CALL26	input_event
    3a00: f9401a61     	ldr	x1, [x19, #0x30]
    3a04: aa1403e0     	mov	x0, x20
    3a08: aa1803e2     	mov	x2, x24
    3a0c: aa1603e3     	mov	x3, x22
    3a10: 52815044     	mov	w4, #0xa82              // =2690
    3a14: 1400000e     	b	0x3a4c <aw9620x_irq_handle_func+0x268>
    3a18: f9410268     	ldr	x8, [x19, #0x200]
    3a1c: 52800021     	mov	w1, #0x1                // =1
    3a20: 52800842     	mov	w2, #0x42               // =66
    3a24: 52800023     	mov	w3, #0x1                // =1
    3a28: 8b1c0108     	add	x8, x8, x28
    3a2c: f940c500     	ldr	x0, [x8, #0x188]
    3a30: 94000000     	bl	0x3a30 <aw9620x_irq_handle_func+0x24c>
		0000000000003a30:  R_AARCH64_CALL26	input_event
    3a34: f9401a61     	ldr	x1, [x19, #0x30]
    3a38: aa1403e0     	mov	x0, x20
    3a3c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x169e
    3a40: 91000042     	add	x2, x2, #0x0
		0000000000003a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x169e
    3a44: aa1603e3     	mov	x3, x22
    3a48: 528151a4     	mov	w4, #0xa8d              // =2701
    3a4c: 94000000     	bl	0x3a4c <aw9620x_irq_handle_func+0x268>
		0000000000003a4c:  R_AARCH64_CALL26	_dev_printk
    3a50: 17ffff99     	b	0x38b4 <aw9620x_irq_handle_func+0xd0>
    3a54: f9401a61     	ldr	x1, [x19, #0x30]
    3a58: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3a5c: 91000000     	add	x0, x0, #0x0
		0000000000003a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3a60: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x252a
    3a64: 91000042     	add	x2, x2, #0x0
		0000000000003a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x252a
    3a68: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x377e
    3a6c: 91000063     	add	x3, x3, #0x0
		0000000000003a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x377e
    3a70: 52814c24     	mov	w4, #0xa61              // =2657
    3a74: 14000009     	b	0x3a98 <aw9620x_irq_handle_func+0x2b4>
    3a78: f9401a61     	ldr	x1, [x19, #0x30]
    3a7c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3a80: 91000000     	add	x0, x0, #0x0
		0000000000003a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3a84: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x252a
    3a88: 91000042     	add	x2, x2, #0x0
		0000000000003a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x252a
    3a8c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x377e
    3a90: 91000063     	add	x3, x3, #0x0
		0000000000003a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x377e
    3a94: 52814d64     	mov	w4, #0xa6b              // =2667
    3a98: 94000000     	bl	0x3a98 <aw9620x_irq_handle_func+0x2b4>
		0000000000003a98:  R_AARCH64_CALL26	_dev_printk
    3a9c: d5384108     	mrs	x8, SP_EL0
    3aa0: f9438908     	ldr	x8, [x8, #0x710]
    3aa4: f94007e9     	ldr	x9, [sp, #0x8]
    3aa8: eb09011f     	cmp	x8, x9
    3aac: 54000261     	b.ne	0x3af8 <aw9620x_irq_handle_func+0x314>
    3ab0: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    3ab4: a94557f6     	ldp	x22, x21, [sp, #0x50]
    3ab8: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    3abc: a94367fa     	ldp	x26, x25, [sp, #0x30]
    3ac0: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    3ac4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3ac8: 9101c3ff     	add	sp, sp, #0x70
    3acc: d50323bf     	autiasp
    3ad0: d65f03c0     	ret
    3ad4: f9401a61     	ldr	x1, [x19, #0x30]
    3ad8: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3adc: 91000000     	add	x0, x0, #0x0
		0000000000003adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3ae0: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10dc
    3ae4: 91000042     	add	x2, x2, #0x0
		0000000000003ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10dc
    3ae8: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x377e
    3aec: 91000063     	add	x3, x3, #0x0
		0000000000003aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x377e
    3af0: 52815284     	mov	w4, #0xa94              // =2708
    3af4: 17ffffe9     	b	0x3a98 <aw9620x_irq_handle_func+0x2b4>
    3af8: 94000000     	bl	0x3af8 <aw9620x_irq_handle_func+0x314>
		0000000000003af8:  R_AARCH64_CALL26	__stack_chk_fail
    3afc: d42aa240     	brk	#0x5512
