
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c2c <fan_enable_store>:
     c2c: d503233f     	paciasp
     c30: d100c3ff     	sub	sp, sp, #0x30
     c34: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c38: a9024ff4     	stp	x20, x19, [sp, #0x20]
     c3c: 910043fd     	add	x29, sp, #0x10
     c40: d5384108     	mrs	x8, SP_EL0
     c44: aa0203e0     	mov	x0, x2
     c48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
     c4c: 91000021     	add	x1, x1, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
     c50: f9438908     	ldr	x8, [x8, #0x710]
     c54: 910013e2     	add	x2, sp, #0x4
     c58: aa0303f3     	mov	x19, x3
     c5c: f90007e8     	str	x8, [sp, #0x8]
     c60: b90007ff     	str	wzr, [sp, #0x4]
     c64: 94000000     	bl	0xc64 <fan_enable_store+0x38>
		0000000000000c64:  R_AARCH64_CALL26	sscanf
     c68: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000c68:  R_AARCH64_ADR_PREL_PG_HI21	chip
     c6c: b94007ea     	ldr	w10, [sp, #0x4]
     c70: f9400288     	ldr	x8, [x20]
		0000000000000c70:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c74: 7100015f     	cmp	w10, #0x0
     c78: f9400509     	ldr	x9, [x8, #0x8]
     c7c: 1a9f07ea     	cset	w10, ne
     c80: 3940312b     	ldrb	w11, [x9, #0xc]
     c84: 6b0a017f     	cmp	w11, w10
     c88: 54000141     	b.ne	0xcb0 <fan_enable_store+0x84>
     c8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x854
     c90: 91000000     	add	x0, x0, #0x0
		0000000000000c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x854
     c94: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     c98: 91000021     	add	x1, x1, #0x0
		0000000000000c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     c9c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fb
     ca0: 91000042     	add	x2, x2, #0x0
		0000000000000ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fb
     ca4: 528027e3     	mov	w3, #0x13f              // =319
     ca8: 94000000     	bl	0xca8 <fan_enable_store+0x7c>
		0000000000000ca8:  R_AARCH64_CALL26	_printk
     cac: 1400002e     	b	0xd64 <fan_enable_store+0x138>
     cb0: 3900312a     	strb	w10, [x9, #0xc]
     cb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b3
     cb8: 91000000     	add	x0, x0, #0x0
		0000000000000cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b3
     cbc: f9400508     	ldr	x8, [x8, #0x8]
     cc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     cc4: 91000021     	add	x1, x1, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     cc8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fb
     ccc: 91000042     	add	x2, x2, #0x0
		0000000000000ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fb
     cd0: 52802863     	mov	w3, #0x143              // =323
     cd4: 39403104     	ldrb	w4, [x8, #0xc]
     cd8: 94000000     	bl	0xcd8 <fan_enable_store+0xac>
		0000000000000cd8:  R_AARCH64_CALL26	_printk
     cdc: f9400288     	ldr	x8, [x20]
		0000000000000cdc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ce0: 91006100     	add	x0, x8, #0x18
     ce4: 94000000     	bl	0xce4 <fan_enable_store+0xb8>
		0000000000000ce4:  R_AARCH64_CALL26	mutex_lock
     ce8: f9400288     	ldr	x8, [x20]
		0000000000000ce8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     cec: f9400500     	ldr	x0, [x8, #0x8]
     cf0: 39403008     	ldrb	w8, [x0, #0xc]
     cf4: 36000268     	tbz	w8, #0x0, 0xd40 <fan_enable_store+0x114>
     cf8: 39400401     	ldrb	w1, [x0, #0x1]
     cfc: 340002e1     	cbz	w1, 0xd58 <fan_enable_store+0x12c>
     d00: 94000025     	bl	0xd94 <fan_level_set>
     d04: f9400288     	ldr	x8, [x20]
		0000000000000d04:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x582
     d0c: 91000000     	add	x0, x0, #0x0
		0000000000000d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x582
     d10: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     d14: 91000021     	add	x1, x1, #0x0
		0000000000000d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     d18: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fb
     d1c: 91000042     	add	x2, x2, #0x0
		0000000000000d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fb
     d20: f9400508     	ldr	x8, [x8, #0x8]
     d24: 52802983     	mov	w3, #0x14c              // =332
     d28: 39400504     	ldrb	w4, [x8, #0x1]
     d2c: 94000000     	bl	0xd2c <fan_enable_store+0x100>
		0000000000000d2c:  R_AARCH64_CALL26	_printk
     d30: f9400288     	ldr	x8, [x20]
		0000000000000d30:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d34: f9400508     	ldr	x8, [x8, #0x8]
     d38: 3900051f     	strb	wzr, [x8, #0x1]
     d3c: 14000007     	b	0xd58 <fan_enable_store+0x12c>
     d40: 39400008     	ldrb	w8, [x0]
     d44: 2a1f03e1     	mov	w1, wzr
     d48: 39000408     	strb	w8, [x0, #0x1]
     d4c: f9400288     	ldr	x8, [x20]
		0000000000000d4c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d50: f9400500     	ldr	x0, [x8, #0x8]
     d54: 94000010     	bl	0xd94 <fan_level_set>
     d58: f9400288     	ldr	x8, [x20]
		0000000000000d58:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d5c: 91006100     	add	x0, x8, #0x18
     d60: 94000000     	bl	0xd60 <fan_enable_store+0x134>
		0000000000000d60:  R_AARCH64_CALL26	mutex_unlock
     d64: d5384108     	mrs	x8, SP_EL0
     d68: f9438908     	ldr	x8, [x8, #0x710]
     d6c: f94007e9     	ldr	x9, [sp, #0x8]
     d70: eb09011f     	cmp	x8, x9
     d74: 540000e1     	b.ne	0xd90 <fan_enable_store+0x164>
     d78: aa1303e0     	mov	x0, x19
     d7c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d80: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d84: 9100c3ff     	add	sp, sp, #0x30
     d88: d50323bf     	autiasp
     d8c: d65f03c0     	ret
     d90: 94000000     	bl	0xd90 <fan_enable_store+0x164>
		0000000000000d90:  R_AARCH64_CALL26	__stack_chk_fail
