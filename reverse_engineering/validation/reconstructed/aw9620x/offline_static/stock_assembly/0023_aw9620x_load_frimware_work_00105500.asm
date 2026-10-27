
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003c80 <aw9620x_load_frimware_work>:
    3c80: d503233f     	paciasp
    3c84: d10183ff     	sub	sp, sp, #0x60
    3c88: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3c8c: f90013f9     	str	x25, [sp, #0x20]
    3c90: a9035ff8     	stp	x24, x23, [sp, #0x30]
    3c94: a90457f6     	stp	x22, x21, [sp, #0x40]
    3c98: a9054ff4     	stp	x20, x19, [sp, #0x50]
    3c9c: 910043fd     	add	x29, sp, #0x10
    3ca0: d5384108     	mrs	x8, SP_EL0
    3ca4: 90000014     	adrp	x20, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3ca8: 91000294     	add	x20, x20, #0x0
		0000000000003ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3cac: f9438908     	ldr	x8, [x8, #0x710]
    3cb0: 90000015     	adrp	x21, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1341
    3cb4: 910002b5     	add	x21, x21, #0x0
		0000000000003cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1341
    3cb8: aa0003f3     	mov	x19, x0
    3cbc: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    3cc0: 91000042     	add	x2, x2, #0x0
		0000000000003cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    3cc4: f90007e8     	str	x8, [sp, #0x8]
    3cc8: aa1503e3     	mov	x3, x21
    3ccc: 52819e84     	mov	w4, #0xcf4              // =3316
    3cd0: f9401801     	ldr	x1, [x0, #0x30]
    3cd4: aa1403e0     	mov	x0, x20
    3cd8: f90003ff     	str	xzr, [sp]
    3cdc: 94000000     	bl	0x3cdc <aw9620x_load_frimware_work+0x5c>
		0000000000003cdc:  R_AARCH64_CALL26	_dev_printk
    3ce0: b9400a63     	ldr	w3, [x19, #0x8]
    3ce4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c52
    3ce8: 91000042     	add	x2, x2, #0x0
		0000000000003ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c52
    3cec: 910afe60     	add	x0, x19, #0x2bf
    3cf0: 528003c1     	mov	w1, #0x1e               // =30
    3cf4: 94000000     	bl	0x3cf4 <aw9620x_load_frimware_work+0x74>
		0000000000003cf4:  R_AARCH64_CALL26	snprintf
    3cf8: f9401a61     	ldr	x1, [x19, #0x30]
    3cfc: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e9
    3d00: 91000042     	add	x2, x2, #0x0
		0000000000003d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e9
    3d04: 910afe65     	add	x5, x19, #0x2bf
    3d08: aa1403e0     	mov	x0, x20
    3d0c: aa1503e3     	mov	x3, x21
    3d10: 52819f24     	mov	w4, #0xcf9              // =3321
    3d14: 94000000     	bl	0x3d14 <aw9620x_load_frimware_work+0x94>
		0000000000003d14:  R_AARCH64_CALL26	_dev_printk
    3d18: f9401a62     	ldr	x2, [x19, #0x30]
    3d1c: 910003e0     	mov	x0, sp
    3d20: 910afe61     	add	x1, x19, #0x2bf
    3d24: 94000000     	bl	0x3d24 <aw9620x_load_frimware_work+0xa4>
		0000000000003d24:  R_AARCH64_CALL26	request_firmware
    3d28: f9401a61     	ldr	x1, [x19, #0x30]
    3d2c: 350002c0     	cbnz	w0, 0x3d84 <aw9620x_load_frimware_work+0x104>
    3d30: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3d34: 91000000     	add	x0, x0, #0x0
		0000000000003d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3d38: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186c
    3d3c: 91000042     	add	x2, x2, #0x0
		0000000000003d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186c
    3d40: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1341
    3d44: 91000063     	add	x3, x3, #0x0
		0000000000003d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1341
    3d48: 910afe65     	add	x5, x19, #0x2bf
    3d4c: 5281a004     	mov	w4, #0xd00              // =3328
    3d50: 94000000     	bl	0x3d50 <aw9620x_load_frimware_work+0xd0>
		0000000000003d50:  R_AARCH64_CALL26	_dev_printk
    3d54: f94003f6     	ldr	x22, [sp]
    3d58: f9401a61     	ldr	x1, [x19, #0x30]
    3d5c: b5000276     	cbnz	x22, 0x3da8 <aw9620x_load_frimware_work+0x128>
    3d60: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3d64: 91000000     	add	x0, x0, #0x0
		0000000000003d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3d68: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1580
    3d6c: 91000042     	add	x2, x2, #0x0
		0000000000003d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1580
    3d70: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3d74: 91000063     	add	x3, x3, #0x0
		0000000000003d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3d78: 528196e4     	mov	w4, #0xcb7              // =3255
    3d7c: 94000000     	bl	0x3d7c <aw9620x_load_frimware_work+0xfc>
		0000000000003d7c:  R_AARCH64_CALL26	_dev_printk
    3d80: 140000c1     	b	0x4084 <aw9620x_load_frimware_work+0x404>
    3d84: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3d88: 91000000     	add	x0, x0, #0x0
		0000000000003d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3d8c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16c4
    3d90: 91000042     	add	x2, x2, #0x0
		0000000000003d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16c4
    3d94: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1341
    3d98: 91000063     	add	x3, x3, #0x0
		0000000000003d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1341
    3d9c: 910afe65     	add	x5, x19, #0x2bf
    3da0: 52819fa4     	mov	w4, #0xcfd              // =3325
    3da4: 140000c1     	b	0x40a8 <aw9620x_load_frimware_work+0x428>
    3da8: 90000014     	adrp	x20, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3dac: 91000294     	add	x20, x20, #0x0
		0000000000003dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3db0: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    3db4: 91000000     	add	x0, x0, #0x0
		0000000000003db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    3db8: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8df
    3dbc: 91000042     	add	x2, x2, #0x0
		0000000000003dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8df
    3dc0: aa1403e3     	mov	x3, x20
    3dc4: 52819744     	mov	w4, #0xcba              // =3258
    3dc8: 94000000     	bl	0x3dc8 <aw9620x_load_frimware_work+0x148>
		0000000000003dc8:  R_AARCH64_CALL26	_dev_printk
    3dcc: f9401a61     	ldr	x1, [x19, #0x30]
    3dd0: b94002c5     	ldr	w5, [x22]
    3dd4: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3dd8: 91000000     	add	x0, x0, #0x0
		0000000000003dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3ddc: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a1
    3de0: 91000042     	add	x2, x2, #0x0
		0000000000003de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a1
    3de4: aa1403e3     	mov	x3, x20
    3de8: 52819784     	mov	w4, #0xcbc              // =3260
    3dec: 94000000     	bl	0x3dec <aw9620x_load_frimware_work+0x16c>
		0000000000003dec:  R_AARCH64_CALL26	_dev_printk
    3df0: d503201f     	nop
    3df4: f94002c8     	ldr	x8, [x22]
    3df8: 52841d09     	mov	w9, #0x20e8             // =8424
    3dfc: 5281b801     	mov	w1, #0xdc0              // =3520
    3e00: 8b090115     	add	x21, x8, x9
    3e04: aa1503e0     	mov	x0, x21
    3e08: 94000000     	bl	0x3e08 <aw9620x_load_frimware_work+0x188>
		0000000000003e08:  R_AARCH64_CALL26	__kmalloc_noprof
    3e0c: aa0003f4     	mov	x20, x0
    3e10: b50003b4     	cbnz	x20, 0x3e84 <aw9620x_load_frimware_work+0x204>
    3e14: aa1f03e0     	mov	x0, xzr
    3e18: 94000000     	bl	0x3e18 <aw9620x_load_frimware_work+0x198>
		0000000000003e18:  R_AARCH64_CALL26	kfree
    3e1c: aa1603e0     	mov	x0, x22
    3e20: 94000000     	bl	0x3e20 <aw9620x_load_frimware_work+0x1a0>
		0000000000003e20:  R_AARCH64_CALL26	release_firmware
    3e24: f9401a61     	ldr	x1, [x19, #0x30]
    3e28: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3e2c: 91000000     	add	x0, x0, #0x0
		0000000000003e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3e30: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ba0
    3e34: 91000042     	add	x2, x2, #0x0
		0000000000003e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ba0
    3e38: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3e3c: 91000063     	add	x3, x3, #0x0
		0000000000003e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3e40: 52819844     	mov	w4, #0xcc2              // =3266
    3e44: 94000000     	bl	0x3e44 <aw9620x_load_frimware_work+0x1c4>
		0000000000003e44:  R_AARCH64_CALL26	_dev_printk
    3e48: 1400008f     	b	0x4084 <aw9620x_load_frimware_work+0x404>
    3e4c: 90000008     	adrp	x8, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003e4c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    3e50: 91000108     	add	x8, x8, #0x0
		0000000000003e50:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    3e54: d5384117     	mrs	x23, SP_EL0
    3e58: f9402af8     	ldr	x24, [x23, #0x50]
    3e5c: f9002ae8     	str	x8, [x23, #0x50]
    3e60: 52841d09     	mov	w9, #0x20e8             // =8424
    3e64: f94002c8     	ldr	x8, [x22]
    3e68: 5281b801     	mov	w1, #0xdc0              // =3520
    3e6c: 8b090115     	add	x21, x8, x9
    3e70: aa1503e0     	mov	x0, x21
    3e74: 94000000     	bl	0x3e74 <aw9620x_load_frimware_work+0x1f4>
		0000000000003e74:  R_AARCH64_CALL26	__kmalloc_noprof
    3e78: aa0003f4     	mov	x20, x0
    3e7c: f9002af8     	str	x24, [x23, #0x50]
    3e80: b4fffcb4     	cbz	x20, 0x3e14 <aw9620x_load_frimware_work+0x194>
    3e84: d342feb9     	lsr	x25, x21, #2
    3e88: f120e73f     	cmp	x25, #0x839
    3e8c: 540012c3     	b.lo	0x40e4 <aw9620x_load_frimware_work+0x464>
    3e90: 927ef6b8     	and	x24, x21, #0xfffffffffffffffc
    3e94: 52841c88     	mov	w8, #0x20e4             // =8420
    3e98: eb08031f     	cmp	x24, x8
    3e9c: 54001240     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3ea0: f120e73f     	cmp	x25, #0x839
    3ea4: 54001200     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3ea8: 52841d08     	mov	w8, #0x20e8             // =8424
    3eac: f94002c2     	ldr	x2, [x22]
    3eb0: eb0802a9     	subs	x9, x21, x8
    3eb4: 9a8933e1     	csel	x1, xzr, x9, lo
    3eb8: b920e682     	str	w2, [x20, #0x20e4]
    3ebc: eb02003f     	cmp	x1, x2
    3ec0: 54001143     	b.lo	0x40e8 <aw9620x_load_frimware_work+0x468>
    3ec4: f94006c1     	ldr	x1, [x22, #0x8]
    3ec8: 8b080297     	add	x23, x20, x8
    3ecc: aa1703e0     	mov	x0, x23
    3ed0: 94000000     	bl	0x3ed0 <aw9620x_load_frimware_work+0x250>
		0000000000003ed0:  R_AARCH64_CALL26	memcpy
    3ed4: aa1603e0     	mov	x0, x22
    3ed8: 94000000     	bl	0x3ed8 <aw9620x_load_frimware_work+0x258>
		0000000000003ed8:  R_AARCH64_CALL26	release_firmware
    3edc: aa1403e0     	mov	x0, x20
    3ee0: 94000000     	bl	0x3ee0 <aw9620x_load_frimware_work+0x260>
		0000000000003ee0:  R_AARCH64_CALL26	aw_parsing_bin_file
    3ee4: f9401a61     	ldr	x1, [x19, #0x30]
    3ee8: 36f80160     	tbz	w0, #0x1f, 0x3f14 <aw9620x_load_frimware_work+0x294>
    3eec: 2a0003e5     	mov	w5, w0
    3ef0: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3ef4: 91000000     	add	x0, x0, #0x0
		0000000000003ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3ef8: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4e
    3efc: 91000042     	add	x2, x2, #0x0
		0000000000003efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4e
    3f00: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3f04: 91000063     	add	x3, x3, #0x0
		0000000000003f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3f08: 528199a4     	mov	w4, #0xccd              // =3277
    3f0c: 94000000     	bl	0x3f0c <aw9620x_load_frimware_work+0x28c>
		0000000000003f0c:  R_AARCH64_CALL26	_dev_printk
    3f10: 1400005b     	b	0x407c <aw9620x_load_frimware_work+0x3fc>
    3f14: f120e73f     	cmp	x25, #0x839
    3f18: 54000e63     	b.lo	0x40e4 <aw9620x_load_frimware_work+0x464>
    3f1c: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    3f20: 52841c89     	mov	w9, #0x20e4             // =8420
    3f24: eb09011f     	cmp	x8, x9
    3f28: 54000de0     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3f2c: b960e687     	ldr	w7, [x20, #0x20e4]
    3f30: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3f34: 91000000     	add	x0, x0, #0x0
		0000000000003f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3f38: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2396
    3f3c: 91000042     	add	x2, x2, #0x0
		0000000000003f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2396
    3f40: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3f44: 91000063     	add	x3, x3, #0x0
		0000000000003f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3f48: 910a8665     	add	x5, x19, #0x2a1
    3f4c: 9100c286     	add	x6, x20, #0x30
    3f50: 52819a44     	mov	w4, #0xcd2              // =3282
    3f54: 94000000     	bl	0x3f54 <aw9620x_load_frimware_work+0x2d4>
		0000000000003f54:  R_AARCH64_CALL26	_dev_printk
    3f58: 39400e68     	ldrb	w8, [x19, #0x3]
    3f5c: 7100051f     	cmp	w8, #0x1
    3f60: 540001e0     	b.eq	0x3f9c <aw9620x_load_frimware_work+0x31c>
    3f64: 35000508     	cbnz	w8, 0x4004 <aw9620x_load_frimware_work+0x384>
    3f68: aa1303e0     	mov	x0, x19
    3f6c: aa1403e1     	mov	x1, x20
    3f70: 94000695     	bl	0x59c4 <aw9620x_update_firmware>
    3f74: f9401a61     	ldr	x1, [x19, #0x30]
    3f78: 35000620     	cbnz	w0, 0x403c <aw9620x_load_frimware_work+0x3bc>
    3f7c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3f80: 91000000     	add	x0, x0, #0x0
		0000000000003f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3f84: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3050
    3f88: 91000042     	add	x2, x2, #0x0
		0000000000003f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3050
    3f8c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3f90: 91000063     	add	x3, x3, #0x0
		0000000000003f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3f94: 52819b44     	mov	w4, #0xcda              // =3290
    3f98: 1400001a     	b	0x4000 <aw9620x_load_frimware_work+0x380>
    3f9c: f101431f     	cmp	x24, #0x50
    3fa0: 54000a20     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3fa4: f101531f     	cmp	x24, #0x54
    3fa8: 540009e0     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3fac: f10152bf     	cmp	x21, #0x54
    3fb0: 540009a3     	b.lo	0x40e4 <aw9620x_load_frimware_work+0x464>
    3fb4: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    3fb8: f101511f     	cmp	x8, #0x54
    3fbc: 54000940     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3fc0: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    3fc4: f101411f     	cmp	x8, #0x50
    3fc8: 540008e0     	b.eq	0x40e4 <aw9620x_load_frimware_work+0x464>
    3fcc: 294a2282     	ldp	w2, w8, [x20, #0x50]
    3fd0: aa1303e0     	mov	x0, x19
    3fd4: 8b0802e1     	add	x1, x23, x8
    3fd8: 94000000     	bl	0x3fd8 <aw9620x_load_frimware_work+0x358>
		0000000000003fd8:  R_AARCH64_CALL26	aw9620x_update_fw_to_flash
    3fdc: f9401a61     	ldr	x1, [x19, #0x30]
    3fe0: 350003e0     	cbnz	w0, 0x405c <aw9620x_load_frimware_work+0x3dc>
    3fe4: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3fe8: 91000000     	add	x0, x0, #0x0
		0000000000003fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3fec: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe1
    3ff0: 91000042     	add	x2, x2, #0x0
		0000000000003ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe1
    3ff4: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    3ff8: 91000063     	add	x3, x3, #0x0
		0000000000003ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    3ffc: 52819c44     	mov	w4, #0xce2              // =3298
    4000: 94000000     	bl	0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004000:  R_AARCH64_CALL26	_dev_printk
    4004: aa1403e0     	mov	x0, x20
    4008: 94000000     	bl	0x4008 <aw9620x_load_frimware_work+0x388>
		0000000000004008:  R_AARCH64_CALL26	kfree
    400c: f9401a61     	ldr	x1, [x19, #0x30]
    4010: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    4014: 91000000     	add	x0, x0, #0x0
		0000000000004014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    4018: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecc
    401c: 91000042     	add	x2, x2, #0x0
		000000000000401c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecc
    4020: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1341
    4024: 91000063     	add	x3, x3, #0x0
		0000000000004024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1341
    4028: 910afe65     	add	x5, x19, #0x2bf
    402c: 5281a104     	mov	w4, #0xd08              // =3336
    4030: 94000000     	bl	0x4030 <aw9620x_load_frimware_work+0x3b0>
		0000000000004030:  R_AARCH64_CALL26	_dev_printk
    4034: 2a1f03e0     	mov	w0, wzr
    4038: 1400001e     	b	0x40b0 <aw9620x_load_frimware_work+0x430>
    403c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000403c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4040: 91000000     	add	x0, x0, #0x0
		0000000000004040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4044: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d20
    4048: 91000042     	add	x2, x2, #0x0
		0000000000004048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d20
    404c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000404c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    4050: 91000063     	add	x3, x3, #0x0
		0000000000004050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    4054: 52819ae4     	mov	w4, #0xcd7              // =3287
    4058: 14000008     	b	0x4078 <aw9620x_load_frimware_work+0x3f8>
    405c: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000405c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4060: 91000000     	add	x0, x0, #0x0
		0000000000004060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4064: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x340d
    4068: 91000042     	add	x2, x2, #0x0
		0000000000004068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x340d
    406c: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000406c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdc0
    4070: 91000063     	add	x3, x3, #0x0
		0000000000004070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdc0
    4074: 52819be4     	mov	w4, #0xcdf              // =3295
    4078: 94000000     	bl	0x4078 <aw9620x_load_frimware_work+0x3f8>
		0000000000004078:  R_AARCH64_CALL26	_dev_printk
    407c: aa1403e0     	mov	x0, x20
    4080: 94000000     	bl	0x4080 <aw9620x_load_frimware_work+0x400>
		0000000000004080:  R_AARCH64_CALL26	kfree
    4084: f9401a61     	ldr	x1, [x19, #0x30]
    4088: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    408c: 91000000     	add	x0, x0, #0x0
		000000000000408c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4090: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fb
    4094: 91000042     	add	x2, x2, #0x0
		0000000000004094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fb
    4098: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1341
    409c: 91000063     	add	x3, x3, #0x0
		000000000000409c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1341
    40a0: 910afe65     	add	x5, x19, #0x2bf
    40a4: 5281a0a4     	mov	w4, #0xd05              // =3333
    40a8: 94000000     	bl	0x40a8 <aw9620x_load_frimware_work+0x428>
		00000000000040a8:  R_AARCH64_CALL26	_dev_printk
    40ac: 12800000     	mov	w0, #-0x1               // =-1
    40b0: d5384108     	mrs	x8, SP_EL0
    40b4: f9438908     	ldr	x8, [x8, #0x710]
    40b8: f94007e9     	ldr	x9, [sp, #0x8]
    40bc: eb09011f     	cmp	x8, x9
    40c0: 54000181     	b.ne	0x40f0 <aw9620x_load_frimware_work+0x470>
    40c4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    40c8: f94013f9     	ldr	x25, [sp, #0x20]
    40cc: a94457f6     	ldp	x22, x21, [sp, #0x40]
    40d0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    40d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    40d8: 910183ff     	add	sp, sp, #0x60
    40dc: d50323bf     	autiasp
    40e0: d65f03c0     	ret
    40e4: d4200020     	brk	#0x1
    40e8: 52800220     	mov	w0, #0x11               // =17
    40ec: 94000000     	bl	0x40ec <aw9620x_load_frimware_work+0x46c>
		00000000000040ec:  R_AARCH64_CALL26	__fortify_panic
    40f0: 94000000     	bl	0x40f0 <aw9620x_load_frimware_work+0x470>
		00000000000040f0:  R_AARCH64_CALL26	__stack_chk_fail
