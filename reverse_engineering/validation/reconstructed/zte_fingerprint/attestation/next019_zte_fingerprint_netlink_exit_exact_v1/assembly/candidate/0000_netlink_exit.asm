
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002b4 <netlink_exit>:
     2b4: d503233f     	paciasp
     2b8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     2bc: f9000bf3     	str	x19, [sp, #0x10]
     2c0: 910003fd     	mov	x29, sp
     2c4: 90000013     	adrp	x19, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2c8: f9400260     	ldr	x0, [x19]
		00000000000002c8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     2cc: b4000060     	cbz	x0, 0x2d8 <netlink_exit+0x24>
     2d0: 94000000     	bl	0x2d0 <netlink_exit+0x1c>
		00000000000002d0:  R_AARCH64_CALL26	netlink_kernel_release
     2d4: f900027f     	str	xzr, [x19]
		00000000000002d4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     2d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0e
     2dc: 91000000     	add	x0, x0, #0x0
		00000000000002dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0e
     2e0: 94000000     	bl	0x2e0 <netlink_exit+0x2c>
		00000000000002e0:  R_AARCH64_CALL26	_printk
     2e4: f9400bf3     	ldr	x19, [sp, #0x10]
     2e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     2ec: d50323bf     	autiasp
     2f0: d65f03c0     	ret
