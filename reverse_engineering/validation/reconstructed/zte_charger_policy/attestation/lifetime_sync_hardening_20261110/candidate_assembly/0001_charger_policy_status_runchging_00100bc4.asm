
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a54 <charger_policy_status_runchging>:
     a54: d503233f     	paciasp
     a58: d10103ff     	sub	sp, sp, #0x40
     a5c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a60: f90013f5     	str	x21, [sp, #0x20]
     a64: a9034ff4     	stp	x20, x19, [sp, #0x30]
     a68: 910043fd     	add	x29, sp, #0x10
     a6c: d5384108     	mrs	x8, SP_EL0
     a70: aa0003f3     	mov	x19, x0
     a74: f9438908     	ldr	x8, [x8, #0x710]
     a78: f90007e8     	str	x8, [sp, #0x8]
     a7c: 39487008     	ldrb	w8, [x0, #0x21c]
     a80: 7100051f     	cmp	w8, #0x1
     a84: 54000181     	b.ne	0xab4 <charger_policy_status_runchging+0x60>
     a88: 52800020     	mov	w0, #0x1                // =1
     a8c: 94000000     	bl	0xa8c <charger_policy_status_runchging+0x38>
		0000000000000a8c:  R_AARCH64_CALL26	ktime_get_with_offset
     a90: 94000000     	bl	0xa90 <charger_policy_status_runchging+0x3c>
		0000000000000a90:  R_AARCH64_CALL26	ns_to_timespec64
     a94: 39487668     	ldrb	w8, [x19, #0x21d]
     a98: 7100051f     	cmp	w8, #0x1
     a9c: 54000ac0     	b.eq	0xbf4 <charger_policy_status_runchging+0x1a0>
     aa0: f9410668     	ldr	x8, [x19, #0x208]
     aa4: b941fa69     	ldr	w9, [x19, #0x1f8]
     aa8: cb080008     	sub	x8, x0, x8
     aac: eb09011f     	cmp	x8, x9
     ab0: 54000bcc     	b.gt	0xc28 <charger_policy_status_runchging+0x1d4>
     ab4: aa1303e0     	mov	x0, x19
     ab8: 52800021     	mov	w1, #0x1                // =1
     abc: 52800022     	mov	w2, #0x1                // =1
     ac0: 94000000     	bl	0xac0 <charger_policy_status_runchging+0x6c>
		0000000000000ac0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
     ac4: f940de60     	ldr	x0, [x19, #0x1b8]
     ac8: 910013e2     	add	x2, sp, #0x4
     acc: 528005e1     	mov	w1, #0x2f               // =47
     ad0: b90007ff     	str	wzr, [sp, #0x4]
     ad4: 94000000     	bl	0xad4 <charger_policy_status_runchging+0x80>
		0000000000000ad4:  R_AARCH64_CALL26	charger_policy_get_prop_by_name
     ad8: 37f80700     	tbnz	w0, #0x1f, 0xbb8 <charger_policy_status_runchging+0x164>
     adc: 39487668     	ldrb	w8, [x19, #0x21d]
     ae0: 7100051f     	cmp	w8, #0x1
     ae4: 54000740     	b.eq	0xbcc <charger_policy_status_runchging+0x178>
     ae8: 39486668     	ldrb	w8, [x19, #0x219]
     aec: 7100051f     	cmp	w8, #0x1
     af0: 540002a1     	b.ne	0xb44 <charger_policy_status_runchging+0xf0>
     af4: 39487268     	ldrb	w8, [x19, #0x21c]
     af8: 36000148     	tbz	w8, #0x0, 0xb20 <charger_policy_status_runchging+0xcc>
     afc: b941f268     	ldr	w8, [x19, #0x1f0]
     b00: b941a274     	ldr	w20, [x19, #0x1a0]
     b04: 34000148     	cbz	w8, 0xb2c <charger_policy_status_runchging+0xd8>
     b08: b941a668     	ldr	w8, [x19, #0x1a4]
     b0c: 0b140108     	add	w8, w8, w20
     b10: 7100011f     	cmp	w8, #0x0
     b14: 1a88a508     	cinc	w8, w8, lt
     b18: 13017d14     	asr	w20, w8, #1
     b1c: 14000004     	b	0xb2c <charger_policy_status_runchging+0xd8>
     b20: b941a268     	ldr	w8, [x19, #0x1a0]
     b24: b941aa69     	ldr	w9, [x19, #0x1a8]
     b28: 0b080134     	add	w20, w9, w8
     b2c: 39487668     	ldrb	w8, [x19, #0x21d]
     b30: b94007f5     	ldr	w21, [sp, #0x4]
     b34: 7100051f     	cmp	w8, #0x1
     b38: 54000860     	b.eq	0xc44 <charger_policy_status_runchging+0x1f0>
     b3c: 6b1402bf     	cmp	w21, w20
     b40: 5400094a     	b.ge	0xc68 <charger_policy_status_runchging+0x214>
     b44: 39486a68     	ldrb	w8, [x19, #0x21a]
     b48: 7100051f     	cmp	w8, #0x1
     b4c: 54000b61     	b.ne	0xcb8 <charger_policy_status_runchging+0x264>
     b50: 39486e68     	ldrb	w8, [x19, #0x21b]
     b54: 7100051f     	cmp	w8, #0x1
     b58: 54000b01     	b.ne	0xcb8 <charger_policy_status_runchging+0x264>
     b5c: 39487268     	ldrb	w8, [x19, #0x21c]
     b60: 36000148     	tbz	w8, #0x0, 0xb88 <charger_policy_status_runchging+0x134>
     b64: b941f268     	ldr	w8, [x19, #0x1f0]
     b68: b9419a74     	ldr	w20, [x19, #0x198]
     b6c: 34000148     	cbz	w8, 0xb94 <charger_policy_status_runchging+0x140>
     b70: b9419e68     	ldr	w8, [x19, #0x19c]
     b74: 0b140108     	add	w8, w8, w20
     b78: 7100011f     	cmp	w8, #0x0
     b7c: 1a88a508     	cinc	w8, w8, lt
     b80: 13017d14     	asr	w20, w8, #1
     b84: 14000004     	b	0xb94 <charger_policy_status_runchging+0x140>
     b88: b9419a68     	ldr	w8, [x19, #0x198]
     b8c: b941aa69     	ldr	w9, [x19, #0x1a8]
     b90: 0b080134     	add	w20, w9, w8
     b94: 39487668     	ldrb	w8, [x19, #0x21d]
     b98: b94007f5     	ldr	w21, [sp, #0x4]
     b9c: 7100051f     	cmp	w8, #0x1
     ba0: 54000a40     	b.eq	0xce8 <charger_policy_status_runchging+0x294>
     ba4: 6b1402bf     	cmp	w21, w20
     ba8: 5400088b     	b.lt	0xcb8 <charger_policy_status_runchging+0x264>
     bac: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x127c
     bb0: 91000000     	add	x0, x0, #0x0
		0000000000000bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x127c
     bb4: 1400002f     	b	0xc70 <charger_policy_status_runchging+0x21c>
     bb8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67e
     bbc: 91000000     	add	x0, x0, #0x0
		0000000000000bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67e
     bc0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     bc4: 91000021     	add	x1, x1, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     bc8: 1400003b     	b	0xcb4 <charger_policy_status_runchging+0x260>
     bcc: 39486662     	ldrb	w2, [x19, #0x219]
     bd0: 39486a63     	ldrb	w3, [x19, #0x21a]
     bd4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa44
     bd8: 91000000     	add	x0, x0, #0x0
		0000000000000bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa44
     bdc: 39486e64     	ldrb	w4, [x19, #0x21b]
     be0: 39487265     	ldrb	w5, [x19, #0x21c]
     be4: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     be8: 91000021     	add	x1, x1, #0x0
		0000000000000be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     bec: 94000000     	bl	0xbec <charger_policy_status_runchging+0x198>
		0000000000000bec:  R_AARCH64_CALL26	_printk
     bf0: 17ffffbe     	b	0xae8 <charger_policy_status_runchging+0x94>
     bf4: f9410663     	ldr	x3, [x19, #0x208]
     bf8: b941fa65     	ldr	w5, [x19, #0x1f8]
     bfc: 90000008     	adrp	x8, 0x0 <charger_policy_get_prop_by_name>
		0000000000000bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x251c
     c00: 91000108     	add	x8, x8, #0x0
		0000000000000c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x251c
     c04: aa0003f4     	mov	x20, x0
     c08: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32a
     c0c: 91000021     	add	x1, x1, #0x0
		0000000000000c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32a
     c10: cb030004     	sub	x4, x0, x3
     c14: aa0803e0     	mov	x0, x8
     c18: aa1403e2     	mov	x2, x20
     c1c: 94000000     	bl	0xc1c <charger_policy_status_runchging+0x1c8>
		0000000000000c1c:  R_AARCH64_CALL26	_printk
     c20: aa1403e0     	mov	x0, x20
     c24: 17ffff9f     	b	0xaa0 <charger_policy_status_runchging+0x4c>
     c28: b941ee68     	ldr	w8, [x19, #0x1ec]
     c2c: 52800069     	mov	w9, #0x3                // =3
     c30: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f4
     c34: 91000000     	add	x0, x0, #0x0
		0000000000000c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f4
     c38: b901ee69     	str	w9, [x19, #0x1ec]
     c3c: b901f268     	str	w8, [x19, #0x1f0]
     c40: 1400001b     	b	0xcac <charger_policy_status_runchging+0x258>
     c44: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae
     c48: 91000000     	add	x0, x0, #0x0
		0000000000000c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae
     c4c: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     c50: 91000021     	add	x1, x1, #0x0
		0000000000000c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     c54: 2a1503e2     	mov	w2, w21
     c58: 2a1403e3     	mov	w3, w20
     c5c: 94000000     	bl	0xc5c <charger_policy_status_runchging+0x208>
		0000000000000c5c:  R_AARCH64_CALL26	_printk
     c60: 6b1402bf     	cmp	w21, w20
     c64: 54fff70b     	b.lt	0xb44 <charger_policy_status_runchging+0xf0>
     c68: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd72
     c6c: 91000000     	add	x0, x0, #0x0
		0000000000000c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd72
     c70: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     c74: 91000021     	add	x1, x1, #0x0
		0000000000000c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     c78: 2a1503e2     	mov	w2, w21
     c7c: 2a1403e3     	mov	w3, w20
     c80: 94000000     	bl	0xc80 <charger_policy_status_runchging+0x22c>
		0000000000000c80:  R_AARCH64_CALL26	_printk
     c84: b941ee68     	ldr	w8, [x19, #0x1ec]
     c88: 52800049     	mov	w9, #0x2                // =2
     c8c: aa1303e0     	mov	x0, x19
     c90: 2a1f03e1     	mov	w1, wzr
     c94: 2a1f03e2     	mov	w2, wzr
     c98: b901ee69     	str	w9, [x19, #0x1ec]
     c9c: b901f268     	str	w8, [x19, #0x1f0]
     ca0: 94000000     	bl	0xca0 <charger_policy_status_runchging+0x24c>
		0000000000000ca0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
     ca4: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x304
     ca8: 91000000     	add	x0, x0, #0x0
		0000000000000ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x304
     cac: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2384
     cb0: 91000021     	add	x1, x1, #0x0
		0000000000000cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2384
     cb4: 94000000     	bl	0xcb4 <charger_policy_status_runchging+0x260>
		0000000000000cb4:  R_AARCH64_CALL26	_printk
     cb8: d5384108     	mrs	x8, SP_EL0
     cbc: f9438908     	ldr	x8, [x8, #0x710]
     cc0: f94007e9     	ldr	x9, [sp, #0x8]
     cc4: eb09011f     	cmp	x8, x9
     cc8: 54000241     	b.ne	0xd10 <charger_policy_status_runchging+0x2bc>
     ccc: 2a1f03e0     	mov	w0, wzr
     cd0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     cd4: f94013f5     	ldr	x21, [sp, #0x20]
     cd8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     cdc: 910103ff     	add	sp, sp, #0x40
     ce0: d50323bf     	autiasp
     ce4: d65f03c0     	ret
     ce8: 90000000     	adrp	x0, 0x0 <charger_policy_get_prop_by_name>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d84
     cec: 91000000     	add	x0, x0, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d84
     cf0: 90000001     	adrp	x1, 0x0 <charger_policy_get_prop_by_name>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12
     cf4: 91000021     	add	x1, x1, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12
     cf8: 2a1503e2     	mov	w2, w21
     cfc: 2a1403e3     	mov	w3, w20
     d00: 94000000     	bl	0xd00 <charger_policy_status_runchging+0x2ac>
		0000000000000d00:  R_AARCH64_CALL26	_printk
     d04: 6b1402bf     	cmp	w21, w20
     d08: 54fffd8b     	b.lt	0xcb8 <charger_policy_status_runchging+0x264>
     d0c: 17ffffa8     	b	0xbac <charger_policy_status_runchging+0x158>
     d10: 94000000     	bl	0xd10 <charger_policy_status_runchging+0x2bc>
		0000000000000d10:  R_AARCH64_CALL26	__stack_chk_fail
