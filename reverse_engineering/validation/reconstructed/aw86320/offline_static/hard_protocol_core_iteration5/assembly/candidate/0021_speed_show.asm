
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f14 <speed_show>:
    1f14: d503233f     	paciasp
    1f18: d10183ff     	sub	sp, sp, #0x60
    1f1c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1f20: a90457f6     	stp	x22, x21, [sp, #0x40]
    1f24: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1f28: 9100c3fd     	add	x29, sp, #0x30
    1f2c: d5384108     	mrs	x8, SP_EL0
    1f30: aa1f03e0     	mov	x0, xzr
    1f34: f9438908     	ldr	x8, [x8, #0x710]
    1f38: f81f83a8     	stur	x8, [x29, #-0x8]
    1f3c: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001f3c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    1f40: f9400069     	ldr	x9, [x3]
    1f44: f9400116     	ldr	x22, [x8]
		0000000000001f44:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    1f48: f801e3ff     	stur	xzr, [sp, #0x1e]
    1f4c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    1f50: f90007ff     	str	xzr, [sp, #0x8]
    1f54: b4000189     	cbz	x9, 0x1f84 <speed_show+0x70>
    1f58: d5384108     	mrs	x8, SP_EL0
    1f5c: f9438908     	ldr	x8, [x8, #0x710]
    1f60: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f64: eb09011f     	cmp	x8, x9
    1f68: 54000441     	b.ne	0x1ff0 <speed_show+0xdc>
    1f6c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1f70: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1f74: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1f78: 910183ff     	add	sp, sp, #0x60
    1f7c: d50323bf     	autiasp
    1f80: d65f03c0     	ret
    1f84: b9400ac4     	ldr	w4, [x22, #0x8]
    1f88: 90000008     	adrp	x8, 0x1000 <irq_handle+0x1c>
		0000000000001f88:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    1f8c: 91000108     	add	x8, x8, #0x0
		0000000000001f8c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    1f90: 90000009     	adrp	x9, 0x1000 <irq_handle+0x1c>
		0000000000001f90:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4aa
    1f94: 91000129     	add	x9, x9, #0x0
		0000000000001f94:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4aa
    1f98: 90000000     	adrp	x0, 0x1000 <irq_handle+0x1c>
		0000000000001f98:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x107f
    1f9c: 91000000     	add	x0, x0, #0x0
		0000000000001f9c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x107f
    1fa0: aa0103f3     	mov	x19, x1
    1fa4: aa0803e1     	mov	x1, x8
    1fa8: aa0203f4     	mov	x20, x2
    1fac: 528064a2     	mov	w2, #0x325              // =805
    1fb0: aa0303f5     	mov	x21, x3
    1fb4: aa0903e3     	mov	x3, x9
    1fb8: 94000000     	bl	0x1fb8 <speed_show+0xa4>
		0000000000001fb8:  R_AARCH64_CALL26	_printk
    1fbc: b9400ac3     	ldr	w3, [x22, #0x8]
    1fc0: 90000002     	adrp	x2, 0x1000 <irq_handle+0x1c>
		0000000000001fc0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xac3
    1fc4: 91000042     	add	x2, x2, #0x0
		0000000000001fc4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xac3
    1fc8: 910023e0     	add	x0, sp, #0x8
    1fcc: 528003c1     	mov	w1, #0x1e               // =30
    1fd0: 94000000     	bl	0x1fd0 <speed_show+0xbc>
		0000000000001fd0:  R_AARCH64_CALL26	snprintf
    1fd4: 93407c04     	sxtw	x4, w0
    1fd8: 910023e3     	add	x3, sp, #0x8
    1fdc: aa1403e1     	mov	x1, x20
    1fe0: aa1303e0     	mov	x0, x19
    1fe4: aa1503e2     	mov	x2, x21
    1fe8: 94000000     	bl	0x1fe8 <speed_show+0xd4>
		0000000000001fe8:  R_AARCH64_CALL26	simple_read_from_buffer
    1fec: 17ffffdb     	b	0x1f58 <speed_show+0x44>
    1ff0: 94000000     	bl	0x1ff0 <speed_show+0xdc>
		0000000000001ff0:  R_AARCH64_CALL26	__stack_chk_fail
