
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005b64 <aw8693x_creat_node>:
    5b64: d503233f     	paciasp
    5b68: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5b6c: f9000bf3     	str	x19, [sp, #0x10]
    5b70: 910003fd     	mov	x29, sp
    5b74: f9407c00     	ldr	x0, [x0, #0xf8]
    5b78: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005b78:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
    5b7c: 91000021     	add	x1, x1, #0x0
		0000000000005b7c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
    5b80: 94000000     	bl	0x5b80 <aw8693x_creat_node+0x1c>
		0000000000005b80:  R_AARCH64_CALL26	sysfs_create_group
    5b84: 37f800c0     	tbnz	w0, #0x1f, 0x5b9c <aw8693x_creat_node+0x38>
    5b88: 2a1f03e0     	mov	w0, wzr
    5b8c: f9400bf3     	ldr	x19, [sp, #0x10]
    5b90: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5b94: d50323bf     	autiasp
    5b98: d65f03c0     	ret
    5b9c: 90000008     	adrp	x8, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x902
    5ba0: 91000108     	add	x8, x8, #0x0
		0000000000005ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x902
    5ba4: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5ba8: 91000021     	add	x1, x1, #0x0
		0000000000005ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5bac: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62c
    5bb0: 91000063     	add	x3, x3, #0x0
		0000000000005bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62c
    5bb4: 2a0003f3     	mov	w19, w0
    5bb8: aa0803e0     	mov	x0, x8
    5bbc: 52812342     	mov	w2, #0x91a              // =2330
    5bc0: 94000000     	bl	0x5bc0 <aw8693x_creat_node+0x5c>
		0000000000005bc0:  R_AARCH64_CALL26	_printk
    5bc4: 2a1303e0     	mov	w0, w19
    5bc8: 17fffff1     	b	0x5b8c <aw8693x_creat_node+0x28>
