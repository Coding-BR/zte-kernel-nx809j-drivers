
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000031dc <duration_show>:
    31dc: d503233f     	paciasp
    31e0: d10183ff     	sub	sp, sp, #0x60
    31e4: a9037bfd     	stp	x29, x30, [sp, #0x30]
    31e8: a90457f6     	stp	x22, x21, [sp, #0x40]
    31ec: a9054ff4     	stp	x20, x19, [sp, #0x50]
    31f0: 9100c3fd     	add	x29, sp, #0x30
    31f4: d5384108     	mrs	x8, SP_EL0
    31f8: aa1f03e0     	mov	x0, xzr
    31fc: f9438908     	ldr	x8, [x8, #0x710]
    3200: f81f83a8     	stur	x8, [x29, #-0x8]
    3204: 90000008     	adrp	x8, 0x3000 <ram_load+0x8d0>
		0000000000003204:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    3208: f9400069     	ldr	x9, [x3]
    320c: f9400116     	ldr	x22, [x8]
		000000000000320c:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    3210: f801e3ff     	stur	xzr, [sp, #0x1e]
    3214: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    3218: f90007ff     	str	xzr, [sp, #0x8]
    321c: b4000189     	cbz	x9, 0x324c <duration_show+0x70>
    3220: d5384108     	mrs	x8, SP_EL0
    3224: f9438908     	ldr	x8, [x8, #0x710]
    3228: f85f83a9     	ldur	x9, [x29, #-0x8]
    322c: eb09011f     	cmp	x8, x9
    3230: 54000441     	b.ne	0x32b8 <duration_show+0xdc>
    3234: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    3238: a94457f6     	ldp	x22, x21, [sp, #0x40]
    323c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    3240: 910183ff     	add	sp, sp, #0x60
    3244: d50323bf     	autiasp
    3248: d65f03c0     	ret
    324c: b9400ec4     	ldr	w4, [x22, #0xc]
    3250: 90000008     	adrp	x8, 0x3000 <ram_load+0x8d0>
		0000000000003250:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    3254: 91000108     	add	x8, x8, #0x0
		0000000000003254:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    3258: 90000009     	adrp	x9, 0x3000 <ram_load+0x8d0>
		0000000000003258:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x4e3
    325c: 91000129     	add	x9, x9, #0x0
		000000000000325c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x4e3
    3260: 90000000     	adrp	x0, 0x3000 <ram_load+0x8d0>
		0000000000003260:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x85e
    3264: 91000000     	add	x0, x0, #0x0
		0000000000003264:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x85e
    3268: aa0103f3     	mov	x19, x1
    326c: aa0803e1     	mov	x1, x8
    3270: aa0203f4     	mov	x20, x2
    3274: 52806ce2     	mov	w2, #0x367              // =871
    3278: aa0303f5     	mov	x21, x3
    327c: aa0903e3     	mov	x3, x9
    3280: 94000000     	bl	0x3280 <duration_show+0xa4>
		0000000000003280:  R_AARCH64_CALL26	_printk
    3284: b9400ec3     	ldr	w3, [x22, #0xc]
    3288: 90000002     	adrp	x2, 0x3000 <ram_load+0x8d0>
		0000000000003288:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xac3
    328c: 91000042     	add	x2, x2, #0x0
		000000000000328c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xac3
    3290: 910023e0     	add	x0, sp, #0x8
    3294: 528003c1     	mov	w1, #0x1e               // =30
    3298: 94000000     	bl	0x3298 <duration_show+0xbc>
		0000000000003298:  R_AARCH64_CALL26	snprintf
    329c: 93407c04     	sxtw	x4, w0
    32a0: 910023e3     	add	x3, sp, #0x8
    32a4: aa1403e1     	mov	x1, x20
    32a8: aa1303e0     	mov	x0, x19
    32ac: aa1503e2     	mov	x2, x21
    32b0: 94000000     	bl	0x32b0 <duration_show+0xd4>
		00000000000032b0:  R_AARCH64_CALL26	simple_read_from_buffer
    32b4: 17ffffdb     	b	0x3220 <duration_show+0x44>
    32b8: 94000000     	bl	0x32b8 <duration_show+0xdc>
		00000000000032b8:  R_AARCH64_CALL26	__stack_chk_fail
