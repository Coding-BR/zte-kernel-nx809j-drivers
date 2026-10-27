
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005bbc <aw9620x_get_err_info>:
    5bbc: d503233f     	paciasp
    5bc0: d10103ff     	sub	sp, sp, #0x40
    5bc4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5bc8: f9001bf3     	str	x19, [sp, #0x30]
    5bcc: 910083fd     	add	x29, sp, #0x20
    5bd0: d5384108     	mrs	x8, SP_EL0
    5bd4: 529fe401     	mov	w1, #0xff20             // =65312
    5bd8: aa0003f3     	mov	x19, x0
    5bdc: f9438908     	ldr	x8, [x8, #0x710]
    5be0: f81f83a8     	stur	x8, [x29, #-0x8]
    5be4: 529e0228     	mov	w8, #0xf011             // =61457
    5be8: 72a78008     	movk	w8, #0x3c00, lsl #16
    5bec: b81f43bf     	stur	wzr, [x29, #-0xc]
    5bf0: 32190102     	orr	w2, w8, #0x80
    5bf4: 2901ffff     	stp	wzr, wzr, [sp, #0xc]
    5bf8: 97ffef06     	bl	0x1810 <aw9620x_i2c_write>
    5bfc: d10033a2     	sub	x2, x29, #0xc
    5c00: aa1303e0     	mov	x0, x19
    5c04: 52838001     	mov	w1, #0x1c00             // =7168
    5c08: 97fff7be     	bl	0x3b00 <aw9620x_i2c_read>
    5c0c: 910033e2     	add	x2, sp, #0xc
    5c10: aa1303e0     	mov	x0, x19
    5c14: 5288e881     	mov	w1, #0x4744             // =18244
    5c18: 97fff7ba     	bl	0x3b00 <aw9620x_i2c_read>
    5c1c: 910043e2     	add	x2, sp, #0x10
    5c20: aa1303e0     	mov	x0, x19
    5c24: 52888881     	mov	w1, #0x4444             // =17476
    5c28: 97fff7b6     	bl	0x3b00 <aw9620x_i2c_read>
    5c2c: 29419fe6     	ldp	w6, w7, [sp, #0xc]
    5c30: f9401a61     	ldr	x1, [x19, #0x30]
    5c34: b85f43a5     	ldur	w5, [x29, #-0xc]
    5c38: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    5c3c: 91000000     	add	x0, x0, #0x0
		0000000000005c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5c40: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d67
    5c44: 91000042     	add	x2, x2, #0x0
		0000000000005c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d67
    5c48: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1916
    5c4c: 91000063     	add	x3, x3, #0x0
		0000000000005c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1916
    5c50: 52806ee4     	mov	w4, #0x377              // =887
    5c54: 94000000     	bl	0x5c54 <aw9620x_get_err_info+0x98>
		0000000000005c54:  R_AARCH64_CALL26	_dev_printk
    5c58: 529e0222     	mov	w2, #0xf011             // =61457
    5c5c: aa1303e0     	mov	x0, x19
    5c60: 529fe401     	mov	w1, #0xff20             // =65312
    5c64: 72a78002     	movk	w2, #0x3c00, lsl #16
    5c68: 97ffeeea     	bl	0x1810 <aw9620x_i2c_write>
    5c6c: d5384108     	mrs	x8, SP_EL0
    5c70: f9438908     	ldr	x8, [x8, #0x710]
    5c74: f85f83a9     	ldur	x9, [x29, #-0x8]
    5c78: eb09011f     	cmp	x8, x9
    5c7c: 540000c1     	b.ne	0x5c94 <aw9620x_get_err_info+0xd8>
    5c80: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5c84: f9401bf3     	ldr	x19, [sp, #0x30]
    5c88: 910103ff     	add	sp, sp, #0x40
    5c8c: d50323bf     	autiasp
    5c90: d65f03c0     	ret
    5c94: 94000000     	bl	0x5c94 <aw9620x_get_err_info+0xd8>
		0000000000005c94:  R_AARCH64_CALL26	__stack_chk_fail
