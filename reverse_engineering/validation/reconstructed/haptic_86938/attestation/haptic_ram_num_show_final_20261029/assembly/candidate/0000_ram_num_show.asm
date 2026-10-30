
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002c58 <ram_num_show>:
    2c58: d503233f     	paciasp
    2c5c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2c60: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2c64: 910003fd     	mov	x29, sp
    2c68: f9404c14     	ldr	x20, [x0, #0x98]
    2c6c: aa0203f3     	mov	x19, x2
    2c70: d102a280     	sub	x0, x20, #0xa8
    2c74: 94000000     	bl	0x2c74 <ram_num_show+0x1c>
		0000000000002c74:  R_AARCH64_CALL26	get_ram_num
    2c78: 394ed283     	ldrb	w3, [x20, #0x3b4]
    2c7c: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd
    2c80: 91000042     	add	x2, x2, #0x0
		0000000000002c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd
    2c84: aa1303e0     	mov	x0, x19
    2c88: 52820001     	mov	w1, #0x1000             // =4096
    2c8c: 94000000     	bl	0x2c8c <ram_num_show+0x34>
		0000000000002c8c:  R_AARCH64_CALL26	snprintf
    2c90: 93407c00     	sxtw	x0, w0
    2c94: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2c98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2c9c: d50323bf     	autiasp
    2ca0: d65f03c0     	ret
