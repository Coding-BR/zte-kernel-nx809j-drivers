
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ea0 <aw9620x_update_fw_to_flash>:
    1ea0: d503233f     	paciasp
    1ea4: d10183ff     	sub	sp, sp, #0x60
    1ea8: a9047bfd     	stp	x29, x30, [sp, #0x40]
    1eac: f9002bf3     	str	x19, [sp, #0x50]
    1eb0: 910103fd     	add	x29, sp, #0x40
    1eb4: d5384108     	mrs	x8, SP_EL0
    1eb8: d287ff09     	mov	x9, #0x3ff8             // =16376
    1ebc: 2a0203e5     	mov	w5, w2
    1ec0: f9438908     	ldr	x8, [x8, #0x710]
    1ec4: f2c7ff89     	movk	x9, #0x3ffc, lsl #32
    1ec8: aa0003f3     	mov	x19, x0
    1ecc: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f8
    1ed0: 91000063     	add	x3, x3, #0x0
		0000000000001ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f8
    1ed4: 5280c784     	mov	w4, #0x63c              // =1596
    1ed8: f81f83a8     	stur	x8, [x29, #-0x8]
    1edc: d286ff08     	mov	x8, #0x37f8             // =14328
    1ee0: f2c10008     	movk	x8, #0x800, lsl #32
    1ee4: f9000be1     	str	x1, [sp, #0x10]
    1ee8: f9401801     	ldr	x1, [x0, #0x30]
    1eec: a93ea7a8     	stp	x8, x9, [x29, #-0x18]
    1ef0: 52800028     	mov	w8, #0x1                // =1
    1ef4: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    1ef8: 91000000     	add	x0, x0, #0x0
		0000000000001ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    1efc: 390023e8     	strb	w8, [sp, #0x8]
    1f00: 52840008     	mov	w8, #0x2000             // =8192
    1f04: 290323e2     	stp	w2, w8, [sp, #0x18]
    1f08: d10063a8     	sub	x8, x29, #0x18
    1f0c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12fc
    1f10: 91000042     	add	x2, x2, #0x0
		0000000000001f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12fc
    1f14: b80093ff     	stur	wzr, [sp, #0x9]
    1f18: b9000fff     	str	wzr, [sp, #0xc]
    1f1c: f90013e8     	str	x8, [sp, #0x20]
    1f20: 94000000     	bl	0x1f20 <aw9620x_update_fw_to_flash+0x80>
		0000000000001f20:  R_AARCH64_CALL26	_dev_printk
    1f24: 910023e1     	add	x1, sp, #0x8
    1f28: aa1303e0     	mov	x0, x19
    1f2c: 94000000     	bl	0x1f2c <aw9620x_update_fw_to_flash+0x8c>
		0000000000001f2c:  R_AARCH64_CALL26	aw9620x_flash_update
    1f30: d5384108     	mrs	x8, SP_EL0
    1f34: f9438908     	ldr	x8, [x8, #0x710]
    1f38: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f3c: eb09011f     	cmp	x8, x9
    1f40: 540000c1     	b.ne	0x1f58 <aw9620x_update_fw_to_flash+0xb8>
    1f44: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    1f48: f9402bf3     	ldr	x19, [sp, #0x50]
    1f4c: 910183ff     	add	sp, sp, #0x60
    1f50: d50323bf     	autiasp
    1f54: d65f03c0     	ret
    1f58: 94000000     	bl	0x1f58 <aw9620x_update_fw_to_flash+0xb8>
		0000000000001f58:  R_AARCH64_CALL26	__stack_chk_fail
