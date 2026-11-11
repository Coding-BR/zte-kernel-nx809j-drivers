
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a64 <charger_policy_status_runchging>:
     a64: d503233f     	paciasp
     a68: d10103ff     	sub	sp, sp, #0x40
     a6c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a70: f90013f5     	str	x21, [sp, #0x20]
     a74: a9034ff4     	stp	x20, x19, [sp, #0x30]
     a78: 910043fd     	add	x29, sp, #0x10
     a7c: d5384108     	mrs	x8, SP_EL0
     a80: aa0003f3     	mov	x19, x0
     a84: f9438908     	ldr	x8, [x8, #0x710]
     a88: f90007e8     	str	x8, [sp, #0x8]
     a8c: 39487008     	ldrb	w8, [x0, #0x21c]
     a90: 7100051f     	cmp	w8, #0x1
     a94: 54000181     	b.ne	0xac4 <charger_policy_status_runchging+0x60>
     a98: 52800020     	mov	w0, #0x1                // =1
     a9c: 94000000     	bl	0xa9c <charger_policy_status_runchging+0x38>
		0000000000000a9c:  R_AARCH64_CALL26	ktime_get_with_offset
     aa0: 94000000     	bl	0xaa0 <charger_policy_status_runchging+0x3c>
		0000000000000aa0:  R_AARCH64_CALL26	ns_to_timespec64
     aa4: 39487668     	ldrb	w8, [x19, #0x21d]
     aa8: 7100051f     	cmp	w8, #0x1
     aac: 54000ac0     	b.eq	0xc04 <charger_policy_status_runchging+0x1a0>
     ab0: f9410668     	ldr	x8, [x19, #0x208]
     ab4: b941fa69     	ldr	w9, [x19, #0x1f8]
     ab8: cb080008     	sub	x8, x0, x8
     abc: eb09011f     	cmp	x8, x9
     ac0: 54000bcc     	b.gt	0xc38 <charger_policy_status_runchging+0x1d4>
     ac4: aa1303e0     	mov	x0, x19
     ac8: 52800021     	mov	w1, #0x1                // =1
     acc: 52800022     	mov	w2, #0x1                // =1
     ad0: 94000000     	bl	0xad0 <charger_policy_status_runchging+0x6c>
		0000000000000ad0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
     ad4: f940de60     	ldr	x0, [x19, #0x1b8]
     ad8: 910013e2     	add	x2, sp, #0x4
     adc: 528005e1     	mov	w1, #0x2f               // =47
     ae0: b90007ff     	str	wzr, [sp, #0x4]
     ae4: 94000000     	bl	0xae4 <charger_policy_status_runchging+0x80>
		0000000000000ae4:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     ae8: 37f80700     	tbnz	w0, #0x1f, 0xbc8 <charger_policy_status_runchging+0x164>
     aec: 39487668     	ldrb	w8, [x19, #0x21d]
     af0: 7100051f     	cmp	w8, #0x1
     af4: 54000740     	b.eq	0xbdc <charger_policy_status_runchging+0x178>
     af8: 39486668     	ldrb	w8, [x19, #0x219]
     afc: 7100051f     	cmp	w8, #0x1
     b00: 540002a1     	b.ne	0xb54 <charger_policy_status_runchging+0xf0>
     b04: 39487268     	ldrb	w8, [x19, #0x21c]
     b08: 36000148     	tbz	w8, #0x0, 0xb30 <charger_policy_status_runchging+0xcc>
     b0c: b941f268     	ldr	w8, [x19, #0x1f0]
     b10: b941a274     	ldr	w20, [x19, #0x1a0]
     b14: 34000148     	cbz	w8, 0xb3c <charger_policy_status_runchging+0xd8>
     b18: b941a668     	ldr	w8, [x19, #0x1a4]
     b1c: 0b140108     	add	w8, w8, w20
     b20: 7100011f     	cmp	w8, #0x0
     b24: 1a88a508     	cinc	w8, w8, lt
     b28: 13017d14     	asr	w20, w8, #1
     b2c: 14000004     	b	0xb3c <charger_policy_status_runchging+0xd8>
     b30: b941a268     	ldr	w8, [x19, #0x1a0]
     b34: b941aa69     	ldr	w9, [x19, #0x1a8]
     b38: 0b080134     	add	w20, w9, w8
     b3c: 39487668     	ldrb	w8, [x19, #0x21d]
     b40: b94007f5     	ldr	w21, [sp, #0x4]
     b44: 7100051f     	cmp	w8, #0x1
     b48: 54000860     	b.eq	0xc54 <charger_policy_status_runchging+0x1f0>
     b4c: 6b1402bf     	cmp	w21, w20
     b50: 5400094a     	b.ge	0xc78 <charger_policy_status_runchging+0x214>
     b54: 39486a68     	ldrb	w8, [x19, #0x21a]
     b58: 7100051f     	cmp	w8, #0x1
     b5c: 54000b61     	b.ne	0xcc8 <charger_policy_status_runchging+0x264>
     b60: 39486e68     	ldrb	w8, [x19, #0x21b]
     b64: 7100051f     	cmp	w8, #0x1
     b68: 54000b01     	b.ne	0xcc8 <charger_policy_status_runchging+0x264>
     b6c: 39487268     	ldrb	w8, [x19, #0x21c]
     b70: 36000148     	tbz	w8, #0x0, 0xb98 <charger_policy_status_runchging+0x134>
     b74: b941f268     	ldr	w8, [x19, #0x1f0]
     b78: b9419a74     	ldr	w20, [x19, #0x198]
     b7c: 34000148     	cbz	w8, 0xba4 <charger_policy_status_runchging+0x140>
     b80: b9419e68     	ldr	w8, [x19, #0x19c]
     b84: 0b140108     	add	w8, w8, w20
     b88: 7100011f     	cmp	w8, #0x0
     b8c: 1a88a508     	cinc	w8, w8, lt
     b90: 13017d14     	asr	w20, w8, #1
     b94: 14000004     	b	0xba4 <charger_policy_status_runchging+0x140>
     b98: b9419a68     	ldr	w8, [x19, #0x198]
     b9c: b941aa69     	ldr	w9, [x19, #0x1a8]
     ba0: 0b080134     	add	w20, w9, w8
     ba4: 39487668     	ldrb	w8, [x19, #0x21d]
     ba8: b94007f5     	ldr	w21, [sp, #0x4]
     bac: 7100051f     	cmp	w8, #0x1
     bb0: 54000a40     	b.eq	0xcf8 <charger_policy_status_runchging+0x294>
     bb4: 6b1402bf     	cmp	w21, w20
     bb8: 5400088b     	b.lt	0xcc8 <charger_policy_status_runchging+0x264>
     bbc: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127c
     bc0: 91000000     	add	x0, x0, #0x0
		0000000000000bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127c
     bc4: 1400002f     	b	0xc80 <charger_policy_status_runchging+0x21c>
     bc8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
     bcc: 91000000     	add	x0, x0, #0x0
		0000000000000bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
     bd0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     bd4: 91000021     	add	x1, x1, #0x0
		0000000000000bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     bd8: 1400003b     	b	0xcc4 <charger_policy_status_runchging+0x260>
     bdc: 39486662     	ldrb	w2, [x19, #0x219]
     be0: 39486a63     	ldrb	w3, [x19, #0x21a]
     be4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa44
     be8: 91000000     	add	x0, x0, #0x0
		0000000000000be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa44
     bec: 39486e64     	ldrb	w4, [x19, #0x21b]
     bf0: 39487265     	ldrb	w5, [x19, #0x21c]
     bf4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     bf8: 91000021     	add	x1, x1, #0x0
		0000000000000bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     bfc: 94000000     	bl	0xbfc <charger_policy_status_runchging+0x198>
		0000000000000bfc:  R_AARCH64_CALL26	_printk
     c00: 17ffffbe     	b	0xaf8 <charger_policy_status_runchging+0x94>
     c04: f9410663     	ldr	x3, [x19, #0x208]
     c08: b941fa65     	ldr	w5, [x19, #0x1f8]
     c0c: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
     c10: 91000108     	add	x8, x8, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
     c14: aa0003f4     	mov	x20, x0
     c18: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
     c1c: 91000021     	add	x1, x1, #0x0
		0000000000000c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
     c20: cb030004     	sub	x4, x0, x3
     c24: aa0803e0     	mov	x0, x8
     c28: aa1403e2     	mov	x2, x20
     c2c: 94000000     	bl	0xc2c <charger_policy_status_runchging+0x1c8>
		0000000000000c2c:  R_AARCH64_CALL26	_printk
     c30: aa1403e0     	mov	x0, x20
     c34: 17ffff9f     	b	0xab0 <charger_policy_status_runchging+0x4c>
     c38: b941ee68     	ldr	w8, [x19, #0x1ec]
     c3c: 52800069     	mov	w9, #0x3                // =3
     c40: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f4
     c44: 91000000     	add	x0, x0, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f4
     c48: b901ee69     	str	w9, [x19, #0x1ec]
     c4c: b901f268     	str	w8, [x19, #0x1f0]
     c50: 1400001b     	b	0xcbc <charger_policy_status_runchging+0x258>
     c54: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae
     c58: 91000000     	add	x0, x0, #0x0
		0000000000000c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae
     c5c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     c60: 91000021     	add	x1, x1, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     c64: 2a1503e2     	mov	w2, w21
     c68: 2a1403e3     	mov	w3, w20
     c6c: 94000000     	bl	0xc6c <charger_policy_status_runchging+0x208>
		0000000000000c6c:  R_AARCH64_CALL26	_printk
     c70: 6b1402bf     	cmp	w21, w20
     c74: 54fff70b     	b.lt	0xb54 <charger_policy_status_runchging+0xf0>
     c78: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd72
     c7c: 91000000     	add	x0, x0, #0x0
		0000000000000c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd72
     c80: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     c84: 91000021     	add	x1, x1, #0x0
		0000000000000c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     c88: 2a1503e2     	mov	w2, w21
     c8c: 2a1403e3     	mov	w3, w20
     c90: 94000000     	bl	0xc90 <charger_policy_status_runchging+0x22c>
		0000000000000c90:  R_AARCH64_CALL26	_printk
     c94: b941ee68     	ldr	w8, [x19, #0x1ec]
     c98: 52800049     	mov	w9, #0x2                // =2
     c9c: aa1303e0     	mov	x0, x19
     ca0: 2a1f03e1     	mov	w1, wzr
     ca4: 2a1f03e2     	mov	w2, wzr
     ca8: b901ee69     	str	w9, [x19, #0x1ec]
     cac: b901f268     	str	w8, [x19, #0x1f0]
     cb0: 94000000     	bl	0xcb0 <charger_policy_status_runchging+0x24c>
		0000000000000cb0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
     cb4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x304
     cb8: 91000000     	add	x0, x0, #0x0
		0000000000000cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x304
     cbc: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2384
     cc0: 91000021     	add	x1, x1, #0x0
		0000000000000cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2384
     cc4: 94000000     	bl	0xcc4 <charger_policy_status_runchging+0x260>
		0000000000000cc4:  R_AARCH64_CALL26	_printk
     cc8: d5384108     	mrs	x8, SP_EL0
     ccc: f9438908     	ldr	x8, [x8, #0x710]
     cd0: f94007e9     	ldr	x9, [sp, #0x8]
     cd4: eb09011f     	cmp	x8, x9
     cd8: 54000241     	b.ne	0xd20 <charger_policy_status_runchging+0x2bc>
     cdc: 2a1f03e0     	mov	w0, wzr
     ce0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     ce4: f94013f5     	ldr	x21, [sp, #0x20]
     ce8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     cec: 910103ff     	add	sp, sp, #0x40
     cf0: d50323bf     	autiasp
     cf4: d65f03c0     	ret
     cf8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d84
     cfc: 91000000     	add	x0, x0, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d84
     d00: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     d04: 91000021     	add	x1, x1, #0x0
		0000000000000d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     d08: 2a1503e2     	mov	w2, w21
     d0c: 2a1403e3     	mov	w3, w20
     d10: 94000000     	bl	0xd10 <charger_policy_status_runchging+0x2ac>
		0000000000000d10:  R_AARCH64_CALL26	_printk
     d14: 6b1402bf     	cmp	w21, w20
     d18: 54fffd8b     	b.lt	0xcc8 <charger_policy_status_runchging+0x264>
     d1c: 17ffffa8     	b	0xbbc <charger_policy_status_runchging+0x158>
     d20: 94000000     	bl	0xd20 <charger_policy_status_runchging+0x2bc>
		0000000000000d20:  R_AARCH64_CALL26	__stack_chk_fail
