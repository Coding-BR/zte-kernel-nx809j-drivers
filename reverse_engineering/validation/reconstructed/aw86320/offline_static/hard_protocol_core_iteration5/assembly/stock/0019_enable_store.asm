
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d1c <enable_store>:
    1d1c: d503233f     	paciasp
    1d20: d10143ff     	sub	sp, sp, #0x50
    1d24: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1d28: f9001bf5     	str	x21, [sp, #0x30]
    1d2c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1d30: 910083fd     	add	x29, sp, #0x20
    1d34: d5384108     	mrs	x8, SP_EL0
    1d38: aa0103f5     	mov	x21, x1
    1d3c: 910023e0     	add	x0, sp, #0x8
    1d40: f9438908     	ldr	x8, [x8, #0x710]
    1d44: f100245f     	cmp	x2, #0x9
    1d48: f81f83a8     	stur	x8, [x29, #-0x8]
    1d4c: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001d4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
    1d50: f9400114     	ldr	x20, [x8]
		0000000000001d50:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
    1d54: 52800128     	mov	w8, #0x9                // =9
    1d58: b90007ff     	str	wzr, [sp, #0x4]
    1d5c: 9a883053     	csel	x19, x2, x8, lo
    1d60: 2a1f03e2     	mov	w2, wzr
    1d64: 790023ff     	strh	wzr, [sp, #0x10]
    1d68: aa1303e1     	mov	x1, x19
    1d6c: f90007ff     	str	xzr, [sp, #0x8]
    1d70: 94000000     	bl	0x1d70 <enable_store+0x54>
		0000000000001d70:  R_AARCH64_CALL26	__check_object_size
    1d74: 910023e0     	add	x0, sp, #0x8
    1d78: aa1503e1     	mov	x1, x21
    1d7c: aa1303e2     	mov	x2, x19
    1d80: 94000027     	bl	0x1e1c <_inline_copy_from_user>
    1d84: 350000c0     	cbnz	w0, 0x1d9c <enable_store+0x80>
    1d88: 910023e0     	add	x0, sp, #0x8
    1d8c: 910013e2     	add	x2, sp, #0x4
    1d90: 2a1f03e1     	mov	w1, wzr
    1d94: 94000000     	bl	0x1d94 <enable_store+0x78>
		0000000000001d94:  R_AARCH64_CALL26	kstrtouint
    1d98: 340001c0     	cbz	w0, 0x1dd0 <enable_store+0xb4>
    1d9c: 928002b3     	mov	x19, #-0x16             // =-22
    1da0: d5384108     	mrs	x8, SP_EL0
    1da4: f9438908     	ldr	x8, [x8, #0x710]
    1da8: f85f83a9     	ldur	x9, [x29, #-0x8]
    1dac: eb09011f     	cmp	x8, x9
    1db0: 54000341     	b.ne	0x1e18 <enable_store+0xfc>
    1db4: aa1303e0     	mov	x0, x19
    1db8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1dbc: f9401bf5     	ldr	x21, [sp, #0x30]
    1dc0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1dc4: 910143ff     	add	sp, sp, #0x50
    1dc8: d50323bf     	autiasp
    1dcc: d65f03c0     	ret
    1dd0: b94007e5     	ldr	w5, [sp, #0x4]
    1dd4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ea
    1dd8: 91000063     	add	x3, x3, #0x0
		0000000000001dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ea
    1ddc: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x67c
    1de0: 91000000     	add	x0, x0, #0x0
		0000000000001de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x67c
    1de4: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1de8: 91000021     	add	x1, x1, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1dec: 52806162     	mov	w2, #0x30b              // =779
    1df0: aa0303e4     	mov	x4, x3
    1df4: 94000000     	bl	0x1df4 <enable_store+0xd8>
		0000000000001df4:  R_AARCH64_CALL26	_printk
    1df8: b94007e1     	ldr	w1, [sp, #0x4]
    1dfc: 7100083f     	cmp	w1, #0x2
    1e00: 54000063     	b.lo	0x1e0c <enable_store+0xf0>
    1e04: 52800021     	mov	w1, #0x1                // =1
    1e08: b90007e1     	str	w1, [sp, #0x4]
    1e0c: aa1403e0     	mov	x0, x20
    1e10: 97fffeb1     	bl	0x18d4 <enableMicroPump>
    1e14: 17ffffe3     	b	0x1da0 <enable_store+0x84>
    1e18: 94000000     	bl	0x1e18 <enable_store+0xfc>
		0000000000001e18:  R_AARCH64_CALL26	__stack_chk_fail
