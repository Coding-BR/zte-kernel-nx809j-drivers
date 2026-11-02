
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000df8 <charger_policy_cap_min_get>:
     df8: d503233f     	paciasp
     dfc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e00: f9000bf3     	str	x19, [sp, #0x10]
     e04: 910003fd     	mov	x29, sp
     e08: b4000141     	cbz	x1, 0xe30 <charger_policy_cap_min_get+0x38>
     e0c: b9419c23     	ldr	w3, [x1, #0x19c]
     e10: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1637
     e14: 91000042     	add	x2, x2, #0x0
		0000000000000e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1637
     e18: 52820001     	mov	w1, #0x1000             // =4096
     e1c: 94000000     	bl	0xe1c <charger_policy_cap_min_get+0x24>
		0000000000000e1c:  R_AARCH64_CALL26	snprintf
     e20: f9400bf3     	ldr	x19, [sp, #0x10]
     e24: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e28: d50323bf     	autiasp
     e2c: d65f03c0     	ret
     e30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     e34: 91000108     	add	x8, x8, #0x0
		0000000000000e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     e38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe29
     e3c: 91000021     	add	x1, x1, #0x0
		0000000000000e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe29
     e40: aa0003f3     	mov	x19, x0
     e44: aa0803e0     	mov	x0, x8
     e48: 94000000     	bl	0xe48 <charger_policy_cap_min_get+0x50>
		0000000000000e48:  R_AARCH64_CALL26	_printk
     e4c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     e50: 91000129     	add	x9, x9, #0x0
		0000000000000e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     e54: 528d8ea8     	mov	w8, #0x6c75             // =27765
     e58: f9400129     	ldr	x9, [x9]
     e5c: 72a00d88     	movk	w8, #0x6c, lsl #16
     e60: 52800160     	mov	w0, #0xb                // =11
     e64: b9000a68     	str	w8, [x19, #0x8]
     e68: f9000269     	str	x9, [x19]
     e6c: 17ffffed     	b	0xe20 <charger_policy_cap_min_get+0x28>
