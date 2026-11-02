
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004c04 <get_aw22xxx_id>:
    4c04: d503233f     	paciasp
    4c08: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    4c0c: f9000bf5     	str	x21, [sp, #0x10]
    4c10: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4c14: 910003fd     	mov	x29, sp
    4c18: f9000fbf     	str	xzr, [x29, #0x18]
    4c1c: aa1f03e0     	mov	x0, xzr
    4c20: f9400068     	ldr	x8, [x3]
    4c24: b40000c8     	cbz	x8, 0x4c3c <get_aw22xxx_id+0x38>
    4c28: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4c2c: f9400bf5     	ldr	x21, [sp, #0x10]
    4c30: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    4c34: d50323bf     	autiasp
    4c38: d65f03c0     	ret
    4c3c: aa0103f3     	mov	x19, x1
    4c40: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    4c44: 91000000     	add	x0, x0, #0x0
		0000000000004c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    4c48: 90000001     	adrp	x1, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f3
    4c4c: 91000021     	add	x1, x1, #0x0
		0000000000004c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f3
    4c50: aa0203f4     	mov	x20, x2
    4c54: aa0303f5     	mov	x21, x3
    4c58: 94000000     	bl	0x4c58 <get_aw22xxx_id+0x54>
		0000000000004c58:  R_AARCH64_CALL26	_printk
    4c5c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004c5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    4c60: 91000000     	add	x0, x0, #0x0
		0000000000004c60:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    4c64: 52800401     	mov	w1, #0x20               // =32
    4c68: 94000000     	bl	0x4c68 <get_aw22xxx_id+0x64>
		0000000000004c68:  R_AARCH64_CALL26	strnlen
    4c6c: aa0003e4     	mov	x4, x0
    4c70: f100841f     	cmp	x0, #0x21
    4c74: 54000202     	b.hs	0x4cb4 <get_aw22xxx_id+0xb0>
    4c78: f9000fa4     	str	x4, [x29, #0x18]
    4c7c: f9400fa8     	ldr	x8, [x29, #0x18]
    4c80: f100851f     	cmp	x8, #0x21
    4c84: 54000102     	b.hs	0x4ca4 <get_aw22xxx_id+0xa0>
    4c88: aa1503e2     	mov	x2, x21
    4c8c: aa1403e1     	mov	x1, x20
    4c90: aa1303e0     	mov	x0, x19
    4c94: 90000003     	adrp	x3, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004c94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
    4c98: 91000063     	add	x3, x3, #0x0
		0000000000004c98:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x10
    4c9c: 94000000     	bl	0x4c9c <get_aw22xxx_id+0x98>
		0000000000004c9c:  R_AARCH64_CALL26	simple_read_from_buffer
    4ca0: 17ffffe2     	b	0x4c28 <get_aw22xxx_id+0x24>
    4ca4: f9400fa2     	ldr	x2, [x29, #0x18]
    4ca8: 52800080     	mov	w0, #0x4                // =4
    4cac: 52800401     	mov	w1, #0x20               // =32
    4cb0: 94000000     	bl	0x4cb0 <get_aw22xxx_id+0xac>
		0000000000004cb0:  R_AARCH64_CALL26	__fortify_panic
    4cb4: 91000482     	add	x2, x4, #0x1
    4cb8: 52800040     	mov	w0, #0x2                // =2
    4cbc: 52800401     	mov	w1, #0x20               // =32
    4cc0: 94000000     	bl	0x4cc0 <get_aw22xxx_id+0xbc>
		0000000000004cc0:  R_AARCH64_CALL26	__fortify_panic
