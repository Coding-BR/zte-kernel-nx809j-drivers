
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a4b4 <aw9620x_irq>:
    a4b4: d503233f     	paciasp
    a4b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a4bc: 910003fd     	mov	x29, sp
    a4c0: aa0103e0     	mov	x0, x1
    a4c4: 94000000     	bl	0xa4c4 <aw9620x_irq+0x10>
		000000000000a4c4:  R_AARCH64_CALL26	aw9620x_irq_handle_func
    a4c8: 52800020     	mov	w0, #0x1                // =1
    a4cc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a4d0: d50323bf     	autiasp
    a4d4: d65f03c0     	ret
