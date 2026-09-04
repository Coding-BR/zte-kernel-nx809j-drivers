
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004678 <aw22xxx_cfg_loaded>:
    4678: d503233f     	paciasp
    467c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    4680: a90167fa     	stp	x26, x25, [sp, #0x10]
    4684: a9025ff8     	stp	x24, x23, [sp, #0x20]
    4688: a90357f6     	stp	x22, x21, [sp, #0x30]
    468c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    4690: 910003fd     	mov	x29, sp
    4694: aa0103f3     	mov	x19, x1
    4698: aa0003f4     	mov	x20, x0
    469c: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000469c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    46a0: 91000000     	add	x0, x0, #0x0
		00000000000046a0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    46a4: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000046a4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1515
    46a8: 91000021     	add	x1, x1, #0x0
		00000000000046a8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1515
    46ac: 94000000     	bl	0x46ac <aw22xxx_cfg_loaded+0x34>
		00000000000046ac:  R_AARCH64_CALL26	_printk
    46b0: b9430262     	ldr	w2, [x19, #0x300]
    46b4: b5000134     	cbnz	x20, 0x46d8 <aw22xxx_cfg_loaded+0x60>
    46b8: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000046b8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x3b4
    46bc: 91000000     	add	x0, x0, #0x0
		00000000000046bc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x3b4
    46c0: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000046c0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1515
    46c4: 91000021     	add	x1, x1, #0x0
		00000000000046c4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1515
    46c8: 94000000     	bl	0x46c8 <aw22xxx_cfg_loaded+0x50>
		00000000000046c8:  R_AARCH64_CALL26	_printk
    46cc: aa1f03e0     	mov	x0, xzr
    46d0: 94000000     	bl	0x46d0 <aw22xxx_cfg_loaded+0x58>
		00000000000046d0:  R_AARCH64_CALL26	release_firmware
    46d4: 14000021     	b	0x4758 <aw22xxx_cfg_loaded+0xe0>
    46d8: f9400283     	ldr	x3, [x20]
    46dc: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000046dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x3d8
    46e0: 91000000     	add	x0, x0, #0x0
		00000000000046e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x3d8
    46e4: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		00000000000046e4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1515
    46e8: 91000021     	add	x1, x1, #0x0
		00000000000046e8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1515
    46ec: 94000000     	bl	0x46ec <aw22xxx_cfg_loaded+0x74>
		00000000000046ec:  R_AARCH64_CALL26	_printk
    46f0: f9400288     	ldr	x8, [x20]
    46f4: b5000408     	cbnz	x8, 0x4774 <aw22xxx_cfg_loaded+0xfc>
    46f8: aa1403e0     	mov	x0, x20
    46fc: 94000000     	bl	0x46fc <aw22xxx_cfg_loaded+0x84>
		00000000000046fc:  R_AARCH64_CALL26	release_firmware
    4700: b942f268     	ldr	w8, [x19, #0x2f0]
    4704: 7100311f     	cmp	w8, #0xc
    4708: 54000a48     	b.hi	0x4850 <aw22xxx_cfg_loaded+0x1d8>
    470c: 90000009     	adrp	x9, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000470c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_base+0x140
    4710: 91000129     	add	x9, x9, #0x0
		0000000000004710:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_base+0x140
    4714: aa1303e0     	mov	x0, x19
    4718: 38686928     	ldrb	w8, [x9, x8]
    471c: 528001e9     	mov	w9, #0xf                // =15
    4720: 52801fe1     	mov	w1, #0xff               // =255
    4724: 2a1f03e2     	mov	w2, wzr
    4728: 71003d1f     	cmp	w8, #0xf
    472c: 1a893114     	csel	w20, w8, w9, lo
    4730: 94000000     	bl	0x4730 <aw22xxx_cfg_loaded+0xb8>
		0000000000004730:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4734: aa1303e0     	mov	x0, x19
    4738: 52800161     	mov	w1, #0xb                // =11
    473c: 2a1403e2     	mov	w2, w20
    4740: 94000000     	bl	0x4740 <aw22xxx_cfg_loaded+0xc8>
		0000000000004740:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4744: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004744:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x850
    4748: 91000000     	add	x0, x0, #0x0
		0000000000004748:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x850
    474c: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		000000000000474c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1515
    4750: 91000021     	add	x1, x1, #0x0
		0000000000004750:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1515
    4754: 94000000     	bl	0x4754 <aw22xxx_cfg_loaded+0xdc>
		0000000000004754:  R_AARCH64_CALL26	_printk
    4758: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    475c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4760: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    4764: a94167fa     	ldp	x26, x25, [sp, #0x10]
    4768: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    476c: d50323bf     	autiasp
    4770: d65f03c0     	ret
    4774: aa1f03fa     	mov	x26, xzr
    4778: 2a1f03f6     	mov	w22, wzr
    477c: 910c3275     	add	x21, x19, #0x30c
    4780: 52800057     	mov	w23, #0x2               // =2
    4784: 52801578     	mov	w24, #0xab              // =171
    4788: 52800219     	mov	w25, #0x10              // =16
    478c: 14000009     	b	0x47b0 <aw22xxx_cfg_loaded+0x138>
    4790: 39400502     	ldrb	w2, [x8, #0x1]
    4794: aa1303e0     	mov	x0, x19
    4798: 94000000     	bl	0x4798 <aw22xxx_cfg_loaded+0x120>
		0000000000004798:  R_AARCH64_CALL26	aw22xxx_i2c_write
    479c: 93407efa     	sxtw	x26, w23
    47a0: f9400288     	ldr	x8, [x20]
    47a4: 11000af7     	add	w23, w23, #0x2
    47a8: eb1a011f     	cmp	x8, x26
    47ac: 54fffa69     	b.ls	0x46f8 <aw22xxx_cfg_loaded+0x80>
    47b0: f9400688     	ldr	x8, [x20, #0x8]
    47b4: 8b1a0108     	add	x8, x8, x26
    47b8: 39400101     	ldrb	w1, [x8]
    47bc: 7103fc3f     	cmp	w1, #0xff
    47c0: 54000041     	b.ne	0x47c8 <aw22xxx_cfg_loaded+0x150>
    47c4: 39400516     	ldrb	w22, [x8, #0x1]
    47c8: 394c1269     	ldrb	w9, [x19, #0x304]
    47cc: 7100053f     	cmp	w9, #0x1
    47d0: 54000200     	b.eq	0x4810 <aw22xxx_cfg_loaded+0x198>
    47d4: 710006df     	cmp	w22, #0x1
    47d8: 540001c1     	b.ne	0x4810 <aw22xxx_cfg_loaded+0x198>
    47dc: 51004029     	sub	w9, w1, #0x10
    47e0: 71006d3f     	cmp	w9, #0x1b
    47e4: 54fffd62     	b.hs	0x4790 <aw22xxx_cfg_loaded+0x118>
    47e8: 12001d28     	and	w8, w9, #0xff
    47ec: 1b187d08     	mul	w8, w8, w24
    47f0: 53097d08     	lsr	w8, w8, #9
    47f4: 0b08050a     	add	w10, w8, w8, lsl #1
    47f8: b8685aa8     	ldr	w8, [x21, w8, uxtw #2]
    47fc: 4b0a0129     	sub	w9, w9, w10
    4800: 531d1129     	ubfiz	w9, w9, #3, #5
    4804: 4b090329     	sub	w9, w25, w9
    4808: 1ac92502     	lsr	w2, w8, w9
    480c: 17ffffe2     	b	0x4794 <aw22xxx_cfg_loaded+0x11c>
    4810: 39400502     	ldrb	w2, [x8, #0x1]
    4814: aa1303e0     	mov	x0, x19
    4818: 94000000     	bl	0x4818 <aw22xxx_cfg_loaded+0x1a0>
		0000000000004818:  R_AARCH64_CALL26	aw22xxx_i2c_write
    481c: 35fffc16     	cbnz	w22, 0x479c <aw22xxx_cfg_loaded+0x124>
    4820: f9400688     	ldr	x8, [x20, #0x8]
    4824: 8b1a0108     	add	x8, x8, x26
    4828: 39400109     	ldrb	w9, [x8]
    482c: 7100093f     	cmp	w9, #0x2
    4830: 54fffb61     	b.ne	0x479c <aw22xxx_cfg_loaded+0x124>
    4834: 39400508     	ldrb	w8, [x8, #0x1]
    4838: 3607fb28     	tbz	w8, #0x0, 0x479c <aw22xxx_cfg_loaded+0x124>
    483c: 5280fa00     	mov	w0, #0x7d0              // =2000
    4840: 52813881     	mov	w1, #0x9c4              // =2500
    4844: 52800042     	mov	w2, #0x2                // =2
    4848: 94000000     	bl	0x4848 <aw22xxx_cfg_loaded+0x1d0>
		0000000000004848:  R_AARCH64_CALL26	usleep_range_state
    484c: 17ffffd4     	b	0x479c <aw22xxx_cfg_loaded+0x124>
    4850: d42aa240     	brk	#0x5512
