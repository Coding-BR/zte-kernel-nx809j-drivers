
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <on_interrupt_from>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: 91002020     	add	x0, x1, #0x8
      14: 94000000     	bl	0x14 <on_interrupt_from+0x10>
		0000000000000014:  R_AARCH64_CALL26	complete
      18: 52800020     	mov	w0, #0x1                // =1
      1c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      20: d50323bf     	autiasp
      24: d65f03c0     	ret
