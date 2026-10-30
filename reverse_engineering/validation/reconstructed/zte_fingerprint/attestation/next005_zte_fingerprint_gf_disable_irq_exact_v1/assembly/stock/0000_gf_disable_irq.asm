
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008b8 <gf_disable_irq>:
     8b8: d503233f     	paciasp
     8bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     8c0: 910003fd     	mov	x29, sp
     8c4: b9404c08     	ldr	w8, [x0, #0x4c]
     8c8: 34000108     	cbz	w8, 0x8e8 <gf_disable_irq+0x30>
     8cc: b9404808     	ldr	w8, [x0, #0x48]
     8d0: b9004c1f     	str	wzr, [x0, #0x4c]
     8d4: 2a0803e0     	mov	w0, w8
     8d8: 94000000     	bl	0x8d8 <gf_disable_irq+0x20>
		00000000000008d8:  R_AARCH64_CALL26	disable_irq
     8dc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     8e0: d50323bf     	autiasp
     8e4: d65f03c0     	ret
     8e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cf
     8ec: 91000000     	add	x0, x0, #0x0
		00000000000008ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cf
     8f0: 94000000     	bl	0x8f0 <gf_disable_irq+0x38>
		00000000000008f0:  R_AARCH64_CALL26	_printk
     8f4: 17fffffa     	b	0x8dc <gf_disable_irq+0x24>
