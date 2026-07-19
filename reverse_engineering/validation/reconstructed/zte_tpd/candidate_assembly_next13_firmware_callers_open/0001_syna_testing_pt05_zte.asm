
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001caa4 <syna_testing_pt05_zte>:
   1caa4: d503233f     	paciasp
   1caa8: d10203ff     	sub	sp, sp, #0x80
   1caac: a9057bfd     	stp	x29, x30, [sp, #0x50]
   1cab0: a90657f6     	stp	x22, x21, [sp, #0x60]
   1cab4: a9074ff4     	stp	x20, x19, [sp, #0x70]
   1cab8: 910143fd     	add	x29, sp, #0x50
   1cabc: d5384108     	mrs	x8, SP_EL0
   1cac0: aa0003f4     	mov	x20, x0
   1cac4: f9438908     	ldr	x8, [x8, #0x710]
   1cac8: f81f83a8     	stur	x8, [x29, #-0x8]
   1cacc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1cad0: f90003ff     	str	xzr, [sp]
   1cad4: d5384108     	mrs	x8, SP_EL0
   1cad8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1cadc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1cae0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1cae4: d503201f     	nop
   1cae8: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cae8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1caec: 5281b801     	mov	w1, #0xdc0              // =3520
   1caf0: 52820002     	mov	w2, #0x1000             // =4096
   1caf4: f9400100     	ldr	x0, [x8]
		000000000001caf4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1caf8: 94000000     	bl	0x1caf8 <syna_testing_pt05_zte+0x54>
		000000000001caf8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cafc: aa0003f3     	mov	x19, x0
   1cb00: b4000dd3     	cbz	x19, 0x1ccb8 <syna_testing_pt05_zte+0x214>
   1cb04: 39560a88     	ldrb	w8, [x20, #0x582]
   1cb08: 370000e8     	tbnz	w8, #0x0, 0x1cb24 <syna_testing_pt05_zte+0x80>
   1cb0c: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cb0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58e3
   1cb10: 91000042     	add	x2, x2, #0x0
		000000000001cb10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58e3
   1cb14: aa1303e0     	mov	x0, x19
   1cb18: 52820001     	mov	w1, #0x1000             // =4096
   1cb1c: 94000000     	bl	0x1cb1c <syna_testing_pt05_zte+0x78>
		000000000001cb1c:  R_AARCH64_CALL26	scnprintf
   1cb20: 1400006d     	b	0x1ccd4 <syna_testing_pt05_zte+0x230>
   1cb24: 94000000     	bl	0x1cb24 <syna_testing_pt05_zte+0x80>
		000000000001cb24:  R_AARCH64_CALL26	syna_tcm_get_testing_0500
   1cb28: b4000800     	cbz	x0, 0x1cc28 <syna_testing_pt05_zte+0x184>
   1cb2c: f9400288     	ldr	x8, [x20]
   1cb30: aa0003f5     	mov	x21, x0
   1cb34: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cb34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f96
   1cb38: 91000021     	add	x1, x1, #0x0
		000000000001cb38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f96
   1cb3c: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cb3c:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
   1cb40: 91000042     	add	x2, x2, #0x0
		000000000001cb40:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
   1cb44: b9402108     	ldr	w8, [x8, #0x20]
   1cb48: f90003ff     	str	xzr, [sp]
   1cb4c: b9002408     	str	w8, [x0, #0x24]
   1cb50: f9400288     	ldr	x8, [x20]
   1cb54: b9401d08     	ldr	w8, [x8, #0x1c]
   1cb58: b9002008     	str	w8, [x0, #0x20]
   1cb5c: 910063e0     	add	x0, sp, #0x18
   1cb60: 94000000     	bl	0x1cb60 <syna_testing_pt05_zte+0xbc>
		000000000001cb60:  R_AARCH64_CALL26	__mutex_init
   1cb64: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cb64:  R_AARCH64_ADR_PREL_PG_HI21	pt05_hi_limits
   1cb68: 91000109     	add	x9, x8, #0x0
		000000000001cb68:  R_AARCH64_ADD_ABS_LO12_NC	pt05_hi_limits
   1cb6c: aa1503e1     	mov	x1, x21
   1cb70: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cb70:  R_AARCH64_ADR_PREL_PG_HI21	pt05_lo_limits
   1cb74: 91000108     	add	x8, x8, #0x0
		000000000001cb74:  R_AARCH64_ADD_ABS_LO12_NC	pt05_lo_limits
   1cb78: 2a1f03e2     	mov	w2, wzr
   1cb7c: a900a3e9     	stp	x9, x8, [sp, #0x8]
   1cb80: 910003e8     	mov	x8, sp
   1cb84: 910043e9     	add	x9, sp, #0x10
   1cb88: f9006ea8     	str	x8, [x21, #0xd8]
   1cb8c: 910023e8     	add	x8, sp, #0x8
   1cb90: a903a6a8     	stp	x8, x9, [x21, #0x38]
   1cb94: f9400ea8     	ldr	x8, [x21, #0x18]
   1cb98: f9400280     	ldr	x0, [x20]
   1cb9c: b85fc110     	ldur	w16, [x8, #-0x4]
   1cba0: 72895251     	movk	w17, #0x4a92
   1cba4: 72b03811     	movk	w17, #0x81c0, lsl #16
   1cba8: 6b11021f     	cmp	w16, w17
   1cbac: 54000040     	b.eq	0x1cbb4 <syna_testing_pt05_zte+0x110>
   1cbb0: d4304500     	brk	#0x8228
   1cbb4: d63f0100     	blr	x8
   1cbb8: 37f80460     	tbnz	w0, #0x1f, 0x1cc44 <syna_testing_pt05_zte+0x1a0>
   1cbbc: 394042a8     	ldrb	w8, [x21, #0x10]
   1cbc0: 90000009     	adrp	x9, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cbc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5a
   1cbc4: 91000129     	add	x9, x9, #0x0
		000000000001cbc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5a
   1cbc8: 7100011f     	cmp	w8, #0x0
   1cbcc: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cbcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1cbd0: 91000108     	add	x8, x8, #0x0
		000000000001cbd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1cbd4: 9a890105     	csel	x5, x8, x9, eq
   1cbd8: f94006a3     	ldr	x3, [x21, #0x8]
   1cbdc: b94002a4     	ldr	w4, [x21]
   1cbe0: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cbe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe58
   1cbe4: 91000042     	add	x2, x2, #0x0
		000000000001cbe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe58
   1cbe8: aa1303e0     	mov	x0, x19
   1cbec: 52820001     	mov	w1, #0x1000             // =4096
   1cbf0: 94000000     	bl	0x1cbf0 <syna_testing_pt05_zte+0x14c>
		000000000001cbf0:  R_AARCH64_CALL26	scnprintf
   1cbf4: 2a0003f4     	mov	w20, w0
   1cbf8: aa1303e0     	mov	x0, x19
   1cbfc: 94000000     	bl	0x1cbfc <syna_testing_pt05_zte+0x158>
		000000000001cbfc:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   1cc00: f94003f5     	ldr	x21, [sp]
   1cc04: 94000000     	bl	0x1cc04 <syna_testing_pt05_zte+0x160>
		000000000001cc04:  R_AARCH64_CALL26	syna_request_managed_device
   1cc08: b4000300     	cbz	x0, 0x1cc68 <syna_testing_pt05_zte+0x1c4>
   1cc0c: b4000075     	cbz	x21, 0x1cc18 <syna_testing_pt05_zte+0x174>
   1cc10: aa1503e1     	mov	x1, x21
   1cc14: 94000000     	bl	0x1cc14 <syna_testing_pt05_zte+0x170>
		000000000001cc14:  R_AARCH64_CALL26	devm_kfree
   1cc18: aa1303e0     	mov	x0, x19
   1cc1c: 94000000     	bl	0x1cc1c <syna_testing_pt05_zte+0x178>
		000000000001cc1c:  R_AARCH64_CALL26	kfree
   1cc20: 2a1403e0     	mov	w0, w20
   1cc24: 1400002c     	b	0x1ccd4 <syna_testing_pt05_zte+0x230>
   1cc28: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e61
   1cc2c: 91000042     	add	x2, x2, #0x0
		000000000001cc2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e61
   1cc30: aa1303e0     	mov	x0, x19
   1cc34: 52820001     	mov	w1, #0x1000             // =4096
   1cc38: 5280a003     	mov	w3, #0x500              // =1280
   1cc3c: 94000000     	bl	0x1cc3c <syna_testing_pt05_zte+0x198>
		000000000001cc3c:  R_AARCH64_CALL26	scnprintf
   1cc40: 14000025     	b	0x1ccd4 <syna_testing_pt05_zte+0x230>
   1cc44: f94006a2     	ldr	x2, [x21, #0x8]
   1cc48: 90000000     	adrp	x0, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc48:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D2FD
   1cc4c: 91000000     	add	x0, x0, #0x0
		000000000001cc4c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D2FD
   1cc50: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x238f
   1cc54: 91000021     	add	x1, x1, #0x0
		000000000001cc54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x238f
   1cc58: 94000000     	bl	0x1cc58 <syna_testing_pt05_zte+0x1b4>
		000000000001cc58:  R_AARCH64_CALL26	_printk
   1cc5c: 90000005     	adrp	x5, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1cc60: 910000a5     	add	x5, x5, #0x0
		000000000001cc60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1cc64: 17ffffdd     	b	0x1cbd8 <syna_testing_pt05_zte+0x134>
   1cc68: 90000000     	adrp	x0, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc68:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   1cc6c: 91000000     	add	x0, x0, #0x0
		000000000001cc6c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   1cc70: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b1
   1cc74: 91000021     	add	x1, x1, #0x0
		000000000001cc74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b1
   1cc78: aa1f03e2     	mov	x2, xzr
   1cc7c: 94000000     	bl	0x1cc7c <syna_testing_pt05_zte+0x1d8>
		000000000001cc7c:  R_AARCH64_CALL26	_printk
   1cc80: 17ffffe6     	b	0x1cc18 <syna_testing_pt05_zte+0x174>
   1cc84: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc84:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x190
   1cc88: 91000108     	add	x8, x8, #0x0
		000000000001cc88:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x190
   1cc8c: d5384115     	mrs	x21, SP_EL0
   1cc90: f9402ab6     	ldr	x22, [x21, #0x50]
   1cc94: f9002aa8     	str	x8, [x21, #0x50]
   1cc98: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001cc98:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cc9c: f9400100     	ldr	x0, [x8]
		000000000001cc9c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cca0: 5281b801     	mov	w1, #0xdc0              // =3520
   1cca4: 52820002     	mov	w2, #0x1000             // =4096
   1cca8: 94000000     	bl	0x1cca8 <syna_testing_pt05_zte+0x204>
		000000000001cca8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1ccac: aa0003f3     	mov	x19, x0
   1ccb0: f9002ab6     	str	x22, [x21, #0x50]
   1ccb4: b5fff293     	cbnz	x19, 0x1cb04 <syna_testing_pt05_zte+0x60>
   1ccb8: 90000000     	adrp	x0, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001ccb8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C045
   1ccbc: 91000000     	add	x0, x0, #0x0
		000000000001ccbc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C045
   1ccc0: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001ccc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x238f
   1ccc4: 91000021     	add	x1, x1, #0x0
		000000000001ccc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x238f
   1ccc8: aa1f03e2     	mov	x2, xzr
   1cccc: 94000000     	bl	0x1cccc <syna_testing_pt05_zte+0x228>
		000000000001cccc:  R_AARCH64_CALL26	_printk
   1ccd0: 12800160     	mov	w0, #-0xc               // =-12
   1ccd4: d5384108     	mrs	x8, SP_EL0
   1ccd8: f9438908     	ldr	x8, [x8, #0x710]
   1ccdc: d5384109     	mrs	x9, SP_EL0
   1cce0: f85f83a9     	ldur	x9, [x29, #-0x8]
   1cce4: eb09011f     	cmp	x8, x9
   1cce8: 540000e1     	b.ne	0x1cd04 <syna_testing_pt05_zte+0x260>
   1ccec: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   1ccf0: a94657f6     	ldp	x22, x21, [sp, #0x60]
   1ccf4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   1ccf8: 910203ff     	add	sp, sp, #0x80
   1ccfc: d50323bf     	autiasp
   1cd00: d65f03c0     	ret
   1cd04: 94000000     	bl	0x1cd04 <syna_testing_pt05_zte+0x260>
		000000000001cd04:  R_AARCH64_CALL26	__stack_chk_fail
