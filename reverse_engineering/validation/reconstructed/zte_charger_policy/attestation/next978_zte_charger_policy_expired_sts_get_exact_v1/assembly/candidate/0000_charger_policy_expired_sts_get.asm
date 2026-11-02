
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000994 <charger_policy_expired_sts_get>:
     994: b4000141     	cbz	x1, 0x9bc <charger_policy_expired_sts_get+0x28>
     998: 39486c28     	ldrb	w8, [x1, #0x21b]
     99c: 7100051f     	cmp	w8, #0x1
     9a0: 54000061     	b.ne	0x9ac <charger_policy_expired_sts_get+0x18>
     9a4: 52800628     	mov	w8, #0x31               // =49
     9a8: 14000002     	b	0x9b0 <charger_policy_expired_sts_get+0x1c>
     9ac: 52800608     	mov	w8, #0x30               // =48
     9b0: 79000008     	strh	w8, [x0]
     9b4: 52800020     	mov	w0, #0x1                // =1
     9b8: d65f03c0     	ret
     9bc: d503233f     	paciasp
     9c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9c4: f9000bf3     	str	x19, [sp, #0x10]
     9c8: 910003fd     	mov	x29, sp
     9cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4b
     9d0: 91000108     	add	x8, x8, #0x0
		00000000000009d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4b
     9d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1756
     9d8: 91000021     	add	x1, x1, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1756
     9dc: aa0003f3     	mov	x19, x0
     9e0: aa0803e0     	mov	x0, x8
     9e4: 94000000     	bl	0x9e4 <charger_policy_expired_sts_get+0x50>
		00000000000009e4:  R_AARCH64_CALL26	_printk
     9e8: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc11
     9ec: 91000129     	add	x9, x9, #0x0
		00000000000009ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc11
     9f0: 528d8ea8     	mov	w8, #0x6c75             // =27765
     9f4: f9400129     	ldr	x9, [x9]
     9f8: 72a00d88     	movk	w8, #0x6c, lsl #16
     9fc: b9000a68     	str	w8, [x19, #0x8]
     a00: f9000269     	str	x9, [x19]
     a04: 52800160     	mov	w0, #0xb                // =11
     a08: f9400bf3     	ldr	x19, [sp, #0x10]
     a0c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a10: d50323bf     	autiasp
     a14: d65f03c0     	ret
