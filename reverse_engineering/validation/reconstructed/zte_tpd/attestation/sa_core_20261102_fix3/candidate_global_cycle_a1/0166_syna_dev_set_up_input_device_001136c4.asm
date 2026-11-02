
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a5b8 <syna_dev_set_up_input_device>:
    a5b8: d503233f     	paciasp
    a5bc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a5c0: f9000bf5     	str	x21, [sp, #0x10]
    a5c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a5c8: 910003fd     	mov	x29, sp
    a5cc: f9400008     	ldr	x8, [x0]
    a5d0: 39402502     	ldrb	w2, [x8, #0x9]
    a5d4: 7100045f     	cmp	w2, #0x1
    a5d8: 54001061     	b.ne	0xa7e4 <syna_dev_set_up_input_device+0x22c>
    a5dc: aa0003f3     	mov	x19, x0
    a5e0: 94000000     	bl	0xa5e0 <syna_dev_set_up_input_device+0x28>
		000000000000a5e0:  R_AARCH64_CALL26	syna_dev_free_input_events
    a5e4: f9400268     	ldr	x8, [x19]
    a5e8: b9401109     	ldr	w9, [x8, #0x10]
    a5ec: 35000069     	cbnz	w9, 0xa5f8 <syna_dev_set_up_input_device+0x40>
    a5f0: b940150a     	ldr	w10, [x8, #0x14]
    a5f4: 34000eca     	cbz	w10, 0xa7cc <syna_dev_set_up_input_device+0x214>
    a5f8: b943ba6a     	ldr	w10, [x19, #0x3b8]
    a5fc: 6b09015f     	cmp	w10, w9
    a600: 54000121     	b.ne	0xa624 <syna_dev_set_up_input_device+0x6c>
    a604: b943be69     	ldr	w9, [x19, #0x3bc]
    a608: b940150a     	ldr	w10, [x8, #0x14]
    a60c: 6b0a013f     	cmp	w9, w10
    a610: 540000a1     	b.ne	0xa624 <syna_dev_set_up_input_device+0x6c>
    a614: b943c262     	ldr	w2, [x19, #0x3c0]
    a618: b9401908     	ldr	w8, [x8, #0x18]
    a61c: 6b08005f     	cmp	w2, w8
    a620: 54001380     	b.eq	0xa890 <syna_dev_set_up_input_device+0x2d8>
    a624: 9109e260     	add	x0, x19, #0x278
    a628: 94000000     	bl	0xa628 <syna_dev_set_up_input_device+0x70>
		000000000000a628:  R_AARCH64_CALL26	mutex_lock
    a62c: f941da60     	ldr	x0, [x19, #0x3b0]
    a630: b4000060     	cbz	x0, 0xa63c <syna_dev_set_up_input_device+0x84>
    a634: 94000000     	bl	0xa634 <syna_dev_set_up_input_device+0x7c>
		000000000000a634:  R_AARCH64_CALL26	input_unregister_device
    a638: f901da7f     	str	xzr, [x19, #0x3b0]
    a63c: f9400275     	ldr	x21, [x19]
    a640: 94000000     	bl	0xa640 <syna_dev_set_up_input_device+0x88>
		000000000000a640:  R_AARCH64_CALL26	syna_request_managed_device
    a644: b4000dc0     	cbz	x0, 0xa7fc <syna_dev_set_up_input_device+0x244>
    a648: 94000000     	bl	0xa648 <syna_dev_set_up_input_device+0x90>
		000000000000a648:  R_AARCH64_CALL26	devm_input_allocate_device
    a64c: b4000e60     	cbz	x0, 0xa818 <syna_dev_set_up_input_device+0x260>
    a650: 90000008     	adrp	x8, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b5bb
    a654: 91000108     	add	x8, x8, #0x0
		000000000000a654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b5bb
    a658: 90000009     	adrp	x9, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19772
    a65c: 91000129     	add	x9, x9, #0x0
		000000000000a65c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19772
    a660: aa0003f4     	mov	x20, x0
    a664: a9002408     	stp	x8, x9, [x0]
    a668: 320083e8     	mov	w8, #0x10001            // =65537
    a66c: b9001c08     	str	w8, [x0, #0x1c]
    a670: f9400668     	ldr	x8, [x19, #0x8]
    a674: f9403908     	ldr	x8, [x8, #0x70]
    a678: f9016413     	str	x19, [x0, #0x2c8]
    a67c: f9014808     	str	x8, [x0, #0x290]
    a680: 14000092     	b	0xa8c8 <syna_dev_set_up_input_device+0x310>
    a684: 9100a288     	add	x8, x20, #0x28
    a688: 52800029     	mov	w9, #0x1                // =1
    a68c: f829311f     	stset	x9, [x8]
    a690: 14000095     	b	0xa8e4 <syna_dev_set_up_input_device+0x32c>
    a694: 9100a288     	add	x8, x20, #0x28
    a698: 52800049     	mov	w9, #0x2                // =2
    a69c: f829311f     	stset	x9, [x8]
    a6a0: 14000098     	b	0xa900 <syna_dev_set_up_input_device+0x348>
    a6a4: 9100a288     	add	x8, x20, #0x28
    a6a8: 52800109     	mov	w9, #0x8                // =8
    a6ac: f829311f     	stset	x9, [x8]
    a6b0: 1400009b     	b	0xa91c <syna_dev_set_up_input_device+0x364>
    a6b4: 91016288     	add	x8, x20, #0x58
    a6b8: 52808009     	mov	w9, #0x400              // =1024
    a6bc: f829311f     	stset	x9, [x8]
    a6c0: 1400009e     	b	0xa938 <syna_dev_set_up_input_device+0x380>
    a6c4: 91016288     	add	x8, x20, #0x58
    a6c8: 52800409     	mov	w9, #0x20               // =32
    a6cc: f829311f     	stset	x9, [x8]
    a6d0: 140000a1     	b	0xa954 <syna_dev_set_up_input_device+0x39c>
    a6d4: 91008288     	add	x8, x20, #0x20
    a6d8: 52800049     	mov	w9, #0x2                // =2
    a6dc: f829311f     	stset	x9, [x8]
    a6e0: 140000a4     	b	0xa970 <syna_dev_set_up_input_device+0x3b8>
    a6e4: 91010288     	add	x8, x20, #0x40
    a6e8: 52900009     	mov	w9, #0x8000             // =32768
    a6ec: f829311f     	stset	x9, [x8]
    a6f0: aa1403e0     	mov	x0, x20
    a6f4: 52800021     	mov	w1, #0x1                // =1
    a6f8: 528011e2     	mov	w2, #0x8f               // =143
    a6fc: 94000000     	bl	0xa6fc <syna_dev_set_up_input_device+0x144>
		000000000000a6fc:  R_AARCH64_CALL26	input_set_capability
    a700: b94012a3     	ldr	w3, [x21, #0x10]
    a704: aa1403e0     	mov	x0, x20
    a708: 528006a1     	mov	w1, #0x35               // =53
    a70c: 2a1f03e2     	mov	w2, wzr
    a710: 2a1f03e4     	mov	w4, wzr
    a714: 2a1f03e5     	mov	w5, wzr
    a718: 94000000     	bl	0xa718 <syna_dev_set_up_input_device+0x160>
		000000000000a718:  R_AARCH64_CALL26	input_set_abs_params
    a71c: b94016a3     	ldr	w3, [x21, #0x14]
    a720: aa1403e0     	mov	x0, x20
    a724: 528006c1     	mov	w1, #0x36               // =54
    a728: 2a1f03e2     	mov	w2, wzr
    a72c: 2a1f03e4     	mov	w4, wzr
    a730: 2a1f03e5     	mov	w5, wzr
    a734: 94000000     	bl	0xa734 <syna_dev_set_up_input_device+0x17c>
		000000000000a734:  R_AARCH64_CALL26	input_set_abs_params
    a738: b9401aa1     	ldr	w1, [x21, #0x18]
    a73c: aa1403e0     	mov	x0, x20
    a740: 52800042     	mov	w2, #0x2                // =2
    a744: 94000000     	bl	0xa744 <syna_dev_set_up_input_device+0x18c>
		000000000000a744:  R_AARCH64_CALL26	input_mt_init_slots
    a748: aa1403e0     	mov	x0, x20
    a74c: 52800601     	mov	w1, #0x30               // =48
    a750: 2a1f03e2     	mov	w2, wzr
    a754: 52801fe3     	mov	w3, #0xff               // =255
    a758: 2a1f03e4     	mov	w4, wzr
    a75c: 2a1f03e5     	mov	w5, wzr
    a760: 94000000     	bl	0xa760 <syna_dev_set_up_input_device+0x1a8>
		000000000000a760:  R_AARCH64_CALL26	input_set_abs_params
    a764: aa1403e0     	mov	x0, x20
    a768: 52800621     	mov	w1, #0x31               // =49
    a76c: 2a1f03e2     	mov	w2, wzr
    a770: 52801fe3     	mov	w3, #0xff               // =255
    a774: 2a1f03e4     	mov	w4, wzr
    a778: 2a1f03e5     	mov	w5, wzr
    a77c: 94000000     	bl	0xa77c <syna_dev_set_up_input_device+0x1c4>
		000000000000a77c:  R_AARCH64_CALL26	input_set_abs_params
    a780: b94012a8     	ldr	w8, [x21, #0x10]
    a784: aa1403e0     	mov	x0, x20
    a788: b903ba68     	str	w8, [x19, #0x3b8]
    a78c: b94016a8     	ldr	w8, [x21, #0x14]
    a790: b903be68     	str	w8, [x19, #0x3bc]
    a794: b9401aa8     	ldr	w8, [x21, #0x18]
    a798: b903c268     	str	w8, [x19, #0x3c0]
    a79c: 94000000     	bl	0xa79c <syna_dev_set_up_input_device+0x1e4>
		000000000000a79c:  R_AARCH64_CALL26	input_register_device
    a7a0: 37f804a0     	tbnz	w0, #0x1f, 0xa834 <syna_dev_set_up_input_device+0x27c>
    a7a4: f9400260     	ldr	x0, [x19]
    a7a8: 90000002     	adrp	x2, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a7a8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_touch_report
    a7ac: 91000042     	add	x2, x2, #0x0
		000000000000a7ac:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_touch_report
    a7b0: 52800221     	mov	w1, #0x11               // =17
    a7b4: aa1303e3     	mov	x3, x19
    a7b8: f901da74     	str	x20, [x19, #0x3b0]
    a7bc: 94000000     	bl	0xa7bc <syna_dev_set_up_input_device+0x204>
		000000000000a7bc:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
    a7c0: 37f805c0     	tbnz	w0, #0x1f, 0xa878 <syna_dev_set_up_input_device+0x2c0>
    a7c4: 9109e260     	add	x0, x19, #0x278
    a7c8: 94000000     	bl	0xa7c8 <syna_dev_set_up_input_device+0x210>
		000000000000a7c8:  R_AARCH64_CALL26	mutex_unlock
    a7cc: 2a1f03e0     	mov	w0, wzr
    a7d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a7d4: f9400bf5     	ldr	x21, [sp, #0x10]
    a7d8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a7dc: d50323bf     	autiasp
    a7e0: d65f03c0     	ret
    a7e4: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d92
    a7e8: 91000000     	add	x0, x0, #0x0
		000000000000a7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d92
    a7ec: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a7ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc09
    a7f0: 91000021     	add	x1, x1, #0x0
		000000000000a7f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc09
    a7f4: 94000000     	bl	0xa7f4 <syna_dev_set_up_input_device+0x23c>
		000000000000a7f4:  R_AARCH64_CALL26	_printk
    a7f8: 17fffff5     	b	0xa7cc <syna_dev_set_up_input_device+0x214>
    a7fc: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a7fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    a800: 91000000     	add	x0, x0, #0x0
		000000000000a800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    a804: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991a
    a808: 91000021     	add	x1, x1, #0x0
		000000000000a808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991a
    a80c: 94000000     	bl	0xa80c <syna_dev_set_up_input_device+0x254>
		000000000000a80c:  R_AARCH64_CALL26	_printk
    a810: 128002b5     	mov	w21, #-0x16             // =-22
    a814: 14000010     	b	0xa854 <syna_dev_set_up_input_device+0x29c>
    a818: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19deb
    a81c: 91000000     	add	x0, x0, #0x0
		000000000000a81c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19deb
    a820: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991a
    a824: 91000021     	add	x1, x1, #0x0
		000000000000a824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991a
    a828: 94000000     	bl	0xa828 <syna_dev_set_up_input_device+0x270>
		000000000000a828:  R_AARCH64_CALL26	_printk
    a82c: 12800255     	mov	w21, #-0x13             // =-19
    a830: 14000009     	b	0xa854 <syna_dev_set_up_input_device+0x29c>
    a834: 2a0003f5     	mov	w21, w0
    a838: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dbe
    a83c: 91000000     	add	x0, x0, #0x0
		000000000000a83c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dbe
    a840: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1991a
    a844: 91000021     	add	x1, x1, #0x0
		000000000000a844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1991a
    a848: 94000000     	bl	0xa848 <syna_dev_set_up_input_device+0x290>
		000000000000a848:  R_AARCH64_CALL26	_printk
    a84c: aa1403e0     	mov	x0, x20
    a850: 94000000     	bl	0xa850 <syna_dev_set_up_input_device+0x298>
		000000000000a850:  R_AARCH64_CALL26	input_free_device
    a854: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1ae
    a858: 91000000     	add	x0, x0, #0x0
		000000000000a858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1ae
    a85c: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc09
    a860: 91000021     	add	x1, x1, #0x0
		000000000000a860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc09
    a864: 94000000     	bl	0xa864 <syna_dev_set_up_input_device+0x2ac>
		000000000000a864:  R_AARCH64_CALL26	_printk
    a868: 9109e260     	add	x0, x19, #0x278
    a86c: 94000000     	bl	0xa86c <syna_dev_set_up_input_device+0x2b4>
		000000000000a86c:  R_AARCH64_CALL26	mutex_unlock
    a870: 2a1503e0     	mov	w0, w21
    a874: 17ffffd7     	b	0xa7d0 <syna_dev_set_up_input_device+0x218>
    a878: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1944c
    a87c: 91000000     	add	x0, x0, #0x0
		000000000000a87c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1944c
    a880: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc09
    a884: 91000021     	add	x1, x1, #0x0
		000000000000a884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc09
    a888: 94000000     	bl	0xa888 <syna_dev_set_up_input_device+0x2d0>
		000000000000a888:  R_AARCH64_CALL26	_printk
    a88c: 17ffffce     	b	0xa7c4 <syna_dev_set_up_input_device+0x20c>
    a890: 71002c5f     	cmp	w2, #0xb
    a894: 540000e3     	b.lo	0xa8b0 <syna_dev_set_up_input_device+0x2f8>
    a898: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf3f
    a89c: 91000000     	add	x0, x0, #0x0
		000000000000a89c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf3f
    a8a0: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a8a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f1a
    a8a4: 91000021     	add	x1, x1, #0x0
		000000000000a8a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f1a
    a8a8: 94000000     	bl	0xa8a8 <syna_dev_set_up_input_device+0x2f0>
		000000000000a8a8:  R_AARCH64_CALL26	_printk
    a8ac: 17ffffc8     	b	0xa7cc <syna_dev_set_up_input_device+0x214>
    a8b0: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a8b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3ed
    a8b4: 91000000     	add	x0, x0, #0x0
		000000000000a8b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3ed
    a8b8: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a8b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f1a
    a8bc: 91000021     	add	x1, x1, #0x0
		000000000000a8bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f1a
    a8c0: 94000000     	bl	0xa8c0 <syna_dev_set_up_input_device+0x308>
		000000000000a8c0:  R_AARCH64_CALL26	_printk
    a8c4: 17ffffc2     	b	0xa7cc <syna_dev_set_up_input_device+0x214>
    a8c8: 9100a288     	add	x8, x20, #0x28
    a8cc: f9800111     	prfm	pstl1strm, [x8]
    a8d0: c85f7d09     	ldxr	x9, [x8]
    a8d4: b2400129     	orr	x9, x9, #0x1
    a8d8: c80a7d09     	stxr	w10, x9, [x8]
    a8dc: 35ffffaa     	cbnz	w10, 0xa8d0 <syna_dev_set_up_input_device+0x318>
    a8e0: 17ffff6c     	b	0xa690 <syna_dev_set_up_input_device+0xd8>
    a8e4: 9100a288     	add	x8, x20, #0x28
    a8e8: f9800111     	prfm	pstl1strm, [x8]
    a8ec: c85f7d09     	ldxr	x9, [x8]
    a8f0: b27f0129     	orr	x9, x9, #0x2
    a8f4: c80a7d09     	stxr	w10, x9, [x8]
    a8f8: 35ffffaa     	cbnz	w10, 0xa8ec <syna_dev_set_up_input_device+0x334>
    a8fc: 17ffff69     	b	0xa6a0 <syna_dev_set_up_input_device+0xe8>
    a900: 9100a288     	add	x8, x20, #0x28
    a904: f9800111     	prfm	pstl1strm, [x8]
    a908: c85f7d09     	ldxr	x9, [x8]
    a90c: b27d0129     	orr	x9, x9, #0x8
    a910: c80a7d09     	stxr	w10, x9, [x8]
    a914: 35ffffaa     	cbnz	w10, 0xa908 <syna_dev_set_up_input_device+0x350>
    a918: 17ffff66     	b	0xa6b0 <syna_dev_set_up_input_device+0xf8>
    a91c: 91016288     	add	x8, x20, #0x58
    a920: f9800111     	prfm	pstl1strm, [x8]
    a924: c85f7d09     	ldxr	x9, [x8]
    a928: b2760129     	orr	x9, x9, #0x400
    a92c: c80a7d09     	stxr	w10, x9, [x8]
    a930: 35ffffaa     	cbnz	w10, 0xa924 <syna_dev_set_up_input_device+0x36c>
    a934: 17ffff63     	b	0xa6c0 <syna_dev_set_up_input_device+0x108>
    a938: 91016288     	add	x8, x20, #0x58
    a93c: f9800111     	prfm	pstl1strm, [x8]
    a940: c85f7d09     	ldxr	x9, [x8]
    a944: b27b0129     	orr	x9, x9, #0x20
    a948: c80a7d09     	stxr	w10, x9, [x8]
    a94c: 35ffffaa     	cbnz	w10, 0xa940 <syna_dev_set_up_input_device+0x388>
    a950: 17ffff60     	b	0xa6d0 <syna_dev_set_up_input_device+0x118>
    a954: 91008288     	add	x8, x20, #0x20
    a958: f9800111     	prfm	pstl1strm, [x8]
    a95c: c85f7d09     	ldxr	x9, [x8]
    a960: b27f0129     	orr	x9, x9, #0x2
    a964: c80a7d09     	stxr	w10, x9, [x8]
    a968: 35ffffaa     	cbnz	w10, 0xa95c <syna_dev_set_up_input_device+0x3a4>
    a96c: 17ffff5d     	b	0xa6e0 <syna_dev_set_up_input_device+0x128>
    a970: 91010288     	add	x8, x20, #0x40
    a974: f9800111     	prfm	pstl1strm, [x8]
    a978: c85f7d09     	ldxr	x9, [x8]
    a97c: b2710129     	orr	x9, x9, #0x8000
    a980: c80a7d09     	stxr	w10, x9, [x8]
    a984: 35ffffaa     	cbnz	w10, 0xa978 <syna_dev_set_up_input_device+0x3c0>
    a988: 17ffff5a     	b	0xa6f0 <syna_dev_set_up_input_device+0x138>
