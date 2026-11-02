
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005b34 <aw8693x_creat_node>:
    5b34: d503233f     	paciasp
    5b38: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5b3c: f9000bf3     	str	x19, [sp, #0x10]
    5b40: 910003fd     	mov	x29, sp
    5b44: f9407c00     	ldr	x0, [x0, #0xf8]
    5b48: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005b48:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2a0
    5b4c: 91000021     	add	x1, x1, #0x0
		0000000000005b4c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2a0
    5b50: 94000000     	bl	0x5b50 <aw8693x_creat_node+0x1c>
		0000000000005b50:  R_AARCH64_CALL26	sysfs_create_group
    5b54: 37f800c0     	tbnz	w0, #0x1f, 0x5b6c <aw8693x_creat_node+0x38>
    5b58: 2a1f03e0     	mov	w0, wzr
    5b5c: f9400bf3     	ldr	x19, [sp, #0x10]
    5b60: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5b64: d50323bf     	autiasp
    5b68: d65f03c0     	ret
    5b6c: 90000008     	adrp	x8, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd7d
    5b70: 91000108     	add	x8, x8, #0x0
		0000000000005b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd7d
    5b74: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5b78: 91000021     	add	x1, x1, #0x0
		0000000000005b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5b7c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90d
    5b80: 91000063     	add	x3, x3, #0x0
		0000000000005b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90d
    5b84: 2a0003f3     	mov	w19, w0
    5b88: aa0803e0     	mov	x0, x8
    5b8c: 52812342     	mov	w2, #0x91a              // =2330
    5b90: 94000000     	bl	0x5b90 <aw8693x_creat_node+0x5c>
		0000000000005b90:  R_AARCH64_CALL26	_printk
    5b94: 2a1303e0     	mov	w0, w19
    5b98: 17fffff1     	b	0x5b5c <aw8693x_creat_node+0x28>
