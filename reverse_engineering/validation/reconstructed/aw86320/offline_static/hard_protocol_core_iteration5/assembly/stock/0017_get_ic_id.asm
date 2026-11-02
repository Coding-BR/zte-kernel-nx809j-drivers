
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b6c <get_ic_id>:
    1b6c: d503233f     	paciasp
    1b70: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1b74: a90157f6     	stp	x22, x21, [sp, #0x10]
    1b78: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1b7c: 910003fd     	mov	x29, sp
    1b80: f9400068     	ldr	x8, [x3]
    1b84: b40000e8     	cbz	x8, 0x1ba0 <get_ic_id+0x34>
    1b88: aa1f03e0     	mov	x0, xzr
    1b8c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1b90: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1b94: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1b98: d50323bf     	autiasp
    1b9c: d65f03c0     	ret
    1ba0: 90000013     	adrp	x19, 0x1000 <irq_handle+0x1c>
		0000000000001ba0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
    1ba4: 91000273     	add	x19, x19, #0x0
		0000000000001ba4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x110
    1ba8: aa0103f4     	mov	x20, x1
    1bac: aa0203f5     	mov	x21, x2
    1bb0: aa0303f6     	mov	x22, x3
    1bb4: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b6
    1bb8: 91000000     	add	x0, x0, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b6
    1bbc: 90000001     	adrp	x1, 0x1000 <irq_handle+0x1c>
		0000000000001bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
    1bc0: 91000021     	add	x1, x1, #0x0
		0000000000001bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
    1bc4: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd29
    1bc8: 91000063     	add	x3, x3, #0x0
		0000000000001bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd29
    1bcc: 52805ca2     	mov	w2, #0x2e5              // =741
    1bd0: aa1303e4     	mov	x4, x19
    1bd4: 94000000     	bl	0x1bd4 <get_ic_id+0x68>
		0000000000001bd4:  R_AARCH64_CALL26	_printk
    1bd8: aa1303e0     	mov	x0, x19
    1bdc: 52800401     	mov	w1, #0x20               // =32
    1be0: 94000000     	bl	0x1be0 <get_ic_id+0x74>
		0000000000001be0:  R_AARCH64_CALL26	strnlen
    1be4: aa0003e4     	mov	x4, x0
    1be8: f100841f     	cmp	x0, #0x21
    1bec: 54000142     	b.hs	0x1c14 <get_ic_id+0xa8>
    1bf0: f100809f     	cmp	x4, #0x20
    1bf4: 54000180     	b.eq	0x1c24 <get_ic_id+0xb8>
    1bf8: aa1603e2     	mov	x2, x22
    1bfc: aa1503e1     	mov	x1, x21
    1c00: aa1403e0     	mov	x0, x20
    1c04: 90000003     	adrp	x3, 0x1000 <irq_handle+0x1c>
		0000000000001c04:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
    1c08: 91000063     	add	x3, x3, #0x0
		0000000000001c08:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x110
    1c0c: 94000000     	bl	0x1c0c <get_ic_id+0xa0>
		0000000000001c0c:  R_AARCH64_CALL26	simple_read_from_buffer
    1c10: 17ffffdf     	b	0x1b8c <get_ic_id+0x20>
    1c14: 91000482     	add	x2, x4, #0x1
    1c18: 52800040     	mov	w0, #0x2                // =2
    1c1c: 52800401     	mov	w1, #0x20               // =32
    1c20: 94000000     	bl	0x1c20 <get_ic_id+0xb4>
		0000000000001c20:  R_AARCH64_CALL26	__fortify_panic
    1c24: 52800080     	mov	w0, #0x4                // =4
    1c28: 52800401     	mov	w1, #0x20               // =32
    1c2c: 52800422     	mov	w2, #0x21               // =33
    1c30: 94000000     	bl	0x1c30 <get_ic_id+0xc4>
		0000000000001c30:  R_AARCH64_CALL26	__fortify_panic
