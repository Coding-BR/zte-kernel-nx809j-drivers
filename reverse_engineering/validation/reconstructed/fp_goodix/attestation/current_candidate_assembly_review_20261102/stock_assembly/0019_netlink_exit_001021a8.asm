
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001988 <netlink_exit>:
    1988: d503233f     	paciasp
    198c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1990: f9000bf3     	str	x19, [sp, #0x10]
    1994: 910003fd     	mov	x29, sp
    1998: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    199c: f9400260     	ldr	x0, [x19]
		000000000000199c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    19a0: b4000060     	cbz	x0, 0x19ac <netlink_exit+0x24>
    19a4: 94000000     	bl	0x19a4 <netlink_exit+0x1c>
		00000000000019a4:  R_AARCH64_CALL26	netlink_kernel_release
    19a8: f900027f     	str	xzr, [x19]
		00000000000019a8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    19ac: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd7b
    19b0: 91000000     	add	x0, x0, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd7b
    19b4: 94000000     	bl	0x19b4 <netlink_exit+0x2c>
		00000000000019b4:  R_AARCH64_CALL26	_printk
    19b8: f9400bf3     	ldr	x19, [sp, #0x10]
    19bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    19c0: d50323bf     	autiasp
    19c4: d65f03c0     	ret
