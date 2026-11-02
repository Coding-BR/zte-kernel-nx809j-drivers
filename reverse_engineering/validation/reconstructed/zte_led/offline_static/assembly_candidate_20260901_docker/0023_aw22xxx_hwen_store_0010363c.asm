
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000025d0 <aw22xxx_hwen_store>:
    25d0: d503233f     	paciasp
    25d4: d100c3ff     	sub	sp, sp, #0x30
    25d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    25dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    25e0: 910043fd     	add	x29, sp, #0x10
    25e4: d5384109     	mrs	x9, SP_EL0
    25e8: aa0203e8     	mov	x8, x2
    25ec: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000025ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    25f0: 91000021     	add	x1, x1, #0x0
		00000000000025f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    25f4: f9438929     	ldr	x9, [x9, #0x710]
    25f8: 910013e2     	add	x2, sp, #0x4
    25fc: aa0303f3     	mov	x19, x3
    2600: f90007e9     	str	x9, [sp, #0x8]
    2604: f9404c14     	ldr	x20, [x0, #0x98]
    2608: aa0803e0     	mov	x0, x8
    260c: b90007ff     	str	wzr, [sp, #0x4]
    2610: 94000000     	bl	0x2610 <aw22xxx_hwen_store+0x40>
		0000000000002610:  R_AARCH64_CALL26	sscanf
    2614: 7100041f     	cmp	w0, #0x1
    2618: 54000261     	b.ne	0x2664 <aw22xxx_hwen_store+0x94>
    261c: b94007e8     	ldr	w8, [sp, #0x4]
    2620: 7100091f     	cmp	w8, #0x2
    2624: 54000202     	b.hs	0x2664 <aw22xxx_hwen_store+0x94>
    2628: 7100051f     	cmp	w8, #0x1
    262c: 540002a1     	b.ne	0x2680 <aw22xxx_hwen_store+0xb0>
    2630: d1004280     	sub	x0, x20, #0x10
    2634: 97fff86e     	bl	0x7ec <aw22xxx_hw_reset>
    2638: d5384108     	mrs	x8, SP_EL0
    263c: f9438908     	ldr	x8, [x8, #0x710]
    2640: f94007e9     	ldr	x9, [sp, #0x8]
    2644: eb09011f     	cmp	x8, x9
    2648: 54000401     	b.ne	0x26c8 <aw22xxx_hwen_store+0xf8>
    264c: aa1303e0     	mov	x0, x19
    2650: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2654: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2658: 9100c3ff     	add	sp, sp, #0x30
    265c: d50323bf     	autiasp
    2660: d65f03c0     	ret
    2664: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d2
    2668: 91000000     	add	x0, x0, #0x0
		0000000000002668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d2
    266c: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		000000000000266c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1650
    2670: 91000021     	add	x1, x1, #0x0
		0000000000002670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1650
    2674: 94000000     	bl	0x2674 <aw22xxx_hwen_store+0xa4>
		0000000000002674:  R_AARCH64_CALL26	_printk
    2678: 928002b3     	mov	x19, #-0x16             // =-22
    267c: 17ffffef     	b	0x2638 <aw22xxx_hwen_store+0x68>
    2680: 90000000     	adrp	x0, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9d
    2684: 91000000     	add	x0, x0, #0x0
		0000000000002684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9d
    2688: 94000000     	bl	0x2688 <aw22xxx_hwen_store+0xb8>
		0000000000002688:  R_AARCH64_CALL26	_printk
    268c: b942d280     	ldr	w0, [x20, #0x2d0]
    2690: 37f80120     	tbnz	w0, #0x1f, 0x26b4 <aw22xxx_hwen_store+0xe4>
    2694: 94000000     	bl	0x2694 <aw22xxx_hwen_store+0xc4>
		0000000000002694:  R_AARCH64_CALL26	gpio_to_desc
    2698: 2a1f03e1     	mov	w1, wzr
    269c: 94000000     	bl	0x269c <aw22xxx_hwen_store+0xcc>
		000000000000269c:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    26a0: 52807d00     	mov	w0, #0x3e8              // =1000
    26a4: 5280bb81     	mov	w1, #0x5dc              // =1500
    26a8: 52800042     	mov	w2, #0x2                // =2
    26ac: 94000000     	bl	0x26ac <aw22xxx_hwen_store+0xdc>
		00000000000026ac:  R_AARCH64_CALL26	usleep_range_state
    26b0: 17ffffe2     	b	0x2638 <aw22xxx_hwen_store+0x68>
    26b4: f85f8280     	ldur	x0, [x20, #-0x8]
    26b8: 90000001     	adrp	x1, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000026b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
    26bc: 91000021     	add	x1, x1, #0x0
		00000000000026bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
    26c0: 94000000     	bl	0x26c0 <aw22xxx_hwen_store+0xf0>
		00000000000026c0:  R_AARCH64_CALL26	_dev_err
    26c4: 17ffffdd     	b	0x2638 <aw22xxx_hwen_store+0x68>
    26c8: 94000000     	bl	0x26c8 <aw22xxx_hwen_store+0xf8>
		00000000000026c8:  R_AARCH64_CALL26	__stack_chk_fail
