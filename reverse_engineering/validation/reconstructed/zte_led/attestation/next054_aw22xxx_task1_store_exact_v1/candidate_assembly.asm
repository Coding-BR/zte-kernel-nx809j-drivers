
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003564 <aw22xxx_task1_store>:
    3564: d503233f     	paciasp
    3568: d100c3ff     	sub	sp, sp, #0x30
    356c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3570: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3574: 910043fd     	add	x29, sp, #0x10
    3578: d5384109     	mrs	x9, SP_EL0
    357c: aa0203e8     	mov	x8, x2
    3580: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003580:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    3584: 91000021     	add	x1, x1, #0x0
		0000000000003584:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    3588: f9438929     	ldr	x9, [x9, #0x710]
    358c: 910013e2     	add	x2, sp, #0x4
    3590: aa0303f3     	mov	x19, x3
    3594: f90007e9     	str	x9, [sp, #0x8]
    3598: f9404c14     	ldr	x20, [x0, #0x98]
    359c: aa0803e0     	mov	x0, x8
    35a0: b90007ff     	str	wzr, [sp, #0x4]
    35a4: 94000000     	bl	0x35a4 <aw22xxx_task1_store+0x40>
		00000000000035a4:  R_AARCH64_CALL26	sscanf
    35a8: 7100041f     	cmp	w0, #0x1
    35ac: 54000161     	b.ne	0x35d8 <aw22xxx_task1_store+0x74>
    35b0: b94007e8     	ldr	w8, [sp, #0x4]
    35b4: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000035b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x59
    35b8: 91000000     	add	x0, x0, #0x0
		00000000000035b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x59
    35bc: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000035bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc36
    35c0: 91000021     	add	x1, x1, #0x0
		00000000000035c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc36
    35c4: 52812222     	mov	w2, #0x911              // =2321
    35c8: 12001d03     	and	w3, w8, #0xff
    35cc: 390bb688     	strb	w8, [x20, #0x2ed]
    35d0: 94000000     	bl	0x35d0 <aw22xxx_task1_store+0x6c>
		00000000000035d0:  R_AARCH64_CALL26	_printk
    35d4: 14000008     	b	0x35f4 <aw22xxx_task1_store+0x90>
    35d8: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000035d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x15b
    35dc: 91000000     	add	x0, x0, #0x0
		00000000000035dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x15b
    35e0: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000035e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc36
    35e4: 91000021     	add	x1, x1, #0x0
		00000000000035e4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc36
    35e8: 52812182     	mov	w2, #0x90c              // =2316
    35ec: 94000000     	bl	0x35ec <aw22xxx_task1_store+0x88>
		00000000000035ec:  R_AARCH64_CALL26	_printk
    35f0: 928002b3     	mov	x19, #-0x16             // =-22
    35f4: d5384108     	mrs	x8, SP_EL0
    35f8: f9438908     	ldr	x8, [x8, #0x710]
    35fc: f94007e9     	ldr	x9, [sp, #0x8]
    3600: eb09011f     	cmp	x8, x9
    3604: 540000e1     	b.ne	0x3620 <aw22xxx_task1_store+0xbc>
    3608: aa1303e0     	mov	x0, x19
    360c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3610: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3614: 9100c3ff     	add	sp, sp, #0x30
    3618: d50323bf     	autiasp
    361c: d65f03c0     	ret
    3620: 94000000     	bl	0x3620 <aw22xxx_task1_store+0xbc>
		0000000000003620:  R_AARCH64_CALL26	__stack_chk_fail
