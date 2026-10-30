
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003450 <aw22xxx_task0_store>:
    3450: d503233f     	paciasp
    3454: d100c3ff     	sub	sp, sp, #0x30
    3458: a9017bfd     	stp	x29, x30, [sp, #0x10]
    345c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3460: 910043fd     	add	x29, sp, #0x10
    3464: d5384109     	mrs	x9, SP_EL0
    3468: aa0203e8     	mov	x8, x2
    346c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		000000000000346c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    3470: 91000021     	add	x1, x1, #0x0
		0000000000003470:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    3474: f9438929     	ldr	x9, [x9, #0x710]
    3478: 910013e2     	add	x2, sp, #0x4
    347c: aa0303f3     	mov	x19, x3
    3480: f90007e9     	str	x9, [sp, #0x8]
    3484: f9404c14     	ldr	x20, [x0, #0x98]
    3488: aa0803e0     	mov	x0, x8
    348c: b90007ff     	str	wzr, [sp, #0x4]
    3490: 94000000     	bl	0x3490 <aw22xxx_task0_store+0x40>
		0000000000003490:  R_AARCH64_CALL26	sscanf
    3494: 7100041f     	cmp	w0, #0x1
    3498: 54000201     	b.ne	0x34d8 <aw22xxx_task0_store+0x88>
    349c: b94007e8     	ldr	w8, [sp, #0x4]
    34a0: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000034a0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x7df
    34a4: 91000000     	add	x0, x0, #0x0
		00000000000034a4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x7df
    34a8: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000034a8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x106d
    34ac: 91000021     	add	x1, x1, #0x0
		00000000000034ac:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x106d
    34b0: 52811e82     	mov	w2, #0x8f4              // =2292
    34b4: 12001d03     	and	w3, w8, #0xff
    34b8: 390bb288     	strb	w8, [x20, #0x2ec]
    34bc: 94000000     	bl	0x34bc <aw22xxx_task0_store+0x6c>
		00000000000034bc:  R_AARCH64_CALL26	_printk
    34c0: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000034c0:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    34c4: 91078282     	add	x2, x20, #0x1e0
    34c8: 52800400     	mov	w0, #0x20               // =32
    34cc: f9400101     	ldr	x1, [x8]
		00000000000034cc:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    34d0: 94000000     	bl	0x34d0 <aw22xxx_task0_store+0x80>
		00000000000034d0:  R_AARCH64_CALL26	queue_work_on
    34d4: 14000008     	b	0x34f4 <aw22xxx_task0_store+0xa4>
    34d8: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000034d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15b
    34dc: 91000000     	add	x0, x0, #0x0
		00000000000034dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15b
    34e0: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000034e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x106d
    34e4: 91000021     	add	x1, x1, #0x0
		00000000000034e4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x106d
    34e8: 52811de2     	mov	w2, #0x8ef              // =2287
    34ec: 94000000     	bl	0x34ec <aw22xxx_task0_store+0x9c>
		00000000000034ec:  R_AARCH64_CALL26	_printk
    34f0: 928002b3     	mov	x19, #-0x16             // =-22
    34f4: d5384108     	mrs	x8, SP_EL0
    34f8: f9438908     	ldr	x8, [x8, #0x710]
    34fc: f94007e9     	ldr	x9, [sp, #0x8]
    3500: eb09011f     	cmp	x8, x9
    3504: 540000e1     	b.ne	0x3520 <aw22xxx_task0_store+0xd0>
    3508: aa1303e0     	mov	x0, x19
    350c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3510: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3514: 9100c3ff     	add	sp, sp, #0x30
    3518: d50323bf     	autiasp
    351c: d65f03c0     	ret
    3520: 94000000     	bl	0x3520 <aw22xxx_task0_store+0xd0>
		0000000000003520:  R_AARCH64_CALL26	__stack_chk_fail
