
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016d0 <gf_irq_num>:
    16d0: d503233f     	paciasp
    16d4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    16d8: 910003fd     	mov	x29, sp
    16dc: b40000e0     	cbz	x0, 0x16f8 <gf_irq_num+0x28>
    16e0: b9403c00     	ldr	w0, [x0, #0x3c]
    16e4: 94000000     	bl	0x16e4 <gf_irq_num+0x14>
		00000000000016e4:  R_AARCH64_CALL26	gpio_to_desc
    16e8: 94000000     	bl	0x16e8 <gf_irq_num+0x18>
		00000000000016e8:  R_AARCH64_CALL26	gpiod_to_irq
    16ec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    16f0: d50323bf     	autiasp
    16f4: d65f03c0     	ret
    16f8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000016f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec8
    16fc: 91000000     	add	x0, x0, #0x0
		00000000000016fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec8
    1700: 94000000     	bl	0x1700 <gf_irq_num+0x30>
		0000000000001700:  R_AARCH64_CALL26	_printk
    1704: 12800240     	mov	w0, #-0x13              // =-19
    1708: 17fffff9     	b	0x16ec <gf_irq_num+0x1c>
