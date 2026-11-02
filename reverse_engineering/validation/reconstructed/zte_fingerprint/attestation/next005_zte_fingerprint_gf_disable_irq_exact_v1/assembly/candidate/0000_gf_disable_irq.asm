
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000107c <gf_disable_irq>:
    107c: d503233f     	paciasp
    1080: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1084: 910003fd     	mov	x29, sp
    1088: b9404c08     	ldr	w8, [x0, #0x4c]
    108c: 34000108     	cbz	w8, 0x10ac <gf_disable_irq+0x30>
    1090: b9404808     	ldr	w8, [x0, #0x48]
    1094: b9004c1f     	str	wzr, [x0, #0x4c]
    1098: 2a0803e0     	mov	w0, w8
    109c: 94000000     	bl	0x109c <gf_disable_irq+0x20>
		000000000000109c:  R_AARCH64_CALL26	disable_irq
    10a0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    10a4: d50323bf     	autiasp
    10a8: d65f03c0     	ret
    10ac: 90000000     	adrp	x0, 0x1000 <gf_release+0xd4>
		00000000000010ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f1
    10b0: 91000000     	add	x0, x0, #0x0
		00000000000010b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f1
    10b4: 94000000     	bl	0x10b4 <gf_disable_irq+0x38>
		00000000000010b4:  R_AARCH64_CALL26	_printk
    10b8: 17fffffa     	b	0x10a0 <gf_disable_irq+0x24>
