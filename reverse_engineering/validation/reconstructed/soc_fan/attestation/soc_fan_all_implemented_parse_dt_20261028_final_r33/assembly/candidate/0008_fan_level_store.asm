
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a84 <fan_level_store>:
     a84: d503233f     	paciasp
     a88: d100c3ff     	sub	sp, sp, #0x30
     a8c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a90: a9024ff4     	stp	x20, x19, [sp, #0x20]
     a94: 910043fd     	add	x29, sp, #0x10
     a98: d5384108     	mrs	x8, SP_EL0
     a9c: aa0203e0     	mov	x0, x2
     aa0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     aa4: 91000021     	add	x1, x1, #0x0
		0000000000000aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     aa8: f9438908     	ldr	x8, [x8, #0x710]
     aac: 910013e2     	add	x2, sp, #0x4
     ab0: aa0303f3     	mov	x19, x3
     ab4: f90007e8     	str	x8, [sp, #0x8]
     ab8: b90007ff     	str	wzr, [sp, #0x4]
     abc: 94000000     	bl	0xabc <fan_level_store+0x38>
		0000000000000abc:  R_AARCH64_CALL26	sscanf
     ac0: b94007e4     	ldr	w4, [sp, #0x4]
     ac4: 7100189f     	cmp	w4, #0x6
     ac8: 540003a2     	b.hs	0xb3c <fan_level_store+0xb8>
     acc: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	chip
     ad0: f9400288     	ldr	x8, [x20]
		0000000000000ad0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ad4: f9400509     	ldr	x9, [x8, #0x8]
     ad8: 3940312a     	ldrb	w10, [x9, #0xc]
     adc: 3600048a     	tbz	w10, #0x0, 0xb6c <fan_level_store+0xe8>
     ae0: 91006100     	add	x0, x8, #0x18
     ae4: 94000000     	bl	0xae4 <fan_level_store+0x60>
		0000000000000ae4:  R_AARCH64_CALL26	mutex_lock
     ae8: f9400288     	ldr	x8, [x20]
		0000000000000ae8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     aec: b94007e1     	ldr	w1, [sp, #0x4]
     af0: f9400500     	ldr	x0, [x8, #0x8]
     af4: 97ffff40     	bl	0x7f4 <fan_level_set>
     af8: f9400288     	ldr	x8, [x20]
		0000000000000af8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     afc: 2a0003f4     	mov	w20, w0
     b00: 91006100     	add	x0, x8, #0x18
     b04: 94000000     	bl	0xb04 <fan_level_store+0x80>
		0000000000000b04:  R_AARCH64_CALL26	mutex_unlock
     b08: 34000494     	cbz	w20, 0xb98 <fan_level_store+0x114>
     b0c: 93407e93     	sxtw	x19, w20
     b10: d5384108     	mrs	x8, SP_EL0
     b14: f9438908     	ldr	x8, [x8, #0x710]
     b18: f94007e9     	ldr	x9, [sp, #0x8]
     b1c: eb09011f     	cmp	x8, x9
     b20: 54000521     	b.ne	0xbc4 <fan_level_store+0x140>
     b24: aa1303e0     	mov	x0, x19
     b28: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     b2c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b30: 9100c3ff     	add	sp, sp, #0x30
     b34: d50323bf     	autiasp
     b38: d65f03c0     	ret
     b3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30
     b40: 91000000     	add	x0, x0, #0x0
		0000000000000b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30
     b44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     b48: 91000021     	add	x1, x1, #0x0
		0000000000000b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     b4c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55e
     b50: 91000042     	add	x2, x2, #0x0
		0000000000000b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55e
     b54: 52802ca3     	mov	w3, #0x165              // =357
     b58: 2a1f03e5     	mov	w5, wzr
     b5c: 528000a6     	mov	w6, #0x5                // =5
     b60: 94000000     	bl	0xb60 <fan_level_store+0xdc>
		0000000000000b60:  R_AARCH64_CALL26	_printk
     b64: 928002b3     	mov	x19, #-0x16             // =-22
     b68: 17ffffea     	b	0xb10 <fan_level_store+0x8c>
     b6c: 39000524     	strb	w4, [x9, #0x1]
     b70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e
     b74: 91000000     	add	x0, x0, #0x0
		0000000000000b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e
     b78: b94007e4     	ldr	w4, [sp, #0x4]
     b7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     b80: 91000021     	add	x1, x1, #0x0
		0000000000000b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     b84: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55e
     b88: 91000042     	add	x2, x2, #0x0
		0000000000000b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55e
     b8c: 52802d63     	mov	w3, #0x16b              // =363
     b90: 94000000     	bl	0xb90 <fan_level_store+0x10c>
		0000000000000b90:  R_AARCH64_CALL26	_printk
     b94: 17ffffdf     	b	0xb10 <fan_level_store+0x8c>
     b98: b94007e4     	ldr	w4, [sp, #0x4]
     b9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c8
     ba0: 91000000     	add	x0, x0, #0x0
		0000000000000ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c8
     ba4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     ba8: 91000021     	add	x1, x1, #0x0
		0000000000000ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     bac: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55e
     bb0: 91000042     	add	x2, x2, #0x0
		0000000000000bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55e
     bb4: 52802ea3     	mov	w3, #0x175              // =373
     bb8: 2a1f03e5     	mov	w5, wzr
     bbc: 94000000     	bl	0xbbc <fan_level_store+0x138>
		0000000000000bbc:  R_AARCH64_CALL26	_printk
     bc0: 17ffffd4     	b	0xb10 <fan_level_store+0x8c>
     bc4: 94000000     	bl	0xbc4 <fan_level_store+0x140>
		0000000000000bc4:  R_AARCH64_CALL26	__stack_chk_fail
