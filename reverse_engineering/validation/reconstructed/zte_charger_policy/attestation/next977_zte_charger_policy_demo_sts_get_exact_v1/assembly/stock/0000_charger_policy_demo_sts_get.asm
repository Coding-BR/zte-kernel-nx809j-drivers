
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000998 <charger_policy_demo_sts_get>:
     998: d503233f     	paciasp
     99c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     9a4: 910003fd     	mov	x29, sp
     9a8: aa0003f3     	mov	x19, x0
     9ac: b50001e1     	cbnz	x1, 0x9e8 <charger_policy_demo_sts_get+0x50>
     9b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     9b4: 91000000     	add	x0, x0, #0x0
		00000000000009b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     9b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf11
     9bc: 91000021     	add	x1, x1, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf11
     9c0: 94000000     	bl	0x9c0 <charger_policy_demo_sts_get+0x28>
		00000000000009c0:  R_AARCH64_CALL26	_printk
     9c4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     9c8: 91000129     	add	x9, x9, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     9cc: 528d8ea8     	mov	w8, #0x6c75             // =27765
     9d0: f9400129     	ldr	x9, [x9]
     9d4: 72a00d88     	movk	w8, #0x6c, lsl #16
     9d8: 52800160     	mov	w0, #0xb                // =11
     9dc: b9000a68     	str	w8, [x19, #0x8]
     9e0: f9000269     	str	x9, [x19]
     9e4: 14000011     	b	0xa28 <charger_policy_demo_sts_get+0x90>
     9e8: 39486422     	ldrb	w2, [x1, #0x219]
     9ec: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf11
     9f0: 91000108     	add	x8, x8, #0x0
		00000000000009f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf11
     9f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2030
     9f8: 91000000     	add	x0, x0, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2030
     9fc: aa0103f4     	mov	x20, x1
     a00: aa0803e1     	mov	x1, x8
     a04: 94000000     	bl	0xa04 <charger_policy_demo_sts_get+0x6c>
		0000000000000a04:  R_AARCH64_CALL26	_printk
     a08: 39486688     	ldrb	w8, [x20, #0x219]
     a0c: 7100051f     	cmp	w8, #0x1
     a10: 54000061     	b.ne	0xa1c <charger_policy_demo_sts_get+0x84>
     a14: 52800628     	mov	w8, #0x31               // =49
     a18: 14000002     	b	0xa20 <charger_policy_demo_sts_get+0x88>
     a1c: 52800608     	mov	w8, #0x30               // =48
     a20: 52800020     	mov	w0, #0x1                // =1
     a24: 79000268     	strh	w8, [x19]
     a28: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     a2c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a30: d50323bf     	autiasp
     a34: d65f03c0     	ret
