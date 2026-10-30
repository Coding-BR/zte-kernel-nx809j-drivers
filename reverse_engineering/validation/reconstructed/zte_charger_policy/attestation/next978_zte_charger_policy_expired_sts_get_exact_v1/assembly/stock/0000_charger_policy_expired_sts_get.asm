
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a3c <charger_policy_expired_sts_get>:
     a3c: b4000141     	cbz	x1, 0xa64 <charger_policy_expired_sts_get+0x28>
     a40: 39486c28     	ldrb	w8, [x1, #0x21b]
     a44: 7100051f     	cmp	w8, #0x1
     a48: 54000061     	b.ne	0xa54 <charger_policy_expired_sts_get+0x18>
     a4c: 52800628     	mov	w8, #0x31               // =49
     a50: 14000002     	b	0xa58 <charger_policy_expired_sts_get+0x1c>
     a54: 52800608     	mov	w8, #0x30               // =48
     a58: 79000008     	strh	w8, [x0]
     a5c: 52800020     	mov	w0, #0x1                // =1
     a60: d65f03c0     	ret
     a64: d503233f     	paciasp
     a68: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a6c: f9000bf3     	str	x19, [sp, #0x10]
     a70: 910003fd     	mov	x29, sp
     a74: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     a78: 91000108     	add	x8, x8, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     a7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1392
     a80: 91000021     	add	x1, x1, #0x0
		0000000000000a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1392
     a84: aa0003f3     	mov	x19, x0
     a88: aa0803e0     	mov	x0, x8
     a8c: 94000000     	bl	0xa8c <charger_policy_expired_sts_get+0x50>
		0000000000000a8c:  R_AARCH64_CALL26	_printk
     a90: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     a94: 91000129     	add	x9, x9, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     a98: 528d8ea8     	mov	w8, #0x6c75             // =27765
     a9c: f9400129     	ldr	x9, [x9]
     aa0: 72a00d88     	movk	w8, #0x6c, lsl #16
     aa4: b9000a68     	str	w8, [x19, #0x8]
     aa8: f9000269     	str	x9, [x19]
     aac: 52800160     	mov	w0, #0xb                // =11
     ab0: f9400bf3     	ldr	x19, [sp, #0x10]
     ab4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ab8: d50323bf     	autiasp
     abc: d65f03c0     	ret
