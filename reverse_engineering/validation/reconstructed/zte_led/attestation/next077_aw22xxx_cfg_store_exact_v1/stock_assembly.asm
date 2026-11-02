
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000023f4 <aw22xxx_cfg_store>:
    23f4: d503233f     	paciasp
    23f8: d100c3ff     	sub	sp, sp, #0x30
    23fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2400: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2404: 910043fd     	add	x29, sp, #0x10
    2408: d5384109     	mrs	x9, SP_EL0
    240c: aa0203e8     	mov	x8, x2
    2410: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x142e
    2414: 91000021     	add	x1, x1, #0x0
		0000000000002414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x142e
    2418: f9438929     	ldr	x9, [x9, #0x710]
    241c: 910013e2     	add	x2, sp, #0x4
    2420: aa0303f3     	mov	x19, x3
    2424: f90007e9     	str	x9, [sp, #0x8]
    2428: f9404c14     	ldr	x20, [x0, #0x98]
    242c: aa0803e0     	mov	x0, x8
    2430: b90007ff     	str	wzr, [sp, #0x4]
    2434: 94000000     	bl	0x2434 <aw22xxx_cfg_store+0x40>
		0000000000002434:  R_AARCH64_CALL26	sscanf
    2438: 7100041f     	cmp	w0, #0x1
    243c: 54000161     	b.ne	0x2468 <aw22xxx_cfg_store+0x74>
    2440: b94007e8     	ldr	w8, [sp, #0x4]
    2444: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x686
    2448: 91000000     	add	x0, x0, #0x0
		0000000000002448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x686
    244c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000244c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1431
    2450: 91000021     	add	x1, x1, #0x0
		0000000000002450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1431
    2454: 5280fec2     	mov	w2, #0x7f6              // =2038
    2458: 12000d03     	and	w3, w8, #0xf
    245c: 390bd283     	strb	w3, [x20, #0x2f4]
    2460: 94000000     	bl	0x2460 <aw22xxx_cfg_store+0x6c>
		0000000000002460:  R_AARCH64_CALL26	_printk
    2464: 14000008     	b	0x2484 <aw22xxx_cfg_store+0x90>
    2468: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1233
    246c: 91000000     	add	x0, x0, #0x0
		000000000000246c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1233
    2470: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1431
    2474: 91000021     	add	x1, x1, #0x0
		0000000000002474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1431
    2478: 5280fe02     	mov	w2, #0x7f0              // =2032
    247c: 94000000     	bl	0x247c <aw22xxx_cfg_store+0x88>
		000000000000247c:  R_AARCH64_CALL26	_printk
    2480: 928002b3     	mov	x19, #-0x16             // =-22
    2484: d5384108     	mrs	x8, SP_EL0
    2488: f9438908     	ldr	x8, [x8, #0x710]
    248c: f94007e9     	ldr	x9, [sp, #0x8]
    2490: eb09011f     	cmp	x8, x9
    2494: 540000e1     	b.ne	0x24b0 <aw22xxx_cfg_store+0xbc>
    2498: aa1303e0     	mov	x0, x19
    249c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    24a0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    24a4: 9100c3ff     	add	sp, sp, #0x30
    24a8: d50323bf     	autiasp
    24ac: d65f03c0     	ret
    24b0: 94000000     	bl	0x24b0 <aw22xxx_cfg_store+0xbc>
		00000000000024b0:  R_AARCH64_CALL26	__stack_chk_fail
