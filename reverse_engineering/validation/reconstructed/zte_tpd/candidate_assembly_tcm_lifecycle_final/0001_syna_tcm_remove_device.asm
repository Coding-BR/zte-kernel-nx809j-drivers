
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015888 <syna_tcm_remove_device>:
   15888: d503233f     	paciasp
   1588c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   15890: a9014ff4     	stp	x20, x19, [sp, #0x10]
   15894: 910003fd     	mov	x29, sp
   15898: b5000080     	cbnz	x0, 0x158a8 <syna_tcm_remove_device+0x20>
   1589c: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		000000000001589c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
   158a0: 91000000     	add	x0, x0, #0x0
		00000000000158a0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
   158a4: 14000095     	b	0x15af8 <syna_tcm_remove_device+0x270>
   158a8: 394c4002     	ldrb	w2, [x0, #0x310]
   158ac: aa0003f3     	mov	x19, x0
   158b0: 340000c2     	cbz	w2, 0x158c8 <syna_tcm_remove_device+0x40>
   158b4: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000158b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
   158b8: 91000000     	add	x0, x0, #0x0
		00000000000158b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
   158bc: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000158bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285e
   158c0: 91000021     	add	x1, x1, #0x0
		00000000000158c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285e
   158c4: 94000000     	bl	0x158c4 <syna_tcm_remove_device+0x3c>
		00000000000158c4:  R_AARCH64_CALL26	_printk
   158c8: f9416a74     	ldr	x20, [x19, #0x2d0]
   158cc: 94000000     	bl	0x158cc <syna_tcm_remove_device+0x44>
		00000000000158cc:  R_AARCH64_CALL26	syna_request_managed_device
   158d0: b5000100     	cbnz	x0, 0x158f0 <syna_tcm_remove_device+0x68>
   158d4: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000158d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   158d8: 91000000     	add	x0, x0, #0x0
		00000000000158d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   158dc: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000158dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   158e0: 91000021     	add	x1, x1, #0x0
		00000000000158e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   158e4: aa1f03e2     	mov	x2, xzr
   158e8: 94000000     	bl	0x158e8 <syna_tcm_remove_device+0x60>
		00000000000158e8:  R_AARCH64_CALL26	_printk
   158ec: 14000004     	b	0x158fc <syna_tcm_remove_device+0x74>
   158f0: b4000074     	cbz	x20, 0x158fc <syna_tcm_remove_device+0x74>
   158f4: aa1403e1     	mov	x1, x20
   158f8: 94000000     	bl	0x158f8 <syna_tcm_remove_device+0x70>
		00000000000158f8:  R_AARCH64_CALL26	devm_kfree
   158fc: 394b2262     	ldrb	w2, [x19, #0x2c8]
   15900: f9016e7f     	str	xzr, [x19, #0x2d8]
   15904: 390c427f     	strb	wzr, [x19, #0x310]
   15908: b40000c2     	cbz	x2, 0x15920 <syna_tcm_remove_device+0x98>
   1590c: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		000000000001590c:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
   15910: 91000000     	add	x0, x0, #0x0
		0000000000015910:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
   15914: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285e
   15918: 91000021     	add	x1, x1, #0x0
		0000000000015918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285e
   1591c: 94000000     	bl	0x1591c <syna_tcm_remove_device+0x94>
		000000000001591c:  R_AARCH64_CALL26	_printk
   15920: f9414674     	ldr	x20, [x19, #0x288]
   15924: 94000000     	bl	0x15924 <syna_tcm_remove_device+0x9c>
		0000000000015924:  R_AARCH64_CALL26	syna_request_managed_device
   15928: b5000100     	cbnz	x0, 0x15948 <syna_tcm_remove_device+0xc0>
   1592c: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		000000000001592c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   15930: 91000000     	add	x0, x0, #0x0
		0000000000015930:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   15934: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   15938: 91000021     	add	x1, x1, #0x0
		0000000000015938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   1593c: aa1f03e2     	mov	x2, xzr
   15940: 94000000     	bl	0x15940 <syna_tcm_remove_device+0xb8>
		0000000000015940:  R_AARCH64_CALL26	_printk
   15944: 14000004     	b	0x15954 <syna_tcm_remove_device+0xcc>
   15948: b4000074     	cbz	x20, 0x15954 <syna_tcm_remove_device+0xcc>
   1594c: aa1403e1     	mov	x1, x20
   15950: 94000000     	bl	0x15950 <syna_tcm_remove_device+0xc8>
		0000000000015950:  R_AARCH64_CALL26	devm_kfree
   15954: 394a0262     	ldrb	w2, [x19, #0x280]
   15958: f9014a7f     	str	xzr, [x19, #0x290]
   1595c: 390b227f     	strb	wzr, [x19, #0x2c8]
   15960: b40000c2     	cbz	x2, 0x15978 <syna_tcm_remove_device+0xf0>
   15964: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015964:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
   15968: 91000000     	add	x0, x0, #0x0
		0000000000015968:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
   1596c: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		000000000001596c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285e
   15970: 91000021     	add	x1, x1, #0x0
		0000000000015970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285e
   15974: 94000000     	bl	0x15974 <syna_tcm_remove_device+0xec>
		0000000000015974:  R_AARCH64_CALL26	_printk
   15978: f9412274     	ldr	x20, [x19, #0x240]
   1597c: 94000000     	bl	0x1597c <syna_tcm_remove_device+0xf4>
		000000000001597c:  R_AARCH64_CALL26	syna_request_managed_device
   15980: b5000100     	cbnz	x0, 0x159a0 <syna_tcm_remove_device+0x118>
   15984: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015984:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   15988: 91000000     	add	x0, x0, #0x0
		0000000000015988:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   1598c: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		000000000001598c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   15990: 91000021     	add	x1, x1, #0x0
		0000000000015990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   15994: aa1f03e2     	mov	x2, xzr
   15998: 94000000     	bl	0x15998 <syna_tcm_remove_device+0x110>
		0000000000015998:  R_AARCH64_CALL26	_printk
   1599c: 14000004     	b	0x159ac <syna_tcm_remove_device+0x124>
   159a0: b4000074     	cbz	x20, 0x159ac <syna_tcm_remove_device+0x124>
   159a4: aa1403e1     	mov	x1, x20
   159a8: 94000000     	bl	0x159a8 <syna_tcm_remove_device+0x120>
		00000000000159a8:  R_AARCH64_CALL26	devm_kfree
   159ac: 39474262     	ldrb	w2, [x19, #0x1d0]
   159b0: f901267f     	str	xzr, [x19, #0x248]
   159b4: 390a027f     	strb	wzr, [x19, #0x280]
   159b8: b40000c2     	cbz	x2, 0x159d0 <syna_tcm_remove_device+0x148>
   159bc: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000159bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
   159c0: 91000000     	add	x0, x0, #0x0
		00000000000159c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
   159c4: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000159c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285e
   159c8: 91000021     	add	x1, x1, #0x0
		00000000000159c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285e
   159cc: 94000000     	bl	0x159cc <syna_tcm_remove_device+0x144>
		00000000000159cc:  R_AARCH64_CALL26	_printk
   159d0: f940ca74     	ldr	x20, [x19, #0x190]
   159d4: 94000000     	bl	0x159d4 <syna_tcm_remove_device+0x14c>
		00000000000159d4:  R_AARCH64_CALL26	syna_request_managed_device
   159d8: b5000100     	cbnz	x0, 0x159f8 <syna_tcm_remove_device+0x170>
   159dc: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000159dc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   159e0: 91000000     	add	x0, x0, #0x0
		00000000000159e0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   159e4: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		00000000000159e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   159e8: 91000021     	add	x1, x1, #0x0
		00000000000159e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   159ec: aa1f03e2     	mov	x2, xzr
   159f0: 94000000     	bl	0x159f0 <syna_tcm_remove_device+0x168>
		00000000000159f0:  R_AARCH64_CALL26	_printk
   159f4: 14000004     	b	0x15a04 <syna_tcm_remove_device+0x17c>
   159f8: b4000074     	cbz	x20, 0x15a04 <syna_tcm_remove_device+0x17c>
   159fc: aa1403e1     	mov	x1, x20
   15a00: 94000000     	bl	0x15a00 <syna_tcm_remove_device+0x178>
		0000000000015a00:  R_AARCH64_CALL26	devm_kfree
   15a04: 39450262     	ldrb	w2, [x19, #0x140]
   15a08: f900ce7f     	str	xzr, [x19, #0x198]
   15a0c: 3907427f     	strb	wzr, [x19, #0x1d0]
   15a10: b40000c2     	cbz	x2, 0x15a28 <syna_tcm_remove_device+0x1a0>
   15a14: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a14:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
   15a18: 91000000     	add	x0, x0, #0x0
		0000000000015a18:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
   15a1c: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285e
   15a20: 91000021     	add	x1, x1, #0x0
		0000000000015a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285e
   15a24: 94000000     	bl	0x15a24 <syna_tcm_remove_device+0x19c>
		0000000000015a24:  R_AARCH64_CALL26	_printk
   15a28: f9408274     	ldr	x20, [x19, #0x100]
   15a2c: 94000000     	bl	0x15a2c <syna_tcm_remove_device+0x1a4>
		0000000000015a2c:  R_AARCH64_CALL26	syna_request_managed_device
   15a30: b5000100     	cbnz	x0, 0x15a50 <syna_tcm_remove_device+0x1c8>
   15a34: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a34:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   15a38: 91000000     	add	x0, x0, #0x0
		0000000000015a38:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   15a3c: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   15a40: 91000021     	add	x1, x1, #0x0
		0000000000015a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   15a44: aa1f03e2     	mov	x2, xzr
   15a48: 94000000     	bl	0x15a48 <syna_tcm_remove_device+0x1c0>
		0000000000015a48:  R_AARCH64_CALL26	_printk
   15a4c: 14000004     	b	0x15a5c <syna_tcm_remove_device+0x1d4>
   15a50: b4000074     	cbz	x20, 0x15a5c <syna_tcm_remove_device+0x1d4>
   15a54: aa1403e1     	mov	x1, x20
   15a58: 94000000     	bl	0x15a58 <syna_tcm_remove_device+0x1d0>
		0000000000015a58:  R_AARCH64_CALL26	devm_kfree
   15a5c: 39462262     	ldrb	w2, [x19, #0x188]
   15a60: f900867f     	str	xzr, [x19, #0x108]
   15a64: 3905027f     	strb	wzr, [x19, #0x140]
   15a68: b40000c2     	cbz	x2, 0x15a80 <syna_tcm_remove_device+0x1f8>
   15a6c: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a6c:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
   15a70: 91000000     	add	x0, x0, #0x0
		0000000000015a70:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
   15a74: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x285e
   15a78: 91000021     	add	x1, x1, #0x0
		0000000000015a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x285e
   15a7c: 94000000     	bl	0x15a7c <syna_tcm_remove_device+0x1f4>
		0000000000015a7c:  R_AARCH64_CALL26	_printk
   15a80: f940a674     	ldr	x20, [x19, #0x148]
   15a84: 94000000     	bl	0x15a84 <syna_tcm_remove_device+0x1fc>
		0000000000015a84:  R_AARCH64_CALL26	syna_request_managed_device
   15a88: b5000100     	cbnz	x0, 0x15aa8 <syna_tcm_remove_device+0x220>
   15a8c: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a8c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   15a90: 91000000     	add	x0, x0, #0x0
		0000000000015a90:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   15a94: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   15a98: 91000021     	add	x1, x1, #0x0
		0000000000015a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   15a9c: aa1f03e2     	mov	x2, xzr
   15aa0: 94000000     	bl	0x15aa0 <syna_tcm_remove_device+0x218>
		0000000000015aa0:  R_AARCH64_CALL26	_printk
   15aa4: 14000004     	b	0x15ab4 <syna_tcm_remove_device+0x22c>
   15aa8: b4000074     	cbz	x20, 0x15ab4 <syna_tcm_remove_device+0x22c>
   15aac: aa1403e1     	mov	x1, x20
   15ab0: 94000000     	bl	0x15ab0 <syna_tcm_remove_device+0x228>
		0000000000015ab0:  R_AARCH64_CALL26	devm_kfree
   15ab4: f900aa7f     	str	xzr, [x19, #0x150]
   15ab8: 3906227f     	strb	wzr, [x19, #0x188]
   15abc: f900027f     	str	xzr, [x19]
   15ac0: f900267f     	str	xzr, [x19, #0x48]
   15ac4: 94000000     	bl	0x15ac4 <syna_tcm_remove_device+0x23c>
		0000000000015ac4:  R_AARCH64_CALL26	syna_request_managed_device
   15ac8: b5000100     	cbnz	x0, 0x15ae8 <syna_tcm_remove_device+0x260>
   15acc: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015acc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
   15ad0: 91000000     	add	x0, x0, #0x0
		0000000000015ad0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
   15ad4: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c58
   15ad8: 91000021     	add	x1, x1, #0x0
		0000000000015ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c58
   15adc: aa1f03e2     	mov	x2, xzr
   15ae0: 94000000     	bl	0x15ae0 <syna_tcm_remove_device+0x258>
		0000000000015ae0:  R_AARCH64_CALL26	_printk
   15ae4: 14000003     	b	0x15af0 <syna_tcm_remove_device+0x268>
   15ae8: aa1303e1     	mov	x1, x19
   15aec: 94000000     	bl	0x15aec <syna_tcm_remove_device+0x264>
		0000000000015aec:  R_AARCH64_CALL26	devm_kfree
   15af0: 90000000     	adrp	x0, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015af0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3AC8E
   15af4: 91000000     	add	x0, x0, #0x0
		0000000000015af4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3AC8E
   15af8: 90000001     	adrp	x1, 0x15000 <syna_tcm_read_flash_boot_config+0x16c>
		0000000000015af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34cc
   15afc: 91000021     	add	x1, x1, #0x0
		0000000000015afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34cc
   15b00: 94000000     	bl	0x15b00 <syna_tcm_remove_device+0x278>
		0000000000015b00:  R_AARCH64_CALL26	_printk
   15b04: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   15b08: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   15b0c: d50323bf     	autiasp
   15b10: d65f03c0     	ret
