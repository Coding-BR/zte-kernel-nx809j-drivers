
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000024d4 <reg_store>:
    24d4: d503233f     	paciasp
    24d8: d10143ff     	sub	sp, sp, #0x50
    24dc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    24e0: f9001bf5     	str	x21, [sp, #0x30]
    24e4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    24e8: 910083fd     	add	x29, sp, #0x20
    24ec: d5384108     	mrs	x8, SP_EL0
    24f0: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000024f0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x10a2
    24f4: 91000063     	add	x3, x3, #0x0
		00000000000024f4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x10a2
    24f8: f9438908     	ldr	x8, [x8, #0x710]
    24fc: f100385f     	cmp	x2, #0xe
    2500: aa0103f5     	mov	x21, x1
    2504: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002504:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xf8d
    2508: 91000000     	add	x0, x0, #0x0
		0000000000002508:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xf8d
    250c: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		000000000000250c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    2510: 91000021     	add	x1, x1, #0x0
		0000000000002510:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    2514: f81f83a8     	stur	x8, [x29, #-0x8]
    2518: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		0000000000002518:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    251c: f9400114     	ldr	x20, [x8]
		000000000000251c:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    2520: 528001c8     	mov	w8, #0xe                // =14
    2524: aa0303e4     	mov	x4, x3
    2528: 9a883053     	csel	x19, x2, x8, lo
    252c: 528075e2     	mov	w2, #0x3af              // =943
    2530: 528001e6     	mov	w6, #0xf                // =15
    2534: aa1303e5     	mov	x5, x19
    2538: f800f3ff     	stur	xzr, [sp, #0xf]
    253c: a9007fff     	stp	xzr, xzr, [sp]
    2540: 94000000     	bl	0x2540 <reg_store+0x6c>
		0000000000002540:  R_AARCH64_CALL26	_printk
    2544: 910023e0     	add	x0, sp, #0x8
    2548: aa1303e1     	mov	x1, x19
    254c: 2a1f03e2     	mov	w2, wzr
    2550: 94000000     	bl	0x2550 <reg_store+0x7c>
		0000000000002550:  R_AARCH64_CALL26	__check_object_size
    2554: 910023e0     	add	x0, sp, #0x8
    2558: aa1503e1     	mov	x1, x21
    255c: aa1303e2     	mov	x2, x19
    2560: 97fffe2f     	bl	0x1e1c <_inline_copy_from_user>
		0000000000002560:  R_AARCH64_CALL26	_inline_copy_from_user
    2564: 34000060     	cbz	w0, 0x2570 <reg_store+0x9c>
    2568: 928002b3     	mov	x19, #-0x16             // =-22
    256c: 1400000a     	b	0x2594 <reg_store+0xc0>
    2570: 910003e8     	mov	x8, sp
    2574: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002574:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xa96
    2578: 91000021     	add	x1, x1, #0x0
		0000000000002578:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xa96
    257c: 910023e0     	add	x0, sp, #0x8
    2580: 910003e2     	mov	x2, sp
    2584: b27e0103     	orr	x3, x8, #0x4
    2588: 94000000     	bl	0x2588 <reg_store+0xb4>
		0000000000002588:  R_AARCH64_CALL26	sscanf
    258c: 7100081f     	cmp	w0, #0x2
    2590: 540001a0     	b.eq	0x25c4 <reg_store+0xf0>
    2594: d5384108     	mrs	x8, SP_EL0
    2598: f9438908     	ldr	x8, [x8, #0x710]
    259c: f85f83a9     	ldur	x9, [x29, #-0x8]
    25a0: eb09011f     	cmp	x8, x9
    25a4: 54000321     	b.ne	0x2608 <reg_store+0x134>
    25a8: aa1303e0     	mov	x0, x19
    25ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    25b0: f9401bf5     	ldr	x21, [sp, #0x30]
    25b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    25b8: 910143ff     	add	sp, sp, #0x50
    25bc: d50323bf     	autiasp
    25c0: d65f03c0     	ret
    25c4: 79400bf5     	ldrh	w21, [sp, #0x4]
    25c8: 394003e5     	ldrb	w5, [sp]
    25cc: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000025cc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x10a2
    25d0: 91000063     	add	x3, x3, #0x0
		00000000000025d0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x10a2
    25d4: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		00000000000025d4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xbd5
    25d8: 91000000     	add	x0, x0, #0x0
		00000000000025d8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xbd5
    25dc: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		00000000000025dc:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    25e0: 91000021     	add	x1, x1, #0x0
		00000000000025e0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    25e4: 528076e2     	mov	w2, #0x3b7              // =951
    25e8: aa0303e4     	mov	x4, x3
    25ec: 2a1503e6     	mov	w6, w21
    25f0: 94000000     	bl	0x25f0 <reg_store+0x11c>
		00000000000025f0:  R_AARCH64_CALL26	_printk
    25f4: b94003e1     	ldr	w1, [sp]
    25f8: aa1403e0     	mov	x0, x20
    25fc: 2a1503e2     	mov	w2, w21
    2600: 97fff78f     	bl	0x43c <haptic_i2c_write>
		0000000000002600:  R_AARCH64_CALL26	haptic_i2c_write
    2604: 17ffffe4     	b	0x2594 <reg_store+0xc0>
    2608: 94000000     	bl	0x2608 <reg_store+0x134>
		0000000000002608:  R_AARCH64_CALL26	__stack_chk_fail
