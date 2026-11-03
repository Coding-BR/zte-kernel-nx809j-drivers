
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b840 <syna_dev_probe_misc_register>:
    b840: d503233f     	paciasp
    b844: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b848: f9000bf3     	str	x19, [sp, #0x10]
    b84c: 910003fd     	mov	x29, sp
    b850: aa0003f3     	mov	x19, x0
    b854: 94000000     	bl	0xb854 <syna_dev_probe_misc_register+0x14>
		000000000000b854:  R_AARCH64_CALL26	misc_register
    b858: 340000e0     	cbz	w0, 0xb874 <syna_dev_probe_misc_register+0x34>
    b85c: f85c0268     	ldur	x8, [x19, #-0x40]
    b860: f81c027f     	stur	xzr, [x19, #-0x40]
    b864: 2a0003f3     	mov	w19, w0
    b868: aa0803e0     	mov	x0, x8
    b86c: 94000000     	bl	0xb86c <syna_dev_probe_misc_register+0x2c>
		000000000000b86c:  R_AARCH64_CALL26	kfree
    b870: 2a1303e0     	mov	w0, w19
    b874: f9400bf3     	ldr	x19, [sp, #0x10]
    b878: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b87c: d50323bf     	autiasp
    b880: d65f03c0     	ret
