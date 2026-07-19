
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c680 <syna_testing_pt01_zte>:
   1c680: d503233f     	paciasp
   1c684: d10203ff     	sub	sp, sp, #0x80
   1c688: a9057bfd     	stp	x29, x30, [sp, #0x50]
   1c68c: a90657f6     	stp	x22, x21, [sp, #0x60]
   1c690: a9074ff4     	stp	x20, x19, [sp, #0x70]
   1c694: 910143fd     	add	x29, sp, #0x50
   1c698: d5384108     	mrs	x8, SP_EL0
   1c69c: aa0003f4     	mov	x20, x0
   1c6a0: f9438908     	ldr	x8, [x8, #0x710]
   1c6a4: f81f83a8     	stur	x8, [x29, #-0x8]
   1c6a8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1c6ac: d5384108     	mrs	x8, SP_EL0
   1c6b0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1c6b4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1c6b8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1c6bc: d503201f     	nop
   1c6c0: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c6c0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1c6c4: 5281b801     	mov	w1, #0xdc0              // =3520
   1c6c8: 52820002     	mov	w2, #0x1000             // =4096
   1c6cc: f9400100     	ldr	x0, [x8]
		000000000001c6cc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1c6d0: 94000000     	bl	0x1c6d0 <syna_testing_pt01_zte+0x50>
		000000000001c6d0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1c6d4: aa0003f3     	mov	x19, x0
   1c6d8: b4000d33     	cbz	x19, 0x1c87c <syna_testing_pt01_zte+0x1fc>
   1c6dc: 94000000     	bl	0x1c6dc <syna_testing_pt01_zte+0x5c>
		000000000001c6dc:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
   1c6e0: b40006e0     	cbz	x0, 0x1c7bc <syna_testing_pt01_zte+0x13c>
   1c6e4: aa0003f5     	mov	x21, x0
   1c6e8: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f96
   1c6ec: 91000021     	add	x1, x1, #0x0
		000000000001c6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f96
   1c6f0: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c6f0:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
   1c6f4: 91000042     	add	x2, x2, #0x0
		000000000001c6f4:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
   1c6f8: 910063e0     	add	x0, sp, #0x18
   1c6fc: f90007ff     	str	xzr, [sp, #0x8]
   1c700: 94000000     	bl	0x1c700 <syna_testing_pt01_zte+0x80>
		000000000001c700:  R_AARCH64_CALL26	__mutex_init
   1c704: 910023e8     	add	x8, sp, #0x8
   1c708: 910043e9     	add	x9, sp, #0x10
   1c70c: aa1503e1     	mov	x1, x21
   1c710: f9006ea8     	str	x8, [x21, #0xd8]
   1c714: f9400ea8     	ldr	x8, [x21, #0x18]
   1c718: 2a1f03e2     	mov	w2, wzr
   1c71c: f9001ea9     	str	x9, [x21, #0x38]
   1c720: 90000009     	adrp	x9, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c720:  R_AARCH64_ADR_PREL_PG_HI21	pt01_limits
   1c724: 91000129     	add	x9, x9, #0x0
		000000000001c724:  R_AARCH64_ADD_ABS_LO12_NC	pt01_limits
   1c728: f9400280     	ldr	x0, [x20]
   1c72c: f9000be9     	str	x9, [sp, #0x10]
   1c730: b85fc110     	ldur	w16, [x8, #-0x4]
   1c734: 72895251     	movk	w17, #0x4a92
   1c738: 72b03811     	movk	w17, #0x81c0, lsl #16
   1c73c: 6b11021f     	cmp	w16, w17
   1c740: 54000040     	b.eq	0x1c748 <syna_testing_pt01_zte+0xc8>
   1c744: d4304500     	brk	#0x8228
   1c748: d63f0100     	blr	x8
   1c74c: 37f805c0     	tbnz	w0, #0x1f, 0x1c804 <syna_testing_pt01_zte+0x184>
   1c750: 394042a8     	ldrb	w8, [x21, #0x10]
   1c754: 90000009     	adrp	x9, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5a
   1c758: 91000129     	add	x9, x9, #0x0
		000000000001c758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5a
   1c75c: 7100011f     	cmp	w8, #0x0
   1c760: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1c764: 91000108     	add	x8, x8, #0x0
		000000000001c764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1c768: 9a890105     	csel	x5, x8, x9, eq
   1c76c: f94006a3     	ldr	x3, [x21, #0x8]
   1c770: b94002a4     	ldr	w4, [x21]
   1c774: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe58
   1c778: 91000042     	add	x2, x2, #0x0
		000000000001c778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe58
   1c77c: aa1303e0     	mov	x0, x19
   1c780: 52820001     	mov	w1, #0x1000             // =4096
   1c784: 94000000     	bl	0x1c784 <syna_testing_pt01_zte+0x104>
		000000000001c784:  R_AARCH64_CALL26	scnprintf
   1c788: 2a0003f4     	mov	w20, w0
   1c78c: aa1303e0     	mov	x0, x19
   1c790: 94000000     	bl	0x1c790 <syna_testing_pt01_zte+0x110>
		000000000001c790:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   1c794: f94007f5     	ldr	x21, [sp, #0x8]
   1c798: 94000000     	bl	0x1c798 <syna_testing_pt01_zte+0x118>
		000000000001c798:  R_AARCH64_CALL26	syna_request_managed_device
   1c79c: b4000460     	cbz	x0, 0x1c828 <syna_testing_pt01_zte+0x1a8>
   1c7a0: b4000075     	cbz	x21, 0x1c7ac <syna_testing_pt01_zte+0x12c>
   1c7a4: aa1503e1     	mov	x1, x21
   1c7a8: 94000000     	bl	0x1c7a8 <syna_testing_pt01_zte+0x128>
		000000000001c7a8:  R_AARCH64_CALL26	devm_kfree
   1c7ac: aa1303e0     	mov	x0, x19
   1c7b0: 94000000     	bl	0x1c7b0 <syna_testing_pt01_zte+0x130>
		000000000001c7b0:  R_AARCH64_CALL26	kfree
   1c7b4: 2a1403e0     	mov	w0, w20
   1c7b8: 14000007     	b	0x1c7d4 <syna_testing_pt01_zte+0x154>
   1c7bc: 90000002     	adrp	x2, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c7bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e61
   1c7c0: 91000042     	add	x2, x2, #0x0
		000000000001c7c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e61
   1c7c4: aa1303e0     	mov	x0, x19
   1c7c8: 52820001     	mov	w1, #0x1000             // =4096
   1c7cc: 52802003     	mov	w3, #0x100              // =256
   1c7d0: 94000000     	bl	0x1c7d0 <syna_testing_pt01_zte+0x150>
		000000000001c7d0:  R_AARCH64_CALL26	scnprintf
   1c7d4: d5384108     	mrs	x8, SP_EL0
   1c7d8: f9438908     	ldr	x8, [x8, #0x710]
   1c7dc: d5384109     	mrs	x9, SP_EL0
   1c7e0: f85f83a9     	ldur	x9, [x29, #-0x8]
   1c7e4: eb09011f     	cmp	x8, x9
   1c7e8: 540002e1     	b.ne	0x1c844 <syna_testing_pt01_zte+0x1c4>
   1c7ec: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   1c7f0: a94657f6     	ldp	x22, x21, [sp, #0x60]
   1c7f4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   1c7f8: 910203ff     	add	sp, sp, #0x80
   1c7fc: d50323bf     	autiasp
   1c800: d65f03c0     	ret
   1c804: f94006a2     	ldr	x2, [x21, #0x8]
   1c808: 90000000     	adrp	x0, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c808:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D2FD
   1c80c: 91000000     	add	x0, x0, #0x0
		000000000001c80c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D2FD
   1c810: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fb
   1c814: 91000021     	add	x1, x1, #0x0
		000000000001c814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fb
   1c818: 94000000     	bl	0x1c818 <syna_testing_pt01_zte+0x198>
		000000000001c818:  R_AARCH64_CALL26	_printk
   1c81c: 90000005     	adrp	x5, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c81c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1c820: 910000a5     	add	x5, x5, #0x0
		000000000001c820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1c824: 17ffffd2     	b	0x1c76c <syna_testing_pt01_zte+0xec>
   1c828: 90000000     	adrp	x0, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c828:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   1c82c: 91000000     	add	x0, x0, #0x0
		000000000001c82c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   1c830: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b1
   1c834: 91000021     	add	x1, x1, #0x0
		000000000001c834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b1
   1c838: aa1f03e2     	mov	x2, xzr
   1c83c: 94000000     	bl	0x1c83c <syna_testing_pt01_zte+0x1bc>
		000000000001c83c:  R_AARCH64_CALL26	_printk
   1c840: 17ffffdb     	b	0x1c7ac <syna_testing_pt01_zte+0x12c>
   1c844: 94000000     	bl	0x1c844 <syna_testing_pt01_zte+0x1c4>
		000000000001c844:  R_AARCH64_CALL26	__stack_chk_fail
   1c848: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c848:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x168
   1c84c: 91000108     	add	x8, x8, #0x0
		000000000001c84c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x168
   1c850: d5384115     	mrs	x21, SP_EL0
   1c854: f9402ab6     	ldr	x22, [x21, #0x50]
   1c858: f9002aa8     	str	x8, [x21, #0x50]
   1c85c: 90000008     	adrp	x8, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c85c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1c860: f9400100     	ldr	x0, [x8]
		000000000001c860:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1c864: 5281b801     	mov	w1, #0xdc0              // =3520
   1c868: 52820002     	mov	w2, #0x1000             // =4096
   1c86c: 94000000     	bl	0x1c86c <syna_testing_pt01_zte+0x1ec>
		000000000001c86c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1c870: aa0003f3     	mov	x19, x0
   1c874: f9002ab6     	str	x22, [x21, #0x50]
   1c878: b5fff333     	cbnz	x19, 0x1c6dc <syna_testing_pt01_zte+0x5c>
   1c87c: 90000000     	adrp	x0, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c87c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C045
   1c880: 91000000     	add	x0, x0, #0x0
		000000000001c880:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C045
   1c884: 90000001     	adrp	x1, 0x1c000 <syna_testing_check_config_id_show+0x28>
		000000000001c884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fb
   1c888: 91000021     	add	x1, x1, #0x0
		000000000001c888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fb
   1c88c: aa1f03e2     	mov	x2, xzr
   1c890: 94000000     	bl	0x1c890 <syna_testing_pt01_zte+0x210>
		000000000001c890:  R_AARCH64_CALL26	_printk
   1c894: 12800160     	mov	w0, #-0xc               // =-12
   1c898: 17ffffcf     	b	0x1c7d4 <syna_testing_pt01_zte+0x154>
