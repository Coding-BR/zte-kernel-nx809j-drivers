
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000005c <gf_disable_irq>:
      5c: d503233f     	paciasp
      60: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
      64: 910003fd     	mov	x29, sp
      68: b9404c08     	ldr	w8, [x0, #0x4c]
      6c: 34000108     	cbz	w8, 0x8c <gf_disable_irq+0x30>
      70: b9404808     	ldr	w8, [x0, #0x48]
      74: b9004c1f     	str	wzr, [x0, #0x4c]
      78: 2a0803e0     	mov	w0, w8
      7c: 94000000     	bl	0x7c <gf_disable_irq+0x20>
		000000000000007c:  R_AARCH64_CALL26	disable_irq
      80: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      84: d50323bf     	autiasp
      88: d65f03c0     	ret
      8c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x603
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x603
      94: 94000000     	bl	0x94 <gf_disable_irq+0x38>
		0000000000000094:  R_AARCH64_CALL26	_printk
      98: 17fffffa     	b	0x80 <gf_disable_irq+0x24>
