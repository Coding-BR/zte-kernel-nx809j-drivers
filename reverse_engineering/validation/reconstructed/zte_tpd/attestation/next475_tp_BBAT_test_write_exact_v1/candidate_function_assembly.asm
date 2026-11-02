
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253f8 <tp_BBAT_test_write>:
   253f8: d503233f     	paciasp
   253fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25400: f9000bf3     	str	x19, [sp, #0x10]
   25404: 910003fd     	mov	x29, sp
   25408: 90000000     	adrp	x0, 0x25000 <ghost_debug_read+0x224>
		0000000000025408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a950
   2540c: 91000000     	add	x0, x0, #0x0
		000000000002540c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a950
   25410: aa0203f3     	mov	x19, x2
   25414: 94000000     	bl	0x25414 <tp_BBAT_test_write+0x1c>
		0000000000025414:  R_AARCH64_CALL26	_printk
   25418: aa1303e0     	mov	x0, x19
   2541c: f9400bf3     	ldr	x19, [sp, #0x10]
   25420: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25424: d50323bf     	autiasp
   25428: d65f03c0     	ret
