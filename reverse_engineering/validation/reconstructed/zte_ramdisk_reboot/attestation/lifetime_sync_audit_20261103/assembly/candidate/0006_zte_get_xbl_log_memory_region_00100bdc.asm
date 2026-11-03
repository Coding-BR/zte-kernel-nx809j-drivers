
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006dc <zte_get_xbl_log_memory_region>:
     6dc: d503233f     	paciasp
     6e0: d10203ff     	sub	sp, sp, #0x80
     6e4: a9067bfd     	stp	x29, x30, [sp, #0x60]
     6e8: a9074ff4     	stp	x20, x19, [sp, #0x70]
     6ec: 910183fd     	add	x29, sp, #0x60
     6f0: d5384108     	mrs	x8, SP_EL0
     6f4: aa0003f3     	mov	x19, x0
     6f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c8
     6fc: 91000021     	add	x1, x1, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c8
     700: f9438908     	ldr	x8, [x8, #0x710]
     704: 910023e5     	add	x5, sp, #0x8
     708: aa1f03e2     	mov	x2, xzr
     70c: 2a1f03e3     	mov	w3, wzr
     710: 2a1f03e4     	mov	w4, wzr
     714: f81f83a8     	stur	x8, [x29, #-0x8]
     718: f9400008     	ldr	x8, [x0]
     71c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     720: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     724: f9417500     	ldr	x0, [x8, #0x2e8]
     728: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     72c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     730: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     734: 94000000     	bl	0x734 <zte_get_xbl_log_memory_region+0x58>
		0000000000000734:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     738: 35000320     	cbnz	w0, 0x79c <zte_get_xbl_log_memory_region+0xc0>
     73c: f94007e0     	ldr	x0, [sp, #0x8]
     740: b40002e0     	cbz	x0, 0x79c <zte_get_xbl_log_memory_region+0xc0>
     744: 94000000     	bl	0x744 <zte_get_xbl_log_memory_region+0x68>
		0000000000000744:  R_AARCH64_CALL26	of_reserved_mem_lookup
     748: b4000320     	cbz	x0, 0x7ac <zte_get_xbl_log_memory_region+0xd0>
     74c: f9400c01     	ldr	x1, [x0, #0x18]
     750: aa0003f4     	mov	x20, x0
     754: f9003a61     	str	x1, [x19, #0x70]
     758: f9401002     	ldr	x2, [x0, #0x20]
     75c: f9400260     	ldr	x0, [x19]
     760: f9003e62     	str	x2, [x19, #0x78]
     764: 94000000     	bl	0x764 <zte_get_xbl_log_memory_region+0x88>
		0000000000000764:  R_AARCH64_CALL26	devm_ioremap_wc
     768: f9004260     	str	x0, [x19, #0x80]
     76c: b40002c0     	cbz	x0, 0x7c4 <zte_get_xbl_log_memory_region+0xe8>
     770: 2a1f03e0     	mov	w0, wzr
     774: d5384108     	mrs	x8, SP_EL0
     778: f9438908     	ldr	x8, [x8, #0x710]
     77c: f85f83a9     	ldur	x9, [x29, #-0x8]
     780: eb09011f     	cmp	x8, x9
     784: 54000301     	b.ne	0x7e4 <zte_get_xbl_log_memory_region+0x108>
     788: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     78c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     790: 910203ff     	add	sp, sp, #0x80
     794: d50323bf     	autiasp
     798: d65f03c0     	ret
     79c: f9400260     	ldr	x0, [x19]
     7a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
     7a4: 91000021     	add	x1, x1, #0x0
		00000000000007a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
     7a8: 14000004     	b	0x7b8 <zte_get_xbl_log_memory_region+0xdc>
     7ac: f9400260     	ldr	x0, [x19]
     7b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd
     7b4: 91000021     	add	x1, x1, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd
     7b8: 94000000     	bl	0x7b8 <zte_get_xbl_log_memory_region+0xdc>
		00000000000007b8:  R_AARCH64_CALL26	_dev_err
     7bc: 128002a0     	mov	w0, #-0x16              // =-22
     7c0: 17ffffed     	b	0x774 <zte_get_xbl_log_memory_region+0x98>
     7c4: f9400260     	ldr	x0, [x19]
     7c8: f9403e63     	ldr	x3, [x19, #0x78]
     7cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a
     7d0: 91000021     	add	x1, x1, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a
     7d4: 91006282     	add	x2, x20, #0x18
     7d8: 94000000     	bl	0x7d8 <zte_get_xbl_log_memory_region+0xfc>
		00000000000007d8:  R_AARCH64_CALL26	_dev_err
     7dc: 128001e0     	mov	w0, #-0x10              // =-16
     7e0: 17ffffe5     	b	0x774 <zte_get_xbl_log_memory_region+0x98>
     7e4: 94000000     	bl	0x7e4 <zte_get_xbl_log_memory_region+0x108>
		00000000000007e4:  R_AARCH64_CALL26	__stack_chk_fail
