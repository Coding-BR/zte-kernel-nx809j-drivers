
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001649c <syna_dev_set_display_rotation>:
   1649c: d503233f     	paciasp
   164a0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   164a4: f9000bf7     	str	x23, [sp, #0x10]
   164a8: a90257f6     	stp	x22, x21, [sp, #0x20]
   164ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
   164b0: 910003fd     	mov	x29, sp
   164b4: 2a0103f3     	mov	w19, w1
   164b8: 2a0203f4     	mov	w20, w2
   164bc: aa0003f5     	mov	x21, x0
   164c0: b9460c16     	ldr	w22, [x0, #0x60c]
   164c4: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000164c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fd4
   164c8: 91000000     	add	x0, x0, #0x0
		00000000000164c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fd4
   164cc: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		00000000000164cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2baa
   164d0: 91000021     	add	x1, x1, #0x0
		00000000000164d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2baa
   164d4: 2a1303e2     	mov	w2, w19
   164d8: 94000000     	bl	0x164d8 <syna_dev_set_display_rotation+0x3c>
		00000000000164d8:  R_AARCH64_CALL26	_printk
   164dc: b4000555     	cbz	x21, 0x16584 <syna_dev_set_display_rotation+0xe8>
   164e0: 710002df     	cmp	w22, #0x0
   164e4: 52800068     	mov	w8, #0x3                // =3
   164e8: f94002a0     	ldr	x0, [x21]
   164ec: 1a8803f7     	csel	w23, wzr, w8, eq
   164f0: 528016c1     	mov	w1, #0xb6               // =182
   164f4: 2a1403e3     	mov	w3, w20
   164f8: 2a1703e2     	mov	w2, w23
   164fc: 94000000     	bl	0x164fc <syna_dev_set_display_rotation+0x60>
		00000000000164fc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16500: 37f80440     	tbnz	w0, #0x1f, 0x16588 <syna_dev_set_display_rotation+0xec>
   16504: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x770e
   16508: 91000000     	add	x0, x0, #0x0
		0000000000016508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x770e
   1650c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001650c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2baa
   16510: 91000021     	add	x1, x1, #0x0
		0000000000016510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2baa
   16514: 2a1703e2     	mov	w2, w23
   16518: 94000000     	bl	0x16518 <syna_dev_set_display_rotation+0x7c>
		0000000000016518:  R_AARCH64_CALL26	_printk
   1651c: f94002a0     	ldr	x0, [x21]
   16520: 528016a1     	mov	w1, #0xb5               // =181
   16524: 2a1603e2     	mov	w2, w22
   16528: 2a1403e3     	mov	w3, w20
   1652c: 94000000     	bl	0x1652c <syna_dev_set_display_rotation+0x90>
		000000000001652c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16530: 37f802c0     	tbnz	w0, #0x1f, 0x16588 <syna_dev_set_display_rotation+0xec>
   16534: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9242
   16538: 91000000     	add	x0, x0, #0x0
		0000000000016538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9242
   1653c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001653c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2baa
   16540: 91000021     	add	x1, x1, #0x0
		0000000000016540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2baa
   16544: 2a1603e2     	mov	w2, w22
   16548: 94000000     	bl	0x16548 <syna_dev_set_display_rotation+0xac>
		0000000000016548:  R_AARCH64_CALL26	_printk
   1654c: f94002a0     	ldr	x0, [x21]
   16550: 52801681     	mov	w1, #0xb4               // =180
   16554: 2a1303e2     	mov	w2, w19
   16558: 2a1403e3     	mov	w3, w20
   1655c: 94000000     	bl	0x1655c <syna_dev_set_display_rotation+0xc0>
		000000000001655c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   16560: 37f80140     	tbnz	w0, #0x1f, 0x16588 <syna_dev_set_display_rotation+0xec>
   16564: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ee
   16568: 91000000     	add	x0, x0, #0x0
		0000000000016568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ee
   1656c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		000000000001656c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2baa
   16570: 91000021     	add	x1, x1, #0x0
		0000000000016570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2baa
   16574: 2a1303e2     	mov	w2, w19
   16578: 94000000     	bl	0x16578 <syna_dev_set_display_rotation+0xdc>
		0000000000016578:  R_AARCH64_CALL26	_printk
   1657c: 2a1f03e0     	mov	w0, wzr
   16580: 14000002     	b	0x16588 <syna_dev_set_display_rotation+0xec>
   16584: 128002a0     	mov	w0, #-0x16              // =-22
   16588: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1658c: f9400bf7     	ldr	x23, [sp, #0x10]
   16590: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16594: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   16598: d50323bf     	autiasp
   1659c: d65f03c0     	ret
