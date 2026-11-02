
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b6c <charger_policy_expired_sec_get>:
     b6c: d503233f     	paciasp
     b70: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b74: a9014ff4     	stp	x20, x19, [sp, #0x10]
     b78: 910003fd     	mov	x29, sp
     b7c: aa0003f3     	mov	x19, x0
     b80: b50001e1     	cbnz	x1, 0xbbc <charger_policy_expired_sec_get+0x50>
     b84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     b88: 91000000     	add	x0, x0, #0x0
		0000000000000b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     b8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b1
     b90: 91000021     	add	x1, x1, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b1
     b94: 94000000     	bl	0xb94 <charger_policy_expired_sec_get+0x28>
		0000000000000b94:  R_AARCH64_CALL26	_printk
     b98: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     b9c: 91000129     	add	x9, x9, #0x0
		0000000000000b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     ba0: 528d8ea8     	mov	w8, #0x6c75             // =27765
     ba4: f9400129     	ldr	x9, [x9]
     ba8: 72a00d88     	movk	w8, #0x6c, lsl #16
     bac: 52800160     	mov	w0, #0xb                // =11
     bb0: b9000a68     	str	w8, [x19, #0x8]
     bb4: f9000269     	str	x9, [x19]
     bb8: 1400000f     	b	0xbf4 <charger_policy_expired_sec_get+0x88>
     bbc: b941f422     	ldr	w2, [x1, #0x1f4]
     bc0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b1
     bc4: 91000108     	add	x8, x8, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b1
     bc8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d7
     bcc: 91000000     	add	x0, x0, #0x0
		0000000000000bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d7
     bd0: aa0103f4     	mov	x20, x1
     bd4: aa0803e1     	mov	x1, x8
     bd8: 94000000     	bl	0xbd8 <charger_policy_expired_sec_get+0x6c>
		0000000000000bd8:  R_AARCH64_CALL26	_printk
     bdc: b941f683     	ldr	w3, [x20, #0x1f4]
     be0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1637
     be4: 91000042     	add	x2, x2, #0x0
		0000000000000be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1637
     be8: aa1303e0     	mov	x0, x19
     bec: 52820001     	mov	w1, #0x1000             // =4096
     bf0: 94000000     	bl	0xbf0 <charger_policy_expired_sec_get+0x84>
		0000000000000bf0:  R_AARCH64_CALL26	snprintf
     bf4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     bf8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     bfc: d50323bf     	autiasp
     c00: d65f03c0     	ret
