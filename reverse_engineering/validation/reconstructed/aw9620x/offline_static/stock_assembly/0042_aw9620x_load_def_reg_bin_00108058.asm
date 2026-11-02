
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000067d8 <aw9620x_load_def_reg_bin>:
    67d8: d503233f     	paciasp
    67dc: d101c3ff     	sub	sp, sp, #0x70
    67e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    67e4: a9026ffc     	stp	x28, x27, [sp, #0x20]
    67e8: a90367fa     	stp	x26, x25, [sp, #0x30]
    67ec: a9045ff8     	stp	x24, x23, [sp, #0x40]
    67f0: a90557f6     	stp	x22, x21, [sp, #0x50]
    67f4: a9064ff4     	stp	x20, x19, [sp, #0x60]
    67f8: 910043fd     	add	x29, sp, #0x10
    67fc: d5384108     	mrs	x8, SP_EL0
    6800: 90000014     	adrp	x20, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6804: 91000294     	add	x20, x20, #0x0
		0000000000006804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6808: f9438908     	ldr	x8, [x8, #0x710]
    680c: 90000015     	adrp	x21, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000680c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d3
    6810: 910002b5     	add	x21, x21, #0x0
		0000000000006810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d3
    6814: aa0003f3     	mov	x19, x0
    6818: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    681c: 91000042     	add	x2, x2, #0x0
		000000000000681c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    6820: f90007e8     	str	x8, [sp, #0x8]
    6824: aa1503e3     	mov	x3, x21
    6828: 52818504     	mov	w4, #0xc28              // =3112
    682c: f9401801     	ldr	x1, [x0, #0x30]
    6830: aa1403e0     	mov	x0, x20
    6834: f90003ff     	str	xzr, [sp]
    6838: 94000000     	bl	0x6838 <aw9620x_load_def_reg_bin+0x60>
		0000000000006838:  R_AARCH64_CALL26	_dev_printk
    683c: b9400a63     	ldr	w3, [x19, #0x8]
    6840: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d96
    6844: 91000042     	add	x2, x2, #0x0
		0000000000006844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d96
    6848: 910bee60     	add	x0, x19, #0x2fb
    684c: 528003c1     	mov	w1, #0x1e               // =30
    6850: 94000000     	bl	0x6850 <aw9620x_load_def_reg_bin+0x78>
		0000000000006850:  R_AARCH64_CALL26	snprintf
    6854: f9401a61     	ldr	x1, [x19, #0x30]
    6858: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e9
    685c: 91000042     	add	x2, x2, #0x0
		000000000000685c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e9
    6860: 910bee65     	add	x5, x19, #0x2fb
    6864: aa1403e0     	mov	x0, x20
    6868: aa1503e3     	mov	x3, x21
    686c: 528185a4     	mov	w4, #0xc2d              // =3117
    6870: 94000000     	bl	0x6870 <aw9620x_load_def_reg_bin+0x98>
		0000000000006870:  R_AARCH64_CALL26	_dev_printk
    6874: f9401a62     	ldr	x2, [x19, #0x30]
    6878: 910003e0     	mov	x0, sp
    687c: 910bee61     	add	x1, x19, #0x2fb
    6880: 94000000     	bl	0x6880 <aw9620x_load_def_reg_bin+0xa8>
		0000000000006880:  R_AARCH64_CALL26	request_firmware
    6884: f9401a61     	ldr	x1, [x19, #0x30]
    6888: 2a0003f6     	mov	w22, w0
    688c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000688c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1172
    6890: 91000042     	add	x2, x2, #0x0
		0000000000006890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1172
    6894: aa1403e0     	mov	x0, x20
    6898: aa1503e3     	mov	x3, x21
    689c: 528185e4     	mov	w4, #0xc2f              // =3119
    68a0: 2a1603e5     	mov	w5, w22
    68a4: 94000000     	bl	0x68a4 <aw9620x_load_def_reg_bin+0xcc>
		00000000000068a4:  R_AARCH64_CALL26	_dev_printk
    68a8: f9401a61     	ldr	x1, [x19, #0x30]
    68ac: 350002d6     	cbnz	w22, 0x6904 <aw9620x_load_def_reg_bin+0x12c>
    68b0: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000068b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    68b4: 91000000     	add	x0, x0, #0x0
		00000000000068b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    68b8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000068b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186c
    68bc: 91000042     	add	x2, x2, #0x0
		00000000000068bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186c
    68c0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000068c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d3
    68c4: 91000063     	add	x3, x3, #0x0
		00000000000068c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d3
    68c8: 910bee65     	add	x5, x19, #0x2fb
    68cc: 52818684     	mov	w4, #0xc34              // =3124
    68d0: 94000000     	bl	0x68d0 <aw9620x_load_def_reg_bin+0xf8>
		00000000000068d0:  R_AARCH64_CALL26	_dev_printk
    68d4: f94003f7     	ldr	x23, [sp]
    68d8: f9401a61     	ldr	x1, [x19, #0x30]
    68dc: b5000277     	cbnz	x23, 0x6928 <aw9620x_load_def_reg_bin+0x150>
    68e0: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000068e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    68e4: 91000000     	add	x0, x0, #0x0
		00000000000068e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    68e8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000068e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a1
    68ec: 91000042     	add	x2, x2, #0x0
		00000000000068ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a1
    68f0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000068f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    68f4: 91000063     	add	x3, x3, #0x0
		00000000000068f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    68f8: 52817cc4     	mov	w4, #0xbe6              // =3046
    68fc: 94000000     	bl	0x68fc <aw9620x_load_def_reg_bin+0x124>
		00000000000068fc:  R_AARCH64_CALL26	_dev_printk
    6900: 14000125     	b	0x6d94 <aw9620x_load_def_reg_bin+0x5bc>
    6904: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6908: 91000000     	add	x0, x0, #0x0
		0000000000006908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    690c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000690c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c4
    6910: 91000042     	add	x2, x2, #0x0
		0000000000006910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c4
    6914: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d3
    6918: 91000063     	add	x3, x3, #0x0
		0000000000006918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d3
    691c: 910bee65     	add	x5, x19, #0x2fb
    6920: 52818624     	mov	w4, #0xc31              // =3121
    6924: 14000125     	b	0x6db8 <aw9620x_load_def_reg_bin+0x5e0>
    6928: 90000014     	adrp	x20, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    692c: 91000294     	add	x20, x20, #0x0
		000000000000692c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6930: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    6934: 91000000     	add	x0, x0, #0x0
		0000000000006934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    6938: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfdd
    693c: 91000042     	add	x2, x2, #0x0
		000000000000693c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfdd
    6940: aa1403e3     	mov	x3, x20
    6944: 52817d24     	mov	w4, #0xbe9              // =3049
    6948: 94000000     	bl	0x6948 <aw9620x_load_def_reg_bin+0x170>
		0000000000006948:  R_AARCH64_CALL26	_dev_printk
    694c: f9401a61     	ldr	x1, [x19, #0x30]
    6950: b94002e5     	ldr	w5, [x23]
    6954: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6958: 91000000     	add	x0, x0, #0x0
		0000000000006958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    695c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000695c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a1
    6960: 91000042     	add	x2, x2, #0x0
		0000000000006960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a1
    6964: aa1403e3     	mov	x3, x20
    6968: 52817d64     	mov	w4, #0xbeb              // =3051
    696c: 94000000     	bl	0x696c <aw9620x_load_def_reg_bin+0x194>
		000000000000696c:  R_AARCH64_CALL26	_dev_printk
    6970: d503201f     	nop
    6974: f94002e8     	ldr	x8, [x23]
    6978: 52841d09     	mov	w9, #0x20e8             // =8424
    697c: 5281b801     	mov	w1, #0xdc0              // =3520
    6980: 8b090115     	add	x21, x8, x9
    6984: aa1503e0     	mov	x0, x21
    6988: 94000000     	bl	0x6988 <aw9620x_load_def_reg_bin+0x1b0>
		0000000000006988:  R_AARCH64_CALL26	__kmalloc_noprof
    698c: aa0003f4     	mov	x20, x0
    6990: b50003b4     	cbnz	x20, 0x6a04 <aw9620x_load_def_reg_bin+0x22c>
    6994: aa1f03e0     	mov	x0, xzr
    6998: 94000000     	bl	0x6998 <aw9620x_load_def_reg_bin+0x1c0>
		0000000000006998:  R_AARCH64_CALL26	kfree
    699c: aa1703e0     	mov	x0, x23
    69a0: 94000000     	bl	0x69a0 <aw9620x_load_def_reg_bin+0x1c8>
		00000000000069a0:  R_AARCH64_CALL26	release_firmware
    69a4: f9401a61     	ldr	x1, [x19, #0x30]
    69a8: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000069a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    69ac: 91000000     	add	x0, x0, #0x0
		00000000000069ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    69b0: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000069b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba0
    69b4: 91000042     	add	x2, x2, #0x0
		00000000000069b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba0
    69b8: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000069b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    69bc: 91000063     	add	x3, x3, #0x0
		00000000000069bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    69c0: 52817e24     	mov	w4, #0xbf1              // =3057
    69c4: 94000000     	bl	0x69c4 <aw9620x_load_def_reg_bin+0x1ec>
		00000000000069c4:  R_AARCH64_CALL26	_dev_printk
    69c8: 140000f3     	b	0x6d94 <aw9620x_load_def_reg_bin+0x5bc>
    69cc: 90000008     	adrp	x8, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000069cc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xc8
    69d0: 91000108     	add	x8, x8, #0x0
		00000000000069d0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xc8
    69d4: d5384116     	mrs	x22, SP_EL0
    69d8: f9402ad8     	ldr	x24, [x22, #0x50]
    69dc: f9002ac8     	str	x8, [x22, #0x50]
    69e0: 52841d09     	mov	w9, #0x20e8             // =8424
    69e4: f94002e8     	ldr	x8, [x23]
    69e8: 5281b801     	mov	w1, #0xdc0              // =3520
    69ec: 8b090115     	add	x21, x8, x9
    69f0: aa1503e0     	mov	x0, x21
    69f4: 94000000     	bl	0x69f4 <aw9620x_load_def_reg_bin+0x21c>
		00000000000069f4:  R_AARCH64_CALL26	__kmalloc_noprof
    69f8: aa0003f4     	mov	x20, x0
    69fc: f9002ad8     	str	x24, [x22, #0x50]
    6a00: b4fffcb4     	cbz	x20, 0x6994 <aw9620x_load_def_reg_bin+0x1bc>
    6a04: d342feb9     	lsr	x25, x21, #2
    6a08: f120e73f     	cmp	x25, #0x839
    6a0c: 540018a3     	b.lo	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6a10: 927ef6b8     	and	x24, x21, #0xfffffffffffffffc
    6a14: 52841c88     	mov	w8, #0x20e4             // =8420
    6a18: eb08031f     	cmp	x24, x8
    6a1c: 54001820     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6a20: f120e73f     	cmp	x25, #0x839
    6a24: 540017e0     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6a28: 52841d08     	mov	w8, #0x20e8             // =8424
    6a2c: f94002e2     	ldr	x2, [x23]
    6a30: eb0802a9     	subs	x9, x21, x8
    6a34: 9a8933e1     	csel	x1, xzr, x9, lo
    6a38: b920e682     	str	w2, [x20, #0x20e4]
    6a3c: eb02003f     	cmp	x1, x2
    6a40: 54001dc3     	b.lo	0x6df8 <aw9620x_load_def_reg_bin+0x620>
    6a44: f94006e1     	ldr	x1, [x23, #0x8]
    6a48: 8b080296     	add	x22, x20, x8
    6a4c: aa1603e0     	mov	x0, x22
    6a50: 94000000     	bl	0x6a50 <aw9620x_load_def_reg_bin+0x278>
		0000000000006a50:  R_AARCH64_CALL26	memcpy
    6a54: aa1703e0     	mov	x0, x23
    6a58: 94000000     	bl	0x6a58 <aw9620x_load_def_reg_bin+0x280>
		0000000000006a58:  R_AARCH64_CALL26	release_firmware
    6a5c: aa1403e0     	mov	x0, x20
    6a60: 94000000     	bl	0x6a60 <aw9620x_load_def_reg_bin+0x288>
		0000000000006a60:  R_AARCH64_CALL26	aw_parsing_bin_file
    6a64: f9401a61     	ldr	x1, [x19, #0x30]
    6a68: 36f80160     	tbz	w0, #0x1f, 0x6a94 <aw9620x_load_def_reg_bin+0x2bc>
    6a6c: 2a0003e5     	mov	w5, w0
    6a70: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6a74: 91000000     	add	x0, x0, #0x0
		0000000000006a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6a78: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4e
    6a7c: 91000042     	add	x2, x2, #0x0
		0000000000006a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4e
    6a80: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    6a84: 91000063     	add	x3, x3, #0x0
		0000000000006a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6a88: 52817f84     	mov	w4, #0xbfc              // =3068
    6a8c: 94000000     	bl	0x6a8c <aw9620x_load_def_reg_bin+0x2b4>
		0000000000006a8c:  R_AARCH64_CALL26	_dev_printk
    6a90: 140000bf     	b	0x6d8c <aw9620x_load_def_reg_bin+0x5b4>
    6a94: f120e73f     	cmp	x25, #0x839
    6a98: 54001443     	b.lo	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6a9c: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    6aa0: 52841c89     	mov	w9, #0x20e4             // =8420
    6aa4: eb09011f     	cmp	x8, x9
    6aa8: 540013c0     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6aac: b960e687     	ldr	w7, [x20, #0x20e4]
    6ab0: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6ab4: 91000000     	add	x0, x0, #0x0
		0000000000006ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6ab8: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2396
    6abc: 91000042     	add	x2, x2, #0x0
		0000000000006abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2396
    6ac0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    6ac4: 91000063     	add	x3, x3, #0x0
		0000000000006ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6ac8: 910a8665     	add	x5, x19, #0x2a1
    6acc: 9100c286     	add	x6, x20, #0x30
    6ad0: 52818024     	mov	w4, #0xc01              // =3073
    6ad4: 94000000     	bl	0x6ad4 <aw9620x_load_def_reg_bin+0x2fc>
		0000000000006ad4:  R_AARCH64_CALL26	_dev_printk
    6ad8: 910a8660     	add	x0, x19, #0x2a1
    6adc: 9100c281     	add	x1, x20, #0x30
    6ae0: 94000000     	bl	0x6ae0 <aw9620x_load_def_reg_bin+0x308>
		0000000000006ae0:  R_AARCH64_CALL26	strcmp
    6ae4: 35000480     	cbnz	w0, 0x6b74 <aw9620x_load_def_reg_bin+0x39c>
    6ae8: f101431f     	cmp	x24, #0x50
    6aec: 540011a0     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6af0: f10142bf     	cmp	x21, #0x50
    6af4: 54001163     	b.lo	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6af8: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    6afc: f101411f     	cmp	x8, #0x50
    6b00: 54001100     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6b04: b9405288     	ldr	w8, [x20, #0x50]
    6b08: 350004e8     	cbnz	w8, 0x6ba4 <aw9620x_load_def_reg_bin+0x3cc>
    6b0c: aa1303e0     	mov	x0, x19
    6b10: 940000bd     	bl	0x6e04 <aw9620x_en_active>
    6b14: 35001080     	cbnz	w0, 0x6d24 <aw9620x_load_def_reg_bin+0x54c>
    6b18: aa1403e0     	mov	x0, x20
    6b1c: 94000000     	bl	0x6b1c <aw9620x_load_def_reg_bin+0x344>
		0000000000006b1c:  R_AARCH64_CALL26	kfree
    6b20: f9401a61     	ldr	x1, [x19, #0x30]
    6b24: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6b28: 91000000     	add	x0, x0, #0x0
		0000000000006b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6b2c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25d5
    6b30: 91000042     	add	x2, x2, #0x0
		0000000000006b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25d5
    6b34: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    6b38: 91000063     	add	x3, x3, #0x0
		0000000000006b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6b3c: 52818324     	mov	w4, #0xc19              // =3097
    6b40: 94000000     	bl	0x6b40 <aw9620x_load_def_reg_bin+0x368>
		0000000000006b40:  R_AARCH64_CALL26	_dev_printk
    6b44: f9401a61     	ldr	x1, [x19, #0x30]
    6b48: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6b4c: 91000000     	add	x0, x0, #0x0
		0000000000006b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6b50: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecc
    6b54: 91000042     	add	x2, x2, #0x0
		0000000000006b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecc
    6b58: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d3
    6b5c: 91000063     	add	x3, x3, #0x0
		0000000000006b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d3
    6b60: 910bee65     	add	x5, x19, #0x2fb
    6b64: 52818764     	mov	w4, #0xc3b              // =3131
    6b68: 94000000     	bl	0x6b68 <aw9620x_load_def_reg_bin+0x390>
		0000000000006b68:  R_AARCH64_CALL26	_dev_printk
    6b6c: 2a1f03e0     	mov	w0, wzr
    6b70: 14000094     	b	0x6dc0 <aw9620x_load_def_reg_bin+0x5e8>
    6b74: f9401a61     	ldr	x1, [x19, #0x30]
    6b78: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6b7c: 91000000     	add	x0, x0, #0x0
		0000000000006b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6b80: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1184
    6b84: 91000042     	add	x2, x2, #0x0
		0000000000006b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1184
    6b88: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    6b8c: 91000063     	add	x3, x3, #0x0
		0000000000006b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6b90: 910a8665     	add	x5, x19, #0x2a1
    6b94: 9100c286     	add	x6, x20, #0x30
    6b98: 528180e4     	mov	w4, #0xc07              // =3079
    6b9c: 94000000     	bl	0x6b9c <aw9620x_load_def_reg_bin+0x3c4>
		0000000000006b9c:  R_AARCH64_CALL26	_dev_printk
    6ba0: 1400007b     	b	0x6d8c <aw9620x_load_def_reg_bin+0x5b4>
    6ba4: f101531f     	cmp	x24, #0x54
    6ba8: 54000bc0     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6bac: f10152bf     	cmp	x21, #0x54
    6bb0: 54000b83     	b.lo	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6bb4: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    6bb8: f101511f     	cmp	x8, #0x54
    6bbc: 54000b20     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6bc0: b9405697     	ldr	w23, [x20, #0x54]
    6bc4: 2a1f03fc     	mov	w28, wzr
    6bc8: 927ef6b8     	and	x24, x21, #0xfffffffffffffffc
    6bcc: 52841d19     	mov	w25, #0x20e8            // =8424
    6bd0: 5288828f     	mov	w15, #0x4414            // =17428
    6bd4: 0b1c02e8     	add	w8, w23, w28
    6bd8: 8b190109     	add	x9, x8, x25
    6bdc: eb0902bf     	cmp	x21, x9
    6be0: 54000a09     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6be4: 11000509     	add	w9, w8, #0x1
    6be8: 8b19012a     	add	x10, x9, x25
    6bec: eb0a02bf     	cmp	x21, x10
    6bf0: 54000989     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6bf4: 8b19010a     	add	x10, x8, x25
    6bf8: eb0a02bf     	cmp	x21, x10
    6bfc: 54000929     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c00: 8b19012a     	add	x10, x9, x25
    6c04: eb0a02bf     	cmp	x21, x10
    6c08: 540008c9     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c0c: 0b1c02eb     	add	w11, w23, w28
    6c10: 1100096a     	add	w10, w11, #0x2
    6c14: 8b19014c     	add	x12, x10, x25
    6c18: eb0c02bf     	cmp	x21, x12
    6c1c: 54000829     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c20: 11000d6b     	add	w11, w11, #0x3
    6c24: 8b19016c     	add	x12, x11, x25
    6c28: eb0c02bf     	cmp	x21, x12
    6c2c: 540007a9     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c30: 0b1c02ed     	add	w13, w23, w28
    6c34: 110011ac     	add	w12, w13, #0x4
    6c38: 8b19018e     	add	x14, x12, x25
    6c3c: eb0e02bf     	cmp	x21, x14
    6c40: 54000709     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c44: 110015ad     	add	w13, w13, #0x5
    6c48: 8b1901ae     	add	x14, x13, x25
    6c4c: eb0e02bf     	cmp	x21, x14
    6c50: 54000689     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c54: 8b19016e     	add	x14, x11, x25
    6c58: eb0e02bf     	cmp	x21, x14
    6c5c: 54000629     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c60: 8b19014e     	add	x14, x10, x25
    6c64: eb0e02bf     	cmp	x21, x14
    6c68: 540005c9     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c6c: 8b19018e     	add	x14, x12, x25
    6c70: eb0e02bf     	cmp	x21, x14
    6c74: 54000569     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c78: 8b1901ae     	add	x14, x13, x25
    6c7c: eb0e02bf     	cmp	x21, x14
    6c80: 54000509     	b.ls	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6c84: 386b6acb     	ldrb	w11, [x22, x11]
    6c88: 386a6aca     	ldrb	w10, [x22, x10]
    6c8c: 38686ac8     	ldrb	w8, [x22, x8]
    6c90: 38696ac9     	ldrb	w9, [x22, x9]
    6c94: 2a0b214a     	orr	w10, w10, w11, lsl #8
    6c98: 386c6acb     	ldrb	w11, [x22, x12]
    6c9c: 2a09211a     	orr	w26, w8, w9, lsl #8
    6ca0: 386d6ac9     	ldrb	w9, [x22, x13]
    6ca4: 2a0b4148     	orr	w8, w10, w11, lsl #16
    6ca8: 6b0f035f     	cmp	w26, w15
    6cac: 2a09611b     	orr	w27, w8, w9, lsl #24
    6cb0: 54000121     	b.ne	0x6cd4 <aw9620x_load_def_reg_bin+0x4fc>
    6cb4: b900167b     	str	w27, [x19, #0x14]
    6cb8: f101431f     	cmp	x24, #0x50
    6cbc: 54000320     	b.eq	0x6d20 <aw9620x_load_def_reg_bin+0x548>
    6cc0: b9405288     	ldr	w8, [x20, #0x50]
    6cc4: 11001b9c     	add	w28, w28, #0x6
    6cc8: 6b08039f     	cmp	w28, w8
    6ccc: 54fff843     	b.lo	0x6bd4 <aw9620x_load_def_reg_bin+0x3fc>
    6cd0: 17ffff8f     	b	0x6b0c <aw9620x_load_def_reg_bin+0x334>
    6cd4: aa1303e0     	mov	x0, x19
    6cd8: 2a1a03e1     	mov	w1, w26
    6cdc: 2a1b03e2     	mov	w2, w27
    6ce0: 97ffeacc     	bl	0x1810 <aw9620x_i2c_write>
    6ce4: f9401a61     	ldr	x1, [x19, #0x30]
    6ce8: 37f80300     	tbnz	w0, #0x1f, 0x6d48 <aw9620x_load_def_reg_bin+0x570>
    6cec: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    6cf0: 91000000     	add	x0, x0, #0x0
		0000000000006cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    6cf4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e7b
    6cf8: 91000042     	add	x2, x2, #0x0
		0000000000006cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e7b
    6cfc: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23ef
    6d00: 91000063     	add	x3, x3, #0x0
		0000000000006d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23ef
    6d04: 52817b44     	mov	w4, #0xbda              // =3034
    6d08: 2a1a03e5     	mov	w5, w26
    6d0c: 2a1b03e6     	mov	w6, w27
    6d10: 94000000     	bl	0x6d10 <aw9620x_load_def_reg_bin+0x538>
		0000000000006d10:  R_AARCH64_CALL26	_dev_printk
    6d14: 5288828f     	mov	w15, #0x4414            // =17428
    6d18: f101431f     	cmp	x24, #0x50
    6d1c: 54fffd21     	b.ne	0x6cc0 <aw9620x_load_def_reg_bin+0x4e8>
    6d20: d4200020     	brk	#0x1
    6d24: f9401a61     	ldr	x1, [x19, #0x30]
    6d28: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6d2c: 91000000     	add	x0, x0, #0x0
		0000000000006d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6d30: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97b
    6d34: 91000042     	add	x2, x2, #0x0
		0000000000006d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97b
    6d38: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    6d3c: 91000063     	add	x3, x3, #0x0
		0000000000006d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6d40: 52818264     	mov	w4, #0xc13              // =3091
    6d44: 14000011     	b	0x6d88 <aw9620x_load_def_reg_bin+0x5b0>
    6d48: 90000015     	adrp	x21, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6d4c: 910002b5     	add	x21, x21, #0x0
		0000000000006d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6d50: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x203
    6d54: 91000042     	add	x2, x2, #0x0
		0000000000006d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x203
    6d58: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23ef
    6d5c: 91000063     	add	x3, x3, #0x0
		0000000000006d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23ef
    6d60: aa1503e0     	mov	x0, x21
    6d64: 52817a84     	mov	w4, #0xbd4              // =3028
    6d68: 94000000     	bl	0x6d68 <aw9620x_load_def_reg_bin+0x590>
		0000000000006d68:  R_AARCH64_CALL26	_dev_printk
    6d6c: f9401a61     	ldr	x1, [x19, #0x30]
    6d70: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40b
    6d74: 91000042     	add	x2, x2, #0x0
		0000000000006d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40b
    6d78: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da9
    6d7c: 91000063     	add	x3, x3, #0x0
		0000000000006d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da9
    6d80: aa1503e0     	mov	x0, x21
    6d84: 528181a4     	mov	w4, #0xc0d              // =3085
    6d88: 94000000     	bl	0x6d88 <aw9620x_load_def_reg_bin+0x5b0>
		0000000000006d88:  R_AARCH64_CALL26	_dev_printk
    6d8c: aa1403e0     	mov	x0, x20
    6d90: 94000000     	bl	0x6d90 <aw9620x_load_def_reg_bin+0x5b8>
		0000000000006d90:  R_AARCH64_CALL26	kfree
    6d94: f9401a61     	ldr	x1, [x19, #0x30]
    6d98: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6d9c: 91000000     	add	x0, x0, #0x0
		0000000000006d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    6da0: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb
    6da4: 91000042     	add	x2, x2, #0x0
		0000000000006da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb
    6da8: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d3
    6dac: 91000063     	add	x3, x3, #0x0
		0000000000006dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d3
    6db0: 910bee65     	add	x5, x19, #0x2fb
    6db4: 52818704     	mov	w4, #0xc38              // =3128
    6db8: 94000000     	bl	0x6db8 <aw9620x_load_def_reg_bin+0x5e0>
		0000000000006db8:  R_AARCH64_CALL26	_dev_printk
    6dbc: 12800000     	mov	w0, #-0x1               // =-1
    6dc0: d5384108     	mrs	x8, SP_EL0
    6dc4: f9438908     	ldr	x8, [x8, #0x710]
    6dc8: f94007e9     	ldr	x9, [sp, #0x8]
    6dcc: eb09011f     	cmp	x8, x9
    6dd0: 54000181     	b.ne	0x6e00 <aw9620x_load_def_reg_bin+0x628>
    6dd4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    6dd8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    6ddc: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    6de0: a94367fa     	ldp	x26, x25, [sp, #0x30]
    6de4: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    6de8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6dec: 9101c3ff     	add	sp, sp, #0x70
    6df0: d50323bf     	autiasp
    6df4: d65f03c0     	ret
    6df8: 52800220     	mov	w0, #0x11               // =17
    6dfc: 94000000     	bl	0x6dfc <aw9620x_load_def_reg_bin+0x624>
		0000000000006dfc:  R_AARCH64_CALL26	__fortify_panic
    6e00: 94000000     	bl	0x6e00 <aw9620x_load_def_reg_bin+0x628>
		0000000000006e00:  R_AARCH64_CALL26	__stack_chk_fail
