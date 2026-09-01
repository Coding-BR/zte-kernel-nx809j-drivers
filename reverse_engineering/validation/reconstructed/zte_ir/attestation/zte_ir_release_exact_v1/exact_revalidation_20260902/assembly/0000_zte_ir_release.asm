
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000055c <zte_ir_release>:
     55c: d503233f     	paciasp
     560: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     564: a9014ff4     	stp	x20, x19, [sp, #0x10]
     568: 910003fd     	mov	x29, sp
     56c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000056c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     570: 91000294     	add	x20, x20, #0x0
		0000000000000570:  R_AARCH64_ADD_ABS_LO12_NC	.data
     574: aa0103f3     	mov	x19, x1
     578: aa1403e0     	mov	x0, x20
     57c: 94000000     	bl	0x57c <zte_ir_release+0x20>
		000000000000057c:  R_AARCH64_CALL26	mutex_lock
     580: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     584: 91000000     	add	x0, x0, #0x0
		0000000000000584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     588: f900127f     	str	xzr, [x19, #0x20]
     58c: 94000000     	bl	0x58c <zte_ir_release+0x30>
		000000000000058c:  R_AARCH64_CALL26	_printk
     590: aa1403e0     	mov	x0, x20
     594: 94000000     	bl	0x594 <zte_ir_release+0x38>
		0000000000000594:  R_AARCH64_CALL26	mutex_unlock
     598: 2a1f03e0     	mov	w0, wzr
     59c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     5a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     5a4: d50323bf     	autiasp
     5a8: d65f03c0     	ret
