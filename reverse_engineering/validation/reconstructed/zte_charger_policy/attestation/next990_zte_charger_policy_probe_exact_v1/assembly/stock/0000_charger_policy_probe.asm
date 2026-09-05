
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019bc <charger_policy_probe>:
    19bc: d503233f     	paciasp
    19c0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    19c4: a90157f6     	stp	x22, x21, [sp, #0x10]
    19c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    19cc: 910003fd     	mov	x29, sp
    19d0: aa0003f6     	mov	x22, x0
    19d4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000019d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a0
    19d8: 91000000     	add	x0, x0, #0x0
		00000000000019d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a0
    19dc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000019dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1905
    19e0: 91000021     	add	x1, x1, #0x0
		00000000000019e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1905
    19e4: 94000000     	bl	0x19e4 <charger_policy_probe+0x28>
		00000000000019e4:  R_AARCH64_CALL26	_printk
    19e8: 94000000     	bl	0x19e8 <charger_policy_probe+0x2c>
		00000000000019e8:  R_AARCH64_CALL26	zte_poweroff_charging_status
    19ec: 35000160     	cbnz	w0, 0x1a18 <charger_policy_probe+0x5c>
    19f0: 910042d4     	add	x20, x22, #0x10
    19f4: 52804401     	mov	w1, #0x220              // =544
    19f8: 5281b802     	mov	w2, #0xdc0              // =3520
    19fc: aa1403e0     	mov	x0, x20
    1a00: 94000000     	bl	0x1a00 <charger_policy_probe+0x44>
		0000000000001a00:  R_AARCH64_CALL26	devm_kmalloc
    1a04: b5000120     	cbnz	x0, 0x1a28 <charger_policy_probe+0x6c>
    1a08: 12800173     	mov	w19, #-0xc              // =-12
    1a0c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0d
    1a10: 91000000     	add	x0, x0, #0x0
		0000000000001a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0d
    1a14: 140001c9     	b	0x2138 <charger_policy_probe+0x77c>
    1a18: 2a1f03f3     	mov	w19, wzr
    1a1c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
    1a20: 91000000     	add	x0, x0, #0x0
		0000000000001a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
    1a24: 140001c5     	b	0x2138 <charger_policy_probe+0x77c>
    1a28: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1a2c: f9000014     	str	x20, [x0]
    1a30: 91060014     	add	x20, x0, #0x180
    1a34: aa0003f3     	mov	x19, x0
    1a38: f90056c0     	str	x0, [x22, #0xa8]
    1a3c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x453
    1a40: 91000021     	add	x1, x1, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x453
    1a44: aa1503e0     	mov	x0, x21
    1a48: aa1403e2     	mov	x2, x20
    1a4c: 52800023     	mov	w3, #0x1                // =1
    1a50: aa1f03e4     	mov	x4, xzr
    1a54: 94000000     	bl	0x1a54 <charger_policy_probe+0x98>
		0000000000001a54:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1a58: 6a807c02     	ands	w2, w0, w0, asr #31
    1a5c: 54000140     	b.eq	0x1a84 <charger_policy_probe+0xc8>
    1a60: 3100585f     	cmn	w2, #0x16
    1a64: 54000061     	b.ne	0x1a70 <charger_policy_probe+0xb4>
    1a68: b900029f     	str	wzr, [x20]
    1a6c: 14000006     	b	0x1a84 <charger_policy_probe+0xc8>
    1a70: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3a
    1a74: 91000000     	add	x0, x0, #0x0
		0000000000001a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3a
    1a78: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1a7c: 91000021     	add	x1, x1, #0x0
		0000000000001a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1a80: 94000000     	bl	0x1a80 <charger_policy_probe+0xc4>
		0000000000001a80:  R_AARCH64_CALL26	_printk
    1a84: b9418262     	ldr	w2, [x19, #0x180]
    1a88: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe79
    1a8c: 91000000     	add	x0, x0, #0x0
		0000000000001a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe79
    1a90: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1a94: 91000021     	add	x1, x1, #0x0
		0000000000001a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1a98: 94000000     	bl	0x1a98 <charger_policy_probe+0xdc>
		0000000000001a98:  R_AARCH64_CALL26	_printk
    1a9c: 91064276     	add	x22, x19, #0x190
    1aa0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    1aa4: 91000021     	add	x1, x1, #0x0
		0000000000001aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    1aa8: aa1503e0     	mov	x0, x21
    1aac: aa1603e2     	mov	x2, x22
    1ab0: 52800023     	mov	w3, #0x1                // =1
    1ab4: aa1f03e4     	mov	x4, xzr
    1ab8: 94000000     	bl	0x1ab8 <charger_policy_probe+0xfc>
		0000000000001ab8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1abc: 6a807c02     	ands	w2, w0, w0, asr #31
    1ac0: 54000160     	b.eq	0x1aec <charger_policy_probe+0x130>
    1ac4: 3100585f     	cmn	w2, #0x16
    1ac8: 54000081     	b.ne	0x1ad8 <charger_policy_probe+0x11c>
    1acc: 52800148     	mov	w8, #0xa                // =10
    1ad0: b90002c8     	str	w8, [x22]
    1ad4: 14000006     	b	0x1aec <charger_policy_probe+0x130>
    1ad8: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb43
    1adc: 91000000     	add	x0, x0, #0x0
		0000000000001adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb43
    1ae0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1ae4: 91000021     	add	x1, x1, #0x0
		0000000000001ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1ae8: 94000000     	bl	0x1ae8 <charger_policy_probe+0x12c>
		0000000000001ae8:  R_AARCH64_CALL26	_printk
    1aec: b9419262     	ldr	w2, [x19, #0x190]
    1af0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a73
    1af4: 91000000     	add	x0, x0, #0x0
		0000000000001af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a73
    1af8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1afc: 91000021     	add	x1, x1, #0x0
		0000000000001afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1b00: 94000000     	bl	0x1b00 <charger_policy_probe+0x144>
		0000000000001b00:  R_AARCH64_CALL26	_printk
    1b04: 91061276     	add	x22, x19, #0x184
    1b08: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17af
    1b0c: 91000021     	add	x1, x1, #0x0
		0000000000001b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17af
    1b10: aa1503e0     	mov	x0, x21
    1b14: aa1603e2     	mov	x2, x22
    1b18: 52800023     	mov	w3, #0x1                // =1
    1b1c: aa1f03e4     	mov	x4, xzr
    1b20: 94000000     	bl	0x1b20 <charger_policy_probe+0x164>
		0000000000001b20:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1b24: 6a807c02     	ands	w2, w0, w0, asr #31
    1b28: 54000160     	b.eq	0x1b54 <charger_policy_probe+0x198>
    1b2c: 3100585f     	cmn	w2, #0x16
    1b30: 54000081     	b.ne	0x1b40 <charger_policy_probe+0x184>
    1b34: 52800028     	mov	w8, #0x1                // =1
    1b38: b90002c8     	str	w8, [x22]
    1b3c: 14000006     	b	0x1b54 <charger_policy_probe+0x198>
    1b40: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x461
    1b44: 91000000     	add	x0, x0, #0x0
		0000000000001b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x461
    1b48: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1b4c: 91000021     	add	x1, x1, #0x0
		0000000000001b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1b50: 94000000     	bl	0x1b50 <charger_policy_probe+0x194>
		0000000000001b50:  R_AARCH64_CALL26	_printk
    1b54: b9418662     	ldr	w2, [x19, #0x184]
    1b58: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9
    1b5c: 91000000     	add	x0, x0, #0x0
		0000000000001b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9
    1b60: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1b64: 91000021     	add	x1, x1, #0x0
		0000000000001b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1b68: 94000000     	bl	0x1b68 <charger_policy_probe+0x1ac>
		0000000000001b68:  R_AARCH64_CALL26	_printk
    1b6c: 91062276     	add	x22, x19, #0x188
    1b70: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca
    1b74: 91000021     	add	x1, x1, #0x0
		0000000000001b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca
    1b78: aa1503e0     	mov	x0, x21
    1b7c: aa1603e2     	mov	x2, x22
    1b80: 52800023     	mov	w3, #0x1                // =1
    1b84: aa1f03e4     	mov	x4, xzr
    1b88: 94000000     	bl	0x1b88 <charger_policy_probe+0x1cc>
		0000000000001b88:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1b8c: 6a807c02     	ands	w2, w0, w0, asr #31
    1b90: 54000140     	b.eq	0x1bb8 <charger_policy_probe+0x1fc>
    1b94: 3100585f     	cmn	w2, #0x16
    1b98: 54000061     	b.ne	0x1ba4 <charger_policy_probe+0x1e8>
    1b9c: b90002df     	str	wzr, [x22]
    1ba0: 14000006     	b	0x1bb8 <charger_policy_probe+0x1fc>
    1ba4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa9
    1ba8: 91000000     	add	x0, x0, #0x0
		0000000000001ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa9
    1bac: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1bb0: 91000021     	add	x1, x1, #0x0
		0000000000001bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1bb4: 94000000     	bl	0x1bb4 <charger_policy_probe+0x1f8>
		0000000000001bb4:  R_AARCH64_CALL26	_printk
    1bb8: b9418a62     	ldr	w2, [x19, #0x188]
    1bbc: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x208a
    1bc0: 91000000     	add	x0, x0, #0x0
		0000000000001bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x208a
    1bc4: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1bc8: 91000021     	add	x1, x1, #0x0
		0000000000001bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1bcc: 94000000     	bl	0x1bcc <charger_policy_probe+0x210>
		0000000000001bcc:  R_AARCH64_CALL26	_printk
    1bd0: 91063276     	add	x22, x19, #0x18c
    1bd4: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a7
    1bd8: 91000021     	add	x1, x1, #0x0
		0000000000001bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a7
    1bdc: aa1503e0     	mov	x0, x21
    1be0: aa1603e2     	mov	x2, x22
    1be4: 52800023     	mov	w3, #0x1                // =1
    1be8: aa1f03e4     	mov	x4, xzr
    1bec: 94000000     	bl	0x1bec <charger_policy_probe+0x230>
		0000000000001bec:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1bf0: 6a807c02     	ands	w2, w0, w0, asr #31
    1bf4: 54000160     	b.eq	0x1c20 <charger_policy_probe+0x264>
    1bf8: 3100585f     	cmn	w2, #0x16
    1bfc: 54000081     	b.ne	0x1c0c <charger_policy_probe+0x250>
    1c00: 52800028     	mov	w8, #0x1                // =1
    1c04: b90002c8     	str	w8, [x22]
    1c08: 14000006     	b	0x1c20 <charger_policy_probe+0x264>
    1c0c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1698
    1c10: 91000000     	add	x0, x0, #0x0
		0000000000001c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1698
    1c14: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1c18: 91000021     	add	x1, x1, #0x0
		0000000000001c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1c1c: 94000000     	bl	0x1c1c <charger_policy_probe+0x260>
		0000000000001c1c:  R_AARCH64_CALL26	_printk
    1c20: b9418e62     	ldr	w2, [x19, #0x18c]
    1c24: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16da
    1c28: 91000000     	add	x0, x0, #0x0
		0000000000001c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16da
    1c2c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1c30: 91000021     	add	x1, x1, #0x0
		0000000000001c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1c34: 94000000     	bl	0x1c34 <charger_policy_probe+0x278>
		0000000000001c34:  R_AARCH64_CALL26	_printk
    1c38: 91065276     	add	x22, x19, #0x194
    1c3c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c9
    1c40: 91000021     	add	x1, x1, #0x0
		0000000000001c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c9
    1c44: aa1503e0     	mov	x0, x21
    1c48: aa1603e2     	mov	x2, x22
    1c4c: 52800023     	mov	w3, #0x1                // =1
    1c50: aa1f03e4     	mov	x4, xzr
    1c54: 94000000     	bl	0x1c54 <charger_policy_probe+0x298>
		0000000000001c54:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1c58: 6a807c02     	ands	w2, w0, w0, asr #31
    1c5c: 54000180     	b.eq	0x1c8c <charger_policy_probe+0x2d0>
    1c60: 3100585f     	cmn	w2, #0x16
    1c64: 540000a1     	b.ne	0x1c78 <charger_policy_probe+0x2bc>
    1c68: 528a3008     	mov	w8, #0x5180             // =20864
    1c6c: 72a00028     	movk	w8, #0x1, lsl #16
    1c70: b90002c8     	str	w8, [x22]
    1c74: 14000006     	b	0x1c8c <charger_policy_probe+0x2d0>
    1c78: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194f
    1c7c: 91000000     	add	x0, x0, #0x0
		0000000000001c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194f
    1c80: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1c84: 91000021     	add	x1, x1, #0x0
		0000000000001c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1c88: 94000000     	bl	0x1c88 <charger_policy_probe+0x2cc>
		0000000000001c88:  R_AARCH64_CALL26	_printk
    1c8c: b9419662     	ldr	w2, [x19, #0x194]
    1c90: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fc
    1c94: 91000000     	add	x0, x0, #0x0
		0000000000001c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fc
    1c98: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1c9c: 91000021     	add	x1, x1, #0x0
		0000000000001c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1ca0: 94000000     	bl	0x1ca0 <charger_policy_probe+0x2e4>
		0000000000001ca0:  R_AARCH64_CALL26	_printk
    1ca4: 91066276     	add	x22, x19, #0x198
    1ca8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd6
    1cac: 91000021     	add	x1, x1, #0x0
		0000000000001cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd6
    1cb0: aa1503e0     	mov	x0, x21
    1cb4: aa1603e2     	mov	x2, x22
    1cb8: 52800023     	mov	w3, #0x1                // =1
    1cbc: aa1f03e4     	mov	x4, xzr
    1cc0: 94000000     	bl	0x1cc0 <charger_policy_probe+0x304>
		0000000000001cc0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1cc4: 6a807c02     	ands	w2, w0, w0, asr #31
    1cc8: 54000160     	b.eq	0x1cf4 <charger_policy_probe+0x338>
    1ccc: 3100585f     	cmn	w2, #0x16
    1cd0: 54000081     	b.ne	0x1ce0 <charger_policy_probe+0x324>
    1cd4: 528008c8     	mov	w8, #0x46               // =70
    1cd8: b90002c8     	str	w8, [x22]
    1cdc: 14000006     	b	0x1cf4 <charger_policy_probe+0x338>
    1ce0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ec
    1ce4: 91000000     	add	x0, x0, #0x0
		0000000000001ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ec
    1ce8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1cec: 91000021     	add	x1, x1, #0x0
		0000000000001cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1cf0: 94000000     	bl	0x1cf0 <charger_policy_probe+0x334>
		0000000000001cf0:  R_AARCH64_CALL26	_printk
    1cf4: b9419a62     	ldr	w2, [x19, #0x198]
    1cf8: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1101
    1cfc: 91000000     	add	x0, x0, #0x0
		0000000000001cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1101
    1d00: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1d04: 91000021     	add	x1, x1, #0x0
		0000000000001d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1d08: 94000000     	bl	0x1d08 <charger_policy_probe+0x34c>
		0000000000001d08:  R_AARCH64_CALL26	_printk
    1d0c: 91067276     	add	x22, x19, #0x19c
    1d10: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c42
    1d14: 91000021     	add	x1, x1, #0x0
		0000000000001d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c42
    1d18: aa1503e0     	mov	x0, x21
    1d1c: aa1603e2     	mov	x2, x22
    1d20: 52800023     	mov	w3, #0x1                // =1
    1d24: aa1f03e4     	mov	x4, xzr
    1d28: 94000000     	bl	0x1d28 <charger_policy_probe+0x36c>
		0000000000001d28:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1d2c: 6a807c02     	ands	w2, w0, w0, asr #31
    1d30: 54000160     	b.eq	0x1d5c <charger_policy_probe+0x3a0>
    1d34: 3100585f     	cmn	w2, #0x16
    1d38: 54000081     	b.ne	0x1d48 <charger_policy_probe+0x38c>
    1d3c: 52800648     	mov	w8, #0x32               // =50
    1d40: b90002c8     	str	w8, [x22]
    1d44: 14000006     	b	0x1d5c <charger_policy_probe+0x3a0>
    1d48: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde2
    1d4c: 91000000     	add	x0, x0, #0x0
		0000000000001d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde2
    1d50: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1d54: 91000021     	add	x1, x1, #0x0
		0000000000001d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1d58: 94000000     	bl	0x1d58 <charger_policy_probe+0x39c>
		0000000000001d58:  R_AARCH64_CALL26	_printk
    1d5c: b9419e62     	ldr	w2, [x19, #0x19c]
    1d60: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5e
    1d64: 91000000     	add	x0, x0, #0x0
		0000000000001d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5e
    1d68: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1d6c: 91000021     	add	x1, x1, #0x0
		0000000000001d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1d70: 94000000     	bl	0x1d70 <charger_policy_probe+0x3b4>
		0000000000001d70:  R_AARCH64_CALL26	_printk
    1d74: 91068276     	add	x22, x19, #0x1a0
    1d78: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d91
    1d7c: 91000021     	add	x1, x1, #0x0
		0000000000001d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d91
    1d80: aa1503e0     	mov	x0, x21
    1d84: aa1603e2     	mov	x2, x22
    1d88: 52800023     	mov	w3, #0x1                // =1
    1d8c: aa1f03e4     	mov	x4, xzr
    1d90: 94000000     	bl	0x1d90 <charger_policy_probe+0x3d4>
		0000000000001d90:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1d94: 6a807c02     	ands	w2, w0, w0, asr #31
    1d98: 54000160     	b.eq	0x1dc4 <charger_policy_probe+0x408>
    1d9c: 3100585f     	cmn	w2, #0x16
    1da0: 54000081     	b.ne	0x1db0 <charger_policy_probe+0x3f4>
    1da4: 528008c8     	mov	w8, #0x46               // =70
    1da8: b90002c8     	str	w8, [x22]
    1dac: 14000006     	b	0x1dc4 <charger_policy_probe+0x408>
    1db0: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x827
    1db4: 91000000     	add	x0, x0, #0x0
		0000000000001db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x827
    1db8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1dbc: 91000021     	add	x1, x1, #0x0
		0000000000001dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1dc0: 94000000     	bl	0x1dc0 <charger_policy_probe+0x404>
		0000000000001dc0:  R_AARCH64_CALL26	_printk
    1dc4: b941a262     	ldr	w2, [x19, #0x1a0]
    1dc8: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x636
    1dcc: 91000000     	add	x0, x0, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x636
    1dd0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1dd4: 91000021     	add	x1, x1, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1dd8: 94000000     	bl	0x1dd8 <charger_policy_probe+0x41c>
		0000000000001dd8:  R_AARCH64_CALL26	_printk
    1ddc: 91069276     	add	x22, x19, #0x1a4
    1de0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f05
    1de4: 91000021     	add	x1, x1, #0x0
		0000000000001de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f05
    1de8: aa1503e0     	mov	x0, x21
    1dec: aa1603e2     	mov	x2, x22
    1df0: 52800023     	mov	w3, #0x1                // =1
    1df4: aa1f03e4     	mov	x4, xzr
    1df8: 94000000     	bl	0x1df8 <charger_policy_probe+0x43c>
		0000000000001df8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1dfc: 6a807c02     	ands	w2, w0, w0, asr #31
    1e00: 54000160     	b.eq	0x1e2c <charger_policy_probe+0x470>
    1e04: 3100585f     	cmn	w2, #0x16
    1e08: 54000081     	b.ne	0x1e18 <charger_policy_probe+0x45c>
    1e0c: 52800648     	mov	w8, #0x32               // =50
    1e10: b90002c8     	str	w8, [x22]
    1e14: 14000006     	b	0x1e2c <charger_policy_probe+0x470>
    1e18: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1714
    1e1c: 91000000     	add	x0, x0, #0x0
		0000000000001e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1714
    1e20: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1e24: 91000021     	add	x1, x1, #0x0
		0000000000001e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1e28: 94000000     	bl	0x1e28 <charger_policy_probe+0x46c>
		0000000000001e28:  R_AARCH64_CALL26	_printk
    1e2c: b941a662     	ldr	w2, [x19, #0x1a4]
    1e30: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x158e
    1e34: 91000000     	add	x0, x0, #0x0
		0000000000001e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x158e
    1e38: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1e3c: 91000021     	add	x1, x1, #0x0
		0000000000001e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1e40: 94000000     	bl	0x1e40 <charger_policy_probe+0x484>
		0000000000001e40:  R_AARCH64_CALL26	_printk
    1e44: 9106a276     	add	x22, x19, #0x1a8
    1e48: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aeb
    1e4c: 91000021     	add	x1, x1, #0x0
		0000000000001e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aeb
    1e50: aa1503e0     	mov	x0, x21
    1e54: aa1603e2     	mov	x2, x22
    1e58: 52800023     	mov	w3, #0x1                // =1
    1e5c: aa1f03e4     	mov	x4, xzr
    1e60: 94000000     	bl	0x1e60 <charger_policy_probe+0x4a4>
		0000000000001e60:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1e64: 6a807c02     	ands	w2, w0, w0, asr #31
    1e68: 54000160     	b.eq	0x1e94 <charger_policy_probe+0x4d8>
    1e6c: 3100585f     	cmn	w2, #0x16
    1e70: 54000081     	b.ne	0x1e80 <charger_policy_probe+0x4c4>
    1e74: 52800148     	mov	w8, #0xa                // =10
    1e78: b90002c8     	str	w8, [x22]
    1e7c: 14000006     	b	0x1e94 <charger_policy_probe+0x4d8>
    1e80: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf2
    1e84: 91000000     	add	x0, x0, #0x0
		0000000000001e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf2
    1e88: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1e8c: 91000021     	add	x1, x1, #0x0
		0000000000001e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1e90: 94000000     	bl	0x1e90 <charger_policy_probe+0x4d4>
		0000000000001e90:  R_AARCH64_CALL26	_printk
    1e94: b941aa62     	ldr	w2, [x19, #0x1a8]
    1e98: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb81
    1e9c: 91000000     	add	x0, x0, #0x0
		0000000000001e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb81
    1ea0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1ea4: 91000021     	add	x1, x1, #0x0
		0000000000001ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1ea8: 94000000     	bl	0x1ea8 <charger_policy_probe+0x4ec>
		0000000000001ea8:  R_AARCH64_CALL26	_printk
    1eac: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeaa
    1eb0: 91000021     	add	x1, x1, #0x0
		0000000000001eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeaa
    1eb4: 9106e262     	add	x2, x19, #0x1b8
    1eb8: aa1503e0     	mov	x0, x21
    1ebc: 94000000     	bl	0x1ebc <charger_policy_probe+0x500>
		0000000000001ebc:  R_AARCH64_CALL26	of_property_read_string
    1ec0: 3100581f     	cmn	w0, #0x16
    1ec4: 540000a0     	b.eq	0x1ed8 <charger_policy_probe+0x51c>
    1ec8: 2a0003f6     	mov	w22, w0
    1ecc: 350002c0     	cbnz	w0, 0x1f24 <charger_policy_probe+0x568>
    1ed0: f940de62     	ldr	x2, [x19, #0x1b8]
    1ed4: 14000004     	b	0x1ee4 <charger_policy_probe+0x528>
    1ed8: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f1e
    1edc: 91000042     	add	x2, x2, #0x0
		0000000000001edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f1e
    1ee0: f900de62     	str	x2, [x19, #0x1b8]
    1ee4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
    1ee8: 91000000     	add	x0, x0, #0x0
		0000000000001ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
    1eec: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1ef0: 91000021     	add	x1, x1, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1ef4: 94000000     	bl	0x1ef4 <charger_policy_probe+0x538>
		0000000000001ef4:  R_AARCH64_CALL26	_printk
    1ef8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34a
    1efc: 91000021     	add	x1, x1, #0x0
		0000000000001efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34a
    1f00: 91070262     	add	x2, x19, #0x1c0
    1f04: aa1503e0     	mov	x0, x21
    1f08: 94000000     	bl	0x1f08 <charger_policy_probe+0x54c>
		0000000000001f08:  R_AARCH64_CALL26	of_property_read_string
    1f0c: 3100581f     	cmn	w0, #0x16
    1f10: 54000100     	b.eq	0x1f30 <charger_policy_probe+0x574>
    1f14: 2a0003f6     	mov	w22, w0
    1f18: 35000320     	cbnz	w0, 0x1f7c <charger_policy_probe+0x5c0>
    1f1c: f940e262     	ldr	x2, [x19, #0x1c0]
    1f20: 14000007     	b	0x1f3c <charger_policy_probe+0x580>
    1f24: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1434
    1f28: 91000000     	add	x0, x0, #0x0
		0000000000001f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1434
    1f2c: 1400004e     	b	0x2064 <charger_policy_probe+0x6a8>
    1f30: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55
    1f34: 91000042     	add	x2, x2, #0x0
		0000000000001f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55
    1f38: f900e262     	str	x2, [x19, #0x1c0]
    1f3c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfa0
    1f40: 91000000     	add	x0, x0, #0x0
		0000000000001f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfa0
    1f44: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1f48: 91000021     	add	x1, x1, #0x0
		0000000000001f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1f4c: 94000000     	bl	0x1f4c <charger_policy_probe+0x590>
		0000000000001f4c:  R_AARCH64_CALL26	_printk
    1f50: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9d
    1f54: 91000021     	add	x1, x1, #0x0
		0000000000001f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9d
    1f58: 91072262     	add	x2, x19, #0x1c8
    1f5c: aa1503e0     	mov	x0, x21
    1f60: 94000000     	bl	0x1f60 <charger_policy_probe+0x5a4>
		0000000000001f60:  R_AARCH64_CALL26	of_property_read_string
    1f64: 3100581f     	cmn	w0, #0x16
    1f68: 54000100     	b.eq	0x1f88 <charger_policy_probe+0x5cc>
    1f6c: 2a0003f6     	mov	w22, w0
    1f70: 35000320     	cbnz	w0, 0x1fd4 <charger_policy_probe+0x618>
    1f74: f940e662     	ldr	x2, [x19, #0x1c8]
    1f78: 14000007     	b	0x1f94 <charger_policy_probe+0x5d8>
    1f7c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86b
    1f80: 91000000     	add	x0, x0, #0x0
		0000000000001f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86b
    1f84: 14000038     	b	0x2064 <charger_policy_probe+0x6a8>
    1f88: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b2
    1f8c: 91000042     	add	x2, x2, #0x0
		0000000000001f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b2
    1f90: f900e662     	str	x2, [x19, #0x1c8]
    1f94: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1140
    1f98: 91000000     	add	x0, x0, #0x0
		0000000000001f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1140
    1f9c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1fa0: 91000021     	add	x1, x1, #0x0
		0000000000001fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1fa4: 94000000     	bl	0x1fa4 <charger_policy_probe+0x5e8>
		0000000000001fa4:  R_AARCH64_CALL26	_printk
    1fa8: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb5
    1fac: 91000021     	add	x1, x1, #0x0
		0000000000001fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb5
    1fb0: 9106c262     	add	x2, x19, #0x1b0
    1fb4: aa1503e0     	mov	x0, x21
    1fb8: 94000000     	bl	0x1fb8 <charger_policy_probe+0x5fc>
		0000000000001fb8:  R_AARCH64_CALL26	of_property_read_string
    1fbc: 3100581f     	cmn	w0, #0x16
    1fc0: 54000100     	b.eq	0x1fe0 <charger_policy_probe+0x624>
    1fc4: 2a0003f6     	mov	w22, w0
    1fc8: 35000320     	cbnz	w0, 0x202c <charger_policy_probe+0x670>
    1fcc: f940da62     	ldr	x2, [x19, #0x1b0]
    1fd0: 14000007     	b	0x1fec <charger_policy_probe+0x630>
    1fd4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001fd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ca
    1fd8: 91000000     	add	x0, x0, #0x0
		0000000000001fd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ca
    1fdc: 14000022     	b	0x2064 <charger_policy_probe+0x6a8>
    1fe0: 90000002     	adrp	x2, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd40
    1fe4: 91000042     	add	x2, x2, #0x0
		0000000000001fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd40
    1fe8: f900da62     	str	x2, [x19, #0x1b0]
    1fec: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbc7
    1ff0: 91000000     	add	x0, x0, #0x0
		0000000000001ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbc7
    1ff4: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    1ff8: 91000021     	add	x1, x1, #0x0
		0000000000001ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    1ffc: 94000000     	bl	0x1ffc <charger_policy_probe+0x640>
		0000000000001ffc:  R_AARCH64_CALL26	_printk
    2000: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180d
    2004: 91000021     	add	x1, x1, #0x0
		0000000000002004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180d
    2008: 91074262     	add	x2, x19, #0x1d0
    200c: aa1503e0     	mov	x0, x21
    2010: 94000000     	bl	0x2010 <charger_policy_probe+0x654>
		0000000000002010:  R_AARCH64_CALL26	of_property_read_string
    2014: 3100581f     	cmn	w0, #0x16
    2018: 54000100     	b.eq	0x2038 <charger_policy_probe+0x67c>
    201c: 2a0003f6     	mov	w22, w0
    2020: 350001e0     	cbnz	w0, 0x205c <charger_policy_probe+0x6a0>
    2024: f940ea62     	ldr	x2, [x19, #0x1d0]
    2028: 14000007     	b	0x2044 <charger_policy_probe+0x688>
    202c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000202c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ba
    2030: 91000000     	add	x0, x0, #0x0
		0000000000002030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ba
    2034: 1400000c     	b	0x2064 <charger_policy_probe+0x6a8>
    2038: 90000002     	adrp	x2, 0x2000 <charger_policy_probe+0x644>
		0000000000002038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x366
    203c: 91000042     	add	x2, x2, #0x0
		000000000000203c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x366
    2040: f900ea62     	str	x2, [x19, #0x1d0]
    2044: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x567
    2048: 91000000     	add	x0, x0, #0x0
		0000000000002048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x567
    204c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000204c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    2050: 91000021     	add	x1, x1, #0x0
		0000000000002050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    2054: 94000000     	bl	0x2054 <charger_policy_probe+0x698>
		0000000000002054:  R_AARCH64_CALL26	_printk
    2058: 1400000b     	b	0x2084 <charger_policy_probe+0x6c8>
    205c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x672
    2060: 91000000     	add	x0, x0, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x672
    2064: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2072
    2068: 91000021     	add	x1, x1, #0x0
		0000000000002068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2072
    206c: 2a1603e2     	mov	w2, w22
    2070: 94000000     	bl	0x2070 <charger_policy_probe+0x6b4>
		0000000000002070:  R_AARCH64_CALL26	_printk
    2074: 36f80096     	tbz	w22, #0x1f, 0x2084 <charger_policy_probe+0x6c8>
    2078: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d6f
    207c: 91000000     	add	x0, x0, #0x0
		000000000000207c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d6f
    2080: 14000005     	b	0x2094 <charger_policy_probe+0x6d8>
    2084: b9400288     	ldr	w8, [x20]
    2088: 350001a8     	cbnz	w8, 0x20bc <charger_policy_probe+0x700>
    208c: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		000000000000208c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafe
    2090: 91000000     	add	x0, x0, #0x0
		0000000000002090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafe
    2094: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1905
    2098: 91000021     	add	x1, x1, #0x0
		0000000000002098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1905
    209c: 94000000     	bl	0x209c <charger_policy_probe+0x6e0>
		000000000000209c:  R_AARCH64_CALL26	_printk
    20a0: f9400260     	ldr	x0, [x19]
    20a4: aa1303e1     	mov	x1, x19
    20a8: 94000000     	bl	0x20a8 <charger_policy_probe+0x6ec>
		00000000000020a8:  R_AARCH64_CALL26	devm_kfree
    20ac: 2a1f03f3     	mov	w19, wzr
    20b0: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000020b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31c
    20b4: 91000000     	add	x0, x0, #0x0
		00000000000020b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31c
    20b8: 14000020     	b	0x2138 <charger_policy_probe+0x77c>
    20bc: 52800141     	mov	w1, #0xa                // =10
    20c0: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000020c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd3
    20c4: 91000000     	add	x0, x0, #0x0
		00000000000020c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd3
    20c8: 90000003     	adrp	x3, 0x2000 <charger_policy_probe+0x644>
		00000000000020c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c32
    20cc: 91000063     	add	x3, x3, #0x0
		00000000000020cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c32
    20d0: 72a000c1     	movk	w1, #0x6, lsl #16
    20d4: 52800022     	mov	w2, #0x1                // =1
    20d8: 94000000     	bl	0x20d8 <charger_policy_probe+0x71c>
		00000000000020d8:  R_AARCH64_CALL26	alloc_workqueue
    20dc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    20e0: 91048269     	add	x9, x19, #0x120
    20e4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000020e4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    20e8: 91000021     	add	x1, x1, #0x0
		00000000000020e8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    20ec: a9112260     	stp	x0, x8, [x19, #0x110]
    20f0: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x644>
		00000000000020f0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x21d0
    20f4: 91000108     	add	x8, x8, #0x0
		00000000000020f4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x21d0
    20f8: 9104e260     	add	x0, x19, #0x138
    20fc: 52a00402     	mov	w2, #0x200000           // =2097152
    2100: aa1f03e3     	mov	x3, xzr
    2104: aa1f03e4     	mov	x4, xzr
    2108: f9009269     	str	x9, [x19, #0x120]
    210c: f9009669     	str	x9, [x19, #0x128]
    2110: f9009a68     	str	x8, [x19, #0x130]
    2114: 94000000     	bl	0x2114 <charger_policy_probe+0x758>
		0000000000002114:  R_AARCH64_CALL26	init_timer_key
    2118: f9408a61     	ldr	x1, [x19, #0x110]
    211c: 91046262     	add	x2, x19, #0x118
    2120: 52800400     	mov	w0, #0x20               // =32
    2124: 52809c43     	mov	w3, #0x4e2              // =1250
    2128: 94000000     	bl	0x2128 <charger_policy_probe+0x76c>
		0000000000002128:  R_AARCH64_CALL26	queue_delayed_work_on
    212c: 2a1f03f3     	mov	w19, wzr
    2130: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191a
    2134: 91000000     	add	x0, x0, #0x0
		0000000000002134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191a
    2138: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		0000000000002138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1905
    213c: 91000021     	add	x1, x1, #0x0
		000000000000213c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1905
    2140: 94000000     	bl	0x2140 <charger_policy_probe+0x784>
		0000000000002140:  R_AARCH64_CALL26	_printk
    2144: 2a1303e0     	mov	w0, w19
    2148: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    214c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    2150: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2154: d50323bf     	autiasp
    2158: d65f03c0     	ret
