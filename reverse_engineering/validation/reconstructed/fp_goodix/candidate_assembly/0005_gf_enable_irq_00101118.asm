
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008ac <gf_enable_irq>:
     8ac: d503233f     	paciasp
     8b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8b4: f9000bf3     	str	x19, [sp, #0x10]
     8b8: 910003fd     	mov	x29, sp
     8bc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5c
     8c0: b9400108     	ldr	w8, [x8]
		00000000000008c0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x5c
     8c4: 35000168     	cbnz	w8, 0x8f0 <gf_enable_irq+0x44>
     8c8: 90000013     	adrp	x19, 0x0 <.text>
		00000000000008c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x58
     8cc: 91000273     	add	x19, x19, #0x0
		00000000000008cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x58
     8d0: b9400260     	ldr	w0, [x19]
     8d4: 94000000     	bl	0x8d4 <gf_enable_irq+0x28>
		00000000000008d4:  R_AARCH64_CALL26	enable_irq
     8d8: 52800028     	mov	w8, #0x1                // =1
     8dc: b9000668     	str	w8, [x19, #0x4]
     8e0: f9400bf3     	ldr	x19, [sp, #0x10]
     8e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     8e8: d50323bf     	autiasp
     8ec: d65f03c0     	ret
     8f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfee
     8f4: 91000000     	add	x0, x0, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfee
     8f8: 94000000     	bl	0x8f8 <gf_enable_irq+0x4c>
		00000000000008f8:  R_AARCH64_CALL26	_printk
     8fc: 17fffff9     	b	0x8e0 <gf_enable_irq+0x34>
