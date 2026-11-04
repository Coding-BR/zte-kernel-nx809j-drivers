
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000088c <charger_policy_check_soc_reach_min>:
     88c: d503233f     	paciasp
     890: d10103ff     	sub	sp, sp, #0x40
     894: a9017bfd     	stp	x29, x30, [sp, #0x10]
     898: f90013f5     	str	x21, [sp, #0x20]
     89c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     8a0: 910043fd     	add	x29, sp, #0x10
     8a4: d5384108     	mrs	x8, SP_EL0
     8a8: aa0003f3     	mov	x19, x0
     8ac: 910013e2     	add	x2, sp, #0x4
     8b0: f9438908     	ldr	x8, [x8, #0x710]
     8b4: 528005e1     	mov	w1, #0x2f               // =47
     8b8: f90007e8     	str	x8, [sp, #0x8]
     8bc: f940dc00     	ldr	x0, [x0, #0x1b8]
     8c0: b90007ff     	str	wzr, [sp, #0x4]
     8c4: 97fffe5f     	bl	0x240 <zte_charger_policy_set_prop_by_name+0x38>
		00000000000008c4:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     8c8: 37f805e0     	tbnz	w0, #0x1f, 0x984 <charger_policy_check_soc_reach_min+0xf8>
     8cc: 39487668     	ldrb	w8, [x19, #0x21d]
     8d0: 7100051f     	cmp	w8, #0x1
     8d4: 54000660     	b.eq	0x9a0 <charger_policy_check_soc_reach_min+0x114>
     8d8: 39486668     	ldrb	w8, [x19, #0x219]
     8dc: 7100051f     	cmp	w8, #0x1
     8e0: 54000181     	b.ne	0x910 <charger_policy_check_soc_reach_min+0x84>
     8e4: 39487268     	ldrb	w8, [x19, #0x21c]
     8e8: b941a674     	ldr	w20, [x19, #0x1a4]
     8ec: 37000068     	tbnz	w8, #0x0, 0x8f8 <charger_policy_check_soc_reach_min+0x6c>
     8f0: b941aa68     	ldr	w8, [x19, #0x1a8]
     8f4: 4b080294     	sub	w20, w20, w8
     8f8: 39487668     	ldrb	w8, [x19, #0x21d]
     8fc: b94007f5     	ldr	w21, [sp, #0x4]
     900: 7100051f     	cmp	w8, #0x1
     904: 54000620     	b.eq	0x9c8 <charger_policy_check_soc_reach_min+0x13c>
     908: 6b1402bf     	cmp	w21, w20
     90c: 5400070d     	b.le	0x9ec <charger_policy_check_soc_reach_min+0x160>
     910: 39486a68     	ldrb	w8, [x19, #0x21a]
     914: 7100051f     	cmp	w8, #0x1
     918: 540001e1     	b.ne	0x954 <charger_policy_check_soc_reach_min+0xc8>
     91c: 39486e68     	ldrb	w8, [x19, #0x21b]
     920: 7100051f     	cmp	w8, #0x1
     924: 54000181     	b.ne	0x954 <charger_policy_check_soc_reach_min+0xc8>
     928: 39487268     	ldrb	w8, [x19, #0x21c]
     92c: b9419e74     	ldr	w20, [x19, #0x19c]
     930: 37000068     	tbnz	w8, #0x0, 0x93c <charger_policy_check_soc_reach_min+0xb0>
     934: b941aa68     	ldr	w8, [x19, #0x1a8]
     938: 4b080294     	sub	w20, w20, w8
     93c: 39487668     	ldrb	w8, [x19, #0x21d]
     940: b94007f3     	ldr	w19, [sp, #0x4]
     944: 7100051f     	cmp	w8, #0x1
     948: 540005e0     	b.eq	0xa04 <charger_policy_check_soc_reach_min+0x178>
     94c: 6b14027f     	cmp	w19, w20
     950: 540006cd     	b.le	0xa28 <charger_policy_check_soc_reach_min+0x19c>
     954: 2a1f03e0     	mov	w0, wzr
     958: d5384108     	mrs	x8, SP_EL0
     95c: f9438908     	ldr	x8, [x8, #0x710]
     960: f94007e9     	ldr	x9, [sp, #0x8]
     964: eb09011f     	cmp	x8, x9
     968: 54000721     	b.ne	0xa4c <charger_policy_check_soc_reach_min+0x1c0>
     96c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     970: f94013f5     	ldr	x21, [sp, #0x20]
     974: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     978: 910103ff     	add	sp, sp, #0x40
     97c: d50323bf     	autiasp
     980: d65f03c0     	ret
     984: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
     988: 91000000     	add	x0, x0, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
     98c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		000000000000098c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     990: 91000021     	add	x1, x1, #0x0
		0000000000000990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     994: 94000000     	bl	0x994 <charger_policy_check_soc_reach_min+0x108>
		0000000000000994:  R_AARCH64_CALL26	_printk
     998: 2a1f03e0     	mov	w0, wzr
     99c: 17ffffef     	b	0x958 <charger_policy_check_soc_reach_min+0xcc>
     9a0: 39486662     	ldrb	w2, [x19, #0x219]
     9a4: 39486a63     	ldrb	w3, [x19, #0x21a]
     9a8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa44
     9ac: 91000000     	add	x0, x0, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa44
     9b0: 39486e64     	ldrb	w4, [x19, #0x21b]
     9b4: 39487265     	ldrb	w5, [x19, #0x21c]
     9b8: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     9bc: 91000021     	add	x1, x1, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     9c0: 94000000     	bl	0x9c0 <charger_policy_check_soc_reach_min+0x134>
		00000000000009c0:  R_AARCH64_CALL26	_printk
     9c4: 17ffffc5     	b	0x8d8 <charger_policy_check_soc_reach_min+0x4c>
     9c8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2354
     9cc: 91000000     	add	x0, x0, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2354
     9d0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000009d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     9d4: 91000021     	add	x1, x1, #0x0
		00000000000009d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     9d8: 2a1503e2     	mov	w2, w21
     9dc: 2a1403e3     	mov	w3, w20
     9e0: 94000000     	bl	0x9e0 <charger_policy_check_soc_reach_min+0x154>
		00000000000009e0:  R_AARCH64_CALL26	_printk
     9e4: 6b1402bf     	cmp	w21, w20
     9e8: 54fff94c     	b.gt	0x910 <charger_policy_check_soc_reach_min+0x84>
     9ec: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		00000000000009ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14ec
     9f0: 91000000     	add	x0, x0, #0x0
		00000000000009f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14ec
     9f4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     9f8: 91000021     	add	x1, x1, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     9fc: 2a1503e2     	mov	w2, w21
     a00: 1400000f     	b	0xa3c <charger_policy_check_soc_reach_min+0x1b0>
     a04: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8e
     a08: 91000000     	add	x0, x0, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8e
     a0c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     a10: 91000021     	add	x1, x1, #0x0
		0000000000000a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     a14: 2a1303e2     	mov	w2, w19
     a18: 2a1403e3     	mov	w3, w20
     a1c: 94000000     	bl	0xa1c <charger_policy_check_soc_reach_min+0x190>
		0000000000000a1c:  R_AARCH64_CALL26	_printk
     a20: 6b14027f     	cmp	w19, w20
     a24: 54fff98c     	b.gt	0x954 <charger_policy_check_soc_reach_min+0xc8>
     a28: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf68
     a2c: 91000000     	add	x0, x0, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf68
     a30: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc68
     a34: 91000021     	add	x1, x1, #0x0
		0000000000000a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc68
     a38: 2a1303e2     	mov	w2, w19
     a3c: 2a1403e3     	mov	w3, w20
     a40: 94000000     	bl	0xa40 <charger_policy_check_soc_reach_min+0x1b4>
		0000000000000a40:  R_AARCH64_CALL26	_printk
     a44: 52800020     	mov	w0, #0x1                // =1
     a48: 17ffffc4     	b	0x958 <charger_policy_check_soc_reach_min+0xcc>
     a4c: 94000000     	bl	0xa4c <charger_policy_check_soc_reach_min+0x1c0>
		0000000000000a4c:  R_AARCH64_CALL26	__stack_chk_fail
