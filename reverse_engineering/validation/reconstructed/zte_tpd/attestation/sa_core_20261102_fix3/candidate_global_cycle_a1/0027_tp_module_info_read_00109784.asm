
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024aa0 <tp_module_info_read>:
   24aa0: d503233f     	paciasp
   24aa4: d10483ff     	sub	sp, sp, #0x120
   24aa8: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
   24aac: f90073fc     	str	x28, [sp, #0xe0]
   24ab0: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
   24ab4: a91057f6     	stp	x22, x21, [sp, #0x100]
   24ab8: a9114ff4     	stp	x20, x19, [sp, #0x110]
   24abc: 910343fd     	add	x29, sp, #0xd0
   24ac0: d5384108     	mrs	x8, SP_EL0
   24ac4: f9438908     	ldr	x8, [x8, #0x710]
   24ac8: f81f83a8     	stur	x8, [x29, #-0x8]
   24acc: f9400068     	ldr	x8, [x3]
   24ad0: b4000068     	cbz	x8, 0x24adc <tp_module_info_read+0x3c>
   24ad4: aa1f03e0     	mov	x0, xzr
   24ad8: 1400008b     	b	0x24d04 <tp_module_info_read+0x264>
   24adc: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024adc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24ae0: aa0103f5     	mov	x21, x1
   24ae4: aa0203f4     	mov	x20, x2
   24ae8: f9400116     	ldr	x22, [x8]
		0000000000024ae8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24aec: aa0303f3     	mov	x19, x3
   24af0: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   24af4: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   24af8: f94712c8     	ldr	x8, [x22, #0xe20]
   24afc: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   24b00: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   24b04: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   24b08: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   24b0c: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   24b10: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   24b14: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   24b18: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   24b1c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   24b20: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   24b24: f90003ff     	str	xzr, [sp]
   24b28: b4000128     	cbz	x8, 0x24b4c <tp_module_info_read+0xac>
   24b2c: aa1603e0     	mov	x0, x22
   24b30: b85fc110     	ldur	w16, [x8, #-0x4]
   24b34: 7281af31     	movk	w17, #0xd79
   24b38: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   24b3c: 6b11021f     	cmp	w16, w17
   24b40: 54000040     	b.eq	0x24b48 <tp_module_info_read+0xa8>
   24b44: d4304500     	brk	#0x8228
   24b48: d63f0100     	blr	x8
   24b4c: b94cfec4     	ldr	w4, [x22, #0xcfc]
   24b50: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af2e
   24b54: 91000042     	add	x2, x2, #0x0
		0000000000024b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af2e
   24b58: 910003e0     	mov	x0, sp
   24b5c: 913502c3     	add	x3, x22, #0xd40
   24b60: 52801901     	mov	w1, #0xc8               // =200
   24b64: 910003f7     	mov	x23, sp
   24b68: 94000000     	bl	0x24b68 <tp_module_info_read+0xc8>
		0000000000024b68:  R_AARCH64_CALL26	snprintf
   24b6c: 7103201f     	cmp	w0, #0xc8
   24b70: 54000e48     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24b74: 2a0003f8     	mov	w24, w0
   24b78: 52801908     	mov	w8, #0xc8               // =200
   24b7c: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17782
   24b80: 91000042     	add	x2, x2, #0x0
		0000000000024b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17782
   24b84: cb180101     	sub	x1, x8, x24
   24b88: 8b1802e0     	add	x0, x23, x24
   24b8c: 913462c3     	add	x3, x22, #0xd18
   24b90: 94000000     	bl	0x24b90 <tp_module_info_read+0xf0>
		0000000000024b90:  R_AARCH64_CALL26	snprintf
   24b94: b94d0ec3     	ldr	w3, [x22, #0xd0c]
   24b98: 8b20c317     	add	x23, x24, w0, sxtw
   24b9c: 34000163     	cbz	w3, 0x24bc8 <tp_module_info_read+0x128>
   24ba0: f10322ff     	cmp	x23, #0xc8
   24ba4: 54000ca8     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24ba8: 52801908     	mov	w8, #0xc8               // =200
   24bac: 910003e9     	mov	x9, sp
   24bb0: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19413
   24bb4: 91000042     	add	x2, x2, #0x0
		0000000000024bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19413
   24bb8: cb170101     	sub	x1, x8, x23
   24bbc: 8b170120     	add	x0, x9, x23
   24bc0: 94000000     	bl	0x24bc0 <tp_module_info_read+0x120>
		0000000000024bc0:  R_AARCH64_CALL26	snprintf
   24bc4: 8b20c2f7     	add	x23, x23, w0, sxtw
   24bc8: b94d16c3     	ldr	w3, [x22, #0xd14]
   24bcc: 34000163     	cbz	w3, 0x24bf8 <tp_module_info_read+0x158>
   24bd0: f10322ff     	cmp	x23, #0xc8
   24bd4: 54000b28     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24bd8: 52801908     	mov	w8, #0xc8               // =200
   24bdc: 910003e9     	mov	x9, sp
   24be0: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a356
   24be4: 91000042     	add	x2, x2, #0x0
		0000000000024be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a356
   24be8: cb170101     	sub	x1, x8, x23
   24bec: 8b170120     	add	x0, x9, x23
   24bf0: 94000000     	bl	0x24bf0 <tp_module_info_read+0x150>
		0000000000024bf0:  R_AARCH64_CALL26	snprintf
   24bf4: 8b20c2f7     	add	x23, x23, w0, sxtw
   24bf8: f10322ff     	cmp	x23, #0xc8
   24bfc: 540009e8     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24c00: 52801908     	mov	w8, #0xc8               // =200
   24c04: b94d02c3     	ldr	w3, [x22, #0xd00]
   24c08: 910003e9     	mov	x9, sp
   24c0c: cb170101     	sub	x1, x8, x23
   24c10: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1864c
   24c14: 91000042     	add	x2, x2, #0x0
		0000000000024c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1864c
   24c18: 8b170120     	add	x0, x9, x23
   24c1c: 94000000     	bl	0x24c1c <tp_module_info_read+0x17c>
		0000000000024c1c:  R_AARCH64_CALL26	snprintf
   24c20: b94d06c3     	ldr	w3, [x22, #0xd04]
   24c24: 8b20c2f7     	add	x23, x23, w0, sxtw
   24c28: 34000163     	cbz	w3, 0x24c54 <tp_module_info_read+0x1b4>
   24c2c: f10322ff     	cmp	x23, #0xc8
   24c30: 54000848     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24c34: 52801908     	mov	w8, #0xc8               // =200
   24c38: 910003e9     	mov	x9, sp
   24c3c: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c68e
   24c40: 91000042     	add	x2, x2, #0x0
		0000000000024c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c68e
   24c44: cb170101     	sub	x1, x8, x23
   24c48: 8b170120     	add	x0, x9, x23
   24c4c: 94000000     	bl	0x24c4c <tp_module_info_read+0x1ac>
		0000000000024c4c:  R_AARCH64_CALL26	snprintf
   24c50: 8b20c2f7     	add	x23, x23, w0, sxtw
   24c54: b94d0ac3     	ldr	w3, [x22, #0xd08]
   24c58: 34000163     	cbz	w3, 0x24c84 <tp_module_info_read+0x1e4>
   24c5c: f10322ff     	cmp	x23, #0xc8
   24c60: 540006c8     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24c64: 52801908     	mov	w8, #0xc8               // =200
   24c68: 910003e9     	mov	x9, sp
   24c6c: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17568
   24c70: 91000042     	add	x2, x2, #0x0
		0000000000024c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17568
   24c74: cb170101     	sub	x1, x8, x23
   24c78: 8b170120     	add	x0, x9, x23
   24c7c: 94000000     	bl	0x24c7c <tp_module_info_read+0x1dc>
		0000000000024c7c:  R_AARCH64_CALL26	snprintf
   24c80: 8b20c2f7     	add	x23, x23, w0, sxtw
   24c84: 3975a2c8     	ldrb	w8, [x22, #0xd68]
   24c88: 34000188     	cbz	w8, 0x24cb8 <tp_module_info_read+0x218>
   24c8c: f10322ff     	cmp	x23, #0xc8
   24c90: 54000548     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24c94: 52801908     	mov	w8, #0xc8               // =200
   24c98: 910003e9     	mov	x9, sp
   24c9c: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af43
   24ca0: 91000042     	add	x2, x2, #0x0
		0000000000024ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af43
   24ca4: cb170101     	sub	x1, x8, x23
   24ca8: 8b170120     	add	x0, x9, x23
   24cac: 9135a2c3     	add	x3, x22, #0xd68
   24cb0: 94000000     	bl	0x24cb0 <tp_module_info_read+0x210>
		0000000000024cb0:  R_AARCH64_CALL26	snprintf
   24cb4: 8b20c2f7     	add	x23, x23, w0, sxtw
   24cb8: 397642c8     	ldrb	w8, [x22, #0xd90]
   24cbc: 34000188     	cbz	w8, 0x24cec <tp_module_info_read+0x24c>
   24cc0: f10322ff     	cmp	x23, #0xc8
   24cc4: 540003a8     	b.hi	0x24d38 <tp_module_info_read+0x298>
   24cc8: 52801908     	mov	w8, #0xc8               // =200
   24ccc: 910003e9     	mov	x9, sp
   24cd0: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9cf
   24cd4: 91000042     	add	x2, x2, #0x0
		0000000000024cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9cf
   24cd8: cb170101     	sub	x1, x8, x23
   24cdc: 8b170120     	add	x0, x9, x23
   24ce0: 913642c3     	add	x3, x22, #0xd90
   24ce4: 94000000     	bl	0x24ce4 <tp_module_info_read+0x244>
		0000000000024ce4:  R_AARCH64_CALL26	snprintf
   24ce8: 8b20c2f7     	add	x23, x23, w0, sxtw
   24cec: 910003e3     	mov	x3, sp
   24cf0: aa1503e0     	mov	x0, x21
   24cf4: aa1403e1     	mov	x1, x20
   24cf8: aa1303e2     	mov	x2, x19
   24cfc: aa1703e4     	mov	x4, x23
   24d00: 94000000     	bl	0x24d00 <tp_module_info_read+0x260>
		0000000000024d00:  R_AARCH64_CALL26	simple_read_from_buffer
   24d04: d5384108     	mrs	x8, SP_EL0
   24d08: f9438908     	ldr	x8, [x8, #0x710]
   24d0c: f85f83a9     	ldur	x9, [x29, #-0x8]
   24d10: eb09011f     	cmp	x8, x9
   24d14: 54000141     	b.ne	0x24d3c <tp_module_info_read+0x29c>
   24d18: a9514ff4     	ldp	x20, x19, [sp, #0x110]
   24d1c: f94073fc     	ldr	x28, [sp, #0xe0]
   24d20: a95057f6     	ldp	x22, x21, [sp, #0x100]
   24d24: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
   24d28: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
   24d2c: 910483ff     	add	sp, sp, #0x120
   24d30: d50323bf     	autiasp
   24d34: d65f03c0     	ret
   24d38: d42aa240     	brk	#0x5512
   24d3c: 94000000     	bl	0x24d3c <tp_module_info_read+0x29c>
		0000000000024d3c:  R_AARCH64_CALL26	__stack_chk_fail
