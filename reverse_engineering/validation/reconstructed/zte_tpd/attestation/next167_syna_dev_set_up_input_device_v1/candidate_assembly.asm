
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a5b4 <syna_dev_set_up_input_device>:
    a5b4: d503233f     	paciasp
    a5b8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a5bc: f9000bf5     	str	x21, [sp, #0x10]
    a5c0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a5c4: 910003fd     	mov	x29, sp
    a5c8: f9400008     	ldr	x8, [x0]
    a5cc: 39402508     	ldrb	w8, [x8, #0x9]
    a5d0: 7100051f     	cmp	w8, #0x1
    a5d4: 54001061     	b.ne	0xa7e0 <syna_dev_set_up_input_device+0x22c>
    a5d8: aa0003f3     	mov	x19, x0
    a5dc: 94000000     	bl	0xa5dc <syna_dev_set_up_input_device+0x28>
		000000000000a5dc:  R_AARCH64_CALL26	syna_dev_free_input_events
    a5e0: f9400268     	ldr	x8, [x19]
    a5e4: b9401109     	ldr	w9, [x8, #0x10]
    a5e8: 35000069     	cbnz	w9, 0xa5f4 <syna_dev_set_up_input_device+0x40>
    a5ec: b940150a     	ldr	w10, [x8, #0x14]
    a5f0: 34000eca     	cbz	w10, 0xa7c8 <syna_dev_set_up_input_device+0x214>
    a5f4: b943ba6a     	ldr	w10, [x19, #0x3b8]
    a5f8: 6b09015f     	cmp	w10, w9
    a5fc: 54000121     	b.ne	0xa620 <syna_dev_set_up_input_device+0x6c>
    a600: b943be69     	ldr	w9, [x19, #0x3bc]
    a604: b940150a     	ldr	w10, [x8, #0x14]
    a608: 6b0a013f     	cmp	w9, w10
    a60c: 540000a1     	b.ne	0xa620 <syna_dev_set_up_input_device+0x6c>
    a610: b943c269     	ldr	w9, [x19, #0x3c0]
    a614: b9401908     	ldr	w8, [x8, #0x18]
    a618: 6b08013f     	cmp	w9, w8
    a61c: 54001380     	b.eq	0xa88c <syna_dev_set_up_input_device+0x2d8>
    a620: 9109e260     	add	x0, x19, #0x278
    a624: 94000000     	bl	0xa624 <syna_dev_set_up_input_device+0x70>
		000000000000a624:  R_AARCH64_CALL26	mutex_lock
    a628: f941da60     	ldr	x0, [x19, #0x3b0]
    a62c: b4000060     	cbz	x0, 0xa638 <syna_dev_set_up_input_device+0x84>
    a630: 94000000     	bl	0xa630 <syna_dev_set_up_input_device+0x7c>
		000000000000a630:  R_AARCH64_CALL26	input_unregister_device
    a634: f901da7f     	str	xzr, [x19, #0x3b0]
    a638: f9400275     	ldr	x21, [x19]
    a63c: 94000000     	bl	0xa63c <syna_dev_set_up_input_device+0x88>
		000000000000a63c:  R_AARCH64_CALL26	syna_request_managed_device
    a640: b4000dc0     	cbz	x0, 0xa7f8 <syna_dev_set_up_input_device+0x244>
    a644: 94000000     	bl	0xa644 <syna_dev_set_up_input_device+0x90>
		000000000000a644:  R_AARCH64_CALL26	devm_input_allocate_device
    a648: b4000e60     	cbz	x0, 0xa814 <syna_dev_set_up_input_device+0x260>
    a64c: f9400668     	ldr	x8, [x19, #0x8]
    a650: 90000009     	adrp	x9, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56ab
    a654: 91000129     	add	x9, x9, #0x0
		000000000000a654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56ab
    a658: 9000000a     	adrp	x10, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e2d
    a65c: 9100014a     	add	x10, x10, #0x0
		000000000000a65c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e2d
    a660: aa0003f4     	mov	x20, x0
    a664: f9403908     	ldr	x8, [x8, #0x70]
    a668: a9002809     	stp	x9, x10, [x0]
    a66c: 320083e9     	mov	w9, #0x10001            // =65537
    a670: b9001c09     	str	w9, [x0, #0x1c]
    a674: f9014808     	str	x8, [x0, #0x290]
    a678: f9016413     	str	x19, [x0, #0x2c8]
    a67c: 1400008e     	b	0xa8b4 <syna_dev_set_up_input_device+0x300>
    a680: 9100a288     	add	x8, x20, #0x28
    a684: 52800029     	mov	w9, #0x1                // =1
    a688: f829311f     	stset	x9, [x8]
    a68c: 14000091     	b	0xa8d0 <syna_dev_set_up_input_device+0x31c>
    a690: 9100a288     	add	x8, x20, #0x28
    a694: 52800049     	mov	w9, #0x2                // =2
    a698: f829311f     	stset	x9, [x8]
    a69c: 14000094     	b	0xa8ec <syna_dev_set_up_input_device+0x338>
    a6a0: 9100a288     	add	x8, x20, #0x28
    a6a4: 52800109     	mov	w9, #0x8                // =8
    a6a8: f829311f     	stset	x9, [x8]
    a6ac: 14000097     	b	0xa908 <syna_dev_set_up_input_device+0x354>
    a6b0: 91016288     	add	x8, x20, #0x58
    a6b4: 52808009     	mov	w9, #0x400              // =1024
    a6b8: f829311f     	stset	x9, [x8]
    a6bc: 1400009a     	b	0xa924 <syna_dev_set_up_input_device+0x370>
    a6c0: 91016288     	add	x8, x20, #0x58
    a6c4: 52800409     	mov	w9, #0x20               // =32
    a6c8: f829311f     	stset	x9, [x8]
    a6cc: 1400009d     	b	0xa940 <syna_dev_set_up_input_device+0x38c>
    a6d0: 91008288     	add	x8, x20, #0x20
    a6d4: 52800049     	mov	w9, #0x2                // =2
    a6d8: f829311f     	stset	x9, [x8]
    a6dc: 140000a0     	b	0xa95c <syna_dev_set_up_input_device+0x3a8>
    a6e0: 91010288     	add	x8, x20, #0x40
    a6e4: 52900009     	mov	w9, #0x8000             // =32768
    a6e8: f829311f     	stset	x9, [x8]
    a6ec: aa1403e0     	mov	x0, x20
    a6f0: 52800021     	mov	w1, #0x1                // =1
    a6f4: 528011e2     	mov	w2, #0x8f               // =143
    a6f8: 94000000     	bl	0xa6f8 <syna_dev_set_up_input_device+0x144>
		000000000000a6f8:  R_AARCH64_CALL26	input_set_capability
    a6fc: b94012a3     	ldr	w3, [x21, #0x10]
    a700: aa1403e0     	mov	x0, x20
    a704: 528006a1     	mov	w1, #0x35               // =53
    a708: 2a1f03e2     	mov	w2, wzr
    a70c: 2a1f03e4     	mov	w4, wzr
    a710: 2a1f03e5     	mov	w5, wzr
    a714: 94000000     	bl	0xa714 <syna_dev_set_up_input_device+0x160>
		000000000000a714:  R_AARCH64_CALL26	input_set_abs_params
    a718: b94016a3     	ldr	w3, [x21, #0x14]
    a71c: aa1403e0     	mov	x0, x20
    a720: 528006c1     	mov	w1, #0x36               // =54
    a724: 2a1f03e2     	mov	w2, wzr
    a728: 2a1f03e4     	mov	w4, wzr
    a72c: 2a1f03e5     	mov	w5, wzr
    a730: 94000000     	bl	0xa730 <syna_dev_set_up_input_device+0x17c>
		000000000000a730:  R_AARCH64_CALL26	input_set_abs_params
    a734: b9401aa1     	ldr	w1, [x21, #0x18]
    a738: aa1403e0     	mov	x0, x20
    a73c: 52800042     	mov	w2, #0x2                // =2
    a740: 94000000     	bl	0xa740 <syna_dev_set_up_input_device+0x18c>
		000000000000a740:  R_AARCH64_CALL26	input_mt_init_slots
    a744: aa1403e0     	mov	x0, x20
    a748: 52800601     	mov	w1, #0x30               // =48
    a74c: 2a1f03e2     	mov	w2, wzr
    a750: 52801fe3     	mov	w3, #0xff               // =255
    a754: 2a1f03e4     	mov	w4, wzr
    a758: 2a1f03e5     	mov	w5, wzr
    a75c: 94000000     	bl	0xa75c <syna_dev_set_up_input_device+0x1a8>
		000000000000a75c:  R_AARCH64_CALL26	input_set_abs_params
    a760: aa1403e0     	mov	x0, x20
    a764: 52800621     	mov	w1, #0x31               // =49
    a768: 2a1f03e2     	mov	w2, wzr
    a76c: 52801fe3     	mov	w3, #0xff               // =255
    a770: 2a1f03e4     	mov	w4, wzr
    a774: 2a1f03e5     	mov	w5, wzr
    a778: 94000000     	bl	0xa778 <syna_dev_set_up_input_device+0x1c4>
		000000000000a778:  R_AARCH64_CALL26	input_set_abs_params
    a77c: b94012a8     	ldr	w8, [x21, #0x10]
    a780: aa1403e0     	mov	x0, x20
    a784: b903ba68     	str	w8, [x19, #0x3b8]
    a788: b94016a8     	ldr	w8, [x21, #0x14]
    a78c: b903be68     	str	w8, [x19, #0x3bc]
    a790: b9401aa8     	ldr	w8, [x21, #0x18]
    a794: b903c268     	str	w8, [x19, #0x3c0]
    a798: 94000000     	bl	0xa798 <syna_dev_set_up_input_device+0x1e4>
		000000000000a798:  R_AARCH64_CALL26	input_register_device
    a79c: 37f804a0     	tbnz	w0, #0x1f, 0xa830 <syna_dev_set_up_input_device+0x27c>
    a7a0: f9400260     	ldr	x0, [x19]
    a7a4: 90000002     	adrp	x2, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a7a4:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_touch_report
    a7a8: 91000042     	add	x2, x2, #0x0
		000000000000a7a8:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_touch_report
    a7ac: 52800221     	mov	w1, #0x11               // =17
    a7b0: aa1303e3     	mov	x3, x19
    a7b4: f901da74     	str	x20, [x19, #0x3b0]
    a7b8: 94000000     	bl	0xa7b8 <syna_dev_set_up_input_device+0x204>
		000000000000a7b8:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
    a7bc: 37f805c0     	tbnz	w0, #0x1f, 0xa874 <syna_dev_set_up_input_device+0x2c0>
    a7c0: 9109e260     	add	x0, x19, #0x278
    a7c4: 94000000     	bl	0xa7c4 <syna_dev_set_up_input_device+0x210>
		000000000000a7c4:  R_AARCH64_CALL26	mutex_unlock
    a7c8: 2a1f03e0     	mov	w0, wzr
    a7cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a7d0: f9400bf5     	ldr	x21, [sp, #0x10]
    a7d4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a7d8: d50323bf     	autiasp
    a7dc: d65f03c0     	ret
    a7e0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a7e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_32EDC
    a7e4: 91000000     	add	x0, x0, #0x0
		000000000000a7e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_32EDC
    a7e8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a7e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f3e
    a7ec: 91000021     	add	x1, x1, #0x0
		000000000000a7ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f3e
    a7f0: 94000000     	bl	0xa7f0 <syna_dev_set_up_input_device+0x23c>
		000000000000a7f0:  R_AARCH64_CALL26	_printk
    a7f4: 17fffff5     	b	0xa7c8 <syna_dev_set_up_input_device+0x214>
    a7f8: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a7f8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    a7fc: 91000000     	add	x0, x0, #0x0
		000000000000a7fc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    a800: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b3
    a804: 91000021     	add	x1, x1, #0x0
		000000000000a804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b3
    a808: 94000000     	bl	0xa808 <syna_dev_set_up_input_device+0x254>
		000000000000a808:  R_AARCH64_CALL26	_printk
    a80c: 128002b5     	mov	w21, #-0x16             // =-22
    a810: 14000010     	b	0xa850 <syna_dev_set_up_input_device+0x29c>
    a814: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a814:  R_AARCH64_ADR_PREL_PG_HI21	unk_375CB
    a818: 91000000     	add	x0, x0, #0x0
		000000000000a818:  R_AARCH64_ADD_ABS_LO12_NC	unk_375CB
    a81c: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a81c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b3
    a820: 91000021     	add	x1, x1, #0x0
		000000000000a820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b3
    a824: 94000000     	bl	0xa824 <syna_dev_set_up_input_device+0x270>
		000000000000a824:  R_AARCH64_CALL26	_printk
    a828: 12800255     	mov	w21, #-0x13             // =-19
    a82c: 14000009     	b	0xa850 <syna_dev_set_up_input_device+0x29c>
    a830: 2a0003f5     	mov	w21, w0
    a834: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a834:  R_AARCH64_ADR_PREL_PG_HI21	unk_375F8
    a838: 91000000     	add	x0, x0, #0x0
		000000000000a838:  R_AARCH64_ADD_ABS_LO12_NC	unk_375F8
    a83c: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a83c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b3
    a840: 91000021     	add	x1, x1, #0x0
		000000000000a840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b3
    a844: 94000000     	bl	0xa844 <syna_dev_set_up_input_device+0x290>
		000000000000a844:  R_AARCH64_CALL26	_printk
    a848: aa1403e0     	mov	x0, x20
    a84c: 94000000     	bl	0xa84c <syna_dev_set_up_input_device+0x298>
		000000000000a84c:  R_AARCH64_CALL26	input_free_device
    a850: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a850:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C485
    a854: 91000000     	add	x0, x0, #0x0
		000000000000a854:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C485
    a858: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f3e
    a85c: 91000021     	add	x1, x1, #0x0
		000000000000a85c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f3e
    a860: 94000000     	bl	0xa860 <syna_dev_set_up_input_device+0x2ac>
		000000000000a860:  R_AARCH64_CALL26	_printk
    a864: 9109e260     	add	x0, x19, #0x278
    a868: 94000000     	bl	0xa868 <syna_dev_set_up_input_device+0x2b4>
		000000000000a868:  R_AARCH64_CALL26	mutex_unlock
    a86c: 2a1503e0     	mov	w0, w21
    a870: 17ffffd7     	b	0xa7cc <syna_dev_set_up_input_device+0x218>
    a874: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a874:  R_AARCH64_ADR_PREL_PG_HI21	unk_35F92
    a878: 91000000     	add	x0, x0, #0x0
		000000000000a878:  R_AARCH64_ADD_ABS_LO12_NC	unk_35F92
    a87c: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f3e
    a880: 91000021     	add	x1, x1, #0x0
		000000000000a880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f3e
    a884: 94000000     	bl	0xa884 <syna_dev_set_up_input_device+0x2d0>
		000000000000a884:  R_AARCH64_CALL26	_printk
    a888: 17ffffce     	b	0xa7c0 <syna_dev_set_up_input_device+0x20c>
    a88c: 7100293f     	cmp	w9, #0xa
    a890: 54000088     	b.hi	0xa8a0 <syna_dev_set_up_input_device+0x2ec>
    a894: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a894:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CB57
    a898: 91000000     	add	x0, x0, #0x0
		000000000000a898:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CB57
    a89c: 14000003     	b	0xa8a8 <syna_dev_set_up_input_device+0x2f4>
    a8a0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a8a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE7D
    a8a4: 91000000     	add	x0, x0, #0x0
		000000000000a8a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE7D
    a8a8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x50>
		000000000000a8a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2501
    a8ac: 91000021     	add	x1, x1, #0x0
		000000000000a8ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2501
    a8b0: 17ffffd0     	b	0xa7f0 <syna_dev_set_up_input_device+0x23c>
    a8b4: 9100a288     	add	x8, x20, #0x28
    a8b8: f9800111     	prfm	pstl1strm, [x8]
    a8bc: c85f7d09     	ldxr	x9, [x8]
    a8c0: b2400129     	orr	x9, x9, #0x1
    a8c4: c80a7d09     	stxr	w10, x9, [x8]
    a8c8: 35ffffaa     	cbnz	w10, 0xa8bc <syna_dev_set_up_input_device+0x308>
    a8cc: 17ffff70     	b	0xa68c <syna_dev_set_up_input_device+0xd8>
    a8d0: 9100a288     	add	x8, x20, #0x28
    a8d4: f9800111     	prfm	pstl1strm, [x8]
    a8d8: c85f7d09     	ldxr	x9, [x8]
    a8dc: b27f0129     	orr	x9, x9, #0x2
    a8e0: c80a7d09     	stxr	w10, x9, [x8]
    a8e4: 35ffffaa     	cbnz	w10, 0xa8d8 <syna_dev_set_up_input_device+0x324>
    a8e8: 17ffff6d     	b	0xa69c <syna_dev_set_up_input_device+0xe8>
    a8ec: 9100a288     	add	x8, x20, #0x28
    a8f0: f9800111     	prfm	pstl1strm, [x8]
    a8f4: c85f7d09     	ldxr	x9, [x8]
    a8f8: b27d0129     	orr	x9, x9, #0x8
    a8fc: c80a7d09     	stxr	w10, x9, [x8]
    a900: 35ffffaa     	cbnz	w10, 0xa8f4 <syna_dev_set_up_input_device+0x340>
    a904: 17ffff6a     	b	0xa6ac <syna_dev_set_up_input_device+0xf8>
    a908: 91016288     	add	x8, x20, #0x58
    a90c: f9800111     	prfm	pstl1strm, [x8]
    a910: c85f7d09     	ldxr	x9, [x8]
    a914: b2760129     	orr	x9, x9, #0x400
    a918: c80a7d09     	stxr	w10, x9, [x8]
    a91c: 35ffffaa     	cbnz	w10, 0xa910 <syna_dev_set_up_input_device+0x35c>
    a920: 17ffff67     	b	0xa6bc <syna_dev_set_up_input_device+0x108>
    a924: 91016288     	add	x8, x20, #0x58
    a928: f9800111     	prfm	pstl1strm, [x8]
    a92c: c85f7d09     	ldxr	x9, [x8]
    a930: b27b0129     	orr	x9, x9, #0x20
    a934: c80a7d09     	stxr	w10, x9, [x8]
    a938: 35ffffaa     	cbnz	w10, 0xa92c <syna_dev_set_up_input_device+0x378>
    a93c: 17ffff64     	b	0xa6cc <syna_dev_set_up_input_device+0x118>
    a940: 91008288     	add	x8, x20, #0x20
    a944: f9800111     	prfm	pstl1strm, [x8]
    a948: c85f7d09     	ldxr	x9, [x8]
    a94c: b27f0129     	orr	x9, x9, #0x2
    a950: c80a7d09     	stxr	w10, x9, [x8]
    a954: 35ffffaa     	cbnz	w10, 0xa948 <syna_dev_set_up_input_device+0x394>
    a958: 17ffff61     	b	0xa6dc <syna_dev_set_up_input_device+0x128>
    a95c: 91010288     	add	x8, x20, #0x40
    a960: f9800111     	prfm	pstl1strm, [x8]
    a964: c85f7d09     	ldxr	x9, [x8]
    a968: b2710129     	orr	x9, x9, #0x8000
    a96c: c80a7d09     	stxr	w10, x9, [x8]
    a970: 35ffffaa     	cbnz	w10, 0xa964 <syna_dev_set_up_input_device+0x3b0>
    a974: 17ffff5e     	b	0xa6ec <syna_dev_set_up_input_device+0x138>
