
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000197c <netlink_exit>:
    197c: d503233f     	paciasp
    1980: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1984: f9000bf3     	str	x19, [sp, #0x10]
    1988: 910003fd     	mov	x29, sp
    198c: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		000000000000198c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1990: f9400260     	ldr	x0, [x19]
		0000000000001990:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1994: b4000060     	cbz	x0, 0x19a0 <netlink_exit+0x24>
    1998: 94000000     	bl	0x1998 <netlink_exit+0x1c>
		0000000000001998:  R_AARCH64_CALL26	netlink_kernel_release
    199c: f900027f     	str	xzr, [x19]
		000000000000199c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    19a0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000019a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd7b
    19a4: 91000000     	add	x0, x0, #0x0
		00000000000019a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd7b
    19a8: 94000000     	bl	0x19a8 <netlink_exit+0x2c>
		00000000000019a8:  R_AARCH64_CALL26	_printk
    19ac: f9400bf3     	ldr	x19, [sp, #0x10]
    19b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    19b4: d50323bf     	autiasp
    19b8: d65f03c0     	ret
