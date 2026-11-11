
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000774 <gf_irq_num>:
     774: d503233f     	paciasp
     778: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     77c: 910003fd     	mov	x29, sp
     780: b40000e0     	cbz	x0, 0x79c <gf_irq_num+0x28>
     784: b9403c00     	ldr	w0, [x0, #0x3c]
     788: 94000000     	bl	0x788 <gf_irq_num+0x14>
		0000000000000788:  R_AARCH64_CALL26	gpio_to_desc
     78c: 94000000     	bl	0x78c <gf_irq_num+0x18>
		000000000000078c:  R_AARCH64_CALL26	gpiod_to_irq
     790: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     794: d50323bf     	autiasp
     798: d65f03c0     	ret
     79c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1108
     7a0: 91000000     	add	x0, x0, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1108
     7a4: 94000000     	bl	0x7a4 <gf_irq_num+0x30>
		00000000000007a4:  R_AARCH64_CALL26	_printk
     7a8: 12800240     	mov	w0, #-0x13              // =-19
     7ac: 17fffff9     	b	0x790 <gf_irq_num+0x1c>
