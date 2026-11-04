
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001248 <netlink_exit>:
    1248: d503233f     	paciasp
    124c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1250: f9000bf3     	str	x19, [sp, #0x10]
    1254: 910003fd     	mov	x29, sp
    1258: 90000013     	adrp	x19, 0x1000 <sendnlmsg+0x44>
		0000000000001258:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    125c: f9400260     	ldr	x0, [x19]
		000000000000125c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1260: b4000060     	cbz	x0, 0x126c <netlink_exit+0x24>
    1264: 94000000     	bl	0x1264 <netlink_exit+0x1c>
		0000000000001264:  R_AARCH64_CALL26	netlink_kernel_release
    1268: f900027f     	str	xzr, [x19]
		0000000000001268:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    126c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		000000000000126c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd7b
    1270: 91000000     	add	x0, x0, #0x0
		0000000000001270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd7b
    1274: 94000000     	bl	0x1274 <netlink_exit+0x2c>
		0000000000001274:  R_AARCH64_CALL26	_printk
    1278: f9400bf3     	ldr	x19, [sp, #0x10]
    127c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1280: d50323bf     	autiasp
    1284: d65f03c0     	ret
