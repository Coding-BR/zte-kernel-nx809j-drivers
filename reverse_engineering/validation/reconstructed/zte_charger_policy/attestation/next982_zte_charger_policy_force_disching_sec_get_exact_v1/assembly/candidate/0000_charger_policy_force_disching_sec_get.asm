
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c08 <charger_policy_force_disching_sec_get>:
     c08: d503233f     	paciasp
     c0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     c10: a9014ff4     	stp	x20, x19, [sp, #0x10]
     c14: 910003fd     	mov	x29, sp
     c18: aa0003f3     	mov	x19, x0
     c1c: b50001e1     	cbnz	x1, 0xc58 <charger_policy_force_disching_sec_get+0x50>
     c20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     c24: 91000000     	add	x0, x0, #0x0
		0000000000000c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     c28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x654
     c2c: 91000021     	add	x1, x1, #0x0
		0000000000000c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x654
     c30: 94000000     	bl	0xc30 <charger_policy_force_disching_sec_get+0x28>
		0000000000000c30:  R_AARCH64_CALL26	_printk
     c34: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc42
     c38: 91000129     	add	x9, x9, #0x0
		0000000000000c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc42
     c3c: 528d8ea8     	mov	w8, #0x6c75             // =27765
     c40: f9400129     	ldr	x9, [x9]
     c44: 72a00d88     	movk	w8, #0x6c, lsl #16
     c48: 52800160     	mov	w0, #0xb                // =11
     c4c: b9000a68     	str	w8, [x19, #0x8]
     c50: f9000269     	str	x9, [x19]
     c54: 1400000f     	b	0xc90 <charger_policy_force_disching_sec_get+0x88>
     c58: b941f822     	ldr	w2, [x1, #0x1f8]
     c5c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x654
     c60: 91000108     	add	x8, x8, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x654
     c64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x266
     c68: 91000000     	add	x0, x0, #0x0
		0000000000000c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x266
     c6c: aa0103f4     	mov	x20, x1
     c70: aa0803e1     	mov	x1, x8
     c74: 94000000     	bl	0xc74 <charger_policy_force_disching_sec_get+0x6c>
		0000000000000c74:  R_AARCH64_CALL26	_printk
     c78: b941fa83     	ldr	w3, [x20, #0x1f8]
     c7c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1f
     c80: 91000042     	add	x2, x2, #0x0
		0000000000000c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1f
     c84: aa1303e0     	mov	x0, x19
     c88: 52820001     	mov	w1, #0x1000             // =4096
     c8c: 94000000     	bl	0xc8c <charger_policy_force_disching_sec_get+0x84>
		0000000000000c8c:  R_AARCH64_CALL26	snprintf
     c90: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     c94: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     c98: d50323bf     	autiasp
     c9c: d65f03c0     	ret
