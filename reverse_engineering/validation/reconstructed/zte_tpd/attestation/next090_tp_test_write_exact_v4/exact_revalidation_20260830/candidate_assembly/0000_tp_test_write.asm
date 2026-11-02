
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017730 <tp_test_write>:
   17730: d503233f     	paciasp
   17734: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   17738: f9000bf3     	str	x19, [sp, #0x10]
   1773c: 910003fd     	mov	x29, sp
   17740: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d1c
   17744: 91000000     	add	x0, x0, #0x0
		0000000000017744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d1c
   17748: aa0203f3     	mov	x19, x2
   1774c: 94000000     	bl	0x1774c <tp_test_write+0x1c>
		000000000001774c:  R_AARCH64_CALL26	_printk
   17750: aa1303e0     	mov	x0, x19
   17754: f9400bf3     	ldr	x19, [sp, #0x10]
   17758: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1775c: d50323bf     	autiasp
   17760: d65f03c0     	ret
