
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002150 <gf_irq_num>:
    2150: d503233f     	paciasp
    2154: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2158: 910003fd     	mov	x29, sp
    215c: b40000e0     	cbz	x0, 0x2178 <gf_irq_num+0x28>
    2160: b9403c00     	ldr	w0, [x0, #0x3c]
    2164: 94000000     	bl	0x2164 <gf_irq_num+0x14>
		0000000000002164:  R_AARCH64_CALL26	gpio_to_desc
    2168: 94000000     	bl	0x2168 <gf_irq_num+0x18>
		0000000000002168:  R_AARCH64_CALL26	gpiod_to_irq
    216c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2170: d50323bf     	autiasp
    2174: d65f03c0     	ret
    2178: 90000000     	adrp	x0, 0x2000 <gf_power_off+0x10>
		0000000000002178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9f
    217c: 91000000     	add	x0, x0, #0x0
		000000000000217c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9f
    2180: 94000000     	bl	0x2180 <gf_irq_num+0x30>
		0000000000002180:  R_AARCH64_CALL26	_printk
    2184: 12800240     	mov	w0, #-0x13              // =-19
    2188: 17fffff9     	b	0x216c <gf_irq_num+0x1c>
