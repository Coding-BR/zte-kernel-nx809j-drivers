
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008f0 <charger_policy_demo_sts_get>:
     8f0: d503233f     	paciasp
     8f4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8f8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     8fc: 910003fd     	mov	x29, sp
     900: aa0003f3     	mov	x19, x0
     904: b50001e1     	cbnz	x1, 0x940 <charger_policy_demo_sts_get+0x50>
     908: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4b
     90c: 91000000     	add	x0, x0, #0x0
		000000000000090c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4b
     910: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1271
     914: 91000021     	add	x1, x1, #0x0
		0000000000000914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1271
     918: 94000000     	bl	0x918 <charger_policy_demo_sts_get+0x28>
		0000000000000918:  R_AARCH64_CALL26	_printk
     91c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc11
     920: 91000129     	add	x9, x9, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc11
     924: 528d8ea8     	mov	w8, #0x6c75             // =27765
     928: f9400129     	ldr	x9, [x9]
     92c: 72a00d88     	movk	w8, #0x6c, lsl #16
     930: 52800160     	mov	w0, #0xb                // =11
     934: b9000a68     	str	w8, [x19, #0x8]
     938: f9000269     	str	x9, [x19]
     93c: 14000011     	b	0x980 <charger_policy_demo_sts_get+0x90>
     940: 39486422     	ldrb	w2, [x1, #0x219]
     944: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1271
     948: 91000108     	add	x8, x8, #0x0
		0000000000000948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1271
     94c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2265
     950: 91000000     	add	x0, x0, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2265
     954: aa0103f4     	mov	x20, x1
     958: aa0803e1     	mov	x1, x8
     95c: 94000000     	bl	0x95c <charger_policy_demo_sts_get+0x6c>
		000000000000095c:  R_AARCH64_CALL26	_printk
     960: 39486688     	ldrb	w8, [x20, #0x219]
     964: 7100051f     	cmp	w8, #0x1
     968: 54000061     	b.ne	0x974 <charger_policy_demo_sts_get+0x84>
     96c: 52800628     	mov	w8, #0x31               // =49
     970: 14000002     	b	0x978 <charger_policy_demo_sts_get+0x88>
     974: 52800608     	mov	w8, #0x30               // =48
     978: 52800020     	mov	w0, #0x1                // =1
     97c: 79000268     	strh	w8, [x19]
     980: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     984: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     988: d50323bf     	autiasp
     98c: d65f03c0     	ret
