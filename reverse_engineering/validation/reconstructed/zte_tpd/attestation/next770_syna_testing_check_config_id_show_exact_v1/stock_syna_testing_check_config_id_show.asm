
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001596c <syna_testing_check_config_id_show>:
   1596c: d503233f     	paciasp
   15970: d10243ff     	sub	sp, sp, #0x90
   15974: a9067bfd     	stp	x29, x30, [sp, #0x60]
   15978: a90757f6     	stp	x22, x21, [sp, #0x70]
   1597c: a9084ff4     	stp	x20, x19, [sp, #0x80]
   15980: 910183fd     	add	x29, sp, #0x60
   15984: d5384108     	mrs	x8, SP_EL0
   15988: aa0203f3     	mov	x19, x2
   1598c: f9438908     	ldr	x8, [x8, #0x710]
   15990: f81f83a8     	stur	x8, [x29, #-0x8]
   15994: f9400c08     	ldr	x8, [x0, #0x18]
   15998: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1599c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   159a0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   159a4: f9400d08     	ldr	x8, [x8, #0x18]
   159a8: f90007ff     	str	xzr, [sp, #0x8]
   159ac: f90013ff     	str	xzr, [sp, #0x20]
   159b0: f9404d15     	ldr	x21, [x8, #0x98]
   159b4: 39560aa8     	ldrb	w8, [x21, #0x582]
   159b8: 360008a8     	tbz	w8, #0x0, 0x15acc <syna_testing_check_config_id_show+0x160>
   159bc: 94000000     	bl	0x159bc <syna_testing_check_config_id_show+0x50>
		00000000000159bc:  R_AARCH64_CALL26	syna_tcm_get_testing_0002
   159c0: b4000920     	cbz	x0, 0x15ae4 <syna_testing_check_config_id_show+0x178>
   159c4: 910043f6     	add	x22, sp, #0x10
   159c8: aa0003f4     	mov	x20, x0
   159cc: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000159cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   159d0: 91000021     	add	x1, x1, #0x0
		00000000000159d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   159d4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000159d4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   159d8: 91000042     	add	x2, x2, #0x0
		00000000000159d8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   159dc: 910042c0     	add	x0, x22, #0x10
   159e0: 390143ff     	strb	wzr, [sp, #0x50]
   159e4: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   159e8: 94000000     	bl	0x159e8 <syna_testing_check_config_id_show+0x7c>
		00000000000159e8:  R_AARCH64_CALL26	__mutex_init
   159ec: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000159ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4608
   159f0: 91000108     	add	x8, x8, #0x0
		00000000000159f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4608
   159f4: 52800209     	mov	w9, #0x10               // =16
   159f8: f90003e8     	str	x8, [sp]
   159fc: 910003e8     	mov	x8, sp
   15a00: aa1403e1     	mov	x1, x20
   15a04: f9006e96     	str	x22, [x20, #0xd8]
   15a08: 2a1f03e2     	mov	w2, wzr
   15a0c: b9000be9     	str	w9, [sp, #0x8]
   15a10: f9001e88     	str	x8, [x20, #0x38]
   15a14: f9400e88     	ldr	x8, [x20, #0x18]
   15a18: f94002a0     	ldr	x0, [x21]
   15a1c: b85fc110     	ldur	w16, [x8, #-0x4]
   15a20: 72895251     	movk	w17, #0x4a92
   15a24: 72b03811     	movk	w17, #0x81c0, lsl #16
   15a28: 6b11021f     	cmp	w16, w17
   15a2c: 54000040     	b.eq	0x15a34 <syna_testing_check_config_id_show+0xc8>
   15a30: d4304500     	brk	#0x8228
   15a34: d63f0100     	blr	x8
   15a38: 37f807a0     	tbnz	w0, #0x1f, 0x15b2c <syna_testing_check_config_id_show+0x1c0>
   15a3c: 39404288     	ldrb	w8, [x20, #0x10]
   15a40: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15a44: 91000129     	add	x9, x9, #0x0
		0000000000015a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15a48: 7100011f     	cmp	w8, #0x0
   15a4c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   15a50: 91000108     	add	x8, x8, #0x0
		0000000000015a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   15a54: 9a891105     	csel	x5, x8, x9, ne
   15a58: f9400683     	ldr	x3, [x20, #0x8]
   15a5c: b9400284     	ldr	w4, [x20]
   15a60: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   15a64: 91000042     	add	x2, x2, #0x0
		0000000000015a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   15a68: aa1303e0     	mov	x0, x19
   15a6c: 52820001     	mov	w1, #0x1000             // =4096
   15a70: 94000000     	bl	0x15a70 <syna_testing_check_config_id_show+0x104>
		0000000000015a70:  R_AARCH64_CALL26	scnprintf
   15a74: b9401fe8     	ldr	w8, [sp, #0x1c]
   15a78: 2a0003f4     	mov	w20, w0
   15a7c: 34000148     	cbz	w8, 0x15aa4 <syna_testing_check_config_id_show+0x138>
   15a80: 2a1403e8     	mov	w8, w20
   15a84: 52820009     	mov	w9, #0x1000             // =4096
   15a88: f9400be3     	ldr	x3, [sp, #0x10]
   15a8c: cb080121     	sub	x1, x9, x8
   15a90: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2a5
   15a94: 91000042     	add	x2, x2, #0x0
		0000000000015a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2a5
   15a98: 8b080260     	add	x0, x19, x8
   15a9c: 94000000     	bl	0x15a9c <syna_testing_check_config_id_show+0x130>
		0000000000015a9c:  R_AARCH64_CALL26	scnprintf
   15aa0: 0b140014     	add	w20, w0, w20
   15aa4: 394143e2     	ldrb	w2, [sp, #0x50]
   15aa8: 35000542     	cbnz	w2, 0x15b50 <syna_testing_check_config_id_show+0x1e4>
   15aac: f9400bf3     	ldr	x19, [sp, #0x10]
   15ab0: 94000000     	bl	0x15ab0 <syna_testing_check_config_id_show+0x144>
		0000000000015ab0:  R_AARCH64_CALL26	syna_request_managed_device
   15ab4: b40005a0     	cbz	x0, 0x15b68 <syna_testing_check_config_id_show+0x1fc>
   15ab8: b4000073     	cbz	x19, 0x15ac4 <syna_testing_check_config_id_show+0x158>
   15abc: aa1303e1     	mov	x1, x19
   15ac0: 94000000     	bl	0x15ac0 <syna_testing_check_config_id_show+0x154>
		0000000000015ac0:  R_AARCH64_CALL26	devm_kfree
   15ac4: 2a1403e0     	mov	w0, w20
   15ac8: 1400000e     	b	0x15b00 <syna_testing_check_config_id_show+0x194>
   15acc: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   15ad0: 91000042     	add	x2, x2, #0x0
		0000000000015ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   15ad4: aa1303e0     	mov	x0, x19
   15ad8: 52820001     	mov	w1, #0x1000             // =4096
   15adc: 94000000     	bl	0x15adc <syna_testing_check_config_id_show+0x170>
		0000000000015adc:  R_AARCH64_CALL26	scnprintf
   15ae0: 14000007     	b	0x15afc <syna_testing_check_config_id_show+0x190>
   15ae4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   15ae8: 91000042     	add	x2, x2, #0x0
		0000000000015ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   15aec: aa1303e0     	mov	x0, x19
   15af0: 52820001     	mov	w1, #0x1000             // =4096
   15af4: 52800043     	mov	w3, #0x2                // =2
   15af8: 94000000     	bl	0x15af8 <syna_testing_check_config_id_show+0x18c>
		0000000000015af8:  R_AARCH64_CALL26	scnprintf
   15afc: 93407c00     	sxtw	x0, w0
   15b00: d5384108     	mrs	x8, SP_EL0
   15b04: f9438908     	ldr	x8, [x8, #0x710]
   15b08: f85f83a9     	ldur	x9, [x29, #-0x8]
   15b0c: eb09011f     	cmp	x8, x9
   15b10: 54000381     	b.ne	0x15b80 <syna_testing_check_config_id_show+0x214>
   15b14: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   15b18: a94757f6     	ldp	x22, x21, [sp, #0x70]
   15b1c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   15b20: 910243ff     	add	sp, sp, #0x90
   15b24: d50323bf     	autiasp
   15b28: d65f03c0     	ret
   15b2c: f9400682     	ldr	x2, [x20, #0x8]
   15b30: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   15b34: 91000000     	add	x0, x0, #0x0
		0000000000015b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   15b38: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d79
   15b3c: 91000021     	add	x1, x1, #0x0
		0000000000015b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d79
   15b40: 94000000     	bl	0x15b40 <syna_testing_check_config_id_show+0x1d4>
		0000000000015b40:  R_AARCH64_CALL26	_printk
   15b44: 90000005     	adrp	x5, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15b48: 910000a5     	add	x5, x5, #0x0
		0000000000015b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15b4c: 17ffffc3     	b	0x15a58 <syna_testing_check_config_id_show+0xec>
   15b50: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   15b54: 91000000     	add	x0, x0, #0x0
		0000000000015b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   15b58: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   15b5c: 91000021     	add	x1, x1, #0x0
		0000000000015b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   15b60: 94000000     	bl	0x15b60 <syna_testing_check_config_id_show+0x1f4>
		0000000000015b60:  R_AARCH64_CALL26	_printk
   15b64: 17ffffd2     	b	0x15aac <syna_testing_check_config_id_show+0x140>
   15b68: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   15b6c: 91000000     	add	x0, x0, #0x0
		0000000000015b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   15b70: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   15b74: 91000021     	add	x1, x1, #0x0
		0000000000015b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   15b78: 94000000     	bl	0x15b78 <syna_testing_check_config_id_show+0x20c>
		0000000000015b78:  R_AARCH64_CALL26	_printk
   15b7c: 17ffffd2     	b	0x15ac4 <syna_testing_check_config_id_show+0x158>
   15b80: 94000000     	bl	0x15b80 <syna_testing_check_config_id_show+0x214>
		0000000000015b80:  R_AARCH64_CALL26	__stack_chk_fail
