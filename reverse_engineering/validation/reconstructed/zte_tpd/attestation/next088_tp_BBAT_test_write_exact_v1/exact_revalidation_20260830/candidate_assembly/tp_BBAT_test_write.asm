
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000175ec <tp_BBAT_test_write>:
   175ec: d503233f     	paciasp
   175f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   175f4: f9000bf3     	str	x19, [sp, #0x10]
   175f8: 910003fd     	mov	x29, sp
   175fc: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000175fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d1c
   17600: 91000000     	add	x0, x0, #0x0
		0000000000017600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d1c
   17604: aa0203f3     	mov	x19, x2
   17608: 94000000     	bl	0x17608 <tp_BBAT_test_write+0x1c>
		0000000000017608:  R_AARCH64_CALL26	_printk
   1760c: aa1303e0     	mov	x0, x19
   17610: f9400bf3     	ldr	x19, [sp, #0x10]
   17614: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   17618: d50323bf     	autiasp
   1761c: d65f03c0     	ret
