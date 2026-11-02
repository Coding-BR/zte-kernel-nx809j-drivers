
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000124c <netlink_exit>:
    124c: d503233f     	paciasp
    1250: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1254: f9000bf3     	str	x19, [sp, #0x10]
    1258: 910003fd     	mov	x29, sp
    125c: 90000013     	adrp	x19, 0x1000 <sendnlmsg+0x40>
		000000000000125c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1260: f9400260     	ldr	x0, [x19]
		0000000000001260:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1264: b4000060     	cbz	x0, 0x1270 <netlink_exit+0x24>
    1268: 94000000     	bl	0x1268 <netlink_exit+0x1c>
		0000000000001268:  R_AARCH64_CALL26	netlink_kernel_release
    126c: f900027f     	str	xzr, [x19]
		000000000000126c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1270: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd7b
    1274: 91000000     	add	x0, x0, #0x0
		0000000000001274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd7b
    1278: 94000000     	bl	0x1278 <netlink_exit+0x2c>
		0000000000001278:  R_AARCH64_CALL26	_printk
    127c: f9400bf3     	ldr	x19, [sp, #0x10]
    1280: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1284: d50323bf     	autiasp
    1288: d65f03c0     	ret
