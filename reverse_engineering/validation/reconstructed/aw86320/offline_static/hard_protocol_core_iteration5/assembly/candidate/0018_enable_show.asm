
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c38 <enable_show>:
    1c38: d503233f     	paciasp
    1c3c: d10183ff     	sub	sp, sp, #0x60
    1c40: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1c44: a90457f6     	stp	x22, x21, [sp, #0x40]
    1c48: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1c4c: 9100c3fd     	add	x29, sp, #0x30
    1c50: d5384108     	mrs	x8, SP_EL0
    1c54: aa1f03e0     	mov	x0, xzr
    1c58: f9438908     	ldr	x8, [x8, #0x710]
    1c5c: f81f83a8     	stur	x8, [x29, #-0x8]
    1c60: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001c60:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    1c64: f9400069     	ldr	x9, [x3]
    1c68: f9400116     	ldr	x22, [x8]
		0000000000001c68:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    1c6c: f801e3ff     	stur	xzr, [sp, #0x1e]
    1c70: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    1c74: f90007ff     	str	xzr, [sp, #0x8]
    1c78: b4000189     	cbz	x9, 0x1ca8 <enable_show+0x70>
    1c7c: d5384108     	mrs	x8, SP_EL0
    1c80: f9438908     	ldr	x8, [x8, #0x710]
    1c84: f85f83a9     	ldur	x9, [x29, #-0x8]
    1c88: eb09011f     	cmp	x8, x9
    1c8c: 54000441     	b.ne	0x1d14 <enable_show+0xdc>
    1c90: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1c94: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1c98: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1c9c: 910183ff     	add	sp, sp, #0x60
    1ca0: d50323bf     	autiasp
    1ca4: d65f03c0     	ret
    1ca8: b94012c5     	ldr	w5, [x22, #0x10]
    1cac: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001cac:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1cb0: 91000108     	add	x8, x8, #0x0
		0000000000001cb0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1cb4: 90000004     	adrp	x4, 0x1000 <irq_handle+0x1c>
		0000000000001cb4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x9d5
    1cb8: 91000084     	add	x4, x4, #0x0
		0000000000001cb8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x9d5
    1cbc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001cbc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x623
    1cc0: 91000000     	add	x0, x0, #0x0
		0000000000001cc0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x623
    1cc4: aa0103f3     	mov	x19, x1
    1cc8: aa0803e1     	mov	x1, x8
    1ccc: aa0203f4     	mov	x20, x2
    1cd0: 52805ec2     	mov	w2, #0x2f6              // =758
    1cd4: aa0303f5     	mov	x21, x3
    1cd8: aa0403e3     	mov	x3, x4
    1cdc: 94000000     	bl	0x1cdc <enable_show+0xa4>
		0000000000001cdc:  R_AARCH64_CALL26	_printk
    1ce0: b94012c3     	ldr	w3, [x22, #0x10]
    1ce4: 90000002     	adrp	x2, 0x1000 <irq_handle+0x1c>
		0000000000001ce4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xac3
    1ce8: 91000042     	add	x2, x2, #0x0
		0000000000001ce8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xac3
    1cec: 910023e0     	add	x0, sp, #0x8
    1cf0: 528003c1     	mov	w1, #0x1e               // =30
    1cf4: 94000000     	bl	0x1cf4 <enable_show+0xbc>
		0000000000001cf4:  R_AARCH64_CALL26	snprintf
    1cf8: 93407c04     	sxtw	x4, w0
    1cfc: 910023e3     	add	x3, sp, #0x8
    1d00: aa1403e1     	mov	x1, x20
    1d04: aa1303e0     	mov	x0, x19
    1d08: aa1503e2     	mov	x2, x21
    1d0c: 94000000     	bl	0x1d0c <enable_show+0xd4>
		0000000000001d0c:  R_AARCH64_CALL26	simple_read_from_buffer
    1d10: 17ffffdb     	b	0x1c7c <enable_show+0x44>
    1d14: 94000000     	bl	0x1d14 <enable_show+0xdc>
		0000000000001d14:  R_AARCH64_CALL26	__stack_chk_fail
