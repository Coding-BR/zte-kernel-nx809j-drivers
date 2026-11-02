
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000073c <gf_irq_num>:
     73c: d503233f     	paciasp
     740: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     744: 910003fd     	mov	x29, sp
     748: b40000e0     	cbz	x0, 0x764 <gf_irq_num+0x28>
     74c: b9403c00     	ldr	w0, [x0, #0x3c]
     750: 94000000     	bl	0x750 <gf_irq_num+0x14>
		0000000000000750:  R_AARCH64_CALL26	gpio_to_desc
     754: 94000000     	bl	0x754 <gf_irq_num+0x18>
		0000000000000754:  R_AARCH64_CALL26	gpiod_to_irq
     758: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     75c: d50323bf     	autiasp
     760: d65f03c0     	ret
     764: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10b0
     768: 91000000     	add	x0, x0, #0x0
		0000000000000768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10b0
     76c: 94000000     	bl	0x76c <gf_irq_num+0x30>
		000000000000076c:  R_AARCH64_CALL26	_printk
     770: 12800240     	mov	w0, #-0x13              // =-19
     774: 17fffff9     	b	0x758 <gf_irq_num+0x1c>
