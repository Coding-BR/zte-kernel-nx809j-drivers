
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000297b0 <syna_testing_check_dev_id_show>:
   297b0: d503233f     	paciasp
   297b4: d10403ff     	sub	sp, sp, #0x100
   297b8: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   297bc: f90063f9     	str	x25, [sp, #0xc0]
   297c0: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
   297c4: a90e57f6     	stp	x22, x21, [sp, #0xe0]
   297c8: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
   297cc: 9102c3fd     	add	x29, sp, #0xb0
   297d0: d5384108     	mrs	x8, SP_EL0
   297d4: aa0203f3     	mov	x19, x2
   297d8: f9438908     	ldr	x8, [x8, #0x710]
   297dc: f81f83a8     	stur	x8, [x29, #-0x8]
   297e0: f9400c08     	ldr	x8, [x0, #0x18]
   297e4: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   297e8: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   297ec: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   297f0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   297f4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   297f8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   297fc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29800: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29804: f9400d08     	ldr	x8, [x8, #0x18]
   29808: f9000bff     	str	xzr, [sp, #0x10]
   2980c: f9404d17     	ldr	x23, [x8, #0x98]
   29810: 39560ae8     	ldrb	w8, [x23, #0x582]
   29814: 36000ca8     	tbz	w8, #0x0, 0x299a8 <syna_testing_check_dev_id_show+0x1f8>
   29818: 94000000     	bl	0x29818 <syna_testing_check_dev_id_show+0x68>
		0000000000029818:  R_AARCH64_CALL26	syna_tcm_get_testing_0001
   2981c: b4000d20     	cbz	x0, 0x299c0 <syna_testing_check_dev_id_show+0x210>
   29820: 910063f8     	add	x24, sp, #0x18
   29824: 90000015     	adrp	x21, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c22b
   29828: 910002b5     	add	x21, x21, #0x0
		0000000000029828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c22b
   2982c: 90000016     	adrp	x22, 0x29000 <syna_dev_reflash_startup_work+0x84>
		000000000002982c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5168
   29830: 910002d6     	add	x22, x22, #0x0
		0000000000029830:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x5168
   29834: aa0003f4     	mov	x20, x0
   29838: 91004300     	add	x0, x24, #0x10
   2983c: aa1503e1     	mov	x1, x21
   29840: aa1603e2     	mov	x2, x22
   29844: 390163ff     	strb	wzr, [sp, #0x58]
   29848: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   2984c: 94000000     	bl	0x2984c <syna_testing_check_dev_id_show+0x9c>
		000000000002984c:  R_AARCH64_CALL26	__mutex_init
   29850: 91016300     	add	x0, x24, #0x58
   29854: aa1503e1     	mov	x1, x21
   29858: aa1603e2     	mov	x2, x22
   2985c: f9006e98     	str	x24, [x20, #0xd8]
   29860: 91012319     	add	x25, x24, #0x48
   29864: 390283ff     	strb	wzr, [sp, #0xa0]
   29868: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   2986c: 94000000     	bl	0x2986c <syna_testing_check_dev_id_show+0xbc>
		000000000002986c:  R_AARCH64_CALL26	__mutex_init
   29870: 90000008     	adrp	x8, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c446
   29874: 91000108     	add	x8, x8, #0x0
		0000000000029874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c446
   29878: f9007299     	str	x25, [x20, #0xe0]
   2987c: f90007e8     	str	x8, [sp, #0x8]
   29880: 52800088     	mov	w8, #0x4                // =4
   29884: aa1403e1     	mov	x1, x20
   29888: b90013e8     	str	w8, [sp, #0x10]
   2988c: 910023e8     	add	x8, sp, #0x8
   29890: 2a1f03e2     	mov	w2, wzr
   29894: a903a29f     	stp	xzr, x8, [x20, #0x38]
   29898: f9400e88     	ldr	x8, [x20, #0x18]
   2989c: f94002e0     	ldr	x0, [x23]
   298a0: b85fc110     	ldur	w16, [x8, #-0x4]
   298a4: 72895251     	movk	w17, #0x4a92
   298a8: 72b03811     	movk	w17, #0x81c0, lsl #16
   298ac: 6b11021f     	cmp	w16, w17
   298b0: 54000040     	b.eq	0x298b8 <syna_testing_check_dev_id_show+0x108>
   298b4: d4304500     	brk	#0x8228
   298b8: d63f0100     	blr	x8
   298bc: 37f80aa0     	tbnz	w0, #0x1f, 0x29a10 <syna_testing_check_dev_id_show+0x260>
   298c0: 39404288     	ldrb	w8, [x20, #0x10]
   298c4: 90000009     	adrp	x9, 0x29000 <syna_dev_reflash_startup_work+0x84>
		00000000000298c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa02
   298c8: 91000129     	add	x9, x9, #0x0
		00000000000298c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa02
   298cc: 7100011f     	cmp	w8, #0x0
   298d0: 90000008     	adrp	x8, 0x29000 <syna_dev_reflash_startup_work+0x84>
		00000000000298d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b38a
   298d4: 91000108     	add	x8, x8, #0x0
		00000000000298d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b38a
   298d8: 9a891105     	csel	x5, x8, x9, ne
   298dc: f9400683     	ldr	x3, [x20, #0x8]
   298e0: b9400284     	ldr	w4, [x20]
   298e4: 90000002     	adrp	x2, 0x29000 <syna_dev_reflash_startup_work+0x84>
		00000000000298e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1809b
   298e8: 91000042     	add	x2, x2, #0x0
		00000000000298e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1809b
   298ec: aa1303e0     	mov	x0, x19
   298f0: 52820001     	mov	w1, #0x1000             // =4096
   298f4: 94000000     	bl	0x298f4 <syna_testing_check_dev_id_show+0x144>
		00000000000298f4:  R_AARCH64_CALL26	scnprintf
   298f8: b94027e8     	ldr	w8, [sp, #0x24]
   298fc: 2a0003f4     	mov	w20, w0
   29900: 34000168     	cbz	w8, 0x2992c <syna_testing_check_dev_id_show+0x17c>
   29904: f9400fe8     	ldr	x8, [sp, #0x18]
   29908: 2a1403e9     	mov	w9, w20
   2990c: 5282000a     	mov	w10, #0x1000            // =4096
   29910: cb090141     	sub	x1, x10, x9
   29914: 90000002     	adrp	x2, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c657
   29918: 91000042     	add	x2, x2, #0x0
		0000000000029918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c657
   2991c: b9400103     	ldr	w3, [x8]
   29920: 8b090260     	add	x0, x19, x9
   29924: 94000000     	bl	0x29924 <syna_testing_check_dev_id_show+0x174>
		0000000000029924:  R_AARCH64_CALL26	scnprintf
   29928: 0b140014     	add	w20, w0, w20
   2992c: b9406fe8     	ldr	w8, [sp, #0x6c]
   29930: 34000148     	cbz	w8, 0x29958 <syna_testing_check_dev_id_show+0x1a8>
   29934: 2a1403e8     	mov	w8, w20
   29938: 52820009     	mov	w9, #0x1000             // =4096
   2993c: f94033e3     	ldr	x3, [sp, #0x60]
   29940: cb080121     	sub	x1, x9, x8
   29944: 90000002     	adrp	x2, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af13
   29948: 91000042     	add	x2, x2, #0x0
		0000000000029948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af13
   2994c: 8b080260     	add	x0, x19, x8
   29950: 94000000     	bl	0x29950 <syna_testing_check_dev_id_show+0x1a0>
		0000000000029950:  R_AARCH64_CALL26	scnprintf
   29954: 0b140014     	add	w20, w0, w20
   29958: 394163e2     	ldrb	w2, [sp, #0x58]
   2995c: 350006c2     	cbnz	w2, 0x29a34 <syna_testing_check_dev_id_show+0x284>
   29960: f9400ff3     	ldr	x19, [sp, #0x18]
   29964: 94000000     	bl	0x29964 <syna_testing_check_dev_id_show+0x1b4>
		0000000000029964:  R_AARCH64_CALL26	syna_request_managed_device
   29968: b4000720     	cbz	x0, 0x29a4c <syna_testing_check_dev_id_show+0x29c>
   2996c: b4000073     	cbz	x19, 0x29978 <syna_testing_check_dev_id_show+0x1c8>
   29970: aa1303e1     	mov	x1, x19
   29974: 94000000     	bl	0x29974 <syna_testing_check_dev_id_show+0x1c4>
		0000000000029974:  R_AARCH64_CALL26	devm_kfree
   29978: 394283e2     	ldrb	w2, [sp, #0xa0]
   2997c: f90013ff     	str	xzr, [sp, #0x20]
   29980: 390163ff     	strb	wzr, [sp, #0x58]
   29984: 35000702     	cbnz	w2, 0x29a64 <syna_testing_check_dev_id_show+0x2b4>
   29988: f94033f3     	ldr	x19, [sp, #0x60]
   2998c: 94000000     	bl	0x2998c <syna_testing_check_dev_id_show+0x1dc>
		000000000002998c:  R_AARCH64_CALL26	syna_request_managed_device
   29990: b4000760     	cbz	x0, 0x29a7c <syna_testing_check_dev_id_show+0x2cc>
   29994: b4000073     	cbz	x19, 0x299a0 <syna_testing_check_dev_id_show+0x1f0>
   29998: aa1303e1     	mov	x1, x19
   2999c: 94000000     	bl	0x2999c <syna_testing_check_dev_id_show+0x1ec>
		000000000002999c:  R_AARCH64_CALL26	devm_kfree
   299a0: 2a1403e0     	mov	w0, w20
   299a4: 1400000e     	b	0x299dc <syna_testing_check_dev_id_show+0x22c>
   299a8: 90000002     	adrp	x2, 0x29000 <syna_dev_reflash_startup_work+0x84>
		00000000000299a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cad6
   299ac: 91000042     	add	x2, x2, #0x0
		00000000000299ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cad6
   299b0: aa1303e0     	mov	x0, x19
   299b4: 52820001     	mov	w1, #0x1000             // =4096
   299b8: 94000000     	bl	0x299b8 <syna_testing_check_dev_id_show+0x208>
		00000000000299b8:  R_AARCH64_CALL26	scnprintf
   299bc: 14000007     	b	0x299d8 <syna_testing_check_dev_id_show+0x228>
   299c0: 90000002     	adrp	x2, 0x29000 <syna_dev_reflash_startup_work+0x84>
		00000000000299c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0aa
   299c4: 91000042     	add	x2, x2, #0x0
		00000000000299c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0aa
   299c8: aa1303e0     	mov	x0, x19
   299cc: 52820001     	mov	w1, #0x1000             // =4096
   299d0: 52800023     	mov	w3, #0x1                // =1
   299d4: 94000000     	bl	0x299d4 <syna_testing_check_dev_id_show+0x224>
		00000000000299d4:  R_AARCH64_CALL26	scnprintf
   299d8: 93407c00     	sxtw	x0, w0
   299dc: d5384108     	mrs	x8, SP_EL0
   299e0: f9438908     	ldr	x8, [x8, #0x710]
   299e4: f85f83a9     	ldur	x9, [x29, #-0x8]
   299e8: eb09011f     	cmp	x8, x9
   299ec: 54000541     	b.ne	0x29a94 <syna_testing_check_dev_id_show+0x2e4>
   299f0: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
   299f4: f94063f9     	ldr	x25, [sp, #0xc0]
   299f8: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
   299fc: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
   29a00: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   29a04: 910403ff     	add	sp, sp, #0x100
   29a08: d50323bf     	autiasp
   29a0c: d65f03c0     	ret
   29a10: f9400682     	ldr	x2, [x20, #0x8]
   29a14: 90000000     	adrp	x0, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb0a
   29a18: 91000000     	add	x0, x0, #0x0
		0000000000029a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb0a
   29a1c: 90000001     	adrp	x1, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aef4
   29a20: 91000021     	add	x1, x1, #0x0
		0000000000029a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aef4
   29a24: 94000000     	bl	0x29a24 <syna_testing_check_dev_id_show+0x274>
		0000000000029a24:  R_AARCH64_CALL26	_printk
   29a28: 90000005     	adrp	x5, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa02
   29a2c: 910000a5     	add	x5, x5, #0x0
		0000000000029a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa02
   29a30: 17ffffab     	b	0x298dc <syna_testing_check_dev_id_show+0x12c>
   29a34: 90000000     	adrp	x0, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b95
   29a38: 91000000     	add	x0, x0, #0x0
		0000000000029a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b95
   29a3c: 90000001     	adrp	x1, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a415
   29a40: 91000021     	add	x1, x1, #0x0
		0000000000029a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a415
   29a44: 94000000     	bl	0x29a44 <syna_testing_check_dev_id_show+0x294>
		0000000000029a44:  R_AARCH64_CALL26	_printk
   29a48: 17ffffc6     	b	0x29960 <syna_testing_check_dev_id_show+0x1b0>
   29a4c: 90000000     	adrp	x0, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c24e
   29a50: 91000000     	add	x0, x0, #0x0
		0000000000029a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c24e
   29a54: 90000001     	adrp	x1, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc74
   29a58: 91000021     	add	x1, x1, #0x0
		0000000000029a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc74
   29a5c: 94000000     	bl	0x29a5c <syna_testing_check_dev_id_show+0x2ac>
		0000000000029a5c:  R_AARCH64_CALL26	_printk
   29a60: 17ffffc6     	b	0x29978 <syna_testing_check_dev_id_show+0x1c8>
   29a64: 90000000     	adrp	x0, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b95
   29a68: 91000000     	add	x0, x0, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b95
   29a6c: 90000001     	adrp	x1, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a415
   29a70: 91000021     	add	x1, x1, #0x0
		0000000000029a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a415
   29a74: 94000000     	bl	0x29a74 <syna_testing_check_dev_id_show+0x2c4>
		0000000000029a74:  R_AARCH64_CALL26	_printk
   29a78: 17ffffc4     	b	0x29988 <syna_testing_check_dev_id_show+0x1d8>
   29a7c: 90000000     	adrp	x0, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c24e
   29a80: 91000000     	add	x0, x0, #0x0
		0000000000029a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c24e
   29a84: 90000001     	adrp	x1, 0x29000 <syna_dev_reflash_startup_work+0x84>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc74
   29a88: 91000021     	add	x1, x1, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc74
   29a8c: 94000000     	bl	0x29a8c <syna_testing_check_dev_id_show+0x2dc>
		0000000000029a8c:  R_AARCH64_CALL26	_printk
   29a90: 17ffffc4     	b	0x299a0 <syna_testing_check_dev_id_show+0x1f0>
   29a94: 94000000     	bl	0x29a94 <syna_testing_check_dev_id_show+0x2e4>
		0000000000029a94:  R_AARCH64_CALL26	__stack_chk_fail
