
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000be6c <syna_dev_shutdown>:
    be6c: d503233f     	paciasp
    be70: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    be74: 910003fd     	mov	x29, sp
    be78: 97ffffaf     	bl	0xbd34 <syna_dev_remove>
    be7c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    be80: d50323bf     	autiasp
    be84: d65f03c0     	ret
