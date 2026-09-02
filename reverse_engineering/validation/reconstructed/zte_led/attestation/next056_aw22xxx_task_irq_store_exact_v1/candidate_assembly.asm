
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003664 <aw22xxx_task_irq_store>:
    3664: d503233f     	paciasp
    3668: d100c3ff     	sub	sp, sp, #0x30
    366c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3670: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3674: 910043fd     	add	x29, sp, #0x10
    3678: d5384109     	mrs	x9, SP_EL0
    367c: aa0203e8     	mov	x8, x2
    3680: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003680:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x142e
    3684: 91000021     	add	x1, x1, #0x0
		0000000000003684:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x142e
    3688: f9438929     	ldr	x9, [x9, #0x710]
    368c: 910013e2     	add	x2, sp, #0x4
    3690: aa0303f3     	mov	x19, x3
    3694: f90007e9     	str	x9, [sp, #0x8]
    3698: f9404c14     	ldr	x20, [x0, #0x98]
    369c: aa0803e0     	mov	x0, x8
    36a0: b90007ff     	str	wzr, [sp, #0x4]
    36a4: 94000000     	bl	0x36a4 <aw22xxx_task_irq_store+0x40>
		00000000000036a4:  R_AARCH64_CALL26	sscanf
    36a8: 7100041f     	cmp	w0, #0x1
    36ac: 54000141     	b.ne	0x36d4 <aw22xxx_task_irq_store+0x70>
    36b0: b94007e3     	ldr	w3, [sp, #0x4]
    36b4: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000036b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb18
    36b8: 91000000     	add	x0, x0, #0x0
		00000000000036b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb18
    36bc: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000036bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1081
    36c0: 91000021     	add	x1, x1, #0x0
		00000000000036c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1081
    36c4: 52812582     	mov	w2, #0x92c              // =2348
    36c8: b902ea83     	str	w3, [x20, #0x2e8]
    36cc: 94000000     	bl	0x36cc <aw22xxx_task_irq_store+0x68>
		00000000000036cc:  R_AARCH64_CALL26	_printk
    36d0: 14000008     	b	0x36f0 <aw22xxx_task_irq_store+0x8c>
    36d4: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000036d4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15b
    36d8: 91000000     	add	x0, x0, #0x0
		00000000000036d8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15b
    36dc: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000036dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1081
    36e0: 91000021     	add	x1, x1, #0x0
		00000000000036e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1081
    36e4: 528124e2     	mov	w2, #0x927              // =2343
    36e8: 94000000     	bl	0x36e8 <aw22xxx_task_irq_store+0x84>
		00000000000036e8:  R_AARCH64_CALL26	_printk
    36ec: 928002b3     	mov	x19, #-0x16             // =-22
    36f0: d5384108     	mrs	x8, SP_EL0
    36f4: f9438908     	ldr	x8, [x8, #0x710]
    36f8: f94007e9     	ldr	x9, [sp, #0x8]
    36fc: eb09011f     	cmp	x8, x9
    3700: 540000e1     	b.ne	0x371c <aw22xxx_task_irq_store+0xb8>
    3704: aa1303e0     	mov	x0, x19
    3708: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    370c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3710: 9100c3ff     	add	sp, sp, #0x30
    3714: d50323bf     	autiasp
    3718: d65f03c0     	ret
    371c: 94000000     	bl	0x371c <aw22xxx_task_irq_store+0xb8>
		000000000000371c:  R_AARCH64_CALL26	__stack_chk_fail
