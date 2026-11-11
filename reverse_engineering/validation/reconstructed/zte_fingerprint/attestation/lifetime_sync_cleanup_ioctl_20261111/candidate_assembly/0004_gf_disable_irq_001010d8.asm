
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011e0 <gf_disable_irq>:
    11e0: d503233f     	paciasp
    11e4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    11e8: 910003fd     	mov	x29, sp
    11ec: b9404c08     	ldr	w8, [x0, #0x4c]
    11f0: 34000108     	cbz	w8, 0x1210 <gf_disable_irq+0x30>
    11f4: b9404808     	ldr	w8, [x0, #0x48]
    11f8: b9004c1f     	str	wzr, [x0, #0x4c]
    11fc: 2a0803e0     	mov	w0, w8
    1200: 94000000     	bl	0x1200 <gf_disable_irq+0x20>
		0000000000001200:  R_AARCH64_CALL26	disable_irq
    1204: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1208: d50323bf     	autiasp
    120c: d65f03c0     	ret
    1210: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    1214: 91000000     	add	x0, x0, #0x0
		0000000000001214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    1218: 94000000     	bl	0x1218 <gf_disable_irq+0x38>
		0000000000001218:  R_AARCH64_CALL26	_printk
    121c: 17fffffa     	b	0x1204 <gf_disable_irq+0x24>
