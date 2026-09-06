
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b728 <syna_tpd_register_fw_class>:
   1b728: d503233f     	paciasp
   1b72c: d100c3ff     	sub	sp, sp, #0x30
   1b730: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1b734: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b738: 910043fd     	add	x29, sp, #0x10
   1b73c: d5384108     	mrs	x8, SP_EL0
   1b740: aa0003f3     	mov	x19, x0
   1b744: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8062
   1b748: 91000000     	add	x0, x0, #0x0
		000000000001b748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8062
   1b74c: f9438908     	ldr	x8, [x8, #0x710]
   1b750: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4446
   1b754: 91000021     	add	x1, x1, #0x0
		000000000001b754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4446
   1b758: f90007e8     	str	x8, [sp, #0x8]
   1b75c: 94000000     	bl	0x1b75c <syna_tpd_register_fw_class+0x34>
		000000000001b75c:  R_AARCH64_CALL26	_printk
   1b760: 52800141     	mov	w1, #0xa                // =10
   1b764: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   1b768: 91000000     	add	x0, x0, #0x0
		000000000001b768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   1b76c: 90000003     	adrp	x3, 0x1b000 <string_change+0x404>
		000000000001b76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc720
   1b770: 91000063     	add	x3, x3, #0x0
		000000000001b770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc720
   1b774: 72a000c1     	movk	w1, #0x6, lsl #16
   1b778: 52800022     	mov	w2, #0x1                // =1
   1b77c: 94000000     	bl	0x1b77c <syna_tpd_register_fw_class+0x54>
		000000000001b77c:  R_AARCH64_CALL26	alloc_workqueue
   1b780: f9034660     	str	x0, [x19, #0x688]
   1b784: b50000e0     	cbnz	x0, 0x1b7a0 <syna_tpd_register_fw_class+0x78>
   1b788: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc734
   1b78c: 91000000     	add	x0, x0, #0x0
		000000000001b78c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc734
   1b790: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4446
   1b794: 91000021     	add	x1, x1, #0x0
		000000000001b794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4446
   1b798: 94000000     	bl	0x1b798 <syna_tpd_register_fw_class+0x70>
		000000000001b798:  R_AARCH64_CALL26	_printk
   1b79c: 1400003c     	b	0x1b88c <syna_tpd_register_fw_class+0x164>
   1b7a0: 90000014     	adrp	x20, 0x1b000 <string_change+0x404>
		000000000001b7a0:  R_AARCH64_ADR_PREL_PG_HI21	syna_get_charger_status.batt_psy
   1b7a4: f90003ff     	str	xzr, [sp]
   1b7a8: f9400280     	ldr	x0, [x20]
		000000000001b7a8:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1b7ac: b5000100     	cbnz	x0, 0x1b7cc <syna_tpd_register_fw_class+0xa4>
   1b7b0: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b7b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba48
   1b7b4: 91000000     	add	x0, x0, #0x0
		000000000001b7b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba48
   1b7b8: 94000000     	bl	0x1b7b8 <syna_tpd_register_fw_class+0x90>
		000000000001b7b8:  R_AARCH64_CALL26	power_supply_get_by_name
   1b7bc: f9000280     	str	x0, [x20]
		000000000001b7bc:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1b7c0: b5000060     	cbnz	x0, 0x1b7cc <syna_tpd_register_fw_class+0xa4>
   1b7c4: 2a1f03e8     	mov	w8, wzr
   1b7c8: 1400000d     	b	0x1b7fc <syna_tpd_register_fw_class+0xd4>
   1b7cc: f9400008     	ldr	x8, [x0]
   1b7d0: 910003e2     	mov	x2, sp
   1b7d4: 2a1f03e1     	mov	w1, wzr
   1b7d8: f9401508     	ldr	x8, [x8, #0x28]
   1b7dc: b85fc110     	ldur	w16, [x8, #-0x4]
   1b7e0: 72819a71     	movk	w17, #0xcd3
   1b7e4: 72bd1331     	movk	w17, #0xe899, lsl #16
   1b7e8: 6b11021f     	cmp	w16, w17
   1b7ec: 54000040     	b.eq	0x1b7f4 <syna_tpd_register_fw_class+0xcc>
   1b7f0: d4304500     	brk	#0x8228
   1b7f4: d63f0100     	blr	x8
   1b7f8: b94003e8     	ldr	w8, [sp]
   1b7fc: 7100111f     	cmp	w8, #0x4
   1b800: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1b804: 91000000     	add	x0, x0, #0x0
		000000000001b804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1b808: 7a411904     	ccmp	w8, #0x1, #0x4, ne
   1b80c: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1b810: 91000021     	add	x1, x1, #0x0
		000000000001b810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1b814: 1a9f17f4     	cset	w20, eq
   1b818: 2a1403e2     	mov	w2, w20
   1b81c: 94000000     	bl	0x1b81c <syna_tpd_register_fw_class+0xf4>
		000000000001b81c:  R_AARCH64_CALL26	_printk
   1b820: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b820:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1b824: b26b7be9     	mov	x9, #0xfffffffe00000    // =4503599625273344
   1b828: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b828:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1b82c: 91000021     	add	x1, x1, #0x0
		000000000001b82c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   1b830: 39000114     	strb	w20, [x8]
		000000000001b830:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1b834: 9118a268     	add	x8, x19, #0x628
   1b838: f9031269     	str	x9, [x19, #0x620]
   1b83c: 91190260     	add	x0, x19, #0x640
   1b840: 52a00402     	mov	w2, #0x200000           // =2097152
   1b844: f9031668     	str	x8, [x19, #0x628]
   1b848: aa1f03e3     	mov	x3, xzr
   1b84c: aa1f03e4     	mov	x4, xzr
   1b850: f9031a68     	str	x8, [x19, #0x630]
   1b854: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b854:  R_AARCH64_ADR_PREL_PG_HI21	syna_work_charger_detect_work
   1b858: 91000108     	add	x8, x8, #0x0
		000000000001b858:  R_AARCH64_ADD_ABS_LO12_NC	syna_work_charger_detect_work
   1b85c: f9031e68     	str	x8, [x19, #0x638]
   1b860: 94000000     	bl	0x1b860 <syna_tpd_register_fw_class+0x138>
		000000000001b860:  R_AARCH64_CALL26	init_timer_key
   1b864: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6152
   1b868: 91000000     	add	x0, x0, #0x0
		000000000001b868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6152
   1b86c: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b86c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2e
   1b870: 91000021     	add	x1, x1, #0x0
		000000000001b870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2e
   1b874: 94000000     	bl	0x1b874 <syna_tpd_register_fw_class+0x14c>
		000000000001b874:  R_AARCH64_CALL26	_printk
   1b878: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b878:  R_AARCH64_ADR_PREL_PG_HI21	syna_charger_notify_call
   1b87c: 91000108     	add	x8, x8, #0x0
		000000000001b87c:  R_AARCH64_ADD_ABS_LO12_NC	syna_charger_notify_call
   1b880: 911a4260     	add	x0, x19, #0x690
   1b884: f9034a68     	str	x8, [x19, #0x690]
   1b888: 94000000     	bl	0x1b888 <syna_tpd_register_fw_class+0x160>
		000000000001b888:  R_AARCH64_CALL26	power_supply_reg_notifier
   1b88c: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b88c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b890: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b890:  R_AARCH64_ADR_PREL_PG_HI21	tpd_init_tpinfo
   1b894: 91000129     	add	x9, x9, #0x0
		000000000001b894:  R_AARCH64_ADD_ABS_LO12_NC	tpd_init_tpinfo
   1b898: f9400108     	ldr	x8, [x8]
		000000000001b898:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b89c: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b89c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f4a
   1b8a0: 91000000     	add	x0, x0, #0x0
		000000000001b8a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f4a
   1b8a4: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b8a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4446
   1b8a8: 91000021     	add	x1, x1, #0x0
		000000000001b8a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4446
   1b8ac: f9071109     	str	x9, [x8, #0xe20]
   1b8b0: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8b0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_wakegesture
   1b8b4: 91000129     	add	x9, x9, #0x0
		000000000001b8b4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_wakegesture
   1b8b8: f9071509     	str	x9, [x8, #0xe28]
   1b8bc: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8bc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_enable_wakegesture
   1b8c0: 91000129     	add	x9, x9, #0x0
		000000000001b8c0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_enable_wakegesture
   1b8c4: f9071909     	str	x9, [x8, #0xe30]
   1b8c8: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8c8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_singlegamegesture
   1b8cc: 91000129     	add	x9, x9, #0x0
		000000000001b8cc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_singlegamegesture
   1b8d0: f9076d09     	str	x9, [x8, #0xed8]
   1b8d4: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8d4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_singlegamegesture
   1b8d8: 91000129     	add	x9, x9, #0x0
		000000000001b8d8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_singlegamegesture
   1b8dc: f9077109     	str	x9, [x8, #0xee0]
   1b8e0: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8e0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_singleaodgesture
   1b8e4: 91000129     	add	x9, x9, #0x0
		000000000001b8e4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_singleaodgesture
   1b8e8: f9076509     	str	x9, [x8, #0xec8]
   1b8ec: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_singleaodgesture
   1b8f0: 91000129     	add	x9, x9, #0x0
		000000000001b8f0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_singleaodgesture
   1b8f4: f9076909     	str	x9, [x8, #0xed0]
   1b8f8: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b8f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_singlefpgesture
   1b8fc: 91000129     	add	x9, x9, #0x0
		000000000001b8fc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_singlefpgesture
   1b900: f9075d09     	str	x9, [x8, #0xeb8]
   1b904: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b904:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_singlefpgesture
   1b908: 91000129     	add	x9, x9, #0x0
		000000000001b908:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_singlefpgesture
   1b90c: f9076109     	str	x9, [x8, #0xec0]
   1b910: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b910:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_one_key
   1b914: 91000129     	add	x9, x9, #0x0
		000000000001b914:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_one_key
   1b918: f9077d09     	str	x9, [x8, #0xef8]
   1b91c: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b91c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_one_key
   1b920: 91000129     	add	x9, x9, #0x0
		000000000001b920:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_one_key
   1b924: f9077909     	str	x9, [x8, #0xef0]
   1b928: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b928:  R_AARCH64_ADR_PREL_PG_HI21	tpd_test_cmd_store
   1b92c: 91000129     	add	x9, x9, #0x0
		000000000001b92c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_test_cmd_store
   1b930: f907d109     	str	x9, [x8, #0xfa0]
   1b934: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b934:  R_AARCH64_ADR_PREL_PG_HI21	tpd_test_cmd_show
   1b938: 91000129     	add	x9, x9, #0x0
		000000000001b938:  R_AARCH64_ADD_ABS_LO12_NC	tpd_test_cmd_show
   1b93c: f907cd09     	str	x9, [x8, #0xf98]
   1b940: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b940:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_tp_report_rate
   1b944: 91000129     	add	x9, x9, #0x0
		000000000001b944:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_tp_report_rate
   1b948: f9078d09     	str	x9, [x8, #0xf18]
   1b94c: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b94c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_tp_report_rate
   1b950: 91000129     	add	x9, x9, #0x0
		000000000001b950:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_tp_report_rate
   1b954: f9078909     	str	x9, [x8, #0xf10]
   1b958: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b958:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_sensibility_level
   1b95c: 91000129     	add	x9, x9, #0x0
		000000000001b95c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_sensibility_level
   1b960: f907b109     	str	x9, [x8, #0xf60]
   1b964: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b964:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_sensibility_level
   1b968: 91000129     	add	x9, x9, #0x0
		000000000001b968:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_sensibility_level
   1b96c: f907b509     	str	x9, [x8, #0xf68]
   1b970: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b970:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_follow_hand_level
   1b974: 91000129     	add	x9, x9, #0x0
		000000000001b974:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_follow_hand_level
   1b978: f9079509     	str	x9, [x8, #0xf28]
   1b97c: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b97c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_follow_hand_level
   1b980: 91000129     	add	x9, x9, #0x0
		000000000001b980:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_follow_hand_level
   1b984: f9079109     	str	x9, [x8, #0xf20]
   1b988: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b988:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_stability_level
   1b98c: 91000129     	add	x9, x9, #0x0
		000000000001b98c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_stability_level
   1b990: f9079d09     	str	x9, [x8, #0xf38]
   1b994: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b994:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_stability_level
   1b998: 91000129     	add	x9, x9, #0x0
		000000000001b998:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_stability_level
   1b99c: f9079909     	str	x9, [x8, #0xf30]
   1b9a0: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9a0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_rotation_limit_level
   1b9a4: 91000129     	add	x9, x9, #0x0
		000000000001b9a4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_rotation_limit_level
   1b9a8: f9074509     	str	x9, [x8, #0xe88]
   1b9ac: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9ac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_rotation_limit_level
   1b9b0: 91000129     	add	x9, x9, #0x0
		000000000001b9b0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_rotation_limit_level
   1b9b4: f9074109     	str	x9, [x8, #0xe80]
   1b9b8: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9b8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_display_rotation
   1b9bc: 91000129     	add	x9, x9, #0x0
		000000000001b9bc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_display_rotation
   1b9c0: f9074909     	str	x9, [x8, #0xe90]
   1b9c4: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9c4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_play_game
   1b9c8: 91000129     	add	x9, x9, #0x0
		000000000001b9c8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_play_game
   1b9cc: f9078109     	str	x9, [x8, #0xf00]
   1b9d0: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_play_game
   1b9d4: 91000129     	add	x9, x9, #0x0
		000000000001b9d4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_play_game
   1b9d8: f9078509     	str	x9, [x8, #0xf08]
   1b9dc: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9dc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_game_partition
   1b9e0: 91000129     	add	x9, x9, #0x0
		000000000001b9e0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_game_partition
   1b9e4: f907a909     	str	x9, [x8, #0xf50]
   1b9e8: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_frame_data
   1b9ec: 91000129     	add	x9, x9, #0x0
		000000000001b9ec:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_frame_data
   1b9f0: f9080109     	str	x9, [x8, #0x1000]
   1b9f4: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b9f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_frame_data
   1b9f8: 91000129     	add	x9, x9, #0x0
		000000000001b9f8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_frame_data
   1b9fc: f907fd09     	str	x9, [x8, #0xff8]
   1ba00: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba00:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_palm_mode
   1ba04: 91000129     	add	x9, x9, #0x0
		000000000001ba04:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_palm_mode
   1ba08: f907d509     	str	x9, [x8, #0xfa8]
   1ba0c: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba0c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_palm_mode
   1ba10: 91000129     	add	x9, x9, #0x0
		000000000001ba10:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_palm_mode
   1ba14: f907d909     	str	x9, [x8, #0xfb0]
   1ba18: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba18:  R_AARCH64_ADR_PREL_PG_HI21	syna_ghost_check_reset
   1ba1c: 91000129     	add	x9, x9, #0x0
		000000000001ba1c:  R_AARCH64_ADD_ABS_LO12_NC	syna_ghost_check_reset
   1ba20: f907f909     	str	x9, [x8, #0xff0]
   1ba24: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba24:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_fake_sleep
   1ba28: 91000129     	add	x9, x9, #0x0
		000000000001ba28:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_fake_sleep
   1ba2c: f907e909     	str	x9, [x8, #0xfd0]
   1ba30: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba30:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_fake_sleep
   1ba34: 91000129     	add	x9, x9, #0x0
		000000000001ba34:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_fake_sleep
   1ba38: f907e509     	str	x9, [x8, #0xfc8]
   1ba3c: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba3c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_screen_off_awake
   1ba40: 91000129     	add	x9, x9, #0x0
		000000000001ba40:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_screen_off_awake
   1ba44: f907f109     	str	x9, [x8, #0xfe0]
   1ba48: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001ba48:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_screen_off_awake
   1ba4c: 91000129     	add	x9, x9, #0x0
		000000000001ba4c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_screen_off_awake
   1ba50: f906dd13     	str	x19, [x8, #0xdb8]
   1ba54: f907ed09     	str	x9, [x8, #0xfd8]
   1ba58: b943ba69     	ldr	w9, [x19, #0x3b8]
   1ba5c: 79088509     	strh	w9, [x8, #0x442]
   1ba60: b943be69     	ldr	w9, [x19, #0x3bc]
   1ba64: 79088909     	strh	w9, [x8, #0x444]
   1ba68: 94000000     	bl	0x1ba68 <syna_tpd_register_fw_class+0x340>
		000000000001ba68:  R_AARCH64_CALL26	_printk
   1ba6c: d5384108     	mrs	x8, SP_EL0
   1ba70: f9438908     	ldr	x8, [x8, #0x710]
   1ba74: f94007e9     	ldr	x9, [sp, #0x8]
   1ba78: eb09011f     	cmp	x8, x9
   1ba7c: 540000c1     	b.ne	0x1ba94 <syna_tpd_register_fw_class+0x36c>
   1ba80: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1ba84: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1ba88: 9100c3ff     	add	sp, sp, #0x30
   1ba8c: d50323bf     	autiasp
   1ba90: d65f03c0     	ret
   1ba94: 94000000     	bl	0x1ba94 <syna_tpd_register_fw_class+0x36c>
		000000000001ba94:  R_AARCH64_CALL26	__stack_chk_fail
