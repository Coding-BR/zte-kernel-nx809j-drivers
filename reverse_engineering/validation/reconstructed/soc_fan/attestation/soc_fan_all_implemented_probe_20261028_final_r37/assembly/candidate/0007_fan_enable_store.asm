
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bb4 <fan_enable_store>:
     bb4: d503233f     	paciasp
     bb8: d100c3ff     	sub	sp, sp, #0x30
     bbc: a9017bfd     	stp	x29, x30, [sp, #0x10]
     bc0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     bc4: 910043fd     	add	x29, sp, #0x10
     bc8: d5384108     	mrs	x8, SP_EL0
     bcc: aa0203e0     	mov	x0, x2
     bd0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bd
     bd4: 91000021     	add	x1, x1, #0x0
		0000000000000bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bd
     bd8: f9438908     	ldr	x8, [x8, #0x710]
     bdc: 910013e2     	add	x2, sp, #0x4
     be0: aa0303f3     	mov	x19, x3
     be4: f90007e8     	str	x8, [sp, #0x8]
     be8: b90007ff     	str	wzr, [sp, #0x4]
     bec: 94000000     	bl	0xbec <fan_enable_store+0x38>
		0000000000000bec:  R_AARCH64_CALL26	sscanf
     bf0: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000bf0:  R_AARCH64_ADR_PREL_PG_HI21	chip
     bf4: b94007ea     	ldr	w10, [sp, #0x4]
     bf8: f9400288     	ldr	x8, [x20]
		0000000000000bf8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     bfc: 7100015f     	cmp	w10, #0x0
     c00: f9400509     	ldr	x9, [x8, #0x8]
     c04: 1a9f07ea     	cset	w10, ne
     c08: 3940312b     	ldrb	w11, [x9, #0xc]
     c0c: 6b0a017f     	cmp	w11, w10
     c10: 54000141     	b.ne	0xc38 <fan_enable_store+0x84>
     c14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81c
     c18: 91000000     	add	x0, x0, #0x0
		0000000000000c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81c
     c1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     c20: 91000021     	add	x1, x1, #0x0
		0000000000000c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     c24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
     c28: 91000042     	add	x2, x2, #0x0
		0000000000000c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
     c2c: 528027e3     	mov	w3, #0x13f              // =319
     c30: 94000000     	bl	0xc30 <fan_enable_store+0x7c>
		0000000000000c30:  R_AARCH64_CALL26	_printk
     c34: 1400002e     	b	0xcec <fan_enable_store+0x138>
     c38: 3900312a     	strb	w10, [x9, #0xc]
     c3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a3
     c40: 91000000     	add	x0, x0, #0x0
		0000000000000c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a3
     c44: f9400508     	ldr	x8, [x8, #0x8]
     c48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     c4c: 91000021     	add	x1, x1, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     c50: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
     c54: 91000042     	add	x2, x2, #0x0
		0000000000000c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
     c58: 52802863     	mov	w3, #0x143              // =323
     c5c: 39403104     	ldrb	w4, [x8, #0xc]
     c60: 94000000     	bl	0xc60 <fan_enable_store+0xac>
		0000000000000c60:  R_AARCH64_CALL26	_printk
     c64: f9400288     	ldr	x8, [x20]
		0000000000000c64:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c68: 91006100     	add	x0, x8, #0x18
     c6c: 94000000     	bl	0xc6c <fan_enable_store+0xb8>
		0000000000000c6c:  R_AARCH64_CALL26	mutex_lock
     c70: f9400288     	ldr	x8, [x20]
		0000000000000c70:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c74: f9400500     	ldr	x0, [x8, #0x8]
     c78: 39403008     	ldrb	w8, [x0, #0xc]
     c7c: 36000268     	tbz	w8, #0x0, 0xcc8 <fan_enable_store+0x114>
     c80: 39400401     	ldrb	w1, [x0, #0x1]
     c84: 340002e1     	cbz	w1, 0xce0 <fan_enable_store+0x12c>
     c88: 94000025     	bl	0xd1c <fan_level_set>
     c8c: f9400288     	ldr	x8, [x20]
		0000000000000c8c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x572
     c94: 91000000     	add	x0, x0, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x572
     c98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     c9c: 91000021     	add	x1, x1, #0x0
		0000000000000c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     ca0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa02
     ca4: 91000042     	add	x2, x2, #0x0
		0000000000000ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa02
     ca8: f9400508     	ldr	x8, [x8, #0x8]
     cac: 52802983     	mov	w3, #0x14c              // =332
     cb0: 39400504     	ldrb	w4, [x8, #0x1]
     cb4: 94000000     	bl	0xcb4 <fan_enable_store+0x100>
		0000000000000cb4:  R_AARCH64_CALL26	_printk
     cb8: f9400288     	ldr	x8, [x20]
		0000000000000cb8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     cbc: f9400508     	ldr	x8, [x8, #0x8]
     cc0: 3900051f     	strb	wzr, [x8, #0x1]
     cc4: 14000007     	b	0xce0 <fan_enable_store+0x12c>
     cc8: 39400008     	ldrb	w8, [x0]
     ccc: 2a1f03e1     	mov	w1, wzr
     cd0: 39000408     	strb	w8, [x0, #0x1]
     cd4: f9400288     	ldr	x8, [x20]
		0000000000000cd4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     cd8: f9400500     	ldr	x0, [x8, #0x8]
     cdc: 94000010     	bl	0xd1c <fan_level_set>
     ce0: f9400288     	ldr	x8, [x20]
		0000000000000ce0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ce4: 91006100     	add	x0, x8, #0x18
     ce8: 94000000     	bl	0xce8 <fan_enable_store+0x134>
		0000000000000ce8:  R_AARCH64_CALL26	mutex_unlock
     cec: d5384108     	mrs	x8, SP_EL0
     cf0: f9438908     	ldr	x8, [x8, #0x710]
     cf4: f94007e9     	ldr	x9, [sp, #0x8]
     cf8: eb09011f     	cmp	x8, x9
     cfc: 540000e1     	b.ne	0xd18 <fan_enable_store+0x164>
     d00: aa1303e0     	mov	x0, x19
     d04: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d08: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d0c: 9100c3ff     	add	sp, sp, #0x30
     d10: d50323bf     	autiasp
     d14: d65f03c0     	ret
     d18: 94000000     	bl	0xd18 <fan_enable_store+0x164>
		0000000000000d18:  R_AARCH64_CALL26	__stack_chk_fail
