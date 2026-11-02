
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b784 <syna_tpd_register_fw_class>:
   1b784: d503233f     	paciasp
   1b788: d100c3ff     	sub	sp, sp, #0x30
   1b78c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1b790: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b794: 910043fd     	add	x29, sp, #0x10
   1b798: d5384108     	mrs	x8, SP_EL0
   1b79c: aa0003f3     	mov	x19, x0
   1b7a0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b7a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8062
   1b7a4: 91000000     	add	x0, x0, #0x0
		000000000001b7a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8062
   1b7a8: f9438908     	ldr	x8, [x8, #0x710]
   1b7ac: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b7ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4446
   1b7b0: 91000021     	add	x1, x1, #0x0
		000000000001b7b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4446
   1b7b4: f90007e8     	str	x8, [sp, #0x8]
   1b7b8: 94000000     	bl	0x1b7b8 <syna_tpd_register_fw_class+0x34>
		000000000001b7b8:  R_AARCH64_CALL26	_printk
   1b7bc: 52800141     	mov	w1, #0xa                // =10
   1b7c0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b7c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   1b7c4: 91000000     	add	x0, x0, #0x0
		000000000001b7c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   1b7c8: 90000003     	adrp	x3, 0x1b000 <string_change+0x3a8>
		000000000001b7c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc720
   1b7cc: 91000063     	add	x3, x3, #0x0
		000000000001b7cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc720
   1b7d0: 72a000c1     	movk	w1, #0x6, lsl #16
   1b7d4: 52800022     	mov	w2, #0x1                // =1
   1b7d8: 94000000     	bl	0x1b7d8 <syna_tpd_register_fw_class+0x54>
		000000000001b7d8:  R_AARCH64_CALL26	alloc_workqueue
   1b7dc: f9034660     	str	x0, [x19, #0x688]
   1b7e0: b50000e0     	cbnz	x0, 0x1b7fc <syna_tpd_register_fw_class+0x78>
   1b7e4: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc734
   1b7e8: 91000000     	add	x0, x0, #0x0
		000000000001b7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc734
   1b7ec: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4446
   1b7f0: 91000021     	add	x1, x1, #0x0
		000000000001b7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4446
   1b7f4: 94000000     	bl	0x1b7f4 <syna_tpd_register_fw_class+0x70>
		000000000001b7f4:  R_AARCH64_CALL26	_printk
   1b7f8: 1400003c     	b	0x1b8e8 <syna_tpd_register_fw_class+0x164>
   1b7fc: 90000014     	adrp	x20, 0x1b000 <string_change+0x3a8>
		000000000001b7fc:  R_AARCH64_ADR_PREL_PG_HI21	syna_get_charger_status.batt_psy
   1b800: f90003ff     	str	xzr, [sp]
   1b804: f9400280     	ldr	x0, [x20]
		000000000001b804:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1b808: b5000100     	cbnz	x0, 0x1b828 <syna_tpd_register_fw_class+0xa4>
   1b80c: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba48
   1b810: 91000000     	add	x0, x0, #0x0
		000000000001b810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba48
   1b814: 94000000     	bl	0x1b814 <syna_tpd_register_fw_class+0x90>
		000000000001b814:  R_AARCH64_CALL26	power_supply_get_by_name
   1b818: f9000280     	str	x0, [x20]
		000000000001b818:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1b81c: b5000060     	cbnz	x0, 0x1b828 <syna_tpd_register_fw_class+0xa4>
   1b820: 2a1f03e8     	mov	w8, wzr
   1b824: 1400000d     	b	0x1b858 <syna_tpd_register_fw_class+0xd4>
   1b828: f9400008     	ldr	x8, [x0]
   1b82c: 910003e2     	mov	x2, sp
   1b830: 2a1f03e1     	mov	w1, wzr
   1b834: f9401508     	ldr	x8, [x8, #0x28]
   1b838: b85fc110     	ldur	w16, [x8, #-0x4]
   1b83c: 72819a71     	movk	w17, #0xcd3
   1b840: 72bd1331     	movk	w17, #0xe899, lsl #16
   1b844: 6b11021f     	cmp	w16, w17
   1b848: 54000040     	b.eq	0x1b850 <syna_tpd_register_fw_class+0xcc>
   1b84c: d4304500     	brk	#0x8228
   1b850: d63f0100     	blr	x8
   1b854: b94003e8     	ldr	w8, [sp]
   1b858: 7100111f     	cmp	w8, #0x4
   1b85c: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1b860: 91000000     	add	x0, x0, #0x0
		000000000001b860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1b864: 7a411904     	ccmp	w8, #0x1, #0x4, ne
   1b868: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1b86c: 91000021     	add	x1, x1, #0x0
		000000000001b86c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1b870: 1a9f17f4     	cset	w20, eq
   1b874: 2a1403e2     	mov	w2, w20
   1b878: 94000000     	bl	0x1b878 <syna_tpd_register_fw_class+0xf4>
		000000000001b878:  R_AARCH64_CALL26	_printk
   1b87c: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b87c:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1b880: b26b7be9     	mov	x9, #0xfffffffe00000    // =4503599625273344
   1b884: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b884:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1b888: 91000021     	add	x1, x1, #0x0
		000000000001b888:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   1b88c: 39000114     	strb	w20, [x8]
		000000000001b88c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1b890: 9118a268     	add	x8, x19, #0x628
   1b894: f9031269     	str	x9, [x19, #0x620]
   1b898: 91190260     	add	x0, x19, #0x640
   1b89c: 52a00402     	mov	w2, #0x200000           // =2097152
   1b8a0: f9031668     	str	x8, [x19, #0x628]
   1b8a4: aa1f03e3     	mov	x3, xzr
   1b8a8: aa1f03e4     	mov	x4, xzr
   1b8ac: f9031a68     	str	x8, [x19, #0x630]
   1b8b0: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b8b0:  R_AARCH64_ADR_PREL_PG_HI21	syna_work_charger_detect_work
   1b8b4: 91000108     	add	x8, x8, #0x0
		000000000001b8b4:  R_AARCH64_ADD_ABS_LO12_NC	syna_work_charger_detect_work
   1b8b8: f9031e68     	str	x8, [x19, #0x638]
   1b8bc: 94000000     	bl	0x1b8bc <syna_tpd_register_fw_class+0x138>
		000000000001b8bc:  R_AARCH64_CALL26	init_timer_key
   1b8c0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b8c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6152
   1b8c4: 91000000     	add	x0, x0, #0x0
		000000000001b8c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6152
   1b8c8: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b8c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2e
   1b8cc: 91000021     	add	x1, x1, #0x0
		000000000001b8cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2e
   1b8d0: 94000000     	bl	0x1b8d0 <syna_tpd_register_fw_class+0x14c>
		000000000001b8d0:  R_AARCH64_CALL26	_printk
   1b8d4: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b8d4:  R_AARCH64_ADR_PREL_PG_HI21	syna_charger_notify_call
   1b8d8: 91000108     	add	x8, x8, #0x0
		000000000001b8d8:  R_AARCH64_ADD_ABS_LO12_NC	syna_charger_notify_call
   1b8dc: 911a4260     	add	x0, x19, #0x690
   1b8e0: f9034a68     	str	x8, [x19, #0x690]
   1b8e4: 94000000     	bl	0x1b8e4 <syna_tpd_register_fw_class+0x160>
		000000000001b8e4:  R_AARCH64_CALL26	power_supply_reg_notifier
   1b8e8: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b8e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b8ec: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b8ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_init_tpinfo
   1b8f0: 91000129     	add	x9, x9, #0x0
		000000000001b8f0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_init_tpinfo
   1b8f4: f9400108     	ldr	x8, [x8]
		000000000001b8f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b8f8: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b8f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f4a
   1b8fc: 91000000     	add	x0, x0, #0x0
		000000000001b8fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f4a
   1b900: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4446
   1b904: 91000021     	add	x1, x1, #0x0
		000000000001b904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4446
   1b908: f9071109     	str	x9, [x8, #0xe20]
   1b90c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b90c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_wakegesture
   1b910: 91000129     	add	x9, x9, #0x0
		000000000001b910:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_wakegesture
   1b914: f9071509     	str	x9, [x8, #0xe28]
   1b918: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b918:  R_AARCH64_ADR_PREL_PG_HI21	tpd_enable_wakegesture
   1b91c: 91000129     	add	x9, x9, #0x0
		000000000001b91c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_enable_wakegesture
   1b920: f9071909     	str	x9, [x8, #0xe30]
   1b924: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b924:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_singlegamegesture
   1b928: 91000129     	add	x9, x9, #0x0
		000000000001b928:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_singlegamegesture
   1b92c: f9076d09     	str	x9, [x8, #0xed8]
   1b930: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b930:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_singlegamegesture
   1b934: 91000129     	add	x9, x9, #0x0
		000000000001b934:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_singlegamegesture
   1b938: f9077109     	str	x9, [x8, #0xee0]
   1b93c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b93c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_singleaodgesture
   1b940: 91000129     	add	x9, x9, #0x0
		000000000001b940:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_singleaodgesture
   1b944: f9076509     	str	x9, [x8, #0xec8]
   1b948: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b948:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_singleaodgesture
   1b94c: 91000129     	add	x9, x9, #0x0
		000000000001b94c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_singleaodgesture
   1b950: f9076909     	str	x9, [x8, #0xed0]
   1b954: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b954:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_singlefpgesture
   1b958: 91000129     	add	x9, x9, #0x0
		000000000001b958:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_singlefpgesture
   1b95c: f9075d09     	str	x9, [x8, #0xeb8]
   1b960: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b960:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_singlefpgesture
   1b964: 91000129     	add	x9, x9, #0x0
		000000000001b964:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_singlefpgesture
   1b968: f9076109     	str	x9, [x8, #0xec0]
   1b96c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b96c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_one_key
   1b970: 91000129     	add	x9, x9, #0x0
		000000000001b970:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_one_key
   1b974: f9077d09     	str	x9, [x8, #0xef8]
   1b978: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b978:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_one_key
   1b97c: 91000129     	add	x9, x9, #0x0
		000000000001b97c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_one_key
   1b980: f9077909     	str	x9, [x8, #0xef0]
   1b984: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b984:  R_AARCH64_ADR_PREL_PG_HI21	tpd_test_cmd_store
   1b988: 91000129     	add	x9, x9, #0x0
		000000000001b988:  R_AARCH64_ADD_ABS_LO12_NC	tpd_test_cmd_store
   1b98c: f907d109     	str	x9, [x8, #0xfa0]
   1b990: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b990:  R_AARCH64_ADR_PREL_PG_HI21	tpd_test_cmd_show
   1b994: 91000129     	add	x9, x9, #0x0
		000000000001b994:  R_AARCH64_ADD_ABS_LO12_NC	tpd_test_cmd_show
   1b998: f907cd09     	str	x9, [x8, #0xf98]
   1b99c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b99c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_tp_report_rate
   1b9a0: 91000129     	add	x9, x9, #0x0
		000000000001b9a0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_tp_report_rate
   1b9a4: f9078d09     	str	x9, [x8, #0xf18]
   1b9a8: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9a8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_tp_report_rate
   1b9ac: 91000129     	add	x9, x9, #0x0
		000000000001b9ac:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_tp_report_rate
   1b9b0: f9078909     	str	x9, [x8, #0xf10]
   1b9b4: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9b4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_sensibility_level
   1b9b8: 91000129     	add	x9, x9, #0x0
		000000000001b9b8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_sensibility_level
   1b9bc: f907b109     	str	x9, [x8, #0xf60]
   1b9c0: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_sensibility_level
   1b9c4: 91000129     	add	x9, x9, #0x0
		000000000001b9c4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_sensibility_level
   1b9c8: f907b509     	str	x9, [x8, #0xf68]
   1b9cc: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_follow_hand_level
   1b9d0: 91000129     	add	x9, x9, #0x0
		000000000001b9d0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_follow_hand_level
   1b9d4: f9079509     	str	x9, [x8, #0xf28]
   1b9d8: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9d8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_follow_hand_level
   1b9dc: 91000129     	add	x9, x9, #0x0
		000000000001b9dc:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_follow_hand_level
   1b9e0: f9079109     	str	x9, [x8, #0xf20]
   1b9e4: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9e4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_stability_level
   1b9e8: 91000129     	add	x9, x9, #0x0
		000000000001b9e8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_stability_level
   1b9ec: f9079d09     	str	x9, [x8, #0xf38]
   1b9f0: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_stability_level
   1b9f4: 91000129     	add	x9, x9, #0x0
		000000000001b9f4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_stability_level
   1b9f8: f9079909     	str	x9, [x8, #0xf30]
   1b9fc: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b9fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_rotation_limit_level
   1ba00: 91000129     	add	x9, x9, #0x0
		000000000001ba00:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_rotation_limit_level
   1ba04: f9074509     	str	x9, [x8, #0xe88]
   1ba08: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba08:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_rotation_limit_level
   1ba0c: 91000129     	add	x9, x9, #0x0
		000000000001ba0c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_rotation_limit_level
   1ba10: f9074109     	str	x9, [x8, #0xe80]
   1ba14: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba14:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_display_rotation
   1ba18: 91000129     	add	x9, x9, #0x0
		000000000001ba18:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_display_rotation
   1ba1c: f9074909     	str	x9, [x8, #0xe90]
   1ba20: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba20:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_play_game
   1ba24: 91000129     	add	x9, x9, #0x0
		000000000001ba24:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_play_game
   1ba28: f9078109     	str	x9, [x8, #0xf00]
   1ba2c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba2c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_play_game
   1ba30: 91000129     	add	x9, x9, #0x0
		000000000001ba30:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_play_game
   1ba34: f9078509     	str	x9, [x8, #0xf08]
   1ba38: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_game_partition
   1ba3c: 91000129     	add	x9, x9, #0x0
		000000000001ba3c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_game_partition
   1ba40: f907a909     	str	x9, [x8, #0xf50]
   1ba44: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba44:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_frame_data
   1ba48: 91000129     	add	x9, x9, #0x0
		000000000001ba48:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_frame_data
   1ba4c: f9080109     	str	x9, [x8, #0x1000]
   1ba50: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_frame_data
   1ba54: 91000129     	add	x9, x9, #0x0
		000000000001ba54:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_frame_data
   1ba58: f907fd09     	str	x9, [x8, #0xff8]
   1ba5c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba5c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_palm_mode
   1ba60: 91000129     	add	x9, x9, #0x0
		000000000001ba60:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_palm_mode
   1ba64: f907d509     	str	x9, [x8, #0xfa8]
   1ba68: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba68:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_palm_mode
   1ba6c: 91000129     	add	x9, x9, #0x0
		000000000001ba6c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_palm_mode
   1ba70: f907d909     	str	x9, [x8, #0xfb0]
   1ba74: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba74:  R_AARCH64_ADR_PREL_PG_HI21	syna_ghost_check_reset
   1ba78: 91000129     	add	x9, x9, #0x0
		000000000001ba78:  R_AARCH64_ADD_ABS_LO12_NC	syna_ghost_check_reset
   1ba7c: f907f909     	str	x9, [x8, #0xff0]
   1ba80: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba80:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_fake_sleep
   1ba84: 91000129     	add	x9, x9, #0x0
		000000000001ba84:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_fake_sleep
   1ba88: f907e909     	str	x9, [x8, #0xfd0]
   1ba8c: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba8c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_fake_sleep
   1ba90: 91000129     	add	x9, x9, #0x0
		000000000001ba90:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_fake_sleep
   1ba94: f907e509     	str	x9, [x8, #0xfc8]
   1ba98: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001ba98:  R_AARCH64_ADR_PREL_PG_HI21	tpd_set_screen_off_awake
   1ba9c: 91000129     	add	x9, x9, #0x0
		000000000001ba9c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_set_screen_off_awake
   1baa0: f907f109     	str	x9, [x8, #0xfe0]
   1baa4: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001baa4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_get_screen_off_awake
   1baa8: 91000129     	add	x9, x9, #0x0
		000000000001baa8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_get_screen_off_awake
   1baac: f906dd13     	str	x19, [x8, #0xdb8]
   1bab0: f907ed09     	str	x9, [x8, #0xfd8]
   1bab4: b943ba69     	ldr	w9, [x19, #0x3b8]
   1bab8: 79088509     	strh	w9, [x8, #0x442]
   1babc: b943be69     	ldr	w9, [x19, #0x3bc]
   1bac0: 79088909     	strh	w9, [x8, #0x444]
   1bac4: 94000000     	bl	0x1bac4 <syna_tpd_register_fw_class+0x340>
		000000000001bac4:  R_AARCH64_CALL26	_printk
   1bac8: d5384108     	mrs	x8, SP_EL0
   1bacc: f9438908     	ldr	x8, [x8, #0x710]
   1bad0: f94007e9     	ldr	x9, [sp, #0x8]
   1bad4: eb09011f     	cmp	x8, x9
   1bad8: 540000c1     	b.ne	0x1baf0 <syna_tpd_register_fw_class+0x36c>
   1badc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1bae0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1bae4: 9100c3ff     	add	sp, sp, #0x30
   1bae8: d50323bf     	autiasp
   1baec: d65f03c0     	ret
   1baf0: 94000000     	bl	0x1baf0 <syna_tpd_register_fw_class+0x36c>
		000000000001baf0:  R_AARCH64_CALL26	__stack_chk_fail
