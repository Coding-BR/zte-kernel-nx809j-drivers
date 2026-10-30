
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007310 <tp_BBAT_test_write>:
    7310: d503233f     	paciasp
    7314: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7318: f9000bf3     	str	x19, [sp, #0x10]
    731c: 910003fd     	mov	x29, sp
    7320: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ae8
    7324: 91000000     	add	x0, x0, #0x0
		0000000000007324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ae8
    7328: aa0203f3     	mov	x19, x2
    732c: 94000000     	bl	0x732c <tp_BBAT_test_write+0x1c>
		000000000000732c:  R_AARCH64_CALL26	_printk
    7330: aa1303e0     	mov	x0, x19
    7334: f9400bf3     	ldr	x19, [sp, #0x10]
    7338: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    733c: d50323bf     	autiasp
    7340: d65f03c0     	ret
