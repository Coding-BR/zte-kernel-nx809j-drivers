
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029e74 <tp_module_info_read>:
   29e74: d503233f     	paciasp
   29e78: d10483ff     	sub	sp, sp, #0x120
   29e7c: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
   29e80: f90073fc     	str	x28, [sp, #0xe0]
   29e84: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
   29e88: a91057f6     	stp	x22, x21, [sp, #0x100]
   29e8c: a9114ff4     	stp	x20, x19, [sp, #0x110]
   29e90: 910343fd     	add	x29, sp, #0xd0
   29e94: d5384108     	mrs	x8, SP_EL0
   29e98: f9438908     	ldr	x8, [x8, #0x710]
   29e9c: f81f83a8     	stur	x8, [x29, #-0x8]
   29ea0: f9400068     	ldr	x8, [x3]
   29ea4: b4000068     	cbz	x8, 0x29eb0 <tp_module_info_read+0x3c>
   29ea8: aa1f03e0     	mov	x0, xzr
   29eac: 1400008b     	b	0x2a0d8 <tp_module_info_read+0x264>
   29eb0: 90000008     	adrp	x8, 0x29000 <syna_testing_check_config_id_show+0x94>
		0000000000029eb0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   29eb4: aa0103f5     	mov	x21, x1
   29eb8: aa0203f4     	mov	x20, x2
   29ebc: f9400116     	ldr	x22, [x8]
		0000000000029ebc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   29ec0: aa0303f3     	mov	x19, x3
   29ec4: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   29ec8: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   29ecc: f94712c8     	ldr	x8, [x22, #0xe20]
   29ed0: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   29ed4: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   29ed8: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   29edc: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   29ee0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   29ee4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29ee8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29eec: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29ef0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29ef4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   29ef8: f90003ff     	str	xzr, [sp]
   29efc: b4000128     	cbz	x8, 0x29f20 <tp_module_info_read+0xac>
   29f00: aa1603e0     	mov	x0, x22
   29f04: b85fc110     	ldur	w16, [x8, #-0x4]
   29f08: 7281af31     	movk	w17, #0xd79
   29f0c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   29f10: 6b11021f     	cmp	w16, w17
   29f14: 54000040     	b.eq	0x29f1c <tp_module_info_read+0xa8>
   29f18: d4304500     	brk	#0x8228
   29f1c: d63f0100     	blr	x8
   29f20: b94cfec4     	ldr	w4, [x22, #0xcfc]
   29f24: 90000002     	adrp	x2, 0x29000 <syna_testing_check_config_id_show+0x94>
		0000000000029f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdbd
   29f28: 91000042     	add	x2, x2, #0x0
		0000000000029f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdbd
   29f2c: 910003e0     	mov	x0, sp
   29f30: 913502c3     	add	x3, x22, #0xd40
   29f34: 52801901     	mov	w1, #0xc8               // =200
   29f38: 910003f7     	mov	x23, sp
   29f3c: 94000000     	bl	0x29f3c <tp_module_info_read+0xc8>
		0000000000029f3c:  R_AARCH64_CALL26	snprintf
   29f40: 7103201f     	cmp	w0, #0xc8
   29f44: 54000e48     	b.hi	0x2a10c <tp_module_info_read+0x298>
   29f48: 2a0003f8     	mov	w24, w0
   29f4c: 52801908     	mov	w8, #0xc8               // =200
   29f50: 90000002     	adrp	x2, 0x29000 <syna_testing_check_config_id_show+0x94>
		0000000000029f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1787b
   29f54: 91000042     	add	x2, x2, #0x0
		0000000000029f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1787b
   29f58: cb180101     	sub	x1, x8, x24
   29f5c: 8b1802e0     	add	x0, x23, x24
   29f60: 913462c3     	add	x3, x22, #0xd18
   29f64: 94000000     	bl	0x29f64 <tp_module_info_read+0xf0>
		0000000000029f64:  R_AARCH64_CALL26	snprintf
   29f68: b94d0ec3     	ldr	w3, [x22, #0xd0c]
   29f6c: 8b20c317     	add	x23, x24, w0, sxtw
   29f70: 34000163     	cbz	w3, 0x29f9c <tp_module_info_read+0x128>
   29f74: f10322ff     	cmp	x23, #0xc8
   29f78: 54000ca8     	b.hi	0x2a10c <tp_module_info_read+0x298>
   29f7c: 52801908     	mov	w8, #0xc8               // =200
   29f80: 910003e9     	mov	x9, sp
   29f84: 90000002     	adrp	x2, 0x29000 <syna_testing_check_config_id_show+0x94>
		0000000000029f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19beb
   29f88: 91000042     	add	x2, x2, #0x0
		0000000000029f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19beb
   29f8c: cb170101     	sub	x1, x8, x23
   29f90: 8b170120     	add	x0, x9, x23
   29f94: 94000000     	bl	0x29f94 <tp_module_info_read+0x120>
		0000000000029f94:  R_AARCH64_CALL26	snprintf
   29f98: 8b20c2f7     	add	x23, x23, w0, sxtw
   29f9c: b94d16c3     	ldr	w3, [x22, #0xd14]
   29fa0: 34000163     	cbz	w3, 0x29fcc <tp_module_info_read+0x158>
   29fa4: f10322ff     	cmp	x23, #0xc8
   29fa8: 54000b28     	b.hi	0x2a10c <tp_module_info_read+0x298>
   29fac: 52801908     	mov	w8, #0xc8               // =200
   29fb0: 910003e9     	mov	x9, sp
   29fb4: 90000002     	adrp	x2, 0x29000 <syna_testing_check_config_id_show+0x94>
		0000000000029fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af60
   29fb8: 91000042     	add	x2, x2, #0x0
		0000000000029fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af60
   29fbc: cb170101     	sub	x1, x8, x23
   29fc0: 8b170120     	add	x0, x9, x23
   29fc4: 94000000     	bl	0x29fc4 <tp_module_info_read+0x150>
		0000000000029fc4:  R_AARCH64_CALL26	snprintf
   29fc8: 8b20c2f7     	add	x23, x23, w0, sxtw
   29fcc: f10322ff     	cmp	x23, #0xc8
   29fd0: 540009e8     	b.hi	0x2a10c <tp_module_info_read+0x298>
   29fd4: 52801908     	mov	w8, #0xc8               // =200
   29fd8: b94d02c3     	ldr	w3, [x22, #0xd00]
   29fdc: 910003e9     	mov	x9, sp
   29fe0: cb170101     	sub	x1, x8, x23
   29fe4: 90000002     	adrp	x2, 0x29000 <syna_testing_check_config_id_show+0x94>
		0000000000029fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b2f
   29fe8: 91000042     	add	x2, x2, #0x0
		0000000000029fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b2f
   29fec: 8b170120     	add	x0, x9, x23
   29ff0: 94000000     	bl	0x29ff0 <tp_module_info_read+0x17c>
		0000000000029ff0:  R_AARCH64_CALL26	snprintf
   29ff4: b94d06c3     	ldr	w3, [x22, #0xd04]
   29ff8: 8b20c2f7     	add	x23, x23, w0, sxtw
   29ffc: 34000163     	cbz	w3, 0x2a028 <tp_module_info_read+0x1b4>
   2a000: f10322ff     	cmp	x23, #0xc8
   2a004: 54000848     	b.hi	0x2a10c <tp_module_info_read+0x298>
   2a008: 52801908     	mov	w8, #0xc8               // =200
   2a00c: 910003e9     	mov	x9, sp
   2a010: 90000002     	adrp	x2, 0x2a000 <tp_module_info_read+0x18c>
		000000000002a010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d8ef
   2a014: 91000042     	add	x2, x2, #0x0
		000000000002a014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d8ef
   2a018: cb170101     	sub	x1, x8, x23
   2a01c: 8b170120     	add	x0, x9, x23
   2a020: 94000000     	bl	0x2a020 <tp_module_info_read+0x1ac>
		000000000002a020:  R_AARCH64_CALL26	snprintf
   2a024: 8b20c2f7     	add	x23, x23, w0, sxtw
   2a028: b94d0ac3     	ldr	w3, [x22, #0xd08]
   2a02c: 34000163     	cbz	w3, 0x2a058 <tp_module_info_read+0x1e4>
   2a030: f10322ff     	cmp	x23, #0xc8
   2a034: 540006c8     	b.hi	0x2a10c <tp_module_info_read+0x298>
   2a038: 52801908     	mov	w8, #0xc8               // =200
   2a03c: 910003e9     	mov	x9, sp
   2a040: 90000002     	adrp	x2, 0x2a000 <tp_module_info_read+0x18c>
		000000000002a040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17614
   2a044: 91000042     	add	x2, x2, #0x0
		000000000002a044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17614
   2a048: cb170101     	sub	x1, x8, x23
   2a04c: 8b170120     	add	x0, x9, x23
   2a050: 94000000     	bl	0x2a050 <tp_module_info_read+0x1dc>
		000000000002a050:  R_AARCH64_CALL26	snprintf
   2a054: 8b20c2f7     	add	x23, x23, w0, sxtw
   2a058: 3975a2c8     	ldrb	w8, [x22, #0xd68]
   2a05c: 34000188     	cbz	w8, 0x2a08c <tp_module_info_read+0x218>
   2a060: f10322ff     	cmp	x23, #0xc8
   2a064: 54000548     	b.hi	0x2a10c <tp_module_info_read+0x298>
   2a068: 52801908     	mov	w8, #0xc8               // =200
   2a06c: 910003e9     	mov	x9, sp
   2a070: 90000002     	adrp	x2, 0x2a000 <tp_module_info_read+0x18c>
		000000000002a070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdd2
   2a074: 91000042     	add	x2, x2, #0x0
		000000000002a074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdd2
   2a078: cb170101     	sub	x1, x8, x23
   2a07c: 8b170120     	add	x0, x9, x23
   2a080: 9135a2c3     	add	x3, x22, #0xd68
   2a084: 94000000     	bl	0x2a084 <tp_module_info_read+0x210>
		000000000002a084:  R_AARCH64_CALL26	snprintf
   2a088: 8b20c2f7     	add	x23, x23, w0, sxtw
   2a08c: 397642c8     	ldrb	w8, [x22, #0xd90]
   2a090: 34000188     	cbz	w8, 0x2a0c0 <tp_module_info_read+0x24c>
   2a094: f10322ff     	cmp	x23, #0xc8
   2a098: 540003a8     	b.hi	0x2a10c <tp_module_info_read+0x298>
   2a09c: 52801908     	mov	w8, #0xc8               // =200
   2a0a0: 910003e9     	mov	x9, sp
   2a0a4: 90000002     	adrp	x2, 0x2a000 <tp_module_info_read+0x18c>
		000000000002a0a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dcb7
   2a0a8: 91000042     	add	x2, x2, #0x0
		000000000002a0a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dcb7
   2a0ac: cb170101     	sub	x1, x8, x23
   2a0b0: 8b170120     	add	x0, x9, x23
   2a0b4: 913642c3     	add	x3, x22, #0xd90
   2a0b8: 94000000     	bl	0x2a0b8 <tp_module_info_read+0x244>
		000000000002a0b8:  R_AARCH64_CALL26	snprintf
   2a0bc: 8b20c2f7     	add	x23, x23, w0, sxtw
   2a0c0: 910003e3     	mov	x3, sp
   2a0c4: aa1503e0     	mov	x0, x21
   2a0c8: aa1403e1     	mov	x1, x20
   2a0cc: aa1303e2     	mov	x2, x19
   2a0d0: aa1703e4     	mov	x4, x23
   2a0d4: 94000000     	bl	0x2a0d4 <tp_module_info_read+0x260>
		000000000002a0d4:  R_AARCH64_CALL26	simple_read_from_buffer
   2a0d8: d5384108     	mrs	x8, SP_EL0
   2a0dc: f9438908     	ldr	x8, [x8, #0x710]
   2a0e0: f85f83a9     	ldur	x9, [x29, #-0x8]
   2a0e4: eb09011f     	cmp	x8, x9
   2a0e8: 54000141     	b.ne	0x2a110 <tp_module_info_read+0x29c>
   2a0ec: a9514ff4     	ldp	x20, x19, [sp, #0x110]
   2a0f0: f94073fc     	ldr	x28, [sp, #0xe0]
   2a0f4: a95057f6     	ldp	x22, x21, [sp, #0x100]
   2a0f8: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
   2a0fc: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
   2a100: 910483ff     	add	sp, sp, #0x120
   2a104: d50323bf     	autiasp
   2a108: d65f03c0     	ret
   2a10c: d42aa240     	brk	#0x5512
   2a110: 94000000     	bl	0x2a110 <tp_module_info_read+0x29c>
		000000000002a110:  R_AARCH64_CALL26	__stack_chk_fail
