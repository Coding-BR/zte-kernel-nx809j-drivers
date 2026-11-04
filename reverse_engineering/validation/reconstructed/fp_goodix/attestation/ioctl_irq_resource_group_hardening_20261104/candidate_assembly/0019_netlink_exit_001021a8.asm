
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014d4 <netlink_exit>:
    14d4: d503233f     	paciasp
    14d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    14dc: f9000bf3     	str	x19, [sp, #0x10]
    14e0: 910003fd     	mov	x29, sp
    14e4: 90000013     	adrp	x19, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000014e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x208
    14e8: f9400260     	ldr	x0, [x19]
		00000000000014e8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x208
    14ec: b4000060     	cbz	x0, 0x14f8 <netlink_exit+0x24>
    14f0: 94000000     	bl	0x14f0 <netlink_exit+0x1c>
		00000000000014f0:  R_AARCH64_CALL26	netlink_kernel_release
    14f4: f900027f     	str	xzr, [x19]
		00000000000014f4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x208
    14f8: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		00000000000014f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd7
    14fc: 91000000     	add	x0, x0, #0x0
		00000000000014fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd7
    1500: 94000000     	bl	0x1500 <netlink_exit+0x2c>
		0000000000001500:  R_AARCH64_CALL26	_printk
    1504: f9400bf3     	ldr	x19, [sp, #0x10]
    1508: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    150c: d50323bf     	autiasp
    1510: d65f03c0     	ret
