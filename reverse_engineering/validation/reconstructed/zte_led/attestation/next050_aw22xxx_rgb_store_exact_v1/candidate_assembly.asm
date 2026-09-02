
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003354 <aw22xxx_rgb_store>:
    3354: d503233f     	paciasp
    3358: d100c3ff     	sub	sp, sp, #0x30
    335c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3360: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3364: 910043fd     	add	x29, sp, #0x10
    3368: d5384109     	mrs	x9, SP_EL0
    336c: aa0203e8     	mov	x8, x2
    3370: aa0303f3     	mov	x19, x3
    3374: f9438929     	ldr	x9, [x9, #0x710]
    3378: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003378:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x10f0
    337c: 91000021     	add	x1, x1, #0x0
		000000000000337c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x10f0
    3380: 910003e2     	mov	x2, sp
    3384: f90007e9     	str	x9, [sp, #0x8]
    3388: 910003e9     	mov	x9, sp
    338c: f9404c14     	ldr	x20, [x0, #0x98]
    3390: b27e0123     	orr	x3, x9, #0x4
    3394: aa0803e0     	mov	x0, x8
    3398: f90003ff     	str	xzr, [sp]
    339c: 94000000     	bl	0x339c <aw22xxx_rgb_store+0x48>
		000000000000339c:  R_AARCH64_CALL26	sscanf
    33a0: 7100081f     	cmp	w0, #0x2
    33a4: 54000081     	b.ne	0x33b4 <aw22xxx_rgb_store+0x60>
    33a8: b94003e3     	ldr	w3, [sp]
    33ac: 7100207f     	cmp	w3, #0x8
    33b0: 540001a9     	b.ls	0x33e4 <aw22xxx_rgb_store+0x90>
    33b4: 928002b3     	mov	x19, #-0x16             // =-22
    33b8: d5384108     	mrs	x8, SP_EL0
    33bc: f9438908     	ldr	x8, [x8, #0x710]
    33c0: f94007e9     	ldr	x9, [sp, #0x8]
    33c4: eb09011f     	cmp	x8, x9
    33c8: 54000221     	b.ne	0x340c <aw22xxx_rgb_store+0xb8>
    33cc: aa1303e0     	mov	x0, x19
    33d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    33d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    33d8: 9100c3ff     	add	sp, sp, #0x30
    33dc: d50323bf     	autiasp
    33e0: d65f03c0     	ret
    33e4: 8b030a88     	add	x8, x20, x3, lsl #2
    33e8: b94007e4     	ldr	w4, [sp, #0x4]
    33ec: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000033ec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x254
    33f0: 91000000     	add	x0, x0, #0x0
		00000000000033f0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x254
    33f4: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000033f4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x189a
    33f8: 91000021     	add	x1, x1, #0x0
		00000000000033f8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x189a
    33fc: 52811a62     	mov	w2, #0x8d3              // =2259
    3400: b902fd04     	str	w4, [x8, #0x2fc]
    3404: 94000000     	bl	0x3404 <aw22xxx_rgb_store+0xb0>
		0000000000003404:  R_AARCH64_CALL26	_printk
    3408: 17ffffec     	b	0x33b8 <aw22xxx_rgb_store+0x64>
    340c: 94000000     	bl	0x340c <aw22xxx_rgb_store+0xb8>
		000000000000340c:  R_AARCH64_CALL26	__stack_chk_fail
