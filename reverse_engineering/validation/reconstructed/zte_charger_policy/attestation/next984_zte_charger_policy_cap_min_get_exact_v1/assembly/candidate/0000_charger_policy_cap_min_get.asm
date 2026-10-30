
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d50 <charger_policy_cap_min_get>:
     d50: d503233f     	paciasp
     d54: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d58: f9000bf3     	str	x19, [sp, #0x10]
     d5c: 910003fd     	mov	x29, sp
     d60: b4000141     	cbz	x1, 0xd88 <charger_policy_cap_min_get+0x38>
     d64: b9419c23     	ldr	w3, [x1, #0x19c]
     d68: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1f
     d6c: 91000042     	add	x2, x2, #0x0
		0000000000000d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1f
     d70: 52820001     	mov	w1, #0x1000             // =4096
     d74: 94000000     	bl	0xd74 <charger_policy_cap_min_get+0x24>
		0000000000000d74:  R_AARCH64_CALL26	snprintf
     d78: f9400bf3     	ldr	x19, [sp, #0x10]
     d7c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d80: d50323bf     	autiasp
     d84: d65f03c0     	ret
     d88: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     d8c: 91000108     	add	x8, x8, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     d90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1188
     d94: 91000021     	add	x1, x1, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1188
     d98: aa0003f3     	mov	x19, x0
     d9c: aa0803e0     	mov	x0, x8
     da0: 94000000     	bl	0xda0 <charger_policy_cap_min_get+0x50>
		0000000000000da0:  R_AARCH64_CALL26	_printk
     da4: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc42
     da8: 91000129     	add	x9, x9, #0x0
		0000000000000da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc42
     dac: 528d8ea8     	mov	w8, #0x6c75             // =27765
     db0: f9400129     	ldr	x9, [x9]
     db4: 72a00d88     	movk	w8, #0x6c, lsl #16
     db8: 52800160     	mov	w0, #0xb                // =11
     dbc: b9000a68     	str	w8, [x19, #0x8]
     dc0: f9000269     	str	x9, [x19]
     dc4: 17ffffed     	b	0xd78 <charger_policy_cap_min_get+0x28>
