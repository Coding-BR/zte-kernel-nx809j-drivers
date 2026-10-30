
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ac4 <charger_policy_expired_sec_get>:
     ac4: d503233f     	paciasp
     ac8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     acc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     ad0: 910003fd     	mov	x29, sp
     ad4: aa0003f3     	mov	x19, x0
     ad8: b50001e1     	cbnz	x1, 0xb14 <charger_policy_expired_sec_get+0x50>
     adc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4b
     ae0: 91000000     	add	x0, x0, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4b
     ae4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1775
     ae8: 91000021     	add	x1, x1, #0x0
		0000000000000ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1775
     aec: 94000000     	bl	0xaec <charger_policy_expired_sec_get+0x28>
		0000000000000aec:  R_AARCH64_CALL26	_printk
     af0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc11
     af4: 91000129     	add	x9, x9, #0x0
		0000000000000af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc11
     af8: 528d8ea8     	mov	w8, #0x6c75             // =27765
     afc: f9400129     	ldr	x9, [x9]
     b00: 72a00d88     	movk	w8, #0x6c, lsl #16
     b04: 52800160     	mov	w0, #0xb                // =11
     b08: b9000a68     	str	w8, [x19, #0x8]
     b0c: f9000269     	str	x9, [x19]
     b10: 1400000f     	b	0xb4c <charger_policy_expired_sec_get+0x88>
     b14: b941f422     	ldr	w2, [x1, #0x1f4]
     b18: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1775
     b1c: 91000108     	add	x8, x8, #0x0
		0000000000000b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1775
     b20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d9
     b24: 91000000     	add	x0, x0, #0x0
		0000000000000b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d9
     b28: aa0103f4     	mov	x20, x1
     b2c: aa0803e1     	mov	x1, x8
     b30: 94000000     	bl	0xb30 <charger_policy_expired_sec_get+0x6c>
		0000000000000b30:  R_AARCH64_CALL26	_printk
     b34: b941f683     	ldr	w3, [x20, #0x1f4]
     b38: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ee
     b3c: 91000042     	add	x2, x2, #0x0
		0000000000000b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ee
     b40: aa1303e0     	mov	x0, x19
     b44: 52820001     	mov	w1, #0x1000             // =4096
     b48: 94000000     	bl	0xb48 <charger_policy_expired_sec_get+0x84>
		0000000000000b48:  R_AARCH64_CALL26	snprintf
     b4c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     b50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b54: d50323bf     	autiasp
     b58: d65f03c0     	ret
