
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016d4 <gf_irq_num>:
    16d4: d503233f     	paciasp
    16d8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    16dc: 910003fd     	mov	x29, sp
    16e0: b40000e0     	cbz	x0, 0x16fc <gf_irq_num+0x28>
    16e4: b9403c00     	ldr	w0, [x0, #0x3c]
    16e8: 94000000     	bl	0x16e8 <gf_irq_num+0x14>
		00000000000016e8:  R_AARCH64_CALL26	gpio_to_desc
    16ec: 94000000     	bl	0x16ec <gf_irq_num+0x18>
		00000000000016ec:  R_AARCH64_CALL26	gpiod_to_irq
    16f0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    16f4: d50323bf     	autiasp
    16f8: d65f03c0     	ret
    16fc: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000016fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec8
    1700: 91000000     	add	x0, x0, #0x0
		0000000000001700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec8
    1704: 94000000     	bl	0x1704 <gf_irq_num+0x30>
		0000000000001704:  R_AARCH64_CALL26	_printk
    1708: 12800240     	mov	w0, #-0x13              // =-19
    170c: 17fffff9     	b	0x16f0 <gf_irq_num+0x1c>
