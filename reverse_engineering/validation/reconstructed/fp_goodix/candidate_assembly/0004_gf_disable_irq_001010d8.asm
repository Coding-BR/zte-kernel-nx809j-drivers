
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000900 <gf_disable_irq>:
     900: d503233f     	paciasp
     904: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     908: 910003fd     	mov	x29, sp
     90c: b9404c08     	ldr	w8, [x0, #0x4c]
     910: 34000108     	cbz	w8, 0x930 <gf_disable_irq+0x30>
     914: b9404808     	ldr	w8, [x0, #0x48]
     918: b9004c1f     	str	wzr, [x0, #0x4c]
     91c: 2a0803e0     	mov	w0, w8
     920: 94000000     	bl	0x920 <gf_disable_irq+0x20>
		0000000000000920:  R_AARCH64_CALL26	disable_irq
     924: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     928: d50323bf     	autiasp
     92c: d65f03c0     	ret
     930: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x603
     934: 91000000     	add	x0, x0, #0x0
		0000000000000934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x603
     938: 94000000     	bl	0x938 <gf_disable_irq+0x38>
		0000000000000938:  R_AARCH64_CALL26	_printk
     93c: 17fffffa     	b	0x924 <gf_disable_irq+0x24>
