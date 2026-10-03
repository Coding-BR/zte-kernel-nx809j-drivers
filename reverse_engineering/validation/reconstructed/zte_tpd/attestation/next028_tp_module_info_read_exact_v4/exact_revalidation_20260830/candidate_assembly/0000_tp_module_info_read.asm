
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024a44 <tp_module_info_read>:
   24a44: d503233f     	paciasp
   24a48: d10483ff     	sub	sp, sp, #0x120
   24a4c: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
   24a50: f90073fc     	str	x28, [sp, #0xe0]
   24a54: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
   24a58: a91057f6     	stp	x22, x21, [sp, #0x100]
   24a5c: a9114ff4     	stp	x20, x19, [sp, #0x110]
   24a60: 910343fd     	add	x29, sp, #0xd0
   24a64: d5384108     	mrs	x8, SP_EL0
   24a68: f9438908     	ldr	x8, [x8, #0x710]
   24a6c: f81f83a8     	stur	x8, [x29, #-0x8]
   24a70: f9400068     	ldr	x8, [x3]
   24a74: b4000068     	cbz	x8, 0x24a80 <tp_module_info_read+0x3c>
   24a78: aa1f03e0     	mov	x0, xzr
   24a7c: 1400008b     	b	0x24ca8 <tp_module_info_read+0x264>
   24a80: 90000008     	adrp	x8, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024a80:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24a84: aa0103f5     	mov	x21, x1
   24a88: aa0203f4     	mov	x20, x2
   24a8c: f9400116     	ldr	x22, [x8]
		0000000000024a8c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24a90: aa0303f3     	mov	x19, x3
   24a94: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   24a98: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   24a9c: f94712c8     	ldr	x8, [x22, #0xe20]
   24aa0: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   24aa4: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   24aa8: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   24aac: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   24ab0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   24ab4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   24ab8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   24abc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   24ac0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   24ac4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   24ac8: f90003ff     	str	xzr, [sp]
   24acc: b4000128     	cbz	x8, 0x24af0 <tp_module_info_read+0xac>
   24ad0: aa1603e0     	mov	x0, x22
   24ad4: b85fc110     	ldur	w16, [x8, #-0x4]
   24ad8: 7281af31     	movk	w17, #0xd79
   24adc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   24ae0: 6b11021f     	cmp	w16, w17
   24ae4: 54000040     	b.eq	0x24aec <tp_module_info_read+0xa8>
   24ae8: d4304500     	brk	#0x8228
   24aec: d63f0100     	blr	x8
   24af0: b94cfec4     	ldr	w4, [x22, #0xcfc]
   24af4: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af2e
   24af8: 91000042     	add	x2, x2, #0x0
		0000000000024af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af2e
   24afc: 910003e0     	mov	x0, sp
   24b00: 913502c3     	add	x3, x22, #0xd40
   24b04: 52801901     	mov	w1, #0xc8               // =200
   24b08: 910003f7     	mov	x23, sp
   24b0c: 94000000     	bl	0x24b0c <tp_module_info_read+0xc8>
		0000000000024b0c:  R_AARCH64_CALL26	snprintf
   24b10: 7103201f     	cmp	w0, #0xc8
   24b14: 54000e48     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24b18: 2a0003f8     	mov	w24, w0
   24b1c: 52801908     	mov	w8, #0xc8               // =200
   24b20: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17782
   24b24: 91000042     	add	x2, x2, #0x0
		0000000000024b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17782
   24b28: cb180101     	sub	x1, x8, x24
   24b2c: 8b1802e0     	add	x0, x23, x24
   24b30: 913462c3     	add	x3, x22, #0xd18
   24b34: 94000000     	bl	0x24b34 <tp_module_info_read+0xf0>
		0000000000024b34:  R_AARCH64_CALL26	snprintf
   24b38: b94d0ec3     	ldr	w3, [x22, #0xd0c]
   24b3c: 8b20c317     	add	x23, x24, w0, sxtw
   24b40: 34000163     	cbz	w3, 0x24b6c <tp_module_info_read+0x128>
   24b44: f10322ff     	cmp	x23, #0xc8
   24b48: 54000ca8     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24b4c: 52801908     	mov	w8, #0xc8               // =200
   24b50: 910003e9     	mov	x9, sp
   24b54: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19413
   24b58: 91000042     	add	x2, x2, #0x0
		0000000000024b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19413
   24b5c: cb170101     	sub	x1, x8, x23
   24b60: 8b170120     	add	x0, x9, x23
   24b64: 94000000     	bl	0x24b64 <tp_module_info_read+0x120>
		0000000000024b64:  R_AARCH64_CALL26	snprintf
   24b68: 8b20c2f7     	add	x23, x23, w0, sxtw
   24b6c: b94d16c3     	ldr	w3, [x22, #0xd14]
   24b70: 34000163     	cbz	w3, 0x24b9c <tp_module_info_read+0x158>
   24b74: f10322ff     	cmp	x23, #0xc8
   24b78: 54000b28     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24b7c: 52801908     	mov	w8, #0xc8               // =200
   24b80: 910003e9     	mov	x9, sp
   24b84: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a356
   24b88: 91000042     	add	x2, x2, #0x0
		0000000000024b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a356
   24b8c: cb170101     	sub	x1, x8, x23
   24b90: 8b170120     	add	x0, x9, x23
   24b94: 94000000     	bl	0x24b94 <tp_module_info_read+0x150>
		0000000000024b94:  R_AARCH64_CALL26	snprintf
   24b98: 8b20c2f7     	add	x23, x23, w0, sxtw
   24b9c: f10322ff     	cmp	x23, #0xc8
   24ba0: 540009e8     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24ba4: 52801908     	mov	w8, #0xc8               // =200
   24ba8: b94d02c3     	ldr	w3, [x22, #0xd00]
   24bac: 910003e9     	mov	x9, sp
   24bb0: cb170101     	sub	x1, x8, x23
   24bb4: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1864c
   24bb8: 91000042     	add	x2, x2, #0x0
		0000000000024bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1864c
   24bbc: 8b170120     	add	x0, x9, x23
   24bc0: 94000000     	bl	0x24bc0 <tp_module_info_read+0x17c>
		0000000000024bc0:  R_AARCH64_CALL26	snprintf
   24bc4: b94d06c3     	ldr	w3, [x22, #0xd04]
   24bc8: 8b20c2f7     	add	x23, x23, w0, sxtw
   24bcc: 34000163     	cbz	w3, 0x24bf8 <tp_module_info_read+0x1b4>
   24bd0: f10322ff     	cmp	x23, #0xc8
   24bd4: 54000848     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24bd8: 52801908     	mov	w8, #0xc8               // =200
   24bdc: 910003e9     	mov	x9, sp
   24be0: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c675
   24be4: 91000042     	add	x2, x2, #0x0
		0000000000024be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c675
   24be8: cb170101     	sub	x1, x8, x23
   24bec: 8b170120     	add	x0, x9, x23
   24bf0: 94000000     	bl	0x24bf0 <tp_module_info_read+0x1ac>
		0000000000024bf0:  R_AARCH64_CALL26	snprintf
   24bf4: 8b20c2f7     	add	x23, x23, w0, sxtw
   24bf8: b94d0ac3     	ldr	w3, [x22, #0xd08]
   24bfc: 34000163     	cbz	w3, 0x24c28 <tp_module_info_read+0x1e4>
   24c00: f10322ff     	cmp	x23, #0xc8
   24c04: 540006c8     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24c08: 52801908     	mov	w8, #0xc8               // =200
   24c0c: 910003e9     	mov	x9, sp
   24c10: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17568
   24c14: 91000042     	add	x2, x2, #0x0
		0000000000024c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17568
   24c18: cb170101     	sub	x1, x8, x23
   24c1c: 8b170120     	add	x0, x9, x23
   24c20: 94000000     	bl	0x24c20 <tp_module_info_read+0x1dc>
		0000000000024c20:  R_AARCH64_CALL26	snprintf
   24c24: 8b20c2f7     	add	x23, x23, w0, sxtw
   24c28: 3975a2c8     	ldrb	w8, [x22, #0xd68]
   24c2c: 34000188     	cbz	w8, 0x24c5c <tp_module_info_read+0x218>
   24c30: f10322ff     	cmp	x23, #0xc8
   24c34: 54000548     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24c38: 52801908     	mov	w8, #0xc8               // =200
   24c3c: 910003e9     	mov	x9, sp
   24c40: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af43
   24c44: 91000042     	add	x2, x2, #0x0
		0000000000024c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af43
   24c48: cb170101     	sub	x1, x8, x23
   24c4c: 8b170120     	add	x0, x9, x23
   24c50: 9135a2c3     	add	x3, x22, #0xd68
   24c54: 94000000     	bl	0x24c54 <tp_module_info_read+0x210>
		0000000000024c54:  R_AARCH64_CALL26	snprintf
   24c58: 8b20c2f7     	add	x23, x23, w0, sxtw
   24c5c: 397642c8     	ldrb	w8, [x22, #0xd90]
   24c60: 34000188     	cbz	w8, 0x24c90 <tp_module_info_read+0x24c>
   24c64: f10322ff     	cmp	x23, #0xc8
   24c68: 540003a8     	b.hi	0x24cdc <tp_module_info_read+0x298>
   24c6c: 52801908     	mov	w8, #0xc8               // =200
   24c70: 910003e9     	mov	x9, sp
   24c74: 90000002     	adrp	x2, 0x24000 <syna_tcm_testing_noise+0x4c>
		0000000000024c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9b6
   24c78: 91000042     	add	x2, x2, #0x0
		0000000000024c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9b6
   24c7c: cb170101     	sub	x1, x8, x23
   24c80: 8b170120     	add	x0, x9, x23
   24c84: 913642c3     	add	x3, x22, #0xd90
   24c88: 94000000     	bl	0x24c88 <tp_module_info_read+0x244>
		0000000000024c88:  R_AARCH64_CALL26	snprintf
   24c8c: 8b20c2f7     	add	x23, x23, w0, sxtw
   24c90: 910003e3     	mov	x3, sp
   24c94: aa1503e0     	mov	x0, x21
   24c98: aa1403e1     	mov	x1, x20
   24c9c: aa1303e2     	mov	x2, x19
   24ca0: aa1703e4     	mov	x4, x23
   24ca4: 94000000     	bl	0x24ca4 <tp_module_info_read+0x260>
		0000000000024ca4:  R_AARCH64_CALL26	simple_read_from_buffer
   24ca8: d5384108     	mrs	x8, SP_EL0
   24cac: f9438908     	ldr	x8, [x8, #0x710]
   24cb0: f85f83a9     	ldur	x9, [x29, #-0x8]
   24cb4: eb09011f     	cmp	x8, x9
   24cb8: 54000141     	b.ne	0x24ce0 <tp_module_info_read+0x29c>
   24cbc: a9514ff4     	ldp	x20, x19, [sp, #0x110]
   24cc0: f94073fc     	ldr	x28, [sp, #0xe0]
   24cc4: a95057f6     	ldp	x22, x21, [sp, #0x100]
   24cc8: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
   24ccc: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
   24cd0: 910483ff     	add	sp, sp, #0x120
   24cd4: d50323bf     	autiasp
   24cd8: d65f03c0     	ret
   24cdc: d42aa240     	brk	#0x5512
   24ce0: 94000000     	bl	0x24ce0 <tp_module_info_read+0x29c>
		0000000000024ce0:  R_AARCH64_CALL26	__stack_chk_fail
