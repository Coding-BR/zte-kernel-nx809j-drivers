
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001214 <gf_disable_irq>:
    1214: d503233f     	paciasp
    1218: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    121c: 910003fd     	mov	x29, sp
    1220: b9404c08     	ldr	w8, [x0, #0x4c]
    1224: 34000108     	cbz	w8, 0x1244 <gf_disable_irq+0x30>
    1228: b9404808     	ldr	w8, [x0, #0x48]
    122c: b9004c1f     	str	wzr, [x0, #0x4c]
    1230: 2a0803e0     	mov	w0, w8
    1234: 94000000     	bl	0x1234 <gf_disable_irq+0x20>
		0000000000001234:  R_AARCH64_CALL26	disable_irq
    1238: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    123c: d50323bf     	autiasp
    1240: d65f03c0     	ret
    1244: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e4
    1248: 91000000     	add	x0, x0, #0x0
		0000000000001248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e4
    124c: 94000000     	bl	0x124c <gf_disable_irq+0x38>
		000000000000124c:  R_AARCH64_CALL26	_printk
    1250: 17fffffa     	b	0x1238 <gf_disable_irq+0x24>
