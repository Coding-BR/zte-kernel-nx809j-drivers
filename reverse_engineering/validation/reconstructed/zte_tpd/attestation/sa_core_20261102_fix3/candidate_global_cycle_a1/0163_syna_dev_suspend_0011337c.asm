
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e89c <syna_dev_suspend>:
    e89c: d503233f     	paciasp
    e8a0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e8a4: f9000bf5     	str	x21, [sp, #0x10]
    e8a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e8ac: 910003fd     	mov	x29, sp
    e8b0: f9404c13     	ldr	x19, [x0, #0x98]
    e8b4: b9457e68     	ldr	w8, [x19, #0x57c]
    e8b8: 7100051f     	cmp	w8, #0x1
    e8bc: 540000e0     	b.eq	0xe8d8 <syna_dev_suspend+0x3c>
    e8c0: 2a1f03e0     	mov	w0, wzr
    e8c4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e8c8: f9400bf5     	ldr	x21, [sp, #0x10]
    e8cc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e8d0: d50323bf     	autiasp
    e8d4: d65f03c0     	ret
    e8d8: 90000014     	adrp	x20, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e8d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bde
    e8dc: 91000294     	add	x20, x20, #0x0
		000000000000e8dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bde
    e8e0: f9413a75     	ldr	x21, [x19, #0x270]
    e8e4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e8e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0d8
    e8e8: 91000000     	add	x0, x0, #0x0
		000000000000e8e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0d8
    e8ec: aa1403e1     	mov	x1, x20
    e8f0: 94000000     	bl	0xe8f0 <syna_dev_suspend+0x54>
		000000000000e8f0:  R_AARCH64_CALL26	_printk
    e8f4: b945c668     	ldr	w8, [x19, #0x5c4]
    e8f8: b945b269     	ldr	w9, [x19, #0x5b0]
    e8fc: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e8fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3348
    e900: 91000000     	add	x0, x0, #0x0
		000000000000e900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3348
    e904: aa1403e1     	mov	x1, x20
    e908: 2a080128     	orr	w8, w9, w8
    e90c: 7100011f     	cmp	w8, #0x0
    e910: 1a9f07e2     	cset	w2, ne
    e914: 39160662     	strb	w2, [x19, #0x581]
    e918: 94000000     	bl	0xe918 <syna_dev_suspend+0x7c>
		000000000000e918:  R_AARCH64_CALL26	_printk
    e91c: b40003d3     	cbz	x19, 0xe994 <syna_dev_suspend+0xf8>
    e920: f9413a68     	ldr	x8, [x19, #0x270]
    e924: f9400260     	ldr	x0, [x19]
    e928: b940b909     	ldr	w9, [x8, #0xb8]
    e92c: 340000a9     	cbz	w9, 0xe940 <syna_dev_suspend+0xa4>
    e930: 3942f108     	ldrb	w8, [x8, #0xbc]
    e934: 36000068     	tbz	w8, #0x0, 0xe940 <syna_dev_suspend+0xa4>
    e938: 2a1f03e2     	mov	w2, wzr
    e93c: 14000002     	b	0xe944 <syna_dev_suspend+0xa8>
    e940: b9420c02     	ldr	w2, [x0, #0x20c]
    e944: 39560668     	ldrb	w8, [x19, #0x581]
    e948: 7100051f     	cmp	w8, #0x1
    e94c: 54000101     	b.ne	0xe96c <syna_dev_suspend+0xd0>
    e950: aa1303e0     	mov	x0, x19
    e954: 52800021     	mov	w1, #0x1                // =1
    e958: 94000000     	bl	0xe958 <syna_dev_suspend+0xbc>
		000000000000e958:  R_AARCH64_CALL26	syna_dev_enable_lowpwr_gesture
    e95c: 36f802a0     	tbz	w0, #0x1f, 0xe9b0 <syna_dev_suspend+0x114>
    e960: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x641c
    e964: 91000000     	add	x0, x0, #0x0
		000000000000e964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x641c
    e968: 14000008     	b	0xe988 <syna_dev_suspend+0xec>
    e96c: 39560268     	ldrb	w8, [x19, #0x580]
    e970: 37000248     	tbnz	w8, #0x0, 0xe9b8 <syna_dev_suspend+0x11c>
    e974: 52800021     	mov	w1, #0x1                // =1
    e978: 94000000     	bl	0xe978 <syna_dev_suspend+0xdc>
		000000000000e978:  R_AARCH64_CALL26	syna_tcm_sleep
    e97c: 36f801a0     	tbz	w0, #0x1f, 0xe9b0 <syna_dev_suspend+0x114>
    e980: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6452
    e984: 91000000     	add	x0, x0, #0x0
		000000000000e984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6452
    e988: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc406
    e98c: 91000021     	add	x1, x1, #0x0
		000000000000e98c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc406
    e990: 94000000     	bl	0xe990 <syna_dev_suspend+0xf4>
		000000000000e990:  R_AARCH64_CALL26	_printk
    e994: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3d4
    e998: 91000000     	add	x0, x0, #0x0
		000000000000e998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3d4
    e99c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e99c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bde
    e9a0: 91000021     	add	x1, x1, #0x0
		000000000000e9a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bde
    e9a4: 94000000     	bl	0xe9a4 <syna_dev_suspend+0x108>
		000000000000e9a4:  R_AARCH64_CALL26	_printk
    e9a8: 12800080     	mov	w0, #-0x5               // =-5
    e9ac: 17ffffc6     	b	0xe8c4 <syna_dev_suspend+0x28>
    e9b0: 52800c80     	mov	w0, #0x64               // =100
    e9b4: 94000000     	bl	0xe9b4 <syna_dev_suspend+0x118>
		000000000000e9b4:  R_AARCH64_CALL26	msleep
    e9b8: 52800048     	mov	w8, #0x2                // =2
    e9bc: aa1303e0     	mov	x0, x19
    e9c0: b9057e68     	str	w8, [x19, #0x57c]
    e9c4: 94000000     	bl	0xe9c4 <syna_dev_suspend+0x128>
		000000000000e9c4:  R_AARCH64_CALL26	syna_dev_free_input_events
    e9c8: f9400260     	ldr	x0, [x19]
    e9cc: 94000000     	bl	0xe9cc <syna_dev_suspend+0x130>
		000000000000e9cc:  R_AARCH64_CALL26	syna_tcm_clear_command_processing
    e9d0: 39560668     	ldrb	w8, [x19, #0x581]
    e9d4: 37000188     	tbnz	w8, #0x0, 0xea04 <syna_dev_suspend+0x168>
    e9d8: f94022a8     	ldr	x8, [x21, #0x40]
    e9dc: b4000148     	cbz	x8, 0xea04 <syna_dev_suspend+0x168>
    e9e0: 910022a0     	add	x0, x21, #0x8
    e9e4: 2a1f03e1     	mov	w1, wzr
    e9e8: b85fc110     	ldur	w16, [x8, #-0x4]
    e9ec: 728c3631     	movk	w17, #0x61b1
    e9f0: 72a685d1     	movk	w17, #0x342e, lsl #16
    e9f4: 6b11021f     	cmp	w16, w17
    e9f8: 54000040     	b.eq	0xea00 <syna_dev_suspend+0x164>
    e9fc: d4304500     	brk	#0x8228
    ea00: d63f0100     	blr	x8
    ea04: b9457e62     	ldr	w2, [x19, #0x57c]
    ea08: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ea08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d70
    ea0c: 91000000     	add	x0, x0, #0x0
		000000000000ea0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d70
    ea10: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ea10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bde
    ea14: 91000021     	add	x1, x1, #0x0
		000000000000ea14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bde
    ea18: b905e27f     	str	wzr, [x19, #0x5e0]
    ea1c: 94000000     	bl	0xea1c <syna_dev_suspend+0x180>
		000000000000ea1c:  R_AARCH64_CALL26	_printk
    ea20: 17ffffa8     	b	0xe8c0 <syna_dev_suspend+0x24>
