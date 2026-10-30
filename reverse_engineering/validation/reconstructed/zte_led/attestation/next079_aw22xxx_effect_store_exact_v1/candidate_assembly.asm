
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004520 <aw22xxx_effect_store>:
    4520: d503233f     	paciasp
    4524: d10183ff     	sub	sp, sp, #0x60
    4528: a9027bfd     	stp	x29, x30, [sp, #0x20]
    452c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4530: a90457f6     	stp	x22, x21, [sp, #0x40]
    4534: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4538: 910083fd     	add	x29, sp, #0x20
    453c: d5384109     	mrs	x9, SP_EL0
    4540: aa0203e8     	mov	x8, x2
    4544: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004544:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x542
    4548: 91000021     	add	x1, x1, #0x0
		0000000000004548:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x542
    454c: f9438929     	ldr	x9, [x9, #0x710]
    4550: 910033e2     	add	x2, sp, #0xc
    4554: aa0303f3     	mov	x19, x3
    4558: f81f83a9     	stur	x9, [x29, #-0x8]
    455c: f9404c16     	ldr	x22, [x0, #0x98]
    4560: aa0803e0     	mov	x0, x8
    4564: b9000fff     	str	wzr, [sp, #0xc]
    4568: 94000000     	bl	0x4568 <aw22xxx_effect_store+0x48>
		0000000000004568:  R_AARCH64_CALL26	sscanf
    456c: 7100041f     	cmp	w0, #0x1
    4570: 54000e61     	b.ne	0x473c <aw22xxx_effect_store+0x21c>
    4574: 910a82c0     	add	x0, x22, #0x2a0
    4578: d10042d4     	sub	x20, x22, #0x10
    457c: 94000000     	bl	0x457c <aw22xxx_effect_store+0x5c>
		000000000000457c:  R_AARCH64_CALL26	mutex_lock
    4580: b9400fe3     	ldr	w3, [sp, #0xc]
    4584: 90000018     	adrp	x24, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004584:  R_AARCH64_ADR_PREL_PG_HI21	init_flag
    4588: 90000017     	adrp	x23, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004588:  R_AARCH64_ADR_PREL_PG_HI21	g_cfg_cur_state
    458c: 51002068     	sub	w8, w3, #0x8
    4590: 7100091f     	cmp	w8, #0x2
    4594: 54000788     	b.hi	0x4684 <aw22xxx_effect_store+0x164>
    4598: 39400308     	ldrb	w8, [x24]
		0000000000004598:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    459c: 7100051f     	cmp	w8, #0x1
    45a0: 54000721     	b.ne	0x4684 <aw22xxx_effect_store+0x164>
    45a4: 90000015     	adrp	x21, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000045a4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe56
    45a8: 910002b5     	add	x21, x21, #0x0
		00000000000045a8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe56
    45ac: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000045ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x5d0
    45b0: 91000000     	add	x0, x0, #0x0
		00000000000045b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x5d0
    45b4: aa1503e1     	mov	x1, x21
    45b8: 52810ae2     	mov	w2, #0x857              // =2135
    45bc: 94000000     	bl	0x45bc <aw22xxx_effect_store+0x9c>
		00000000000045bc:  R_AARCH64_CALL26	_printk
    45c0: 52800088     	mov	w8, #0x4                // =4
    45c4: 52800080     	mov	w0, #0x4                // =4
    45c8: b902f2c8     	str	w8, [x22, #0x2f0]
    45cc: 9400008a     	bl	0x47f4 <aw22xxx_effect_store+0x2d4>
		00000000000045cc:  R_AARCH64_CALL26	aw22xxx_get_fwname
    45d0: aa1403e0     	mov	x0, x20
    45d4: 94000107     	bl	0x49f0 <aw22xxx_fw_work_routine+0x10>
		00000000000045d4:  R_AARCH64_CALL26	aw22xxx_cfg_update_wait_from_dyn_name
    45d8: b942f2c0     	ldr	w0, [x22, #0x2f0]
    45dc: 94000146     	bl	0x4af4 <aw22xxx_cfg_work_routine+0x80>
		00000000000045dc:  R_AARCH64_CALL26	aw22xxx_set_cfg_run_state
    45e0: b94002e3     	ldr	w3, [x23]
		00000000000045e0:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    45e4: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000045e4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf40
    45e8: 91000000     	add	x0, x0, #0x0
		00000000000045e8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf40
    45ec: aa1503e1     	mov	x1, x21
    45f0: 52810b82     	mov	w2, #0x85c              // =2140
    45f4: 94000000     	bl	0x45f4 <aw22xxx_effect_store+0xd4>
		00000000000045f4:  R_AARCH64_CALL26	_printk
    45f8: b94002e8     	ldr	w8, [x23]
		00000000000045f8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    45fc: 35000328     	cbnz	w8, 0x4660 <aw22xxx_effect_store+0x140>
    4600: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004600:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    4604: 91000000     	add	x0, x0, #0x0
		0000000000004604:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    4608: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004608:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    460c: 91000021     	add	x1, x1, #0x0
		000000000000460c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    4610: 52803542     	mov	w2, #0x1aa              // =426
    4614: 2a1f03e3     	mov	w3, wzr
    4618: 94000000     	bl	0x4618 <aw22xxx_effect_store+0xf8>
		0000000000004618:  R_AARCH64_CALL26	_printk
    461c: 910043e2     	add	x2, sp, #0x10
    4620: aa1403e0     	mov	x0, x20
    4624: 52800041     	mov	w1, #0x2                // =2
    4628: 390043ff     	strb	wzr, [sp, #0x10]
    462c: 97fff7d3     	bl	0x2578 <aw22xxx_fw_init+0x28>
		000000000000462c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    4630: 394043e8     	ldrb	w8, [sp, #0x10]
    4634: aa1403e0     	mov	x0, x20
    4638: 52800041     	mov	w1, #0x2                // =2
    463c: 121f7902     	and	w2, w8, #0xfffffffe
    4640: 390043e2     	strb	w2, [sp, #0x10]
    4644: 97fff781     	bl	0x2448 <aw22xxx_alloc_name_array+0x15c>
		0000000000004644:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4648: 5280fa00     	mov	w0, #0x7d0              // =2000
    464c: 52817701     	mov	w1, #0xbb8              // =3000
    4650: 52800042     	mov	w2, #0x2                // =2
    4654: 94000000     	bl	0x4654 <aw22xxx_effect_store+0x134>
		0000000000004654:  R_AARCH64_CALL26	usleep_range_state
    4658: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004658:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x6218
    465c: 3900011f     	strb	wzr, [x8]
		000000000000465c:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x6218
    4660: 3900031f     	strb	wzr, [x24]
		0000000000004660:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    4664: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004664:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x16af
    4668: 91000000     	add	x0, x0, #0x0
		0000000000004668:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x16af
    466c: b942f2c3     	ldr	w3, [x22, #0x2f0]
    4670: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004670:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe56
    4674: 91000021     	add	x1, x1, #0x0
		0000000000004674:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe56
    4678: 52810c42     	mov	w2, #0x862              // =2146
    467c: 94000000     	bl	0x467c <aw22xxx_effect_store+0x15c>
		000000000000467c:  R_AARCH64_CALL26	_printk
    4680: b9400fe3     	ldr	w3, [sp, #0xc]
    4684: 71000c7f     	cmp	w3, #0x3
    4688: b902f2c3     	str	w3, [x22, #0x2f0]
    468c: 540001c8     	b.hi	0x46c4 <aw22xxx_effect_store+0x1a4>
    4690: 7100047f     	cmp	w3, #0x1
    4694: 54000180     	b.eq	0x46c4 <aw22xxx_effect_store+0x1a4>
    4698: 39400308     	ldrb	w8, [x24]
		0000000000004698:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    469c: 37000148     	tbnz	w8, #0x0, 0x46c4 <aw22xxx_effect_store+0x1a4>
    46a0: 52800028     	mov	w8, #0x1                // =1
    46a4: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000046a4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1040
    46a8: 91000000     	add	x0, x0, #0x0
		00000000000046a8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1040
    46ac: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000046ac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe56
    46b0: 91000021     	add	x1, x1, #0x0
		00000000000046b0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe56
    46b4: 52810d22     	mov	w2, #0x869              // =2153
    46b8: 39000308     	strb	w8, [x24]
		00000000000046b8:  R_AARCH64_LDST8_ABS_LO12_NC	init_flag
    46bc: 94000000     	bl	0x46bc <aw22xxx_effect_store+0x19c>
		00000000000046bc:  R_AARCH64_CALL26	_printk
    46c0: b942f2c3     	ldr	w3, [x22, #0x2f0]
    46c4: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000046c4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1942
    46c8: 91000000     	add	x0, x0, #0x0
		00000000000046c8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1942
    46cc: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000046cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe56
    46d0: 91000021     	add	x1, x1, #0x0
		00000000000046d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe56
    46d4: 52810d82     	mov	w2, #0x86c              // =2156
    46d8: 94000000     	bl	0x46d8 <aw22xxx_effect_store+0x1b8>
		00000000000046d8:  R_AARCH64_CALL26	_printk
    46dc: b942f2c0     	ldr	w0, [x22, #0x2f0]
    46e0: 94000045     	bl	0x47f4 <aw22xxx_effect_store+0x2d4>
		00000000000046e0:  R_AARCH64_CALL26	aw22xxx_get_fwname
    46e4: 52800028     	mov	w8, #0x1                // =1
    46e8: aa1403e0     	mov	x0, x20
    46ec: b9000fe8     	str	w8, [sp, #0xc]
    46f0: 940000c0     	bl	0x49f0 <aw22xxx_fw_work_routine+0x10>
		00000000000046f0:  R_AARCH64_CALL26	aw22xxx_cfg_update_wait_from_dyn_name
    46f4: b942f2c0     	ldr	w0, [x22, #0x2f0]
    46f8: 35000080     	cbnz	w0, 0x4708 <aw22xxx_effect_store+0x1e8>
    46fc: 52800c80     	mov	w0, #0x64               // =100
    4700: 94000000     	bl	0x4700 <aw22xxx_effect_store+0x1e0>
		0000000000004700:  R_AARCH64_CALL26	msleep
    4704: b942f2c0     	ldr	w0, [x22, #0x2f0]
    4708: 940000fb     	bl	0x4af4 <aw22xxx_cfg_work_routine+0x80>
		0000000000004708:  R_AARCH64_CALL26	aw22xxx_set_cfg_run_state
    470c: b94002e3     	ldr	w3, [x23]
		000000000000470c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    4710: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004710:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf40
    4714: 91000000     	add	x0, x0, #0x0
		0000000000004714:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf40
    4718: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004718:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe56
    471c: 91000021     	add	x1, x1, #0x0
		000000000000471c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe56
    4720: 52811122     	mov	w2, #0x889              // =2185
    4724: 94000000     	bl	0x4724 <aw22xxx_effect_store+0x204>
		0000000000004724:  R_AARCH64_CALL26	_printk
    4728: b94002e8     	ldr	w8, [x23]
		0000000000004728:  R_AARCH64_LDST32_ABS_LO12_NC	g_cfg_cur_state
    472c: 34000308     	cbz	w8, 0x478c <aw22xxx_effect_store+0x26c>
    4730: 910a82c0     	add	x0, x22, #0x2a0
    4734: 94000000     	bl	0x4734 <aw22xxx_effect_store+0x214>
		0000000000004734:  R_AARCH64_CALL26	mutex_unlock
    4738: 14000008     	b	0x4758 <aw22xxx_effect_store+0x238>
    473c: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		000000000000473c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x508
    4740: 91000000     	add	x0, x0, #0x0
		0000000000004740:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x508
    4744: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004744:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe56
    4748: 91000021     	add	x1, x1, #0x0
		0000000000004748:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe56
    474c: 52810a02     	mov	w2, #0x850              // =2128
    4750: 94000000     	bl	0x4750 <aw22xxx_effect_store+0x230>
		0000000000004750:  R_AARCH64_CALL26	_printk
    4754: 928002b3     	mov	x19, #-0x16             // =-22
    4758: d5384108     	mrs	x8, SP_EL0
    475c: f9438908     	ldr	x8, [x8, #0x710]
    4760: f85f83a9     	ldur	x9, [x29, #-0x8]
    4764: eb09011f     	cmp	x8, x9
    4768: 54000441     	b.ne	0x47f0 <aw22xxx_effect_store+0x2d0>
    476c: aa1303e0     	mov	x0, x19
    4770: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    4774: a94457f6     	ldp	x22, x21, [sp, #0x40]
    4778: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    477c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    4780: 910183ff     	add	sp, sp, #0x60
    4784: d50323bf     	autiasp
    4788: d65f03c0     	ret
    478c: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_loaded+0x164>
		000000000000478c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    4790: 91000000     	add	x0, x0, #0x0
		0000000000004790:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    4794: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_loaded+0x164>
		0000000000004794:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    4798: 91000021     	add	x1, x1, #0x0
		0000000000004798:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    479c: 52803542     	mov	w2, #0x1aa              // =426
    47a0: 2a1f03e3     	mov	w3, wzr
    47a4: 94000000     	bl	0x47a4 <aw22xxx_effect_store+0x284>
		00000000000047a4:  R_AARCH64_CALL26	_printk
    47a8: d10033a2     	sub	x2, x29, #0xc
    47ac: aa1403e0     	mov	x0, x20
    47b0: 52800041     	mov	w1, #0x2                // =2
    47b4: 381f43bf     	sturb	wzr, [x29, #-0xc]
    47b8: 97fff770     	bl	0x2578 <aw22xxx_fw_init+0x28>
		00000000000047b8:  R_AARCH64_CALL26	aw22xxx_i2c_read
    47bc: 385f43a8     	ldurb	w8, [x29, #-0xc]
    47c0: aa1403e0     	mov	x0, x20
    47c4: 52800041     	mov	w1, #0x2                // =2
    47c8: 121f7902     	and	w2, w8, #0xfffffffe
    47cc: 381f43a2     	sturb	w2, [x29, #-0xc]
    47d0: 97fff71e     	bl	0x2448 <aw22xxx_alloc_name_array+0x15c>
		00000000000047d0:  R_AARCH64_CALL26	aw22xxx_i2c_write
    47d4: 5280fa00     	mov	w0, #0x7d0              // =2000
    47d8: 52817701     	mov	w1, #0xbb8              // =3000
    47dc: 52800042     	mov	w2, #0x2                // =2
    47e0: 94000000     	bl	0x47e0 <aw22xxx_effect_store+0x2c0>
		00000000000047e0:  R_AARCH64_CALL26	usleep_range_state
    47e4: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_loaded+0x164>
		00000000000047e4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x6218
    47e8: 3900011f     	strb	wzr, [x8]
		00000000000047e8:  R_AARCH64_LDST8_ABS_LO12_NC	aw22xxx_exact_bss_base+0x6218
    47ec: 17ffffd1     	b	0x4730 <aw22xxx_effect_store+0x210>
    47f0: 94000000     	bl	0x47f0 <aw22xxx_effect_store+0x2d0>
		00000000000047f0:  R_AARCH64_CALL26	__stack_chk_fail
