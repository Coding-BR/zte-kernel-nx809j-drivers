
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000077c <zte_get_xbl_log_memory_region>:
     77c: d503233f     	paciasp
     780: d10203ff     	sub	sp, sp, #0x80
     784: a9067bfd     	stp	x29, x30, [sp, #0x60]
     788: a9074ff4     	stp	x20, x19, [sp, #0x70]
     78c: 910183fd     	add	x29, sp, #0x60
     790: d5384108     	mrs	x8, SP_EL0
     794: aa0003f3     	mov	x19, x0
     798: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c8
     79c: 91000021     	add	x1, x1, #0x0
		000000000000079c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c8
     7a0: f9438908     	ldr	x8, [x8, #0x710]
     7a4: 910023e5     	add	x5, sp, #0x8
     7a8: aa1f03e2     	mov	x2, xzr
     7ac: 2a1f03e3     	mov	w3, wzr
     7b0: 2a1f03e4     	mov	w4, wzr
     7b4: f81f83a8     	stur	x8, [x29, #-0x8]
     7b8: f9400008     	ldr	x8, [x0]
     7bc: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     7c0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     7c4: f9417500     	ldr	x0, [x8, #0x2e8]
     7c8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     7cc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     7d0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     7d4: 94000000     	bl	0x7d4 <zte_get_xbl_log_memory_region+0x58>
		00000000000007d4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     7d8: 35000320     	cbnz	w0, 0x83c <zte_get_xbl_log_memory_region+0xc0>
     7dc: f94007e0     	ldr	x0, [sp, #0x8]
     7e0: b40002e0     	cbz	x0, 0x83c <zte_get_xbl_log_memory_region+0xc0>
     7e4: 94000000     	bl	0x7e4 <zte_get_xbl_log_memory_region+0x68>
		00000000000007e4:  R_AARCH64_CALL26	of_reserved_mem_lookup
     7e8: b4000320     	cbz	x0, 0x84c <zte_get_xbl_log_memory_region+0xd0>
     7ec: f9400c01     	ldr	x1, [x0, #0x18]
     7f0: aa0003f4     	mov	x20, x0
     7f4: f9003a61     	str	x1, [x19, #0x70]
     7f8: f9401002     	ldr	x2, [x0, #0x20]
     7fc: f9400260     	ldr	x0, [x19]
     800: f9003e62     	str	x2, [x19, #0x78]
     804: 94000000     	bl	0x804 <zte_get_xbl_log_memory_region+0x88>
		0000000000000804:  R_AARCH64_CALL26	devm_ioremap_wc
     808: f9004260     	str	x0, [x19, #0x80]
     80c: b40002c0     	cbz	x0, 0x864 <zte_get_xbl_log_memory_region+0xe8>
     810: 2a1f03e0     	mov	w0, wzr
     814: d5384108     	mrs	x8, SP_EL0
     818: f9438908     	ldr	x8, [x8, #0x710]
     81c: f85f83a9     	ldur	x9, [x29, #-0x8]
     820: eb09011f     	cmp	x8, x9
     824: 54000301     	b.ne	0x884 <zte_get_xbl_log_memory_region+0x108>
     828: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     82c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     830: 910203ff     	add	sp, sp, #0x80
     834: d50323bf     	autiasp
     838: d65f03c0     	ret
     83c: f9400260     	ldr	x0, [x19]
     840: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
     844: 91000021     	add	x1, x1, #0x0
		0000000000000844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
     848: 14000004     	b	0x858 <zte_get_xbl_log_memory_region+0xdc>
     84c: f9400260     	ldr	x0, [x19]
     850: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0
     854: 91000021     	add	x1, x1, #0x0
		0000000000000854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0
     858: 94000000     	bl	0x858 <zte_get_xbl_log_memory_region+0xdc>
		0000000000000858:  R_AARCH64_CALL26	_dev_err
     85c: 128002a0     	mov	w0, #-0x16              // =-22
     860: 17ffffed     	b	0x814 <zte_get_xbl_log_memory_region+0x98>
     864: f9400260     	ldr	x0, [x19]
     868: f9403e63     	ldr	x3, [x19, #0x78]
     86c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e
     870: 91000021     	add	x1, x1, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e
     874: 91006282     	add	x2, x20, #0x18
     878: 94000000     	bl	0x878 <zte_get_xbl_log_memory_region+0xfc>
		0000000000000878:  R_AARCH64_CALL26	_dev_err
     87c: 128001e0     	mov	w0, #-0x10              // =-16
     880: 17ffffe5     	b	0x814 <zte_get_xbl_log_memory_region+0x98>
     884: 94000000     	bl	0x884 <zte_get_xbl_log_memory_region+0x108>
		0000000000000884:  R_AARCH64_CALL26	__stack_chk_fail
