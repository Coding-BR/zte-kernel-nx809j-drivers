
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001158 <on_interrupt_from>:
    1158: d503233f     	paciasp
    115c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1160: 910003fd     	mov	x29, sp
    1164: 91002020     	add	x0, x1, #0x8
    1168: 94000000     	bl	0x1168 <on_interrupt_from+0x10>
		0000000000001168:  R_AARCH64_CALL26	complete
    116c: 52800020     	mov	w0, #0x1                // =1
    1170: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1174: d50323bf     	autiasp
    1178: d65f03c0     	ret
