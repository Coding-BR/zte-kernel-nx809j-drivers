
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007454 <tp_test_write>:
    7454: d503233f     	paciasp
    7458: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    745c: f9000bf3     	str	x19, [sp, #0x10]
    7460: 910003fd     	mov	x29, sp
    7464: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ae8
    7468: 91000000     	add	x0, x0, #0x0
		0000000000007468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ae8
    746c: aa0203f3     	mov	x19, x2
    7470: 94000000     	bl	0x7470 <tp_test_write+0x1c>
		0000000000007470:  R_AARCH64_CALL26	_printk
    7474: aa1303e0     	mov	x0, x19
    7478: f9400bf3     	ldr	x19, [sp, #0x10]
    747c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7480: d50323bf     	autiasp
    7484: d65f03c0     	ret
