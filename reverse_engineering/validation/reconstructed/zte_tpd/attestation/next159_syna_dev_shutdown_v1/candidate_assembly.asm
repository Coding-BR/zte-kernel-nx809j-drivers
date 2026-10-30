
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a9e8 <syna_dev_shutdown>:
    a9e8: d503233f     	paciasp
    a9ec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a9f0: 910003fd     	mov	x29, sp
    a9f4: 94000000     	bl	0xa9f4 <syna_dev_shutdown+0xc>
		000000000000a9f4:  R_AARCH64_CALL26	syna_dev_remove
    a9f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a9fc: d50323bf     	autiasp
    aa00: d65f03c0     	ret
