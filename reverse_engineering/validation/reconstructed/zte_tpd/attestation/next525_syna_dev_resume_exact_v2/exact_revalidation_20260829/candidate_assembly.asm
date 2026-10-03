
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e9cc <syna_dev_resume>:
    e9cc: d503233f     	paciasp
    e9d0: d10103ff     	sub	sp, sp, #0x40
    e9d4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    e9d8: a90257f6     	stp	x22, x21, [sp, #0x20]
    e9dc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    e9e0: 910043fd     	add	x29, sp, #0x10
    e9e4: d5384108     	mrs	x8, SP_EL0
    e9e8: f9438908     	ldr	x8, [x8, #0x710]
    e9ec: f90007e8     	str	x8, [sp, #0x8]
    e9f0: f9404c13     	ldr	x19, [x0, #0x98]
    e9f4: b4000233     	cbz	x19, 0xea38 <syna_dev_resume+0x6c>
    e9f8: f9413a75     	ldr	x21, [x19, #0x270]
    e9fc: f9400268     	ldr	x8, [x19]
    ea00: b102a2bf     	cmn	x21, #0xa8
    ea04: 540000e0     	b.eq	0xea20 <syna_dev_resume+0x54>
    ea08: b940baa9     	ldr	w9, [x21, #0xb8]
    ea0c: 340000a9     	cbz	w9, 0xea20 <syna_dev_resume+0x54>
    ea10: 3942f2a9     	ldrb	w9, [x21, #0xbc]
    ea14: 36000069     	tbz	w9, #0x0, 0xea20 <syna_dev_resume+0x54>
    ea18: 2a1f03f4     	mov	w20, wzr
    ea1c: 14000002     	b	0xea24 <syna_dev_resume+0x58>
    ea20: b9420d14     	ldr	w20, [x8, #0x20c]
    ea24: b9457e68     	ldr	w8, [x19, #0x57c]
    ea28: 7100051f     	cmp	w8, #0x1
    ea2c: 540001e1     	b.ne	0xea68 <syna_dev_resume+0x9c>
    ea30: 2a1f03e0     	mov	w0, wzr
    ea34: 14000002     	b	0xea3c <syna_dev_resume+0x70>
    ea38: 128002a0     	mov	w0, #-0x16              // =-22
    ea3c: d5384108     	mrs	x8, SP_EL0
    ea40: f9438908     	ldr	x8, [x8, #0x710]
    ea44: f94007e9     	ldr	x9, [sp, #0x8]
    ea48: eb09011f     	cmp	x8, x9
    ea4c: 54002c41     	b.ne	0xefd4 <syna_dev_resume+0x608>
    ea50: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    ea54: a94257f6     	ldp	x22, x21, [sp, #0x20]
    ea58: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ea5c: 910103ff     	add	sp, sp, #0x40
    ea60: d50323bf     	autiasp
    ea64: d65f03c0     	ret
    ea68: 90000016     	adrp	x22, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ea68:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    ea6c: 390013ff     	strb	wzr, [sp, #0x4]
    ea70: 394002c8     	ldrb	w8, [x22]
		000000000000ea70:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    ea74: 7100051f     	cmp	w8, #0x1
    ea78: 54000361     	b.ne	0xeae4 <syna_dev_resume+0x118>
    ea7c: b945d668     	ldr	w8, [x19, #0x5d4]
    ea80: 35000288     	cbnz	w8, 0xead0 <syna_dev_resume+0x104>
    ea84: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ea84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63fc
    ea88: 91000000     	add	x0, x0, #0x0
		000000000000ea88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63fc
    ea8c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ea8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ea90: 91000021     	add	x1, x1, #0x0
		000000000000ea90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ea94: 94000000     	bl	0xea94 <syna_dev_resume+0xc8>
		000000000000ea94:  R_AARCH64_CALL26	_printk
    ea98: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ea98:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    ea9c: 91000000     	add	x0, x0, #0x0
		000000000000ea9c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    eaa0: 52804e21     	mov	w1, #0x271              // =625
    eaa4: 94000000     	bl	0xeaa4 <syna_dev_resume+0xd8>
		000000000000eaa4:  R_AARCH64_CALL26	wait_for_completion_timeout
    eaa8: b50000c0     	cbnz	x0, 0xeac0 <syna_dev_resume+0xf4>
    eaac: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eaac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x937a
    eab0: 91000000     	add	x0, x0, #0x0
		000000000000eab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x937a
    eab4: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eab8: 91000021     	add	x1, x1, #0x0
		000000000000eab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eabc: 94000000     	bl	0xeabc <syna_dev_resume+0xf0>
		000000000000eabc:  R_AARCH64_CALL26	_printk
    eac0: 2a1f03e0     	mov	w0, wzr
    eac4: 390002df     	strb	wzr, [x22]
		000000000000eac4:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    eac8: 94000000     	bl	0xeac8 <syna_dev_resume+0xfc>
		000000000000eac8:  R_AARCH64_CALL26	report_ufp_uevent
    eacc: 14000006     	b	0xeae4 <syna_dev_resume+0x118>
    ead0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ead0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a6
    ead4: 91000000     	add	x0, x0, #0x0
		000000000000ead4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a6
    ead8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ead8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eadc: 91000021     	add	x1, x1, #0x0
		000000000000eadc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eae0: 94000000     	bl	0xeae0 <syna_dev_resume+0x114>
		000000000000eae0:  R_AARCH64_CALL26	_printk
    eae4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8
    eae8: 91000000     	add	x0, x0, #0x0
		000000000000eae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8
    eaec: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eaec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eaf0: 91000021     	add	x1, x1, #0x0
		000000000000eaf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eaf4: 94000000     	bl	0xeaf4 <syna_dev_resume+0x128>
		000000000000eaf4:  R_AARCH64_CALL26	_printk
    eaf8: 39560668     	ldrb	w8, [x19, #0x581]
    eafc: 52800029     	mov	w9, #0x1                // =1
    eb00: b9057e69     	str	w9, [x19, #0x57c]
    eb04: 90000009     	adrp	x9, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eb04:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    eb08: 7100051f     	cmp	w8, #0x1
    eb0c: b900013f     	str	wzr, [x9]
		000000000000eb0c:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    eb10: 54000181     	b.ne	0xeb40 <syna_dev_resume+0x174>
    eb14: f94022a8     	ldr	x8, [x21, #0x40]
    eb18: b4000148     	cbz	x8, 0xeb40 <syna_dev_resume+0x174>
    eb1c: 910022a0     	add	x0, x21, #0x8
    eb20: 2a1f03e1     	mov	w1, wzr
    eb24: b85fc110     	ldur	w16, [x8, #-0x4]
    eb28: 728c3631     	movk	w17, #0x61b1
    eb2c: 72a685d1     	movk	w17, #0x342e, lsl #16
    eb30: 6b11021f     	cmp	w16, w17
    eb34: 54000040     	b.eq	0xeb3c <syna_dev_resume+0x170>
    eb38: d4304500     	brk	#0x8228
    eb3c: d63f0100     	blr	x8
    eb40: b945d668     	ldr	w8, [x19, #0x5d4]
    eb44: 340000e8     	cbz	w8, 0xeb60 <syna_dev_resume+0x194>
    eb48: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eb48:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    eb4c: 91000108     	add	x8, x8, #0x0
		000000000000eb4c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    eb50: 39400109     	ldrb	w9, [x8]
    eb54: 39400508     	ldrb	w8, [x8, #0x1]
    eb58: 2a090108     	orr	w8, w8, w9
    eb5c: 35000428     	cbnz	w8, 0xebe0 <syna_dev_resume+0x214>
    eb60: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eb60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26f4
    eb64: 91000000     	add	x0, x0, #0x0
		000000000000eb64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26f4
    eb68: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eb68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eb6c: 91000021     	add	x1, x1, #0x0
		000000000000eb6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eb70: 94000000     	bl	0xeb70 <syna_dev_resume+0x1a4>
		000000000000eb70:  R_AARCH64_CALL26	_printk
    eb74: f940c6a8     	ldr	x8, [x21, #0x188]
    eb78: b5000108     	cbnz	x8, 0xeb98 <syna_dev_resume+0x1cc>
    eb7c: f9400260     	ldr	x0, [x19]
    eb80: 2a1403e1     	mov	w1, w20
    eb84: 94000000     	bl	0xeb84 <syna_dev_resume+0x1b8>
		000000000000eb84:  R_AARCH64_CALL26	syna_tcm_reset
    eb88: 36f80480     	tbz	w0, #0x1f, 0xec18 <syna_dev_resume+0x24c>
    eb8c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000eb8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99ba
    eb90: 91000000     	add	x0, x0, #0x0
		000000000000eb90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99ba
    eb94: 1400002b     	b	0xec40 <syna_dev_resume+0x274>
    eb98: aa1503e0     	mov	x0, x21
    eb9c: b85fc110     	ldur	w16, [x8, #-0x4]
    eba0: 72974371     	movk	w17, #0xba1b
    eba4: 72a56791     	movk	w17, #0x2b3c, lsl #16
    eba8: 6b11021f     	cmp	w16, w17
    ebac: 54000040     	b.eq	0xebb4 <syna_dev_resume+0x1e8>
    ebb0: d4304500     	brk	#0x8228
    ebb4: d63f0100     	blr	x8
    ebb8: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    ebbc: 370002e8     	tbnz	w8, #0x0, 0xec18 <syna_dev_resume+0x24c>
    ebc0: f9400260     	ldr	x0, [x19]
    ebc4: 910013e1     	add	x1, sp, #0x4
    ebc8: aa1f03e2     	mov	x2, xzr
    ebcc: 94000000     	bl	0xebcc <syna_dev_resume+0x200>
		000000000000ebcc:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ebd0: 36f801e0     	tbz	w0, #0x1f, 0xec0c <syna_dev_resume+0x240>
    ebd4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ebd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x133c
    ebd8: 91000000     	add	x0, x0, #0x0
		000000000000ebd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x133c
    ebdc: 14000019     	b	0xec40 <syna_dev_resume+0x274>
    ebe0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ebe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d4e
    ebe4: 91000000     	add	x0, x0, #0x0
		000000000000ebe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d4e
    ebe8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ebe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ebec: 91000021     	add	x1, x1, #0x0
		000000000000ebec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ebf0: 94000000     	bl	0xebf0 <syna_dev_resume+0x224>
		000000000000ebf0:  R_AARCH64_CALL26	_printk
    ebf4: aa1303e0     	mov	x0, x19
    ebf8: 94000000     	bl	0xebf8 <syna_dev_resume+0x22c>
		000000000000ebf8:  R_AARCH64_CALL26	syna_dev_enter_normal_sensing
    ebfc: 36f800e0     	tbz	w0, #0x1f, 0xec18 <syna_dev_resume+0x24c>
    ec00: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0a8
    ec04: 91000000     	add	x0, x0, #0x0
		000000000000ec04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0a8
    ec08: 1400000e     	b	0xec40 <syna_dev_resume+0x274>
    ec0c: 394013e8     	ldrb	w8, [sp, #0x4]
    ec10: 7100411f     	cmp	w8, #0x10
    ec14: 54001261     	b.ne	0xee60 <syna_dev_resume+0x494>
    ec18: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a4
    ec1c: 91000000     	add	x0, x0, #0x0
		000000000000ec1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a4
    ec20: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ec24: 91000021     	add	x1, x1, #0x0
		000000000000ec24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ec28: 94000000     	bl	0xec28 <syna_dev_resume+0x25c>
		000000000000ec28:  R_AARCH64_CALL26	_printk
    ec2c: aa1303e0     	mov	x0, x19
    ec30: 94000000     	bl	0xec30 <syna_dev_resume+0x264>
		000000000000ec30:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
    ec34: 36f80120     	tbz	w0, #0x1f, 0xec58 <syna_dev_resume+0x28c>
    ec38: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d3e
    ec3c: 91000000     	add	x0, x0, #0x0
		000000000000ec3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d3e
    ec40: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ec44: 91000021     	add	x1, x1, #0x0
		000000000000ec44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ec48: 94000000     	bl	0xec48 <syna_dev_resume+0x27c>
		000000000000ec48:  R_AARCH64_CALL26	_printk
    ec4c: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    ec50: 360001c8     	tbz	w8, #0x0, 0xec88 <syna_dev_resume+0x2bc>
    ec54: 14000018     	b	0xecb4 <syna_dev_resume+0x2e8>
    ec58: b9457e62     	ldr	w2, [x19, #0x57c]
    ec5c: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec5c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    ec60: 91000108     	add	x8, x8, #0x0
		000000000000ec60:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    ec64: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8a
    ec68: 91000000     	add	x0, x0, #0x0
		000000000000ec68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8a
    ec6c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ec6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ec70: 91000021     	add	x1, x1, #0x0
		000000000000ec70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ec74: 3900091f     	strb	wzr, [x8, #0x2]
    ec78: 7900011f     	strh	wzr, [x8]
    ec7c: 94000000     	bl	0xec7c <syna_dev_resume+0x2b0>
		000000000000ec7c:  R_AARCH64_CALL26	_printk
    ec80: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    ec84: 37000188     	tbnz	w8, #0x0, 0xecb4 <syna_dev_resume+0x2e8>
    ec88: f94022a8     	ldr	x8, [x21, #0x40]
    ec8c: b4000148     	cbz	x8, 0xecb4 <syna_dev_resume+0x2e8>
    ec90: 910022a0     	add	x0, x21, #0x8
    ec94: 52800021     	mov	w1, #0x1                // =1
    ec98: b85fc110     	ldur	w16, [x8, #-0x4]
    ec9c: 728c3631     	movk	w17, #0x61b1
    eca0: 72a685d1     	movk	w17, #0x342e, lsl #16
    eca4: 6b11021f     	cmp	w16, w17
    eca8: 54000040     	b.eq	0xecb0 <syna_dev_resume+0x2e4>
    ecac: d4304500     	brk	#0x8228
    ecb0: d63f0100     	blr	x8
    ecb4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ecb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5778
    ecb8: 91000000     	add	x0, x0, #0x0
		000000000000ecb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5778
    ecbc: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ecbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261c
    ecc0: 91000021     	add	x1, x1, #0x0
		000000000000ecc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261c
    ecc4: 3916027f     	strb	wzr, [x19, #0x580]
    ecc8: 94000000     	bl	0xecc8 <syna_dev_resume+0x2fc>
		000000000000ecc8:  R_AARCH64_CALL26	_printk
    eccc: f9400260     	ldr	x0, [x19]
    ecd0: 52801a81     	mov	w1, #0xd4               // =212
    ecd4: 52800062     	mov	w2, #0x3                // =3
    ecd8: 2a1403e3     	mov	w3, w20
    ecdc: 94000000     	bl	0xecdc <syna_dev_resume+0x310>
		000000000000ecdc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ece0: 36f80160     	tbz	w0, #0x1f, 0xed0c <syna_dev_resume+0x340>
    ece4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ece4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa10c
    ece8: 91000000     	add	x0, x0, #0x0
		000000000000ece8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa10c
    ecec: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ecec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261c
    ecf0: 91000021     	add	x1, x1, #0x0
		000000000000ecf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261c
    ecf4: 94000000     	bl	0xecf4 <syna_dev_resume+0x328>
		000000000000ecf4:  R_AARCH64_CALL26	_printk
    ecf8: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ecf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4108
    ecfc: 91000000     	add	x0, x0, #0x0
		000000000000ecfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4108
    ed00: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ed00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ed04: 91000021     	add	x1, x1, #0x0
		000000000000ed04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ed08: 94000000     	bl	0xed08 <syna_dev_resume+0x33c>
		000000000000ed08:  R_AARCH64_CALL26	_printk
    ed0c: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ed0c:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
    ed10: 39400108     	ldrb	w8, [x8]
		000000000000ed10:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
    ed14: 7100051f     	cmp	w8, #0x1
    ed18: 54000161     	b.ne	0xed44 <syna_dev_resume+0x378>
    ed1c: aa1303e0     	mov	x0, x19
    ed20: 52800021     	mov	w1, #0x1                // =1
    ed24: 2a1403e2     	mov	w2, w20
    ed28: 94000000     	bl	0xed28 <syna_dev_resume+0x35c>
		000000000000ed28:  R_AARCH64_CALL26	syna_dev_set_charger_mode
    ed2c: 340000c0     	cbz	w0, 0xed44 <syna_dev_resume+0x378>
    ed30: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ed30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc372
    ed34: 91000000     	add	x0, x0, #0x0
		000000000000ed34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc372
    ed38: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ed38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ed3c: 91000021     	add	x1, x1, #0x0
		000000000000ed3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ed40: 94000000     	bl	0xed40 <syna_dev_resume+0x374>
		000000000000ed40:  R_AARCH64_CALL26	_printk
    ed44: b9460a61     	ldr	w1, [x19, #0x608]
    ed48: aa1303e0     	mov	x0, x19
    ed4c: 2a1403e2     	mov	w2, w20
    ed50: 94000000     	bl	0xed50 <syna_dev_resume+0x384>
		000000000000ed50:  R_AARCH64_CALL26	syna_dev_set_display_rotation
    ed54: b945de68     	ldr	w8, [x19, #0x5dc]
    ed58: 350000c8     	cbnz	w8, 0xed70 <syna_dev_resume+0x3a4>
    ed5c: b945fa61     	ldr	w1, [x19, #0x5f8]
    ed60: aa1303e0     	mov	x0, x19
    ed64: 2a1403e2     	mov	w2, w20
    ed68: 94000000     	bl	0xed68 <syna_dev_resume+0x39c>
		000000000000ed68:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    ed6c: 1400001b     	b	0xedd8 <syna_dev_resume+0x40c>
    ed70: aa1303e0     	mov	x0, x19
    ed74: 52800021     	mov	w1, #0x1                // =1
    ed78: 2a1403e2     	mov	w2, w20
    ed7c: 94000000     	bl	0xed7c <syna_dev_resume+0x3b0>
		000000000000ed7c:  R_AARCH64_CALL26	syna_dev_set_play_game
    ed80: 340000c0     	cbz	w0, 0xed98 <syna_dev_resume+0x3cc>
    ed84: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ed84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328e
    ed88: 91000000     	add	x0, x0, #0x0
		000000000000ed88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328e
    ed8c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ed8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ed90: 91000021     	add	x1, x1, #0x0
		000000000000ed90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ed94: 94000000     	bl	0xed94 <syna_dev_resume+0x3c8>
		000000000000ed94:  R_AARCH64_CALL26	_printk
    ed98: b945fa61     	ldr	w1, [x19, #0x5f8]
    ed9c: aa1303e0     	mov	x0, x19
    eda0: 2a1403e2     	mov	w2, w20
    eda4: 94000000     	bl	0xeda4 <syna_dev_resume+0x3d8>
		000000000000eda4:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    eda8: b945fe61     	ldr	w1, [x19, #0x5fc]
    edac: aa1303e0     	mov	x0, x19
    edb0: 2a1403e2     	mov	w2, w20
    edb4: 94000000     	bl	0xedb4 <syna_dev_resume+0x3e8>
		000000000000edb4:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
    edb8: b9460261     	ldr	w1, [x19, #0x600]
    edbc: aa1303e0     	mov	x0, x19
    edc0: 2a1403e2     	mov	w2, w20
    edc4: 94000000     	bl	0xedc4 <syna_dev_resume+0x3f8>
		000000000000edc4:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
    edc8: b9460661     	ldr	w1, [x19, #0x604]
    edcc: aa1303e0     	mov	x0, x19
    edd0: 2a1403e2     	mov	w2, w20
    edd4: 94000000     	bl	0xedd4 <syna_dev_resume+0x408>
		000000000000edd4:  R_AARCH64_CALL26	syna_dev_set_stability_level
    edd8: b945ee68     	ldr	w8, [x19, #0x5ec]
    eddc: b945f669     	ldr	w9, [x19, #0x5f4]
    ede0: 90000015     	adrp	x21, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ede0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ede4: 910002b5     	add	x21, x21, #0x0
		000000000000ede4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ede8: b945b262     	ldr	w2, [x19, #0x5b0]
    edec: 2a0003f4     	mov	w20, w0
    edf0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000edf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa200
    edf4: 91000000     	add	x0, x0, #0x0
		000000000000edf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa200
    edf8: aa1503e1     	mov	x1, x21
    edfc: b905ea68     	str	w8, [x19, #0x5e8]
    ee00: b905f269     	str	w9, [x19, #0x5f0]
    ee04: 94000000     	bl	0xee04 <syna_dev_resume+0x438>
		000000000000ee04:  R_AARCH64_CALL26	_printk
    ee08: b945c662     	ldr	w2, [x19, #0x5c4]
    ee0c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ee0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa908
    ee10: 91000000     	add	x0, x0, #0x0
		000000000000ee10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa908
    ee14: aa1503e1     	mov	x1, x21
    ee18: 94000000     	bl	0xee18 <syna_dev_resume+0x44c>
		000000000000ee18:  R_AARCH64_CALL26	_printk
    ee1c: b945d662     	ldr	w2, [x19, #0x5d4]
    ee20: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ee20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b8c
    ee24: 91000000     	add	x0, x0, #0x0
		000000000000ee24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b8c
    ee28: aa1503e1     	mov	x1, x21
    ee2c: 94000000     	bl	0xee2c <syna_dev_resume+0x460>
		000000000000ee2c:  R_AARCH64_CALL26	_printk
    ee30: b945ea62     	ldr	w2, [x19, #0x5e8]
    ee34: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ee34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x201c
    ee38: 91000000     	add	x0, x0, #0x0
		000000000000ee38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x201c
    ee3c: aa1503e1     	mov	x1, x21
    ee40: 94000000     	bl	0xee40 <syna_dev_resume+0x474>
		000000000000ee40:  R_AARCH64_CALL26	_printk
    ee44: b945f262     	ldr	w2, [x19, #0x5f0]
    ee48: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000ee48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x832e
    ee4c: 91000000     	add	x0, x0, #0x0
		000000000000ee4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x832e
    ee50: aa1503e1     	mov	x1, x21
    ee54: 94000000     	bl	0xee54 <syna_dev_resume+0x488>
		000000000000ee54:  R_AARCH64_CALL26	_printk
    ee58: 2a1403e0     	mov	w0, w20
    ee5c: 17fffef8     	b	0xea3c <syna_dev_resume+0x70>
    ee60: 52800640     	mov	w0, #0x32               // =50
    ee64: 94000000     	bl	0xee64 <syna_dev_resume+0x498>
		000000000000ee64:  R_AARCH64_CALL26	msleep
    ee68: f9400260     	ldr	x0, [x19]
    ee6c: 910013e1     	add	x1, sp, #0x4
    ee70: aa1f03e2     	mov	x2, xzr
    ee74: 94000000     	bl	0xee74 <syna_dev_resume+0x4a8>
		000000000000ee74:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ee78: 37ffeae0     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    ee7c: 394013e8     	ldrb	w8, [sp, #0x4]
    ee80: 7100411f     	cmp	w8, #0x10
    ee84: 54ffeca0     	b.eq	0xec18 <syna_dev_resume+0x24c>
    ee88: 52800640     	mov	w0, #0x32               // =50
    ee8c: 94000000     	bl	0xee8c <syna_dev_resume+0x4c0>
		000000000000ee8c:  R_AARCH64_CALL26	msleep
    ee90: f9400260     	ldr	x0, [x19]
    ee94: 910013e1     	add	x1, sp, #0x4
    ee98: aa1f03e2     	mov	x2, xzr
    ee9c: 94000000     	bl	0xee9c <syna_dev_resume+0x4d0>
		000000000000ee9c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    eea0: 37ffe9a0     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    eea4: 394013e8     	ldrb	w8, [sp, #0x4]
    eea8: 7100411f     	cmp	w8, #0x10
    eeac: 54ffeb60     	b.eq	0xec18 <syna_dev_resume+0x24c>
    eeb0: 52800640     	mov	w0, #0x32               // =50
    eeb4: 94000000     	bl	0xeeb4 <syna_dev_resume+0x4e8>
		000000000000eeb4:  R_AARCH64_CALL26	msleep
    eeb8: f9400260     	ldr	x0, [x19]
    eebc: 910013e1     	add	x1, sp, #0x4
    eec0: aa1f03e2     	mov	x2, xzr
    eec4: 94000000     	bl	0xeec4 <syna_dev_resume+0x4f8>
		000000000000eec4:  R_AARCH64_CALL26	syna_tcm_get_event_data
    eec8: 37ffe860     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    eecc: 394013e8     	ldrb	w8, [sp, #0x4]
    eed0: 7100411f     	cmp	w8, #0x10
    eed4: 54ffea20     	b.eq	0xec18 <syna_dev_resume+0x24c>
    eed8: 52800640     	mov	w0, #0x32               // =50
    eedc: 94000000     	bl	0xeedc <syna_dev_resume+0x510>
		000000000000eedc:  R_AARCH64_CALL26	msleep
    eee0: f9400260     	ldr	x0, [x19]
    eee4: 910013e1     	add	x1, sp, #0x4
    eee8: aa1f03e2     	mov	x2, xzr
    eeec: 94000000     	bl	0xeeec <syna_dev_resume+0x520>
		000000000000eeec:  R_AARCH64_CALL26	syna_tcm_get_event_data
    eef0: 37ffe720     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    eef4: 394013e8     	ldrb	w8, [sp, #0x4]
    eef8: 7100411f     	cmp	w8, #0x10
    eefc: 54ffe8e0     	b.eq	0xec18 <syna_dev_resume+0x24c>
    ef00: 52800640     	mov	w0, #0x32               // =50
    ef04: 94000000     	bl	0xef04 <syna_dev_resume+0x538>
		000000000000ef04:  R_AARCH64_CALL26	msleep
    ef08: f9400260     	ldr	x0, [x19]
    ef0c: 910013e1     	add	x1, sp, #0x4
    ef10: aa1f03e2     	mov	x2, xzr
    ef14: 94000000     	bl	0xef14 <syna_dev_resume+0x548>
		000000000000ef14:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef18: 37ffe5e0     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    ef1c: 394013e8     	ldrb	w8, [sp, #0x4]
    ef20: 7100411f     	cmp	w8, #0x10
    ef24: 54ffe7a0     	b.eq	0xec18 <syna_dev_resume+0x24c>
    ef28: 52800640     	mov	w0, #0x32               // =50
    ef2c: 94000000     	bl	0xef2c <syna_dev_resume+0x560>
		000000000000ef2c:  R_AARCH64_CALL26	msleep
    ef30: f9400260     	ldr	x0, [x19]
    ef34: 910013e1     	add	x1, sp, #0x4
    ef38: aa1f03e2     	mov	x2, xzr
    ef3c: 94000000     	bl	0xef3c <syna_dev_resume+0x570>
		000000000000ef3c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef40: 37ffe4a0     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    ef44: 394013e8     	ldrb	w8, [sp, #0x4]
    ef48: 7100411f     	cmp	w8, #0x10
    ef4c: 54ffe660     	b.eq	0xec18 <syna_dev_resume+0x24c>
    ef50: 52800640     	mov	w0, #0x32               // =50
    ef54: 94000000     	bl	0xef54 <syna_dev_resume+0x588>
		000000000000ef54:  R_AARCH64_CALL26	msleep
    ef58: f9400260     	ldr	x0, [x19]
    ef5c: 910013e1     	add	x1, sp, #0x4
    ef60: aa1f03e2     	mov	x2, xzr
    ef64: 94000000     	bl	0xef64 <syna_dev_resume+0x598>
		000000000000ef64:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef68: 37ffe360     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    ef6c: 394013e8     	ldrb	w8, [sp, #0x4]
    ef70: 7100411f     	cmp	w8, #0x10
    ef74: 54ffe520     	b.eq	0xec18 <syna_dev_resume+0x24c>
    ef78: 52800640     	mov	w0, #0x32               // =50
    ef7c: 94000000     	bl	0xef7c <syna_dev_resume+0x5b0>
		000000000000ef7c:  R_AARCH64_CALL26	msleep
    ef80: f9400260     	ldr	x0, [x19]
    ef84: 910013e1     	add	x1, sp, #0x4
    ef88: aa1f03e2     	mov	x2, xzr
    ef8c: 94000000     	bl	0xef8c <syna_dev_resume+0x5c0>
		000000000000ef8c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef90: 37ffe220     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    ef94: 394013e8     	ldrb	w8, [sp, #0x4]
    ef98: 7100411f     	cmp	w8, #0x10
    ef9c: 54ffe3e0     	b.eq	0xec18 <syna_dev_resume+0x24c>
    efa0: 52800640     	mov	w0, #0x32               // =50
    efa4: 94000000     	bl	0xefa4 <syna_dev_resume+0x5d8>
		000000000000efa4:  R_AARCH64_CALL26	msleep
    efa8: f9400260     	ldr	x0, [x19]
    efac: 910013e1     	add	x1, sp, #0x4
    efb0: aa1f03e2     	mov	x2, xzr
    efb4: 94000000     	bl	0xefb4 <syna_dev_resume+0x5e8>
		000000000000efb4:  R_AARCH64_CALL26	syna_tcm_get_event_data
    efb8: 37ffe0e0     	tbnz	w0, #0x1f, 0xebd4 <syna_dev_resume+0x208>
    efbc: 394013e8     	ldrb	w8, [sp, #0x4]
    efc0: 7100411f     	cmp	w8, #0x10
    efc4: 54ffe2a0     	b.eq	0xec18 <syna_dev_resume+0x24c>
    efc8: 52800640     	mov	w0, #0x32               // =50
    efcc: 94000000     	bl	0xefcc <syna_dev_resume+0x600>
		000000000000efcc:  R_AARCH64_CALL26	msleep
    efd0: 17ffff12     	b	0xec18 <syna_dev_resume+0x24c>
    efd4: 94000000     	bl	0xefd4 <syna_dev_resume+0x608>
		000000000000efd4:  R_AARCH64_CALL26	__stack_chk_fail
