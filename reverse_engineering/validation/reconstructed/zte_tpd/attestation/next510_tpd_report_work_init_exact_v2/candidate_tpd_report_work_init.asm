
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024908 <tpd_report_work_init>:
   24908: d503233f     	paciasp
   2490c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   24910: f9000bf5     	str	x21, [sp, #0x10]
   24914: a9024ff4     	stp	x20, x19, [sp, #0x20]
   24918: 910003fd     	mov	x29, sp
   2491c: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		000000000002491c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24920: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		0000000000024920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1245e
   24924: 91000000     	add	x0, x0, #0x0
		0000000000024924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1245e
   24928: f9400114     	ldr	x20, [x8]
		0000000000024928:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2492c: 90000001     	adrp	x1, 0x24000 <tpd_touch_release+0x48c>
		000000000002492c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175a2
   24930: 91000021     	add	x1, x1, #0x0
		0000000000024930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175a2
   24934: 94000000     	bl	0x24934 <tpd_report_work_init+0x2c>
		0000000000024934:  R_AARCH64_CALL26	_printk
   24938: 52800141     	mov	w1, #0xa                // =10
   2493c: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		000000000002493c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16a70
   24940: 91000000     	add	x0, x0, #0x0
		0000000000024940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16a70
   24944: 90000003     	adrp	x3, 0x24000 <tpd_touch_release+0x48c>
		0000000000024944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba54
   24948: 91000063     	add	x3, x3, #0x0
		0000000000024948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba54
   2494c: 72a000c1     	movk	w1, #0x6, lsl #16
   24950: 52800022     	mov	w2, #0x1                // =1
   24954: 94000000     	bl	0x24954 <tpd_report_work_init+0x4c>
		0000000000024954:  R_AARCH64_CALL26	alloc_workqueue
   24958: f9025e80     	str	x0, [x20, #0x4b8]
   2495c: b4001180     	cbz	x0, 0x24b8c <tpd_report_work_init+0x284>
   24960: b26b7bf5     	mov	x21, #0xfffffffe00000   // =4503599625273344
   24964: 91132288     	add	x8, x20, #0x4c8
   24968: 90000013     	adrp	x19, 0x24000 <tpd_touch_release+0x48c>
		0000000000024968:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   2496c: 91000273     	add	x19, x19, #0x0
		000000000002496c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   24970: f9026295     	str	x21, [x20, #0x4c0]
   24974: 91138280     	add	x0, x20, #0x4e0
   24978: f9026688     	str	x8, [x20, #0x4c8]
   2497c: aa1303e1     	mov	x1, x19
   24980: 52a00402     	mov	w2, #0x200000           // =2097152
   24984: f9026a88     	str	x8, [x20, #0x4d0]
   24988: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024988:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id0_report_work
   2498c: 91000108     	add	x8, x8, #0x0
		000000000002498c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id0_report_work
   24990: aa1f03e3     	mov	x3, xzr
   24994: aa1f03e4     	mov	x4, xzr
   24998: f9026e88     	str	x8, [x20, #0x4d8]
   2499c: 94000000     	bl	0x2499c <tpd_report_work_init+0x94>
		000000000002499c:  R_AARCH64_CALL26	init_timer_key
   249a0: 9114c288     	add	x8, x20, #0x530
   249a4: f9029695     	str	x21, [x20, #0x528]
   249a8: 91152280     	add	x0, x20, #0x548
   249ac: f9029a88     	str	x8, [x20, #0x530]
   249b0: aa1303e1     	mov	x1, x19
   249b4: 52a00402     	mov	w2, #0x200000           // =2097152
   249b8: f9029e88     	str	x8, [x20, #0x538]
   249bc: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		00000000000249bc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id1_report_work
   249c0: 91000108     	add	x8, x8, #0x0
		00000000000249c0:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id1_report_work
   249c4: aa1f03e3     	mov	x3, xzr
   249c8: aa1f03e4     	mov	x4, xzr
   249cc: f902a288     	str	x8, [x20, #0x540]
   249d0: 94000000     	bl	0x249d0 <tpd_report_work_init+0xc8>
		00000000000249d0:  R_AARCH64_CALL26	init_timer_key
   249d4: 91166288     	add	x8, x20, #0x598
   249d8: f902ca95     	str	x21, [x20, #0x590]
   249dc: 9116c280     	add	x0, x20, #0x5b0
   249e0: f902ce88     	str	x8, [x20, #0x598]
   249e4: aa1303e1     	mov	x1, x19
   249e8: 52a00402     	mov	w2, #0x200000           // =2097152
   249ec: f902d288     	str	x8, [x20, #0x5a0]
   249f0: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		00000000000249f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id2_report_work
   249f4: 91000108     	add	x8, x8, #0x0
		00000000000249f4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id2_report_work
   249f8: aa1f03e3     	mov	x3, xzr
   249fc: aa1f03e4     	mov	x4, xzr
   24a00: f902d688     	str	x8, [x20, #0x5a8]
   24a04: 94000000     	bl	0x24a04 <tpd_report_work_init+0xfc>
		0000000000024a04:  R_AARCH64_CALL26	init_timer_key
   24a08: 91180288     	add	x8, x20, #0x600
   24a0c: f902fe95     	str	x21, [x20, #0x5f8]
   24a10: 91186280     	add	x0, x20, #0x618
   24a14: f9030288     	str	x8, [x20, #0x600]
   24a18: aa1303e1     	mov	x1, x19
   24a1c: 52a00402     	mov	w2, #0x200000           // =2097152
   24a20: f9030688     	str	x8, [x20, #0x608]
   24a24: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024a24:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id3_report_work
   24a28: 91000108     	add	x8, x8, #0x0
		0000000000024a28:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id3_report_work
   24a2c: aa1f03e3     	mov	x3, xzr
   24a30: aa1f03e4     	mov	x4, xzr
   24a34: f9030a88     	str	x8, [x20, #0x610]
   24a38: 94000000     	bl	0x24a38 <tpd_report_work_init+0x130>
		0000000000024a38:  R_AARCH64_CALL26	init_timer_key
   24a3c: 9119a288     	add	x8, x20, #0x668
   24a40: f9033295     	str	x21, [x20, #0x660]
   24a44: 911a0280     	add	x0, x20, #0x680
   24a48: f9033688     	str	x8, [x20, #0x668]
   24a4c: aa1303e1     	mov	x1, x19
   24a50: 52a00402     	mov	w2, #0x200000           // =2097152
   24a54: f9033a88     	str	x8, [x20, #0x670]
   24a58: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024a58:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id4_report_work
   24a5c: 91000108     	add	x8, x8, #0x0
		0000000000024a5c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id4_report_work
   24a60: aa1f03e3     	mov	x3, xzr
   24a64: aa1f03e4     	mov	x4, xzr
   24a68: f9033e88     	str	x8, [x20, #0x678]
   24a6c: 94000000     	bl	0x24a6c <tpd_report_work_init+0x164>
		0000000000024a6c:  R_AARCH64_CALL26	init_timer_key
   24a70: 911b4288     	add	x8, x20, #0x6d0
   24a74: f9036695     	str	x21, [x20, #0x6c8]
   24a78: 911ba280     	add	x0, x20, #0x6e8
   24a7c: f9036a88     	str	x8, [x20, #0x6d0]
   24a80: aa1303e1     	mov	x1, x19
   24a84: 52a00402     	mov	w2, #0x200000           // =2097152
   24a88: f9036e88     	str	x8, [x20, #0x6d8]
   24a8c: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024a8c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id5_report_work
   24a90: 91000108     	add	x8, x8, #0x0
		0000000000024a90:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id5_report_work
   24a94: aa1f03e3     	mov	x3, xzr
   24a98: aa1f03e4     	mov	x4, xzr
   24a9c: f9037288     	str	x8, [x20, #0x6e0]
   24aa0: 94000000     	bl	0x24aa0 <tpd_report_work_init+0x198>
		0000000000024aa0:  R_AARCH64_CALL26	init_timer_key
   24aa4: 911ce288     	add	x8, x20, #0x738
   24aa8: f9039a95     	str	x21, [x20, #0x730]
   24aac: 911d4280     	add	x0, x20, #0x750
   24ab0: f9039e88     	str	x8, [x20, #0x738]
   24ab4: aa1303e1     	mov	x1, x19
   24ab8: 52a00402     	mov	w2, #0x200000           // =2097152
   24abc: f903a288     	str	x8, [x20, #0x740]
   24ac0: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024ac0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id6_report_work
   24ac4: 91000108     	add	x8, x8, #0x0
		0000000000024ac4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id6_report_work
   24ac8: aa1f03e3     	mov	x3, xzr
   24acc: aa1f03e4     	mov	x4, xzr
   24ad0: f903a688     	str	x8, [x20, #0x748]
   24ad4: 94000000     	bl	0x24ad4 <tpd_report_work_init+0x1cc>
		0000000000024ad4:  R_AARCH64_CALL26	init_timer_key
   24ad8: 911e8288     	add	x8, x20, #0x7a0
   24adc: f903ce95     	str	x21, [x20, #0x798]
   24ae0: 911ee280     	add	x0, x20, #0x7b8
   24ae4: f903d288     	str	x8, [x20, #0x7a0]
   24ae8: aa1303e1     	mov	x1, x19
   24aec: 52a00402     	mov	w2, #0x200000           // =2097152
   24af0: f903d688     	str	x8, [x20, #0x7a8]
   24af4: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024af4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id7_report_work
   24af8: 91000108     	add	x8, x8, #0x0
		0000000000024af8:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id7_report_work
   24afc: aa1f03e3     	mov	x3, xzr
   24b00: aa1f03e4     	mov	x4, xzr
   24b04: f903da88     	str	x8, [x20, #0x7b0]
   24b08: 94000000     	bl	0x24b08 <tpd_report_work_init+0x200>
		0000000000024b08:  R_AARCH64_CALL26	init_timer_key
   24b0c: 91202288     	add	x8, x20, #0x808
   24b10: f9040295     	str	x21, [x20, #0x800]
   24b14: 91208280     	add	x0, x20, #0x820
   24b18: f9040688     	str	x8, [x20, #0x808]
   24b1c: aa1303e1     	mov	x1, x19
   24b20: 52a00402     	mov	w2, #0x200000           // =2097152
   24b24: f9040a88     	str	x8, [x20, #0x810]
   24b28: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024b28:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id8_report_work
   24b2c: 91000108     	add	x8, x8, #0x0
		0000000000024b2c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id8_report_work
   24b30: aa1f03e3     	mov	x3, xzr
   24b34: aa1f03e4     	mov	x4, xzr
   24b38: f9040e88     	str	x8, [x20, #0x818]
   24b3c: 94000000     	bl	0x24b3c <tpd_report_work_init+0x234>
		0000000000024b3c:  R_AARCH64_CALL26	init_timer_key
   24b40: 9121c288     	add	x8, x20, #0x870
   24b44: f9043695     	str	x21, [x20, #0x868]
   24b48: 91222280     	add	x0, x20, #0x888
   24b4c: f9043a88     	str	x8, [x20, #0x870]
   24b50: aa1303e1     	mov	x1, x19
   24b54: 52a00402     	mov	w2, #0x200000           // =2097152
   24b58: f9043e88     	str	x8, [x20, #0x878]
   24b5c: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		0000000000024b5c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_id9_report_work
   24b60: 91000108     	add	x8, x8, #0x0
		0000000000024b60:  R_AARCH64_ADD_ABS_LO12_NC	tpd_id9_report_work
   24b64: aa1f03e3     	mov	x3, xzr
   24b68: aa1f03e4     	mov	x4, xzr
   24b6c: f9044288     	str	x8, [x20, #0x880]
   24b70: 94000000     	bl	0x24b70 <tpd_report_work_init+0x268>
		0000000000024b70:  R_AARCH64_CALL26	init_timer_key
   24b74: 2a1f03e0     	mov	w0, wzr
   24b78: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   24b7c: f9400bf5     	ldr	x21, [sp, #0x10]
   24b80: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   24b84: d50323bf     	autiasp
   24b88: d65f03c0     	ret
   24b8c: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		0000000000024b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1384e
   24b90: 91000000     	add	x0, x0, #0x0
		0000000000024b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1384e
   24b94: 90000001     	adrp	x1, 0x24000 <tpd_touch_release+0x48c>
		0000000000024b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175a2
   24b98: 91000021     	add	x1, x1, #0x0
		0000000000024b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175a2
   24b9c: 94000000     	bl	0x24b9c <tpd_report_work_init+0x294>
		0000000000024b9c:  R_AARCH64_CALL26	_printk
   24ba0: 12800160     	mov	w0, #-0xc               // =-12
   24ba4: 17fffff5     	b	0x24b78 <tpd_report_work_init+0x270>
