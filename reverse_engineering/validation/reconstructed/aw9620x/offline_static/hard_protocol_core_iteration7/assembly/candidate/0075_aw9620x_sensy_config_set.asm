
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a360 <aw9620x_sensy_config_set>:
    a360: d503233f     	paciasp
    a364: d10103ff     	sub	sp, sp, #0x40
    a368: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a36c: f90013f5     	str	x21, [sp, #0x20]
    a370: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a374: 910043fd     	add	x29, sp, #0x10
    a378: d5384109     	mrs	x9, SP_EL0
    a37c: aa0203e8     	mov	x8, x2
    a380: 910013e2     	add	x2, sp, #0x4
    a384: f9438929     	ldr	x9, [x9, #0x710]
    a388: 2a1f03e1     	mov	w1, wzr
    a38c: aa0303f3     	mov	x19, x3
    a390: f90007e9     	str	x9, [sp, #0x8]
    a394: f9404c15     	ldr	x21, [x0, #0x98]
    a398: aa0803e0     	mov	x0, x8
    a39c: b90007ff     	str	wzr, [sp, #0x4]
    a3a0: 94000000     	bl	0xa3a0 <aw9620x_sensy_config_set+0x40>
		000000000000a3a0:  R_AARCH64_CALL26	kstrtouint
    a3a4: 340001a0     	cbz	w0, 0xa3d8 <aw9620x_sensy_config_set+0x78>
    a3a8: d5384108     	mrs	x8, SP_EL0
    a3ac: f9438908     	ldr	x8, [x8, #0x710]
    a3b0: f94007e9     	ldr	x9, [sp, #0x8]
    a3b4: eb09011f     	cmp	x8, x9
    a3b8: 540007a1     	b.ne	0xa4ac <aw9620x_sensy_config_set+0x14c>
    a3bc: aa1303e0     	mov	x0, x19
    a3c0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a3c4: f94013f5     	ldr	x21, [sp, #0x20]
    a3c8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a3cc: 910103ff     	add	sp, sp, #0x40
    a3d0: d50323bf     	autiasp
    a3d4: d65f03c0     	ret
    a3d8: f85f82a1     	ldur	x1, [x21, #-0x8]
    a3dc: b94007e5     	ldr	w5, [sp, #0x4]
    a3e0: 90000000     	adrp	x0, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a3e0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    a3e4: 91000000     	add	x0, x0, #0x0
		000000000000a3e4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    a3e8: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a3e8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2d32
    a3ec: 91000042     	add	x2, x2, #0x0
		000000000000a3ec:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2d32
    a3f0: 90000003     	adrp	x3, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a3f0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1983
    a3f4: 91000063     	add	x3, x3, #0x0
		000000000000a3f4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1983
    a3f8: 5281fc44     	mov	w4, #0xfe2              // =4066
    a3fc: d100e2b4     	sub	x20, x21, #0x38
    a400: 94000000     	bl	0xa400 <aw9620x_sensy_config_set+0xa0>
		000000000000a400:  R_AARCH64_CALL26	_dev_printk
    a404: 90000000     	adrp	x0, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a404:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x40
    a408: 91000000     	add	x0, x0, #0x0
		000000000000a408:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x40
    a40c: 94000000     	bl	0xa40c <aw9620x_sensy_config_set+0xac>
		000000000000a40c:  R_AARCH64_CALL26	mutex_lock
    a410: b94007e8     	ldr	w8, [sp, #0x4]
    a414: 71000d1f     	cmp	w8, #0x3
    a418: 54000160     	b.eq	0xa444 <aw9620x_sensy_config_set+0xe4>
    a41c: 7100091f     	cmp	w8, #0x2
    a420: 540001e0     	b.eq	0xa45c <aw9620x_sensy_config_set+0xfc>
    a424: 7100051f     	cmp	w8, #0x1
    a428: 540002e1     	b.ne	0xa484 <aw9620x_sensy_config_set+0x124>
    a42c: aa1403e0     	mov	x0, x20
    a430: 5283a401     	mov	w1, #0x1d20             // =7456
    a434: 528001a2     	mov	w2, #0xd                // =13
    a438: 97ffdcf6     	bl	0x1810 <aw9620x_i2c_write>
		000000000000a438:  R_AARCH64_CALL26	aw9620x_i2c_write
    a43c: 52800028     	mov	w8, #0x1                // =1
    a440: 1400000c     	b	0xa470 <aw9620x_sensy_config_set+0x110>
    a444: aa1403e0     	mov	x0, x20
    a448: 5283a401     	mov	w1, #0x1d20             // =7456
    a44c: 52800162     	mov	w2, #0xb                // =11
    a450: 97ffdcf0     	bl	0x1810 <aw9620x_i2c_write>
		000000000000a450:  R_AARCH64_CALL26	aw9620x_i2c_write
    a454: 52800068     	mov	w8, #0x3                // =3
    a458: 14000006     	b	0xa470 <aw9620x_sensy_config_set+0x110>
    a45c: aa1403e0     	mov	x0, x20
    a460: 5283a401     	mov	w1, #0x1d20             // =7456
    a464: 52800182     	mov	w2, #0xc                // =12
    a468: 97ffdcea     	bl	0x1810 <aw9620x_i2c_write>
		000000000000a468:  R_AARCH64_CALL26	aw9620x_i2c_write
    a46c: 52800048     	mov	w8, #0x2                // =2
    a470: 3909a2a8     	strb	w8, [x21, #0x268]
    a474: 90000000     	adrp	x0, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a474:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_bss_base+0x40
    a478: 91000000     	add	x0, x0, #0x0
		000000000000a478:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_bss_base+0x40
    a47c: 94000000     	bl	0xa47c <aw9620x_sensy_config_set+0x11c>
		000000000000a47c:  R_AARCH64_CALL26	mutex_unlock
    a480: 17ffffca     	b	0xa3a8 <aw9620x_sensy_config_set+0x48>
    a484: f85f82a1     	ldur	x1, [x21, #-0x8]
    a488: 90000000     	adrp	x0, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a488:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    a48c: 91000000     	add	x0, x0, #0x0
		000000000000a48c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    a490: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a490:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3be8
    a494: 91000042     	add	x2, x2, #0x0
		000000000000a494:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3be8
    a498: 90000003     	adrp	x3, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a498:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1983
    a49c: 91000063     	add	x3, x3, #0x0
		000000000000a49c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1983
    a4a0: 5281fde4     	mov	w4, #0xfef              // =4079
    a4a4: 94000000     	bl	0xa4a4 <aw9620x_sensy_config_set+0x144>
		000000000000a4a4:  R_AARCH64_CALL26	_dev_printk
    a4a8: 17fffff3     	b	0xa474 <aw9620x_sensy_config_set+0x114>
    a4ac: 94000000     	bl	0xa4ac <aw9620x_sensy_config_set+0x14c>
		000000000000a4ac:  R_AARCH64_CALL26	__stack_chk_fail
