
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000089c <charger_policy_check_soc_reach_min>:
     89c: d503233f     	paciasp
     8a0: d10103ff     	sub	sp, sp, #0x40
     8a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     8a8: f90013f5     	str	x21, [sp, #0x20]
     8ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
     8b0: 910043fd     	add	x29, sp, #0x10
     8b4: d5384108     	mrs	x8, SP_EL0
     8b8: aa0003f3     	mov	x19, x0
     8bc: 910013e2     	add	x2, sp, #0x4
     8c0: f9438908     	ldr	x8, [x8, #0x710]
     8c4: 528005e1     	mov	w1, #0x2f               // =47
     8c8: f90007e8     	str	x8, [sp, #0x8]
     8cc: f940dc00     	ldr	x0, [x0, #0x1b8]
     8d0: b90007ff     	str	wzr, [sp, #0x4]
     8d4: 97fffe5f     	bl	0x250 <zte_charger_policy_set_prop_by_name+0x38>
		00000000000008d4:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     8d8: 37f805e0     	tbnz	w0, #0x1f, 0x994 <charger_policy_check_soc_reach_min+0xf8>
     8dc: 39487668     	ldrb	w8, [x19, #0x21d]
     8e0: 7100051f     	cmp	w8, #0x1
     8e4: 54000660     	b.eq	0x9b0 <charger_policy_check_soc_reach_min+0x114>
     8e8: 39486668     	ldrb	w8, [x19, #0x219]
     8ec: 7100051f     	cmp	w8, #0x1
     8f0: 54000181     	b.ne	0x920 <charger_policy_check_soc_reach_min+0x84>
     8f4: 39487268     	ldrb	w8, [x19, #0x21c]
     8f8: b941a674     	ldr	w20, [x19, #0x1a4]
     8fc: 37000068     	tbnz	w8, #0x0, 0x908 <charger_policy_check_soc_reach_min+0x6c>
     900: b941aa68     	ldr	w8, [x19, #0x1a8]
     904: 4b080294     	sub	w20, w20, w8
     908: 39487668     	ldrb	w8, [x19, #0x21d]
     90c: b94007f5     	ldr	w21, [sp, #0x4]
     910: 7100051f     	cmp	w8, #0x1
     914: 54000620     	b.eq	0x9d8 <charger_policy_check_soc_reach_min+0x13c>
     918: 6b1402bf     	cmp	w21, w20
     91c: 5400070d     	b.le	0x9fc <charger_policy_check_soc_reach_min+0x160>
     920: 39486a68     	ldrb	w8, [x19, #0x21a]
     924: 7100051f     	cmp	w8, #0x1
     928: 540001e1     	b.ne	0x964 <charger_policy_check_soc_reach_min+0xc8>
     92c: 39486e68     	ldrb	w8, [x19, #0x21b]
     930: 7100051f     	cmp	w8, #0x1
     934: 54000181     	b.ne	0x964 <charger_policy_check_soc_reach_min+0xc8>
     938: 39487268     	ldrb	w8, [x19, #0x21c]
     93c: b9419e74     	ldr	w20, [x19, #0x19c]
     940: 37000068     	tbnz	w8, #0x0, 0x94c <charger_policy_check_soc_reach_min+0xb0>
     944: b941aa68     	ldr	w8, [x19, #0x1a8]
     948: 4b080294     	sub	w20, w20, w8
     94c: 39487668     	ldrb	w8, [x19, #0x21d]
     950: b94007f3     	ldr	w19, [sp, #0x4]
     954: 7100051f     	cmp	w8, #0x1
     958: 540005e0     	b.eq	0xa14 <charger_policy_check_soc_reach_min+0x178>
     95c: 6b14027f     	cmp	w19, w20
     960: 540006cd     	b.le	0xa38 <charger_policy_check_soc_reach_min+0x19c>
     964: 2a1f03e0     	mov	w0, wzr
     968: d5384108     	mrs	x8, SP_EL0
     96c: f9438908     	ldr	x8, [x8, #0x710]
     970: f94007e9     	ldr	x9, [sp, #0x8]
     974: eb09011f     	cmp	x8, x9
     978: 54000721     	b.ne	0xa5c <charger_policy_check_soc_reach_min+0x1c0>
     97c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     980: f94013f5     	ldr	x21, [sp, #0x20]
     984: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     988: 910103ff     	add	sp, sp, #0x40
     98c: d50323bf     	autiasp
     990: d65f03c0     	ret
     994: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
     998: 91000000     	add	x0, x0, #0x0
		0000000000000998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
     99c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     9a0: 91000021     	add	x1, x1, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     9a4: 94000000     	bl	0x9a4 <charger_policy_check_soc_reach_min+0x108>
		00000000000009a4:  R_AARCH64_CALL26	_printk
     9a8: 2a1f03e0     	mov	w0, wzr
     9ac: 17ffffef     	b	0x968 <charger_policy_check_soc_reach_min+0xcc>
     9b0: 39486662     	ldrb	w2, [x19, #0x219]
     9b4: 39486a63     	ldrb	w3, [x19, #0x21a]
     9b8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa44
     9bc: 91000000     	add	x0, x0, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa44
     9c0: 39486e64     	ldrb	w4, [x19, #0x21b]
     9c4: 39487265     	ldrb	w5, [x19, #0x21c]
     9c8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     9cc: 91000021     	add	x1, x1, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     9d0: 94000000     	bl	0x9d0 <charger_policy_check_soc_reach_min+0x134>
		00000000000009d0:  R_AARCH64_CALL26	_printk
     9d4: 17ffffc5     	b	0x8e8 <charger_policy_check_soc_reach_min+0x4c>
     9d8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000009d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2354
     9dc: 91000000     	add	x0, x0, #0x0
		00000000000009dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2354
     9e0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000009e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     9e4: 91000021     	add	x1, x1, #0x0
		00000000000009e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     9e8: 2a1503e2     	mov	w2, w21
     9ec: 2a1403e3     	mov	w3, w20
     9f0: 94000000     	bl	0x9f0 <charger_policy_check_soc_reach_min+0x154>
		00000000000009f0:  R_AARCH64_CALL26	_printk
     9f4: 6b1402bf     	cmp	w21, w20
     9f8: 54fff94c     	b.gt	0x920 <charger_policy_check_soc_reach_min+0x84>
     9fc: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14ec
     a00: 91000000     	add	x0, x0, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14ec
     a04: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     a08: 91000021     	add	x1, x1, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     a0c: 2a1503e2     	mov	w2, w21
     a10: 1400000f     	b	0xa4c <charger_policy_check_soc_reach_min+0x1b0>
     a14: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8e
     a18: 91000000     	add	x0, x0, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8e
     a1c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     a20: 91000021     	add	x1, x1, #0x0
		0000000000000a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     a24: 2a1303e2     	mov	w2, w19
     a28: 2a1403e3     	mov	w3, w20
     a2c: 94000000     	bl	0xa2c <charger_policy_check_soc_reach_min+0x190>
		0000000000000a2c:  R_AARCH64_CALL26	_printk
     a30: 6b14027f     	cmp	w19, w20
     a34: 54fff98c     	b.gt	0x964 <charger_policy_check_soc_reach_min+0xc8>
     a38: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf68
     a3c: 91000000     	add	x0, x0, #0x0
		0000000000000a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf68
     a40: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     a44: 91000021     	add	x1, x1, #0x0
		0000000000000a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     a48: 2a1303e2     	mov	w2, w19
     a4c: 2a1403e3     	mov	w3, w20
     a50: 94000000     	bl	0xa50 <charger_policy_check_soc_reach_min+0x1b4>
		0000000000000a50:  R_AARCH64_CALL26	_printk
     a54: 52800020     	mov	w0, #0x1                // =1
     a58: 17ffffc4     	b	0x968 <charger_policy_check_soc_reach_min+0xcc>
     a5c: 94000000     	bl	0xa5c <charger_policy_check_soc_reach_min+0x1c0>
		0000000000000a5c:  R_AARCH64_CALL26	__stack_chk_fail
