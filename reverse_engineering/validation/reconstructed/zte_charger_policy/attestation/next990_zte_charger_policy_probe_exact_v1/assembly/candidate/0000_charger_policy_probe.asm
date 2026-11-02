
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001914 <charger_policy_probe>:
    1914: d503233f     	paciasp
    1918: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    191c: a90157f6     	stp	x22, x21, [sp, #0x10]
    1920: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1924: 910003fd     	mov	x29, sp
    1928: aa0003f6     	mov	x22, x0
    192c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		000000000000192c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1f
    1930: 91000000     	add	x0, x0, #0x0
		0000000000001930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1f
    1934: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x226e
    1938: 91000021     	add	x1, x1, #0x0
		0000000000001938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x226e
    193c: 94000000     	bl	0x193c <charger_policy_probe+0x28>
		000000000000193c:  R_AARCH64_CALL26	_printk
    1940: 94000000     	bl	0x1940 <charger_policy_probe+0x2c>
		0000000000001940:  R_AARCH64_CALL26	zte_poweroff_charging_status
    1944: 35000160     	cbnz	w0, 0x1970 <charger_policy_probe+0x5c>
    1948: 910042d4     	add	x20, x22, #0x10
    194c: 52804401     	mov	w1, #0x220              // =544
    1950: 5281b802     	mov	w2, #0xdc0              // =3520
    1954: aa1403e0     	mov	x0, x20
    1958: 94000000     	bl	0x1958 <charger_policy_probe+0x44>
		0000000000001958:  R_AARCH64_CALL26	devm_kmalloc
    195c: b5000120     	cbnz	x0, 0x1980 <charger_policy_probe+0x6c>
    1960: 12800173     	mov	w19, #-0xc              // =-12
    1964: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26aa
    1968: 91000000     	add	x0, x0, #0x0
		0000000000001968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26aa
    196c: 140001c9     	b	0x2090 <charger_policy_probe+0x77c>
    1970: 2a1f03f3     	mov	w19, wzr
    1974: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x770
    1978: 91000000     	add	x0, x0, #0x0
		0000000000001978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x770
    197c: 140001c5     	b	0x2090 <charger_policy_probe+0x77c>
    1980: f9417ed5     	ldr	x21, [x22, #0x2f8]
    1984: f9000014     	str	x20, [x0]
    1988: 91060014     	add	x20, x0, #0x180
    198c: aa0003f3     	mov	x19, x0
    1990: f90056c0     	str	x0, [x22, #0xa8]
    1994: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x665
    1998: 91000021     	add	x1, x1, #0x0
		0000000000001998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x665
    199c: aa1503e0     	mov	x0, x21
    19a0: aa1403e2     	mov	x2, x20
    19a4: 52800023     	mov	w3, #0x1                // =1
    19a8: aa1f03e4     	mov	x4, xzr
    19ac: 94000000     	bl	0x19ac <charger_policy_probe+0x98>
		00000000000019ac:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    19b0: 6a807c02     	ands	w2, w0, w0, asr #31
    19b4: 54000140     	b.eq	0x19dc <charger_policy_probe+0xc8>
    19b8: 3100585f     	cmn	w2, #0x16
    19bc: 54000061     	b.ne	0x19c8 <charger_policy_probe+0xb4>
    19c0: b900029f     	str	wzr, [x20]
    19c4: 14000006     	b	0x19dc <charger_policy_probe+0xc8>
    19c8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2496
    19cc: 91000000     	add	x0, x0, #0x0
		00000000000019cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2496
    19d0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    19d4: 91000021     	add	x1, x1, #0x0
		00000000000019d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    19d8: 94000000     	bl	0x19d8 <charger_policy_probe+0xc4>
		00000000000019d8:  R_AARCH64_CALL26	_printk
    19dc: b9418262     	ldr	w2, [x19, #0x180]
    19e0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162c
    19e4: 91000000     	add	x0, x0, #0x0
		00000000000019e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162c
    19e8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    19ec: 91000021     	add	x1, x1, #0x0
		00000000000019ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    19f0: 94000000     	bl	0x19f0 <charger_policy_probe+0xdc>
		00000000000019f0:  R_AARCH64_CALL26	_printk
    19f4: 91064276     	add	x22, x19, #0x190
    19f8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b3
    19fc: 91000021     	add	x1, x1, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b3
    1a00: aa1503e0     	mov	x0, x21
    1a04: aa1603e2     	mov	x2, x22
    1a08: 52800023     	mov	w3, #0x1                // =1
    1a0c: aa1f03e4     	mov	x4, xzr
    1a10: 94000000     	bl	0x1a10 <charger_policy_probe+0xfc>
		0000000000001a10:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1a14: 6a807c02     	ands	w2, w0, w0, asr #31
    1a18: 54000160     	b.eq	0x1a44 <charger_policy_probe+0x130>
    1a1c: 3100585f     	cmn	w2, #0x16
    1a20: 54000081     	b.ne	0x1a30 <charger_policy_probe+0x11c>
    1a24: 52800148     	mov	w8, #0xa                // =10
    1a28: b90002c8     	str	w8, [x22]
    1a2c: 14000006     	b	0x1a44 <charger_policy_probe+0x130>
    1a30: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd6
    1a34: 91000000     	add	x0, x0, #0x0
		0000000000001a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd6
    1a38: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1a3c: 91000021     	add	x1, x1, #0x0
		0000000000001a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1a40: 94000000     	bl	0x1a40 <charger_policy_probe+0x12c>
		0000000000001a40:  R_AARCH64_CALL26	_printk
    1a44: b9419262     	ldr	w2, [x19, #0x190]
    1a48: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24cf
    1a4c: 91000000     	add	x0, x0, #0x0
		0000000000001a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24cf
    1a50: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1a54: 91000021     	add	x1, x1, #0x0
		0000000000001a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1a58: 94000000     	bl	0x1a58 <charger_policy_probe+0x144>
		0000000000001a58:  R_AARCH64_CALL26	_printk
    1a5c: 91061276     	add	x22, x19, #0x184
    1a60: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217d
    1a64: 91000021     	add	x1, x1, #0x0
		0000000000001a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217d
    1a68: aa1503e0     	mov	x0, x21
    1a6c: aa1603e2     	mov	x2, x22
    1a70: 52800023     	mov	w3, #0x1                // =1
    1a74: aa1f03e4     	mov	x4, xzr
    1a78: 94000000     	bl	0x1a78 <charger_policy_probe+0x164>
		0000000000001a78:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1a7c: 6a807c02     	ands	w2, w0, w0, asr #31
    1a80: 54000160     	b.eq	0x1aac <charger_policy_probe+0x198>
    1a84: 3100585f     	cmn	w2, #0x16
    1a88: 54000081     	b.ne	0x1a98 <charger_policy_probe+0x184>
    1a8c: 52800028     	mov	w8, #0x1                // =1
    1a90: b90002c8     	str	w8, [x22]
    1a94: 14000006     	b	0x1aac <charger_policy_probe+0x198>
    1a98: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x673
    1a9c: 91000000     	add	x0, x0, #0x0
		0000000000001a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x673
    1aa0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1aa4: 91000021     	add	x1, x1, #0x0
		0000000000001aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1aa8: 94000000     	bl	0x1aa8 <charger_policy_probe+0x194>
		0000000000001aa8:  R_AARCH64_CALL26	_printk
    1aac: b9418662     	ldr	w2, [x19, #0x184]
    1ab0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x100
    1ab4: 91000000     	add	x0, x0, #0x0
		0000000000001ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x100
    1ab8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1abc: 91000021     	add	x1, x1, #0x0
		0000000000001abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1ac0: 94000000     	bl	0x1ac0 <charger_policy_probe+0x1ac>
		0000000000001ac0:  R_AARCH64_CALL26	_printk
    1ac4: 91062276     	add	x22, x19, #0x188
    1ac8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x565
    1acc: 91000021     	add	x1, x1, #0x0
		0000000000001acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x565
    1ad0: aa1503e0     	mov	x0, x21
    1ad4: aa1603e2     	mov	x2, x22
    1ad8: 52800023     	mov	w3, #0x1                // =1
    1adc: aa1f03e4     	mov	x4, xzr
    1ae0: 94000000     	bl	0x1ae0 <charger_policy_probe+0x1cc>
		0000000000001ae0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1ae4: 6a807c02     	ands	w2, w0, w0, asr #31
    1ae8: 54000140     	b.eq	0x1b10 <charger_policy_probe+0x1fc>
    1aec: 3100585f     	cmn	w2, #0x16
    1af0: 54000061     	b.ne	0x1afc <charger_policy_probe+0x1e8>
    1af4: b90002df     	str	wzr, [x22]
    1af8: 14000006     	b	0x1b10 <charger_policy_probe+0x1fc>
    1afc: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2505
    1b00: 91000000     	add	x0, x0, #0x0
		0000000000001b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2505
    1b04: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1b08: 91000021     	add	x1, x1, #0x0
		0000000000001b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1b0c: 94000000     	bl	0x1b0c <charger_policy_probe+0x1f8>
		0000000000001b0c:  R_AARCH64_CALL26	_printk
    1b10: b9418a62     	ldr	w2, [x19, #0x188]
    1b14: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d60
    1b18: 91000000     	add	x0, x0, #0x0
		0000000000001b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d60
    1b1c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1b20: 91000021     	add	x1, x1, #0x0
		0000000000001b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1b24: 94000000     	bl	0x1b24 <charger_policy_probe+0x210>
		0000000000001b24:  R_AARCH64_CALL26	_printk
    1b28: 91063276     	add	x22, x19, #0x18c
    1b2c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b9
    1b30: 91000021     	add	x1, x1, #0x0
		0000000000001b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b9
    1b34: aa1503e0     	mov	x0, x21
    1b38: aa1603e2     	mov	x2, x22
    1b3c: 52800023     	mov	w3, #0x1                // =1
    1b40: aa1f03e4     	mov	x4, xzr
    1b44: 94000000     	bl	0x1b44 <charger_policy_probe+0x230>
		0000000000001b44:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1b48: 6a807c02     	ands	w2, w0, w0, asr #31
    1b4c: 54000160     	b.eq	0x1b78 <charger_policy_probe+0x264>
    1b50: 3100585f     	cmn	w2, #0x16
    1b54: 54000081     	b.ne	0x1b64 <charger_policy_probe+0x250>
    1b58: 52800028     	mov	w8, #0x1                // =1
    1b5c: b90002c8     	str	w8, [x22]
    1b60: 14000006     	b	0x1b78 <charger_policy_probe+0x264>
    1b64: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2097
    1b68: 91000000     	add	x0, x0, #0x0
		0000000000001b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2097
    1b6c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1b70: 91000021     	add	x1, x1, #0x0
		0000000000001b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1b74: 94000000     	bl	0x1b74 <charger_policy_probe+0x260>
		0000000000001b74:  R_AARCH64_CALL26	_printk
    1b78: b9418e62     	ldr	w2, [x19, #0x18c]
    1b7c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d9
    1b80: 91000000     	add	x0, x0, #0x0
		0000000000001b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d9
    1b84: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1b88: 91000021     	add	x1, x1, #0x0
		0000000000001b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1b8c: 94000000     	bl	0x1b8c <charger_policy_probe+0x278>
		0000000000001b8c:  R_AARCH64_CALL26	_printk
    1b90: 91065276     	add	x22, x19, #0x194
    1b94: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe09
    1b98: 91000021     	add	x1, x1, #0x0
		0000000000001b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe09
    1b9c: aa1503e0     	mov	x0, x21
    1ba0: aa1603e2     	mov	x2, x22
    1ba4: 52800023     	mov	w3, #0x1                // =1
    1ba8: aa1f03e4     	mov	x4, xzr
    1bac: 94000000     	bl	0x1bac <charger_policy_probe+0x298>
		0000000000001bac:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1bb0: 6a807c02     	ands	w2, w0, w0, asr #31
    1bb4: 54000180     	b.eq	0x1be4 <charger_policy_probe+0x2d0>
    1bb8: 3100585f     	cmn	w2, #0x16
    1bbc: 540000a1     	b.ne	0x1bd0 <charger_policy_probe+0x2bc>
    1bc0: 528a3008     	mov	w8, #0x5180             // =20864
    1bc4: 72a00028     	movk	w8, #0x1, lsl #16
    1bc8: b90002c8     	str	w8, [x22]
    1bcc: 14000006     	b	0x1be4 <charger_policy_probe+0x2d0>
    1bd0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2283
    1bd4: 91000000     	add	x0, x0, #0x0
		0000000000001bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2283
    1bd8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1bdc: 91000021     	add	x1, x1, #0x0
		0000000000001bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1be0: 94000000     	bl	0x1be0 <charger_policy_probe+0x2cc>
		0000000000001be0:  R_AARCH64_CALL26	_printk
    1be4: b9419662     	ldr	w2, [x19, #0x194]
    1be8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90d
    1bec: 91000000     	add	x0, x0, #0x0
		0000000000001bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90d
    1bf0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1bf4: 91000021     	add	x1, x1, #0x0
		0000000000001bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1bf8: 94000000     	bl	0x1bf8 <charger_policy_probe+0x2e4>
		0000000000001bf8:  R_AARCH64_CALL26	_printk
    1bfc: 91066276     	add	x22, x19, #0x198
    1c00: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b9
    1c04: 91000021     	add	x1, x1, #0x0
		0000000000001c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b9
    1c08: aa1503e0     	mov	x0, x21
    1c0c: aa1603e2     	mov	x2, x22
    1c10: 52800023     	mov	w3, #0x1                // =1
    1c14: aa1f03e4     	mov	x4, xzr
    1c18: 94000000     	bl	0x1c18 <charger_policy_probe+0x304>
		0000000000001c18:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1c1c: 6a807c02     	ands	w2, w0, w0, asr #31
    1c20: 54000160     	b.eq	0x1c4c <charger_policy_probe+0x338>
    1c24: 3100585f     	cmn	w2, #0x16
    1c28: 54000081     	b.ne	0x1c38 <charger_policy_probe+0x324>
    1c2c: 528008c8     	mov	w8, #0x46               // =70
    1c30: b90002c8     	str	w8, [x22]
    1c34: 14000006     	b	0x1c4c <charger_policy_probe+0x338>
    1c38: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa28
    1c3c: 91000000     	add	x0, x0, #0x0
		0000000000001c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa28
    1c40: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1c44: 91000021     	add	x1, x1, #0x0
		0000000000001c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1c48: 94000000     	bl	0x1c48 <charger_policy_probe+0x334>
		0000000000001c48:  R_AARCH64_CALL26	_printk
    1c4c: b9419a62     	ldr	w2, [x19, #0x198]
    1c50: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1891
    1c54: 91000000     	add	x0, x0, #0x0
		0000000000001c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1891
    1c58: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1c5c: 91000021     	add	x1, x1, #0x0
		0000000000001c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1c60: 94000000     	bl	0x1c60 <charger_policy_probe+0x34c>
		0000000000001c60:  R_AARCH64_CALL26	_printk
    1c64: 91067276     	add	x22, x19, #0x19c
    1c68: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26cf
    1c6c: 91000021     	add	x1, x1, #0x0
		0000000000001c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26cf
    1c70: aa1503e0     	mov	x0, x21
    1c74: aa1603e2     	mov	x2, x22
    1c78: 52800023     	mov	w3, #0x1                // =1
    1c7c: aa1f03e4     	mov	x4, xzr
    1c80: 94000000     	bl	0x1c80 <charger_policy_probe+0x36c>
		0000000000001c80:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1c84: 6a807c02     	ands	w2, w0, w0, asr #31
    1c88: 54000160     	b.eq	0x1cb4 <charger_policy_probe+0x3a0>
    1c8c: 3100585f     	cmn	w2, #0x16
    1c90: 54000081     	b.ne	0x1ca0 <charger_policy_probe+0x38c>
    1c94: 52800648     	mov	w8, #0x32               // =50
    1c98: b90002c8     	str	w8, [x22]
    1c9c: 14000006     	b	0x1cb4 <charger_policy_probe+0x3a0>
    1ca0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a7
    1ca4: 91000000     	add	x0, x0, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a7
    1ca8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1cac: 91000021     	add	x1, x1, #0x0
		0000000000001cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1cb0: 94000000     	bl	0x1cb0 <charger_policy_probe+0x39c>
		0000000000001cb0:  R_AARCH64_CALL26	_printk
    1cb4: b9419e62     	ldr	w2, [x19, #0x19c]
    1cb8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26eb
    1cbc: 91000000     	add	x0, x0, #0x0
		0000000000001cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26eb
    1cc0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1cc4: 91000021     	add	x1, x1, #0x0
		0000000000001cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1cc8: 94000000     	bl	0x1cc8 <charger_policy_probe+0x3b4>
		0000000000001cc8:  R_AARCH64_CALL26	_printk
    1ccc: 91068276     	add	x22, x19, #0x1a0
    1cd0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284a
    1cd4: 91000021     	add	x1, x1, #0x0
		0000000000001cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284a
    1cd8: aa1503e0     	mov	x0, x21
    1cdc: aa1603e2     	mov	x2, x22
    1ce0: 52800023     	mov	w3, #0x1                // =1
    1ce4: aa1f03e4     	mov	x4, xzr
    1ce8: 94000000     	bl	0x1ce8 <charger_policy_probe+0x3d4>
		0000000000001ce8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1cec: 6a807c02     	ands	w2, w0, w0, asr #31
    1cf0: 54000160     	b.eq	0x1d1c <charger_policy_probe+0x408>
    1cf4: 3100585f     	cmn	w2, #0x16
    1cf8: 54000081     	b.ne	0x1d08 <charger_policy_probe+0x3f4>
    1cfc: 528008c8     	mov	w8, #0x46               // =70
    1d00: b90002c8     	str	w8, [x22]
    1d04: 14000006     	b	0x1d1c <charger_policy_probe+0x408>
    1d08: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4f
    1d0c: 91000000     	add	x0, x0, #0x0
		0000000000001d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4f
    1d10: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1d14: 91000021     	add	x1, x1, #0x0
		0000000000001d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1d18: 94000000     	bl	0x1d18 <charger_policy_probe+0x404>
		0000000000001d18:  R_AARCH64_CALL26	_printk
    1d1c: b941a262     	ldr	w2, [x19, #0x1a0]
    1d20: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x947
    1d24: 91000000     	add	x0, x0, #0x0
		0000000000001d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x947
    1d28: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1d2c: 91000021     	add	x1, x1, #0x0
		0000000000001d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1d30: 94000000     	bl	0x1d30 <charger_policy_probe+0x41c>
		0000000000001d30:  R_AARCH64_CALL26	_printk
    1d34: 91069276     	add	x22, x19, #0x1a4
    1d38: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a4b
    1d3c: 91000021     	add	x1, x1, #0x0
		0000000000001d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a4b
    1d40: aa1503e0     	mov	x0, x21
    1d44: aa1603e2     	mov	x2, x22
    1d48: 52800023     	mov	w3, #0x1                // =1
    1d4c: aa1f03e4     	mov	x4, xzr
    1d50: 94000000     	bl	0x1d50 <charger_policy_probe+0x43c>
		0000000000001d50:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1d54: 6a807c02     	ands	w2, w0, w0, asr #31
    1d58: 54000160     	b.eq	0x1d84 <charger_policy_probe+0x470>
    1d5c: 3100585f     	cmn	w2, #0x16
    1d60: 54000081     	b.ne	0x1d70 <charger_policy_probe+0x45c>
    1d64: 52800648     	mov	w8, #0x32               // =50
    1d68: b90002c8     	str	w8, [x22]
    1d6c: 14000006     	b	0x1d84 <charger_policy_probe+0x470>
    1d70: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2113
    1d74: 91000000     	add	x0, x0, #0x0
		0000000000001d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2113
    1d78: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1d7c: 91000021     	add	x1, x1, #0x0
		0000000000001d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1d80: 94000000     	bl	0x1d80 <charger_policy_probe+0x46c>
		0000000000001d80:  R_AARCH64_CALL26	_printk
    1d84: b941a662     	ldr	w2, [x19, #0x1a4]
    1d88: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f2b
    1d8c: 91000000     	add	x0, x0, #0x0
		0000000000001d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f2b
    1d90: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1d94: 91000021     	add	x1, x1, #0x0
		0000000000001d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1d98: 94000000     	bl	0x1d98 <charger_policy_probe+0x484>
		0000000000001d98:  R_AARCH64_CALL26	_printk
    1d9c: 9106a276     	add	x22, x19, #0x1a8
    1da0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2547
    1da4: 91000021     	add	x1, x1, #0x0
		0000000000001da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2547
    1da8: aa1503e0     	mov	x0, x21
    1dac: aa1603e2     	mov	x2, x22
    1db0: 52800023     	mov	w3, #0x1                // =1
    1db4: aa1f03e4     	mov	x4, xzr
    1db8: 94000000     	bl	0x1db8 <charger_policy_probe+0x4a4>
		0000000000001db8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    1dbc: 6a807c02     	ands	w2, w0, w0, asr #31
    1dc0: 54000160     	b.eq	0x1dec <charger_policy_probe+0x4d8>
    1dc4: 3100585f     	cmn	w2, #0x16
    1dc8: 54000081     	b.ne	0x1dd8 <charger_policy_probe+0x4c4>
    1dcc: 52800148     	mov	w8, #0xa                // =10
    1dd0: b90002c8     	str	w8, [x22]
    1dd4: 14000006     	b	0x1dec <charger_policy_probe+0x4d8>
    1dd8: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d5
    1ddc: 91000000     	add	x0, x0, #0x0
		0000000000001ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d5
    1de0: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1de4: 91000021     	add	x1, x1, #0x0
		0000000000001de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1de8: 94000000     	bl	0x1de8 <charger_policy_probe+0x4d4>
		0000000000001de8:  R_AARCH64_CALL26	_printk
    1dec: b941aa62     	ldr	w2, [x19, #0x1a8]
    1df0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1014
    1df4: 91000000     	add	x0, x0, #0x0
		0000000000001df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1014
    1df8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1dfc: 91000021     	add	x1, x1, #0x0
		0000000000001dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1e00: 94000000     	bl	0x1e00 <charger_policy_probe+0x4ec>
		0000000000001e00:  R_AARCH64_CALL26	_printk
    1e04: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165d
    1e08: 91000021     	add	x1, x1, #0x0
		0000000000001e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165d
    1e0c: 9106e262     	add	x2, x19, #0x1b8
    1e10: aa1503e0     	mov	x0, x21
    1e14: 94000000     	bl	0x1e14 <charger_policy_probe+0x500>
		0000000000001e14:  R_AARCH64_CALL26	of_property_read_string
    1e18: 3100581f     	cmn	w0, #0x16
    1e1c: 540000a0     	b.eq	0x1e30 <charger_policy_probe+0x51c>
    1e20: 2a0003f6     	mov	w22, w0
    1e24: 350002c0     	cbnz	w0, 0x1e7c <charger_policy_probe+0x568>
    1e28: f940de62     	ldr	x2, [x19, #0x1b8]
    1e2c: 14000004     	b	0x1e3c <charger_policy_probe+0x528>
    1e30: 90000002     	adrp	x2, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a64
    1e34: 91000042     	add	x2, x2, #0x0
		0000000000001e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a64
    1e38: f900de62     	str	x2, [x19, #0x1b8]
    1e3c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13c6
    1e40: 91000000     	add	x0, x0, #0x0
		0000000000001e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13c6
    1e44: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1e48: 91000021     	add	x1, x1, #0x0
		0000000000001e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1e4c: 94000000     	bl	0x1e4c <charger_policy_probe+0x538>
		0000000000001e4c:  R_AARCH64_CALL26	_printk
    1e50: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5
    1e54: 91000021     	add	x1, x1, #0x0
		0000000000001e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5
    1e58: 91070262     	add	x2, x19, #0x1c0
    1e5c: aa1503e0     	mov	x0, x21
    1e60: 94000000     	bl	0x1e60 <charger_policy_probe+0x54c>
		0000000000001e60:  R_AARCH64_CALL26	of_property_read_string
    1e64: 3100581f     	cmn	w0, #0x16
    1e68: 54000100     	b.eq	0x1e88 <charger_policy_probe+0x574>
    1e6c: 2a0003f6     	mov	w22, w0
    1e70: 35000320     	cbnz	w0, 0x1ed4 <charger_policy_probe+0x5c0>
    1e74: f940e262     	ldr	x2, [x19, #0x1c0]
    1e78: 14000007     	b	0x1e94 <charger_policy_probe+0x580>
    1e7c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d64
    1e80: 91000000     	add	x0, x0, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d64
    1e84: 1400004e     	b	0x1fbc <charger_policy_probe+0x6a8>
    1e88: 90000002     	adrp	x2, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
    1e8c: 91000042     	add	x2, x2, #0x0
		0000000000001e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
    1e90: f900e262     	str	x2, [x19, #0x1c0]
    1e94: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1778
    1e98: 91000000     	add	x0, x0, #0x0
		0000000000001e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1778
    1e9c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1ea0: 91000021     	add	x1, x1, #0x0
		0000000000001ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1ea4: 94000000     	bl	0x1ea4 <charger_policy_probe+0x590>
		0000000000001ea4:  R_AARCH64_CALL26	_printk
    1ea8: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272a
    1eac: 91000021     	add	x1, x1, #0x0
		0000000000001eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272a
    1eb0: 91072262     	add	x2, x19, #0x1c8
    1eb4: aa1503e0     	mov	x0, x21
    1eb8: 94000000     	bl	0x1eb8 <charger_policy_probe+0x5a4>
		0000000000001eb8:  R_AARCH64_CALL26	of_property_read_string
    1ebc: 3100581f     	cmn	w0, #0x16
    1ec0: 54000100     	b.eq	0x1ee0 <charger_policy_probe+0x5cc>
    1ec4: 2a0003f6     	mov	w22, w0
    1ec8: 35000320     	cbnz	w0, 0x1f2c <charger_policy_probe+0x618>
    1ecc: f940e662     	ldr	x2, [x19, #0x1c8]
    1ed0: 14000007     	b	0x1eec <charger_policy_probe+0x5d8>
    1ed4: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc93
    1ed8: 91000000     	add	x0, x0, #0x0
		0000000000001ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc93
    1edc: 14000038     	b	0x1fbc <charger_policy_probe+0x6a8>
    1ee0: 90000002     	adrp	x2, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda
    1ee4: 91000042     	add	x2, x2, #0x0
		0000000000001ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda
    1ee8: f900e662     	str	x2, [x19, #0x1c8]
    1eec: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d0
    1ef0: 91000000     	add	x0, x0, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d0
    1ef4: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1ef8: 91000021     	add	x1, x1, #0x0
		0000000000001ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1efc: 94000000     	bl	0x1efc <charger_policy_probe+0x5e8>
		0000000000001efc:  R_AARCH64_CALL26	_printk
    1f00: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2742
    1f04: 91000021     	add	x1, x1, #0x0
		0000000000001f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2742
    1f08: 9106c262     	add	x2, x19, #0x1b0
    1f0c: aa1503e0     	mov	x0, x21
    1f10: 94000000     	bl	0x1f10 <charger_policy_probe+0x5fc>
		0000000000001f10:  R_AARCH64_CALL26	of_property_read_string
    1f14: 3100581f     	cmn	w0, #0x16
    1f18: 54000100     	b.eq	0x1f38 <charger_policy_probe+0x624>
    1f1c: 2a0003f6     	mov	w22, w0
    1f20: 35000320     	cbnz	w0, 0x1f84 <charger_policy_probe+0x670>
    1f24: f940da62     	ldr	x2, [x19, #0x1b0]
    1f28: 14000007     	b	0x1f44 <charger_policy_probe+0x630>
    1f2c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2198
    1f30: 91000000     	add	x0, x0, #0x0
		0000000000001f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2198
    1f34: 14000022     	b	0x1fbc <charger_policy_probe+0x6a8>
    1f38: 90000002     	adrp	x2, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1323
    1f3c: 91000042     	add	x2, x2, #0x0
		0000000000001f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1323
    1f40: f900da62     	str	x2, [x19, #0x1b0]
    1f44: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105a
    1f48: 91000000     	add	x0, x0, #0x0
		0000000000001f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105a
    1f4c: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1f50: 91000021     	add	x1, x1, #0x0
		0000000000001f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1f54: 94000000     	bl	0x1f54 <charger_policy_probe+0x640>
		0000000000001f54:  R_AARCH64_CALL26	_printk
    1f58: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21db
    1f5c: 91000021     	add	x1, x1, #0x0
		0000000000001f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21db
    1f60: 91074262     	add	x2, x19, #0x1d0
    1f64: aa1503e0     	mov	x0, x21
    1f68: 94000000     	bl	0x1f68 <charger_policy_probe+0x654>
		0000000000001f68:  R_AARCH64_CALL26	of_property_read_string
    1f6c: 3100581f     	cmn	w0, #0x16
    1f70: 54000100     	b.eq	0x1f90 <charger_policy_probe+0x67c>
    1f74: 2a0003f6     	mov	w22, w0
    1f78: 350001e0     	cbnz	w0, 0x1fb4 <charger_policy_probe+0x6a0>
    1f7c: f940ea62     	ldr	x2, [x19, #0x1d0]
    1f80: 14000007     	b	0x1f9c <charger_policy_probe+0x688>
    1f84: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce2
    1f88: 91000000     	add	x0, x0, #0x0
		0000000000001f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce2
    1f8c: 1400000c     	b	0x1fbc <charger_policy_probe+0x6a8>
    1f90: 90000002     	adrp	x2, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x411
    1f94: 91000042     	add	x2, x2, #0x0
		0000000000001f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x411
    1f98: f900ea62     	str	x2, [x19, #0x1d0]
    1f9c: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c6
    1fa0: 91000000     	add	x0, x0, #0x0
		0000000000001fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c6
    1fa4: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1fa8: 91000021     	add	x1, x1, #0x0
		0000000000001fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1fac: 94000000     	bl	0x1fac <charger_policy_probe+0x698>
		0000000000001fac:  R_AARCH64_CALL26	_printk
    1fb0: 1400000b     	b	0x1fdc <charger_policy_probe+0x6c8>
    1fb4: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x983
    1fb8: 91000000     	add	x0, x0, #0x0
		0000000000001fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x983
    1fbc: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d48
    1fc0: 91000021     	add	x1, x1, #0x0
		0000000000001fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d48
    1fc4: 2a1603e2     	mov	w2, w22
    1fc8: 94000000     	bl	0x1fc8 <charger_policy_probe+0x6b4>
		0000000000001fc8:  R_AARCH64_CALL26	_printk
    1fcc: 36f80096     	tbz	w22, #0x1f, 0x1fdc <charger_policy_probe+0x6c8>
    1fd0: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2863
    1fd4: 91000000     	add	x0, x0, #0x0
		0000000000001fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2863
    1fd8: 14000005     	b	0x1fec <charger_policy_probe+0x6d8>
    1fdc: b9400288     	ldr	w8, [x20]
    1fe0: 350001a8     	cbnz	w8, 0x2014 <charger_policy_probe+0x700>
    1fe4: 90000000     	adrp	x0, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1097
    1fe8: 91000000     	add	x0, x0, #0x0
		0000000000001fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1097
    1fec: 90000001     	adrp	x1, 0x1000 <charger_policy_demo_sts_set+0x18>
		0000000000001fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x226e
    1ff0: 91000021     	add	x1, x1, #0x0
		0000000000001ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x226e
    1ff4: 94000000     	bl	0x1ff4 <charger_policy_probe+0x6e0>
		0000000000001ff4:  R_AARCH64_CALL26	_printk
    1ff8: f9400260     	ldr	x0, [x19]
    1ffc: aa1303e1     	mov	x1, x19
    2000: 94000000     	bl	0x2000 <charger_policy_probe+0x6ec>
		0000000000002000:  R_AARCH64_CALL26	devm_kfree
    2004: 2a1f03f3     	mov	w19, wzr
    2008: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x415
    200c: 91000000     	add	x0, x0, #0x0
		000000000000200c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x415
    2010: 14000020     	b	0x2090 <charger_policy_probe+0x77c>
    2014: 52800141     	mov	w1, #0xa                // =10
    2018: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132d
    201c: 91000000     	add	x0, x0, #0x0
		000000000000201c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132d
    2020: 90000003     	adrp	x3, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x275c
    2024: 91000063     	add	x3, x3, #0x0
		0000000000002024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x275c
    2028: 72a000c1     	movk	w1, #0x6, lsl #16
    202c: 52800022     	mov	w2, #0x1                // =1
    2030: 94000000     	bl	0x2030 <charger_policy_probe+0x71c>
		0000000000002030:  R_AARCH64_CALL26	alloc_workqueue
    2034: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    2038: 91048269     	add	x9, x19, #0x120
    203c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x6ec>
		000000000000203c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    2040: 91000021     	add	x1, x1, #0x0
		0000000000002040:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    2044: a9112260     	stp	x0, x8, [x19, #0x110]
    2048: 90000008     	adrp	x8, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002048:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3ff4
    204c: 91000108     	add	x8, x8, #0x0
		000000000000204c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3ff4
    2050: 9104e260     	add	x0, x19, #0x138
    2054: 52a00402     	mov	w2, #0x200000           // =2097152
    2058: aa1f03e3     	mov	x3, xzr
    205c: aa1f03e4     	mov	x4, xzr
    2060: f9009269     	str	x9, [x19, #0x120]
    2064: f9009669     	str	x9, [x19, #0x128]
    2068: f9009a68     	str	x8, [x19, #0x130]
    206c: 94000000     	bl	0x206c <charger_policy_probe+0x758>
		000000000000206c:  R_AARCH64_CALL26	init_timer_key
    2070: f9408a61     	ldr	x1, [x19, #0x110]
    2074: 91046262     	add	x2, x19, #0x118
    2078: 52800400     	mov	w0, #0x20               // =32
    207c: 52809c43     	mov	w3, #0x4e2              // =1250
    2080: 94000000     	bl	0x2080 <charger_policy_probe+0x76c>
		0000000000002080:  R_AARCH64_CALL26	queue_delayed_work_on
    2084: 2a1f03f3     	mov	w19, wzr
    2088: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c5
    208c: 91000000     	add	x0, x0, #0x0
		000000000000208c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c5
    2090: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x226e
    2094: 91000021     	add	x1, x1, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x226e
    2098: 94000000     	bl	0x2098 <charger_policy_probe+0x784>
		0000000000002098:  R_AARCH64_CALL26	_printk
    209c: 2a1303e0     	mov	w0, w19
    20a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    20a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    20a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    20ac: d50323bf     	autiasp
    20b0: d65f03c0     	ret
