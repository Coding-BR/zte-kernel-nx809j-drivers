
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000256f4 <tpd_test_cmd_store>:
   256f4: d503233f     	paciasp
   256f8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   256fc: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25700: 910003fd     	mov	x29, sp
   25704: f946dc13     	ldr	x19, [x0, #0xdb8]
   25708: b9457e68     	ldr	w8, [x19, #0x57c]
   2570c: 7100051f     	cmp	w8, #0x1
   25710: 540001a1     	b.ne	0x25744 <tpd_test_cmd_store+0x50>
   25714: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25718: 91000000     	add	x0, x0, #0x0
		0000000000025718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   2571c: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002571c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe0
   25720: 91000021     	add	x1, x1, #0x0
		0000000000025720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe0
   25724: 94000000     	bl	0x25724 <tpd_test_cmd_store+0x30>
		0000000000025724:  R_AARCH64_CALL26	_printk
   25728: aa1303e0     	mov	x0, x19
   2572c: 94000000     	bl	0x2572c <tpd_test_cmd_store+0x38>
		000000000002572c:  R_AARCH64_CALL26	syna_testing_pt01_zte
   25730: 36f802e0     	tbz	w0, #0x1f, 0x2578c <tpd_test_cmd_store+0x98>
   25734: 2a0003f4     	mov	w20, w0
   25738: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fc5
   2573c: 91000000     	add	x0, x0, #0x0
		000000000002573c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fc5
   25740: 14000004     	b	0x25750 <tpd_test_cmd_store+0x5c>
   25744: 2a1f03f4     	mov	w20, wzr
   25748: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   2574c: 91000000     	add	x0, x0, #0x0
		000000000002574c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   25750: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe0
   25754: 91000021     	add	x1, x1, #0x0
		0000000000025754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe0
   25758: 94000000     	bl	0x25758 <tpd_test_cmd_store+0x64>
		0000000000025758:  R_AARCH64_CALL26	_printk
   2575c: f9413a60     	ldr	x0, [x19, #0x270]
   25760: 94000000     	bl	0x25760 <tpd_test_cmd_store+0x6c>
		0000000000025760:  R_AARCH64_CALL26	syna_spi_hw_reset
   25764: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78ca
   25768: 91000000     	add	x0, x0, #0x0
		0000000000025768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78ca
   2576c: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002576c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe0
   25770: 91000021     	add	x1, x1, #0x0
		0000000000025770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe0
   25774: 94000000     	bl	0x25774 <tpd_test_cmd_store+0x80>
		0000000000025774:  R_AARCH64_CALL26	_printk
   25778: 2a1403e0     	mov	w0, w20
   2577c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25780: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25784: d50323bf     	autiasp
   25788: d65f03c0     	ret
   2578c: aa1303e0     	mov	x0, x19
   25790: 94000000     	bl	0x25790 <tpd_test_cmd_store+0x9c>
		0000000000025790:  R_AARCH64_CALL26	syna_testing_pt05_zte
   25794: 36f800a0     	tbz	w0, #0x1f, 0x257a8 <tpd_test_cmd_store+0xb4>
   25798: 2a0003f4     	mov	w20, w0
   2579c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002579c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb789
   257a0: 91000000     	add	x0, x0, #0x0
		00000000000257a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb789
   257a4: 17ffffeb     	b	0x25750 <tpd_test_cmd_store+0x5c>
   257a8: aa1303e0     	mov	x0, x19
   257ac: 94000000     	bl	0x257ac <tpd_test_cmd_store+0xb8>
		00000000000257ac:  R_AARCH64_CALL26	syna_testing_pt0a_zte
   257b0: 2a0003f4     	mov	w20, w0
   257b4: 36fffd40     	tbz	w0, #0x1f, 0x2575c <tpd_test_cmd_store+0x68>
   257b8: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000257b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x949d
   257bc: 91000000     	add	x0, x0, #0x0
		00000000000257bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x949d
   257c0: 17ffffe4     	b	0x25750 <tpd_test_cmd_store+0x5c>
