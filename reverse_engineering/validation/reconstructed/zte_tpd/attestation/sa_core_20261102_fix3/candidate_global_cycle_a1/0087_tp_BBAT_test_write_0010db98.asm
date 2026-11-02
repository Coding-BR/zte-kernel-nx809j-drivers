
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017648 <tp_BBAT_test_write>:
   17648: d503233f     	paciasp
   1764c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   17650: f9000bf3     	str	x19, [sp, #0x10]
   17654: 910003fd     	mov	x29, sp
   17658: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d1c
   1765c: 91000000     	add	x0, x0, #0x0
		000000000001765c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d1c
   17660: aa0203f3     	mov	x19, x2
   17664: 94000000     	bl	0x17664 <tp_BBAT_test_write+0x1c>
		0000000000017664:  R_AARCH64_CALL26	_printk
   17668: aa1303e0     	mov	x0, x19
   1766c: f9400bf3     	ldr	x19, [sp, #0x10]
   17670: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   17674: d50323bf     	autiasp
   17678: d65f03c0     	ret
