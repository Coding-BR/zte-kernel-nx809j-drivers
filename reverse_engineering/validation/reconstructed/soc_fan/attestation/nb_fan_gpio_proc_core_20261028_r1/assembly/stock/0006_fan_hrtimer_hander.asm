
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a98 <fan_hrtimer_hander>:
     a98: d503233f     	paciasp
     a9c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     aa0: f9000bf3     	str	x19, [sp, #0x10]
     aa4: 910003fd     	mov	x29, sp
     aa8: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	chip
     aac: f9400268     	ldr	x8, [x19]
		0000000000000aac:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ab0: f9400508     	ldr	x8, [x8, #0x8]
     ab4: 39400909     	ldrb	w9, [x8, #0x2]
     ab8: 7100093f     	cmp	w9, #0x2
     abc: 540004e0     	b.eq	0xb58 <fan_hrtimer_hander+0xc0>
     ac0: 7100053f     	cmp	w9, #0x1
     ac4: 540000c0     	b.eq	0xadc <fan_hrtimer_hander+0x44>
     ac8: 2a1f03e0     	mov	w0, wzr
     acc: f9400bf3     	ldr	x19, [sp, #0x10]
     ad0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ad4: d50323bf     	autiasp
     ad8: d65f03c0     	ret
     adc: b900051f     	str	wzr, [x8, #0x4]
     ae0: 52800049     	mov	w9, #0x2                // =2
     ae4: 528ca001     	mov	w1, #0x6500             // =25856
     ae8: f9400268     	ldr	x8, [x19]
		0000000000000ae8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     aec: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
     af0: aa1f03e2     	mov	x2, xzr
     af4: 52800023     	mov	w3, #0x1                // =1
     af8: f9400508     	ldr	x8, [x8, #0x8]
     afc: 39000909     	strb	w9, [x8, #0x2]
     b00: f9400268     	ldr	x8, [x19]
		0000000000000b00:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b04: f9400508     	ldr	x8, [x8, #0x8]
     b08: 9100a100     	add	x0, x8, #0x28
     b0c: 94000000     	bl	0xb0c <fan_hrtimer_hander+0x74>
		0000000000000b0c:  R_AARCH64_CALL26	hrtimer_start_range_ns
     b10: f9400268     	ldr	x8, [x19]
		0000000000000b10:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b14: f9400508     	ldr	x8, [x8, #0x8]
     b18: b9401d00     	ldr	w0, [x8, #0x1c]
     b1c: 94000000     	bl	0xb1c <fan_hrtimer_hander+0x84>
		0000000000000b1c:  R_AARCH64_CALL26	enable_irq
     b20: f9400268     	ldr	x8, [x19]
		0000000000000b20:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
     b28: 91000000     	add	x0, x0, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
     b2c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     b30: 91000021     	add	x1, x1, #0x0
		0000000000000b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     b34: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
     b38: 91000042     	add	x2, x2, #0x0
		0000000000000b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
     b3c: f9400508     	ldr	x8, [x8, #0x8]
     b40: 52801043     	mov	w3, #0x82               // =130
     b44: 39400104     	ldrb	w4, [x8]
     b48: b9400505     	ldr	w5, [x8, #0x4]
     b4c: 94000000     	bl	0xb4c <fan_hrtimer_hander+0xb4>
		0000000000000b4c:  R_AARCH64_CALL26	_printk
     b50: 52800020     	mov	w0, #0x1                // =1
     b54: 17ffffde     	b	0xacc <fan_hrtimer_hander+0x34>
     b58: 52800069     	mov	w9, #0x3                // =3
     b5c: 39000909     	strb	w9, [x8, #0x2]
     b60: f9400268     	ldr	x8, [x19]
		0000000000000b60:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b64: f9400509     	ldr	x9, [x8, #0x8]
     b68: b940052a     	ldr	w10, [x9, #0x4]
     b6c: b900092a     	str	w10, [x9, #0x8]
     b70: f9400508     	ldr	x8, [x8, #0x8]
     b74: b9401d00     	ldr	w0, [x8, #0x1c]
     b78: 94000000     	bl	0xb78 <fan_hrtimer_hander+0xe0>
		0000000000000b78:  R_AARCH64_CALL26	disable_irq_nosync
     b7c: f9400268     	ldr	x8, [x19]
		0000000000000b7c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c
     b84: 91000000     	add	x0, x0, #0x0
		0000000000000b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c
     b88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     b8c: 91000021     	add	x1, x1, #0x0
		0000000000000b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     b90: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
     b94: 91000042     	add	x2, x2, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
     b98: f9400508     	ldr	x8, [x8, #0x8]
     b9c: 52801123     	mov	w3, #0x89               // =137
     ba0: 39400104     	ldrb	w4, [x8]
     ba4: b9400505     	ldr	w5, [x8, #0x4]
     ba8: 94000000     	bl	0xba8 <fan_hrtimer_hander+0x110>
		0000000000000ba8:  R_AARCH64_CALL26	_printk
     bac: 17ffffc7     	b	0xac8 <fan_hrtimer_hander+0x30>
