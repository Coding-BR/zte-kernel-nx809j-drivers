
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001778c <tp_test_write>:
   1778c: d503233f     	paciasp
   17790: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   17794: f9000bf3     	str	x19, [sp, #0x10]
   17798: 910003fd     	mov	x29, sp
   1779c: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		000000000001779c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d1c
   177a0: 91000000     	add	x0, x0, #0x0
		00000000000177a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d1c
   177a4: aa0203f3     	mov	x19, x2
   177a8: 94000000     	bl	0x177a8 <tp_test_write+0x1c>
		00000000000177a8:  R_AARCH64_CALL26	_printk
   177ac: aa1303e0     	mov	x0, x19
   177b0: f9400bf3     	ldr	x19, [sp, #0x10]
   177b4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   177b8: d50323bf     	autiasp
   177bc: d65f03c0     	ret
