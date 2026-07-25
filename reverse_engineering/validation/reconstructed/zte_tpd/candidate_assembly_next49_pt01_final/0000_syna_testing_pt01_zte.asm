
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c8fc <syna_testing_pt01_zte>:
   1c8fc: d503233f     	paciasp
   1c900: d10283ff     	sub	sp, sp, #0xa0
   1c904: a9067bfd     	stp	x29, x30, [sp, #0x60]
   1c908: f9003bf7     	str	x23, [sp, #0x70]
   1c90c: a90857f6     	stp	x22, x21, [sp, #0x80]
   1c910: a9094ff4     	stp	x20, x19, [sp, #0x90]
   1c914: 910183fd     	add	x29, sp, #0x60
   1c918: d5384108     	mrs	x8, SP_EL0
   1c91c: aa0003f4     	mov	x20, x0
   1c920: f9438908     	ldr	x8, [x8, #0x710]
   1c924: f81f83a8     	stur	x8, [x29, #-0x8]
   1c928: f90007ff     	str	xzr, [sp, #0x8]
   1c92c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1c930: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1c934: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1c938: f90013ff     	str	xzr, [sp, #0x20]
   1c93c: d503201f     	nop
   1c940: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c940:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1c944: 5281b801     	mov	w1, #0xdc0              // =3520
   1c948: 52820002     	mov	w2, #0x1000             // =4096
   1c94c: f9400100     	ldr	x0, [x8]
		000000000001c94c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1c950: 94000000     	bl	0x1c950 <syna_testing_pt01_zte+0x54>
		000000000001c950:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1c954: aa0003f3     	mov	x19, x0
   1c958: b40011f3     	cbz	x19, 0x1cb94 <syna_testing_pt01_zte+0x298>
   1c95c: 94000000     	bl	0x1c95c <syna_testing_pt01_zte+0x60>
		000000000001c95c:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
   1c960: b4000ac0     	cbz	x0, 0x1cab8 <syna_testing_pt01_zte+0x1bc>
   1c964: 910043f6     	add	x22, sp, #0x10
   1c968: aa0003f5     	mov	x21, x0
   1c96c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c96c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a01
   1c970: 91000021     	add	x1, x1, #0x0
		000000000001c970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a01
   1c974: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c974:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x142c
   1c978: 91000042     	add	x2, x2, #0x0
		000000000001c978:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x142c
   1c97c: 910042c0     	add	x0, x22, #0x10
   1c980: 390143ff     	strb	wzr, [sp, #0x50]
   1c984: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1c988: 94000000     	bl	0x1c988 <syna_testing_pt01_zte+0x8c>
		000000000001c988:  R_AARCH64_CALL26	__mutex_init
   1c98c: 910003e9     	mov	x9, sp
   1c990: f9006eb6     	str	x22, [x21, #0xd8]
   1c994: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c994:  R_AARCH64_ADR_PREL_PG_HI21	pt01_limits
   1c998: 91000108     	add	x8, x8, #0x0
		000000000001c998:  R_AARCH64_ADD_ABS_LO12_NC	pt01_limits
   1c99c: f9001ea9     	str	x9, [x21, #0x38]
   1c9a0: f9400ea9     	ldr	x9, [x21, #0x18]
   1c9a4: f9400280     	ldr	x0, [x20]
   1c9a8: f90003e8     	str	x8, [sp]
   1c9ac: 52800208     	mov	w8, #0x10               // =16
   1c9b0: aa1503e1     	mov	x1, x21
   1c9b4: 2a1f03e2     	mov	w2, wzr
   1c9b8: b9000be8     	str	w8, [sp, #0x8]
   1c9bc: b85fc130     	ldur	w16, [x9, #-0x4]
   1c9c0: 72895251     	movk	w17, #0x4a92
   1c9c4: 72b03811     	movk	w17, #0x81c0, lsl #16
   1c9c8: 6b11021f     	cmp	w16, w17
   1c9cc: 54000040     	b.eq	0x1c9d4 <syna_testing_pt01_zte+0xd8>
   1c9d0: d4304520     	brk	#0x8229
   1c9d4: d63f0120     	blr	x9
   1c9d8: 37f80980     	tbnz	w0, #0x1f, 0x1cb08 <syna_testing_pt01_zte+0x20c>
   1c9dc: 394042a8     	ldrb	w8, [x21, #0x10]
   1c9e0: 90000009     	adrp	x9, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c9e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3331
   1c9e4: 91000129     	add	x9, x9, #0x0
		000000000001c9e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3331
   1c9e8: 7100011f     	cmp	w8, #0x0
   1c9ec: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001c9ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b45
   1c9f0: 91000108     	add	x8, x8, #0x0
		000000000001c9f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b45
   1c9f4: 9a891105     	csel	x5, x8, x9, ne
   1c9f8: f94006a3     	ldr	x3, [x21, #0x8]
   1c9fc: b94002a4     	ldr	w4, [x21]
   1ca00: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ca00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc90
   1ca04: 91000042     	add	x2, x2, #0x0
		000000000001ca04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc90
   1ca08: aa1303e0     	mov	x0, x19
   1ca0c: 52820001     	mov	w1, #0x1000             // =4096
   1ca10: 94000000     	bl	0x1ca10 <syna_testing_pt01_zte+0x114>
		000000000001ca10:  R_AARCH64_CALL26	scnprintf
   1ca14: b9401fe8     	ldr	w8, [sp, #0x1c]
   1ca18: 2a0003f4     	mov	w20, w0
   1ca1c: 34000308     	cbz	w8, 0x1ca7c <syna_testing_pt01_zte+0x180>
   1ca20: 2a1f03f6     	mov	w22, wzr
   1ca24: 52820017     	mov	w23, #0x1000            // =4096
   1ca28: 90000015     	adrp	x21, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ca28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b4a
   1ca2c: 910002b5     	add	x21, x21, #0x0
		000000000001ca2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b4a
   1ca30: f9400be8     	ldr	x8, [sp, #0x10]
   1ca34: 2a1403e9     	mov	w9, w20
   1ca38: aa1503e2     	mov	x2, x21
   1ca3c: cb0902e1     	sub	x1, x23, x9
   1ca40: 8b090260     	add	x0, x19, x9
   1ca44: 3876c903     	ldrb	w3, [x8, w22, sxtw]
   1ca48: 94000000     	bl	0x1ca48 <syna_testing_pt01_zte+0x14c>
		000000000001ca48:  R_AARCH64_CALL26	scnprintf
   1ca4c: b9401fe8     	ldr	w8, [sp, #0x1c]
   1ca50: 110006d6     	add	w22, w22, #0x1
   1ca54: 0b140014     	add	w20, w0, w20
   1ca58: 6b0802df     	cmp	w22, w8
   1ca5c: 54fffea3     	b.lo	0x1ca30 <syna_testing_pt01_zte+0x134>
   1ca60: 52820008     	mov	w8, #0x1000             // =4096
   1ca64: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001ca64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a9
   1ca68: 91000042     	add	x2, x2, #0x0
		000000000001ca68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a9
   1ca6c: cb140101     	sub	x1, x8, x20
   1ca70: 8b140260     	add	x0, x19, x20
   1ca74: 94000000     	bl	0x1ca74 <syna_testing_pt01_zte+0x178>
		000000000001ca74:  R_AARCH64_CALL26	scnprintf
   1ca78: 0b140014     	add	w20, w0, w20
   1ca7c: aa1303e0     	mov	x0, x19
   1ca80: 94000000     	bl	0x1ca80 <syna_testing_pt01_zte+0x184>
		000000000001ca80:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   1ca84: 394143e2     	ldrb	w2, [sp, #0x50]
   1ca88: 35000522     	cbnz	w2, 0x1cb2c <syna_testing_pt01_zte+0x230>
   1ca8c: f9400bf5     	ldr	x21, [sp, #0x10]
   1ca90: 94000000     	bl	0x1ca90 <syna_testing_pt01_zte+0x194>
		000000000001ca90:  R_AARCH64_CALL26	syna_request_managed_device
   1ca94: b4000580     	cbz	x0, 0x1cb44 <syna_testing_pt01_zte+0x248>
   1ca98: b4000075     	cbz	x21, 0x1caa4 <syna_testing_pt01_zte+0x1a8>
   1ca9c: aa1503e1     	mov	x1, x21
   1caa0: 94000000     	bl	0x1caa0 <syna_testing_pt01_zte+0x1a4>
		000000000001caa0:  R_AARCH64_CALL26	devm_kfree
   1caa4: aa1303e0     	mov	x0, x19
   1caa8: f9000fff     	str	xzr, [sp, #0x18]
   1caac: 390143ff     	strb	wzr, [sp, #0x50]
   1cab0: 94000000     	bl	0x1cab0 <syna_testing_pt01_zte+0x1b4>
		000000000001cab0:  R_AARCH64_CALL26	kfree
   1cab4: 14000008     	b	0x1cad4 <syna_testing_pt01_zte+0x1d8>
   1cab8: 90000002     	adrp	x2, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48b3
   1cabc: 91000042     	add	x2, x2, #0x0
		000000000001cabc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48b3
   1cac0: aa1303e0     	mov	x0, x19
   1cac4: 52820001     	mov	w1, #0x1000             // =4096
   1cac8: 52802003     	mov	w3, #0x100              // =256
   1cacc: 94000000     	bl	0x1cacc <syna_testing_pt01_zte+0x1d0>
		000000000001cacc:  R_AARCH64_CALL26	scnprintf
   1cad0: 2a0003f4     	mov	w20, w0
   1cad4: d5384108     	mrs	x8, SP_EL0
   1cad8: f9438908     	ldr	x8, [x8, #0x710]
   1cadc: f85f83a9     	ldur	x9, [x29, #-0x8]
   1cae0: eb09011f     	cmp	x8, x9
   1cae4: 540003c1     	b.ne	0x1cb5c <syna_testing_pt01_zte+0x260>
   1cae8: 2a1403e0     	mov	w0, w20
   1caec: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   1caf0: f9403bf7     	ldr	x23, [sp, #0x70]
   1caf4: a94857f6     	ldp	x22, x21, [sp, #0x80]
   1caf8: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   1cafc: 910283ff     	add	sp, sp, #0xa0
   1cb00: d50323bf     	autiasp
   1cb04: d65f03c0     	ret
   1cb08: f94006a2     	ldr	x2, [x21, #0x8]
   1cb0c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5401
   1cb10: 91000000     	add	x0, x0, #0x0
		000000000001cb10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5401
   1cb14: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43d
   1cb18: 91000021     	add	x1, x1, #0x0
		000000000001cb18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43d
   1cb1c: 94000000     	bl	0x1cb1c <syna_testing_pt01_zte+0x220>
		000000000001cb1c:  R_AARCH64_CALL26	_printk
   1cb20: 90000005     	adrp	x5, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3331
   1cb24: 910000a5     	add	x5, x5, #0x0
		000000000001cb24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3331
   1cb28: 17ffffb4     	b	0x1c9f8 <syna_testing_pt01_zte+0xfc>
   1cb2c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f1
   1cb30: 91000000     	add	x0, x0, #0x0
		000000000001cb30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f1
   1cb34: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ddc
   1cb38: 91000021     	add	x1, x1, #0x0
		000000000001cb38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ddc
   1cb3c: 94000000     	bl	0x1cb3c <syna_testing_pt01_zte+0x240>
		000000000001cb3c:  R_AARCH64_CALL26	_printk
   1cb40: 17ffffd3     	b	0x1ca8c <syna_testing_pt01_zte+0x190>
   1cb44: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bd5
   1cb48: 91000000     	add	x0, x0, #0x0
		000000000001cb48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bd5
   1cb4c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4449
   1cb50: 91000021     	add	x1, x1, #0x0
		000000000001cb50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4449
   1cb54: 94000000     	bl	0x1cb54 <syna_testing_pt01_zte+0x258>
		000000000001cb54:  R_AARCH64_CALL26	_printk
   1cb58: 17ffffd3     	b	0x1caa4 <syna_testing_pt01_zte+0x1a8>
   1cb5c: 94000000     	bl	0x1cb5c <syna_testing_pt01_zte+0x260>
		000000000001cb5c:  R_AARCH64_CALL26	__stack_chk_fail
   1cb60: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb60:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x168
   1cb64: 91000108     	add	x8, x8, #0x0
		000000000001cb64:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x168
   1cb68: d5384115     	mrs	x21, SP_EL0
   1cb6c: f9402ab6     	ldr	x22, [x21, #0x50]
   1cb70: f9002aa8     	str	x8, [x21, #0x50]
   1cb74: 90000008     	adrp	x8, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb74:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cb78: f9400100     	ldr	x0, [x8]
		000000000001cb78:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cb7c: 5281b801     	mov	w1, #0xdc0              // =3520
   1cb80: 52820002     	mov	w2, #0x1000             // =4096
   1cb84: 94000000     	bl	0x1cb84 <syna_testing_pt01_zte+0x288>
		000000000001cb84:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cb88: aa0003f3     	mov	x19, x0
   1cb8c: f9002ab6     	str	x22, [x21, #0x50]
   1cb90: b5ffee73     	cbnz	x19, 0x1c95c <syna_testing_pt01_zte+0x60>
   1cb94: 90000000     	adrp	x0, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bfb
   1cb98: 91000000     	add	x0, x0, #0x0
		000000000001cb98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bfb
   1cb9c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_write_flash+0x1a0>
		000000000001cb9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43d
   1cba0: 91000021     	add	x1, x1, #0x0
		000000000001cba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43d
   1cba4: 94000000     	bl	0x1cba4 <syna_testing_pt01_zte+0x2a8>
		000000000001cba4:  R_AARCH64_CALL26	_printk
   1cba8: 12800174     	mov	w20, #-0xc              // =-12
   1cbac: 17ffffca     	b	0x1cad4 <syna_testing_pt01_zte+0x1d8>
