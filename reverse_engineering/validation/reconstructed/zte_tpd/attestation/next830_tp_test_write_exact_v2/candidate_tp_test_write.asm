
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253dc <tp_test_write>:
   253dc: d503233f     	paciasp
   253e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   253e4: f9000bf3     	str	x19, [sp, #0x10]
   253e8: 910003fd     	mov	x29, sp
   253ec: 90000000     	adrp	x0, 0x25000 <ghost_debug_write+0x30>
		00000000000253ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a94c
   253f0: 91000000     	add	x0, x0, #0x0
		00000000000253f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a94c
   253f4: aa0203f3     	mov	x19, x2
   253f8: 94000000     	bl	0x253f8 <tp_test_write+0x1c>
		00000000000253f8:  R_AARCH64_CALL26	_printk
   253fc: aa1303e0     	mov	x0, x19
   25400: f9400bf3     	ldr	x19, [sp, #0x10]
   25404: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25408: d50323bf     	autiasp
   2540c: d65f03c0     	ret
