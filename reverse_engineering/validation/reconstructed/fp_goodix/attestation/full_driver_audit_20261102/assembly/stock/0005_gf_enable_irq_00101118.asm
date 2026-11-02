
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008f8 <gf_enable_irq>:
     8f8: d503233f     	paciasp
     8fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     900: f9000bf3     	str	x19, [sp, #0x10]
     904: 910003fd     	mov	x29, sp
     908: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000908:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5c
     90c: b9400108     	ldr	w8, [x8]
		000000000000090c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x5c
     910: 35000168     	cbnz	w8, 0x93c <gf_enable_irq+0x44>
     914: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000914:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x58
     918: 91000273     	add	x19, x19, #0x0
		0000000000000918:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x58
     91c: b9400260     	ldr	w0, [x19]
     920: 94000000     	bl	0x920 <gf_enable_irq+0x28>
		0000000000000920:  R_AARCH64_CALL26	enable_irq
     924: 52800028     	mov	w8, #0x1                // =1
     928: b9000668     	str	w8, [x19, #0x4]
     92c: f9400bf3     	ldr	x19, [sp, #0x10]
     930: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     934: d50323bf     	autiasp
     938: d65f03c0     	ret
     93c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000093c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfee
     940: 91000000     	add	x0, x0, #0x0
		0000000000000940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfee
     944: 94000000     	bl	0x944 <gf_enable_irq+0x4c>
		0000000000000944:  R_AARCH64_CALL26	_printk
     948: 17fffff9     	b	0x92c <gf_enable_irq+0x34>
