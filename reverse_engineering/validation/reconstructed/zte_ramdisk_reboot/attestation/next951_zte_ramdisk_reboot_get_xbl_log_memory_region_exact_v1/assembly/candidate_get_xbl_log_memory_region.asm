
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000768 <zte_get_xbl_log_memory_region>:
     768: d503233f     	paciasp
     76c: d10203ff     	sub	sp, sp, #0x80
     770: a9067bfd     	stp	x29, x30, [sp, #0x60]
     774: a9074ff4     	stp	x20, x19, [sp, #0x70]
     778: 910183fd     	add	x29, sp, #0x60
     77c: d5384108     	mrs	x8, SP_EL0
     780: aa0003f3     	mov	x19, x0
     784: 90000001     	adrp	x1, 0x0 <extract_ocp_info>
		0000000000000784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29f
     788: 91000021     	add	x1, x1, #0x0
		0000000000000788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29f
     78c: f9438908     	ldr	x8, [x8, #0x710]
     790: 910023e5     	add	x5, sp, #0x8
     794: aa1f03e2     	mov	x2, xzr
     798: 2a1f03e3     	mov	w3, wzr
     79c: 2a1f03e4     	mov	w4, wzr
     7a0: f81f83a8     	stur	x8, [x29, #-0x8]
     7a4: f9400008     	ldr	x8, [x0]
     7a8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     7ac: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     7b0: f9417500     	ldr	x0, [x8, #0x2e8]
     7b4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     7b8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     7bc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     7c0: 94000000     	bl	0x7c0 <zte_get_xbl_log_memory_region+0x58>
		00000000000007c0:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     7c4: 35000320     	cbnz	w0, 0x828 <zte_get_xbl_log_memory_region+0xc0>
     7c8: f94007e0     	ldr	x0, [sp, #0x8]
     7cc: b40002e0     	cbz	x0, 0x828 <zte_get_xbl_log_memory_region+0xc0>
     7d0: 94000000     	bl	0x7d0 <zte_get_xbl_log_memory_region+0x68>
		00000000000007d0:  R_AARCH64_CALL26	of_reserved_mem_lookup
     7d4: b4000320     	cbz	x0, 0x838 <zte_get_xbl_log_memory_region+0xd0>
     7d8: f9400c01     	ldr	x1, [x0, #0x18]
     7dc: aa0003f4     	mov	x20, x0
     7e0: f9003a61     	str	x1, [x19, #0x70]
     7e4: f9401002     	ldr	x2, [x0, #0x20]
     7e8: f9400260     	ldr	x0, [x19]
     7ec: f9003e62     	str	x2, [x19, #0x78]
     7f0: 94000000     	bl	0x7f0 <zte_get_xbl_log_memory_region+0x88>
		00000000000007f0:  R_AARCH64_CALL26	devm_ioremap_wc
     7f4: f9004260     	str	x0, [x19, #0x80]
     7f8: b40002c0     	cbz	x0, 0x850 <zte_get_xbl_log_memory_region+0xe8>
     7fc: 2a1f03e0     	mov	w0, wzr
     800: d5384108     	mrs	x8, SP_EL0
     804: f9438908     	ldr	x8, [x8, #0x710]
     808: f85f83a9     	ldur	x9, [x29, #-0x8]
     80c: eb09011f     	cmp	x8, x9
     810: 54000301     	b.ne	0x870 <zte_get_xbl_log_memory_region+0x108>
     814: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     818: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     81c: 910203ff     	add	sp, sp, #0x80
     820: d50323bf     	autiasp
     824: d65f03c0     	ret
     828: f9400260     	ldr	x0, [x19]
     82c: 90000001     	adrp	x1, 0x0 <extract_ocp_info>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
     830: 91000021     	add	x1, x1, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
     834: 14000004     	b	0x844 <zte_get_xbl_log_memory_region+0xdc>
     838: f9400260     	ldr	x0, [x19]
     83c: 90000001     	adrp	x1, 0x0 <extract_ocp_info>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194
     840: 91000021     	add	x1, x1, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194
     844: 94000000     	bl	0x844 <zte_get_xbl_log_memory_region+0xdc>
		0000000000000844:  R_AARCH64_CALL26	_dev_err
     848: 128002a0     	mov	w0, #-0x16              // =-22
     84c: 17ffffed     	b	0x800 <zte_get_xbl_log_memory_region+0x98>
     850: f9400260     	ldr	x0, [x19]
     854: f9403e63     	ldr	x3, [x19, #0x78]
     858: 90000001     	adrp	x1, 0x0 <extract_ocp_info>
		0000000000000858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a
     85c: 91000021     	add	x1, x1, #0x0
		000000000000085c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a
     860: 91006282     	add	x2, x20, #0x18
     864: 94000000     	bl	0x864 <zte_get_xbl_log_memory_region+0xfc>
		0000000000000864:  R_AARCH64_CALL26	_dev_err
     868: 128001e0     	mov	w0, #-0x10              // =-16
     86c: 17ffffe5     	b	0x800 <zte_get_xbl_log_memory_region+0x98>
     870: 94000000     	bl	0x870 <zte_get_xbl_log_memory_region+0x108>
		0000000000000870:  R_AARCH64_CALL26	__stack_chk_fail
