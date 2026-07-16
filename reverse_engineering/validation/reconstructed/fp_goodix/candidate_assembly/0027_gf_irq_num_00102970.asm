
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002144 <gf_irq_num>:
    2144: d503233f     	paciasp
    2148: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    214c: 910003fd     	mov	x29, sp
    2150: b40000e0     	cbz	x0, 0x216c <gf_irq_num+0x28>
    2154: b9403c00     	ldr	w0, [x0, #0x3c]
    2158: 94000000     	bl	0x2158 <gf_irq_num+0x14>
		0000000000002158:  R_AARCH64_CALL26	gpio_to_desc
    215c: 94000000     	bl	0x215c <gf_irq_num+0x18>
		000000000000215c:  R_AARCH64_CALL26	gpiod_to_irq
    2160: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2164: d50323bf     	autiasp
    2168: d65f03c0     	ret
    216c: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x1c>
		000000000000216c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xec8
    2170: 91000000     	add	x0, x0, #0x0
		0000000000002170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xec8
    2174: 94000000     	bl	0x2174 <gf_irq_num+0x30>
		0000000000002174:  R_AARCH64_CALL26	_printk
    2178: 12800240     	mov	w0, #-0x13              // =-19
    217c: 17fffff9     	b	0x2160 <gf_irq_num+0x1c>
