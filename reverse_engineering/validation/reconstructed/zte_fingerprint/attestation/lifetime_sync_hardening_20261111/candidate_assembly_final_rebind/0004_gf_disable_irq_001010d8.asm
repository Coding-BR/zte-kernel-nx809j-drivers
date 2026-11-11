
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001200 <gf_disable_irq>:
    1200: d503233f     	paciasp
    1204: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1208: 910003fd     	mov	x29, sp
    120c: b9404c08     	ldr	w8, [x0, #0x4c]
    1210: 34000108     	cbz	w8, 0x1230 <gf_disable_irq+0x30>
    1214: b9404808     	ldr	w8, [x0, #0x48]
    1218: b9004c1f     	str	wzr, [x0, #0x4c]
    121c: 2a0803e0     	mov	w0, w8
    1220: 94000000     	bl	0x1220 <gf_disable_irq+0x20>
		0000000000001220:  R_AARCH64_CALL26	disable_irq
    1224: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1228: d50323bf     	autiasp
    122c: d65f03c0     	ret
    1230: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e4
    1234: 91000000     	add	x0, x0, #0x0
		0000000000001234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e4
    1238: 94000000     	bl	0x1238 <gf_disable_irq+0x38>
		0000000000001238:  R_AARCH64_CALL26	_printk
    123c: 17fffffa     	b	0x1224 <gf_disable_irq+0x24>
