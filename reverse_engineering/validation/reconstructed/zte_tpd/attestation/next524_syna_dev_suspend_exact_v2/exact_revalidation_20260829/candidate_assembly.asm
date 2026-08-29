
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e840 <syna_dev_suspend>:
    e840: d503233f     	paciasp
    e844: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e848: f9000bf5     	str	x21, [sp, #0x10]
    e84c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e850: 910003fd     	mov	x29, sp
    e854: f9404c13     	ldr	x19, [x0, #0x98]
    e858: b9457e68     	ldr	w8, [x19, #0x57c]
    e85c: 7100051f     	cmp	w8, #0x1
    e860: 540000e0     	b.eq	0xe87c <syna_dev_suspend+0x3c>
    e864: 2a1f03e0     	mov	w0, wzr
    e868: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e86c: f9400bf5     	ldr	x21, [sp, #0x10]
    e870: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e874: d50323bf     	autiasp
    e878: d65f03c0     	ret
    e87c: 90000014     	adrp	x20, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bde
    e880: 91000294     	add	x20, x20, #0x0
		000000000000e880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bde
    e884: f9413a75     	ldr	x21, [x19, #0x270]
    e888: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0d8
    e88c: 91000000     	add	x0, x0, #0x0
		000000000000e88c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0d8
    e890: aa1403e1     	mov	x1, x20
    e894: 94000000     	bl	0xe894 <syna_dev_suspend+0x54>
		000000000000e894:  R_AARCH64_CALL26	_printk
    e898: b945c668     	ldr	w8, [x19, #0x5c4]
    e89c: b945b269     	ldr	w9, [x19, #0x5b0]
    e8a0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e8a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3348
    e8a4: 91000000     	add	x0, x0, #0x0
		000000000000e8a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3348
    e8a8: aa1403e1     	mov	x1, x20
    e8ac: 2a080128     	orr	w8, w9, w8
    e8b0: 7100011f     	cmp	w8, #0x0
    e8b4: 1a9f07e2     	cset	w2, ne
    e8b8: 39160662     	strb	w2, [x19, #0x581]
    e8bc: 94000000     	bl	0xe8bc <syna_dev_suspend+0x7c>
		000000000000e8bc:  R_AARCH64_CALL26	_printk
    e8c0: b40003d3     	cbz	x19, 0xe938 <syna_dev_suspend+0xf8>
    e8c4: f9413a68     	ldr	x8, [x19, #0x270]
    e8c8: f9400260     	ldr	x0, [x19]
    e8cc: b940b909     	ldr	w9, [x8, #0xb8]
    e8d0: 340000a9     	cbz	w9, 0xe8e4 <syna_dev_suspend+0xa4>
    e8d4: 3942f108     	ldrb	w8, [x8, #0xbc]
    e8d8: 36000068     	tbz	w8, #0x0, 0xe8e4 <syna_dev_suspend+0xa4>
    e8dc: 2a1f03e2     	mov	w2, wzr
    e8e0: 14000002     	b	0xe8e8 <syna_dev_suspend+0xa8>
    e8e4: b9420c02     	ldr	w2, [x0, #0x20c]
    e8e8: 39560668     	ldrb	w8, [x19, #0x581]
    e8ec: 7100051f     	cmp	w8, #0x1
    e8f0: 54000101     	b.ne	0xe910 <syna_dev_suspend+0xd0>
    e8f4: aa1303e0     	mov	x0, x19
    e8f8: 52800021     	mov	w1, #0x1                // =1
    e8fc: 94000000     	bl	0xe8fc <syna_dev_suspend+0xbc>
		000000000000e8fc:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
    e900: 36f802a0     	tbz	w0, #0x1f, 0xe954 <syna_dev_suspend+0x114>
    e904: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x641c
    e908: 91000000     	add	x0, x0, #0x0
		000000000000e908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x641c
    e90c: 14000008     	b	0xe92c <syna_dev_suspend+0xec>
    e910: 39560268     	ldrb	w8, [x19, #0x580]
    e914: 37000248     	tbnz	w8, #0x0, 0xe95c <syna_dev_suspend+0x11c>
    e918: 52800021     	mov	w1, #0x1                // =1
    e91c: 94000000     	bl	0xe91c <syna_dev_suspend+0xdc>
		000000000000e91c:  R_AARCH64_CALL26	syna_tcm_sleep
    e920: 36f801a0     	tbz	w0, #0x1f, 0xe954 <syna_dev_suspend+0x114>
    e924: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6452
    e928: 91000000     	add	x0, x0, #0x0
		000000000000e928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6452
    e92c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e92c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc406
    e930: 91000021     	add	x1, x1, #0x0
		000000000000e930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc406
    e934: 94000000     	bl	0xe934 <syna_dev_suspend+0xf4>
		000000000000e934:  R_AARCH64_CALL26	_printk
    e938: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3d4
    e93c: 91000000     	add	x0, x0, #0x0
		000000000000e93c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3d4
    e940: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bde
    e944: 91000021     	add	x1, x1, #0x0
		000000000000e944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bde
    e948: 94000000     	bl	0xe948 <syna_dev_suspend+0x108>
		000000000000e948:  R_AARCH64_CALL26	_printk
    e94c: 12800080     	mov	w0, #-0x5               // =-5
    e950: 17ffffc6     	b	0xe868 <syna_dev_suspend+0x28>
    e954: 52800c80     	mov	w0, #0x64               // =100
    e958: 94000000     	bl	0xe958 <syna_dev_suspend+0x118>
		000000000000e958:  R_AARCH64_CALL26	msleep
    e95c: 52800048     	mov	w8, #0x2                // =2
    e960: aa1303e0     	mov	x0, x19
    e964: b9057e68     	str	w8, [x19, #0x57c]
    e968: 94000000     	bl	0xe968 <syna_dev_suspend+0x128>
		000000000000e968:  R_AARCH64_CALL26	syna_dev_free_input_events
    e96c: f9400260     	ldr	x0, [x19]
    e970: 94000000     	bl	0xe970 <syna_dev_suspend+0x130>
		000000000000e970:  R_AARCH64_CALL26	syna_tcm_clear_command_processing
    e974: 39560668     	ldrb	w8, [x19, #0x581]
    e978: 37000188     	tbnz	w8, #0x0, 0xe9a8 <syna_dev_suspend+0x168>
    e97c: f94022a8     	ldr	x8, [x21, #0x40]
    e980: b4000148     	cbz	x8, 0xe9a8 <syna_dev_suspend+0x168>
    e984: 910022a0     	add	x0, x21, #0x8
    e988: 2a1f03e1     	mov	w1, wzr
    e98c: b85fc110     	ldur	w16, [x8, #-0x4]
    e990: 728c3631     	movk	w17, #0x61b1
    e994: 72a685d1     	movk	w17, #0x342e, lsl #16
    e998: 6b11021f     	cmp	w16, w17
    e99c: 54000040     	b.eq	0xe9a4 <syna_dev_suspend+0x164>
    e9a0: d4304500     	brk	#0x8228
    e9a4: d63f0100     	blr	x8
    e9a8: b9457e62     	ldr	w2, [x19, #0x57c]
    e9ac: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e9ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d70
    e9b0: 91000000     	add	x0, x0, #0x0
		000000000000e9b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d70
    e9b4: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e9b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bde
    e9b8: 91000021     	add	x1, x1, #0x0
		000000000000e9b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bde
    e9bc: b905e27f     	str	wzr, [x19, #0x5e0]
    e9c0: 94000000     	bl	0xe9c0 <syna_dev_suspend+0x180>
		000000000000e9c0:  R_AARCH64_CALL26	_printk
    e9c4: 17ffffa8     	b	0xe864 <syna_dev_suspend+0x24>
