
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ea28 <syna_dev_resume>:
    ea28: d503233f     	paciasp
    ea2c: d10103ff     	sub	sp, sp, #0x40
    ea30: a9017bfd     	stp	x29, x30, [sp, #0x10]
    ea34: a90257f6     	stp	x22, x21, [sp, #0x20]
    ea38: a9034ff4     	stp	x20, x19, [sp, #0x30]
    ea3c: 910043fd     	add	x29, sp, #0x10
    ea40: d5384108     	mrs	x8, SP_EL0
    ea44: f9438908     	ldr	x8, [x8, #0x710]
    ea48: f90007e8     	str	x8, [sp, #0x8]
    ea4c: f9404c13     	ldr	x19, [x0, #0x98]
    ea50: b4000233     	cbz	x19, 0xea94 <syna_dev_resume+0x6c>
    ea54: f9413a75     	ldr	x21, [x19, #0x270]
    ea58: f9400268     	ldr	x8, [x19]
    ea5c: b102a2bf     	cmn	x21, #0xa8
    ea60: 540000e0     	b.eq	0xea7c <syna_dev_resume+0x54>
    ea64: b940baa9     	ldr	w9, [x21, #0xb8]
    ea68: 340000a9     	cbz	w9, 0xea7c <syna_dev_resume+0x54>
    ea6c: 3942f2a9     	ldrb	w9, [x21, #0xbc]
    ea70: 36000069     	tbz	w9, #0x0, 0xea7c <syna_dev_resume+0x54>
    ea74: 2a1f03f4     	mov	w20, wzr
    ea78: 14000002     	b	0xea80 <syna_dev_resume+0x58>
    ea7c: b9420d14     	ldr	w20, [x8, #0x20c]
    ea80: b9457e68     	ldr	w8, [x19, #0x57c]
    ea84: 7100051f     	cmp	w8, #0x1
    ea88: 540001e1     	b.ne	0xeac4 <syna_dev_resume+0x9c>
    ea8c: 2a1f03e0     	mov	w0, wzr
    ea90: 14000002     	b	0xea98 <syna_dev_resume+0x70>
    ea94: 128002a0     	mov	w0, #-0x16              // =-22
    ea98: d5384108     	mrs	x8, SP_EL0
    ea9c: f9438908     	ldr	x8, [x8, #0x710]
    eaa0: f94007e9     	ldr	x9, [sp, #0x8]
    eaa4: eb09011f     	cmp	x8, x9
    eaa8: 54002c41     	b.ne	0xf030 <syna_dev_resume+0x608>
    eaac: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    eab0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    eab4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    eab8: 910103ff     	add	sp, sp, #0x40
    eabc: d50323bf     	autiasp
    eac0: d65f03c0     	ret
    eac4: 90000016     	adrp	x22, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eac4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    eac8: 390013ff     	strb	wzr, [sp, #0x4]
    eacc: 394002c8     	ldrb	w8, [x22]
		000000000000eacc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    ead0: 7100051f     	cmp	w8, #0x1
    ead4: 54000361     	b.ne	0xeb40 <syna_dev_resume+0x118>
    ead8: b945d668     	ldr	w8, [x19, #0x5d4]
    eadc: 35000288     	cbnz	w8, 0xeb2c <syna_dev_resume+0x104>
    eae0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63fc
    eae4: 91000000     	add	x0, x0, #0x0
		000000000000eae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63fc
    eae8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eaec: 91000021     	add	x1, x1, #0x0
		000000000000eaec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eaf0: 94000000     	bl	0xeaf0 <syna_dev_resume+0xc8>
		000000000000eaf0:  R_AARCH64_CALL26	_printk
    eaf4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eaf4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    eaf8: 91000000     	add	x0, x0, #0x0
		000000000000eaf8:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    eafc: 52804e21     	mov	w1, #0x271              // =625
    eb00: 94000000     	bl	0xeb00 <syna_dev_resume+0xd8>
		000000000000eb00:  R_AARCH64_CALL26	wait_for_completion_timeout
    eb04: b50000c0     	cbnz	x0, 0xeb1c <syna_dev_resume+0xf4>
    eb08: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x937a
    eb0c: 91000000     	add	x0, x0, #0x0
		000000000000eb0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x937a
    eb10: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eb14: 91000021     	add	x1, x1, #0x0
		000000000000eb14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eb18: 94000000     	bl	0xeb18 <syna_dev_resume+0xf0>
		000000000000eb18:  R_AARCH64_CALL26	_printk
    eb1c: 2a1f03e0     	mov	w0, wzr
    eb20: 390002df     	strb	wzr, [x22]
		000000000000eb20:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    eb24: 94000000     	bl	0xeb24 <syna_dev_resume+0xfc>
		000000000000eb24:  R_AARCH64_CALL26	report_ufp_uevent
    eb28: 14000006     	b	0xeb40 <syna_dev_resume+0x118>
    eb2c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a6
    eb30: 91000000     	add	x0, x0, #0x0
		000000000000eb30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a6
    eb34: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eb38: 91000021     	add	x1, x1, #0x0
		000000000000eb38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eb3c: 94000000     	bl	0xeb3c <syna_dev_resume+0x114>
		000000000000eb3c:  R_AARCH64_CALL26	_printk
    eb40: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8
    eb44: 91000000     	add	x0, x0, #0x0
		000000000000eb44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8
    eb48: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eb4c: 91000021     	add	x1, x1, #0x0
		000000000000eb4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eb50: 94000000     	bl	0xeb50 <syna_dev_resume+0x128>
		000000000000eb50:  R_AARCH64_CALL26	_printk
    eb54: 39560668     	ldrb	w8, [x19, #0x581]
    eb58: 52800029     	mov	w9, #0x1                // =1
    eb5c: b9057e69     	str	w9, [x19, #0x57c]
    eb60: 90000009     	adrp	x9, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eb60:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
    eb64: 7100051f     	cmp	w8, #0x1
    eb68: b900013f     	str	wzr, [x9]
		000000000000eb68:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
    eb6c: 54000181     	b.ne	0xeb9c <syna_dev_resume+0x174>
    eb70: f94022a8     	ldr	x8, [x21, #0x40]
    eb74: b4000148     	cbz	x8, 0xeb9c <syna_dev_resume+0x174>
    eb78: 910022a0     	add	x0, x21, #0x8
    eb7c: 2a1f03e1     	mov	w1, wzr
    eb80: b85fc110     	ldur	w16, [x8, #-0x4]
    eb84: 728c3631     	movk	w17, #0x61b1
    eb88: 72a685d1     	movk	w17, #0x342e, lsl #16
    eb8c: 6b11021f     	cmp	w16, w17
    eb90: 54000040     	b.eq	0xeb98 <syna_dev_resume+0x170>
    eb94: d4304500     	brk	#0x8228
    eb98: d63f0100     	blr	x8
    eb9c: b945d668     	ldr	w8, [x19, #0x5d4]
    eba0: 340000e8     	cbz	w8, 0xebbc <syna_dev_resume+0x194>
    eba4: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eba4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    eba8: 91000108     	add	x8, x8, #0x0
		000000000000eba8:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    ebac: 39400109     	ldrb	w9, [x8]
    ebb0: 39400508     	ldrb	w8, [x8, #0x1]
    ebb4: 2a090108     	orr	w8, w8, w9
    ebb8: 35000428     	cbnz	w8, 0xec3c <syna_dev_resume+0x214>
    ebbc: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ebbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26f4
    ebc0: 91000000     	add	x0, x0, #0x0
		000000000000ebc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26f4
    ebc4: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ebc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ebc8: 91000021     	add	x1, x1, #0x0
		000000000000ebc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ebcc: 94000000     	bl	0xebcc <syna_dev_resume+0x1a4>
		000000000000ebcc:  R_AARCH64_CALL26	_printk
    ebd0: f940c6a8     	ldr	x8, [x21, #0x188]
    ebd4: b5000108     	cbnz	x8, 0xebf4 <syna_dev_resume+0x1cc>
    ebd8: f9400260     	ldr	x0, [x19]
    ebdc: 2a1403e1     	mov	w1, w20
    ebe0: 94000000     	bl	0xebe0 <syna_dev_resume+0x1b8>
		000000000000ebe0:  R_AARCH64_CALL26	syna_tcm_reset
    ebe4: 36f80480     	tbz	w0, #0x1f, 0xec74 <syna_dev_resume+0x24c>
    ebe8: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ebe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99ba
    ebec: 91000000     	add	x0, x0, #0x0
		000000000000ebec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99ba
    ebf0: 1400002b     	b	0xec9c <syna_dev_resume+0x274>
    ebf4: aa1503e0     	mov	x0, x21
    ebf8: b85fc110     	ldur	w16, [x8, #-0x4]
    ebfc: 72974371     	movk	w17, #0xba1b
    ec00: 72a56791     	movk	w17, #0x2b3c, lsl #16
    ec04: 6b11021f     	cmp	w16, w17
    ec08: 54000040     	b.eq	0xec10 <syna_dev_resume+0x1e8>
    ec0c: d4304500     	brk	#0x8228
    ec10: d63f0100     	blr	x8
    ec14: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    ec18: 370002e8     	tbnz	w8, #0x0, 0xec74 <syna_dev_resume+0x24c>
    ec1c: f9400260     	ldr	x0, [x19]
    ec20: 910013e1     	add	x1, sp, #0x4
    ec24: aa1f03e2     	mov	x2, xzr
    ec28: 94000000     	bl	0xec28 <syna_dev_resume+0x200>
		000000000000ec28:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ec2c: 36f801e0     	tbz	w0, #0x1f, 0xec68 <syna_dev_resume+0x240>
    ec30: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x133c
    ec34: 91000000     	add	x0, x0, #0x0
		000000000000ec34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x133c
    ec38: 14000019     	b	0xec9c <syna_dev_resume+0x274>
    ec3c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d4e
    ec40: 91000000     	add	x0, x0, #0x0
		000000000000ec40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d4e
    ec44: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ec48: 91000021     	add	x1, x1, #0x0
		000000000000ec48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ec4c: 94000000     	bl	0xec4c <syna_dev_resume+0x224>
		000000000000ec4c:  R_AARCH64_CALL26	_printk
    ec50: aa1303e0     	mov	x0, x19
    ec54: 94000000     	bl	0xec54 <syna_dev_resume+0x22c>
		000000000000ec54:  R_AARCH64_CALL26	syna_dev_enter_normal_sensing
    ec58: 36f800e0     	tbz	w0, #0x1f, 0xec74 <syna_dev_resume+0x24c>
    ec5c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0a8
    ec60: 91000000     	add	x0, x0, #0x0
		000000000000ec60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0a8
    ec64: 1400000e     	b	0xec9c <syna_dev_resume+0x274>
    ec68: 394013e8     	ldrb	w8, [sp, #0x4]
    ec6c: 7100411f     	cmp	w8, #0x10
    ec70: 54001261     	b.ne	0xeebc <syna_dev_resume+0x494>
    ec74: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a4
    ec78: 91000000     	add	x0, x0, #0x0
		000000000000ec78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a4
    ec7c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ec80: 91000021     	add	x1, x1, #0x0
		000000000000ec80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ec84: 94000000     	bl	0xec84 <syna_dev_resume+0x25c>
		000000000000ec84:  R_AARCH64_CALL26	_printk
    ec88: aa1303e0     	mov	x0, x19
    ec8c: 94000000     	bl	0xec8c <syna_dev_resume+0x264>
		000000000000ec8c:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
    ec90: 36f80120     	tbz	w0, #0x1f, 0xecb4 <syna_dev_resume+0x28c>
    ec94: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d3e
    ec98: 91000000     	add	x0, x0, #0x0
		000000000000ec98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d3e
    ec9c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ec9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eca0: 91000021     	add	x1, x1, #0x0
		000000000000eca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    eca4: 94000000     	bl	0xeca4 <syna_dev_resume+0x27c>
		000000000000eca4:  R_AARCH64_CALL26	_printk
    eca8: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    ecac: 360001c8     	tbz	w8, #0x0, 0xece4 <syna_dev_resume+0x2bc>
    ecb0: 14000018     	b	0xed10 <syna_dev_resume+0x2e8>
    ecb4: b9457e62     	ldr	w2, [x19, #0x57c]
    ecb8: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ecb8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    ecbc: 91000108     	add	x8, x8, #0x0
		000000000000ecbc:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0xa0
    ecc0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ecc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d8a
    ecc4: 91000000     	add	x0, x0, #0x0
		000000000000ecc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d8a
    ecc8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ecc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    eccc: 91000021     	add	x1, x1, #0x0
		000000000000eccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ecd0: 3900091f     	strb	wzr, [x8, #0x2]
    ecd4: 7900011f     	strh	wzr, [x8]
    ecd8: 94000000     	bl	0xecd8 <syna_dev_resume+0x2b0>
		000000000000ecd8:  R_AARCH64_CALL26	_printk
    ecdc: 3942f2a8     	ldrb	w8, [x21, #0xbc]
    ece0: 37000188     	tbnz	w8, #0x0, 0xed10 <syna_dev_resume+0x2e8>
    ece4: f94022a8     	ldr	x8, [x21, #0x40]
    ece8: b4000148     	cbz	x8, 0xed10 <syna_dev_resume+0x2e8>
    ecec: 910022a0     	add	x0, x21, #0x8
    ecf0: 52800021     	mov	w1, #0x1                // =1
    ecf4: b85fc110     	ldur	w16, [x8, #-0x4]
    ecf8: 728c3631     	movk	w17, #0x61b1
    ecfc: 72a685d1     	movk	w17, #0x342e, lsl #16
    ed00: 6b11021f     	cmp	w16, w17
    ed04: 54000040     	b.eq	0xed0c <syna_dev_resume+0x2e4>
    ed08: d4304500     	brk	#0x8228
    ed0c: d63f0100     	blr	x8
    ed10: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5778
    ed14: 91000000     	add	x0, x0, #0x0
		000000000000ed14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5778
    ed18: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261c
    ed1c: 91000021     	add	x1, x1, #0x0
		000000000000ed1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261c
    ed20: 3916027f     	strb	wzr, [x19, #0x580]
    ed24: 94000000     	bl	0xed24 <syna_dev_resume+0x2fc>
		000000000000ed24:  R_AARCH64_CALL26	_printk
    ed28: f9400260     	ldr	x0, [x19]
    ed2c: 52801a81     	mov	w1, #0xd4               // =212
    ed30: 52800062     	mov	w2, #0x3                // =3
    ed34: 2a1403e3     	mov	w3, w20
    ed38: 94000000     	bl	0xed38 <syna_dev_resume+0x310>
		000000000000ed38:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    ed3c: 36f80160     	tbz	w0, #0x1f, 0xed68 <syna_dev_resume+0x340>
    ed40: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa10c
    ed44: 91000000     	add	x0, x0, #0x0
		000000000000ed44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa10c
    ed48: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261c
    ed4c: 91000021     	add	x1, x1, #0x0
		000000000000ed4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261c
    ed50: 94000000     	bl	0xed50 <syna_dev_resume+0x328>
		000000000000ed50:  R_AARCH64_CALL26	_printk
    ed54: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4108
    ed58: 91000000     	add	x0, x0, #0x0
		000000000000ed58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4108
    ed5c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ed60: 91000021     	add	x1, x1, #0x0
		000000000000ed60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ed64: 94000000     	bl	0xed64 <syna_dev_resume+0x33c>
		000000000000ed64:  R_AARCH64_CALL26	_printk
    ed68: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed68:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
    ed6c: 39400108     	ldrb	w8, [x8]
		000000000000ed6c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
    ed70: 7100051f     	cmp	w8, #0x1
    ed74: 54000161     	b.ne	0xeda0 <syna_dev_resume+0x378>
    ed78: aa1303e0     	mov	x0, x19
    ed7c: 52800021     	mov	w1, #0x1                // =1
    ed80: 2a1403e2     	mov	w2, w20
    ed84: 94000000     	bl	0xed84 <syna_dev_resume+0x35c>
		000000000000ed84:  R_AARCH64_CALL26	syna_dev_set_charger_mode
    ed88: 340000c0     	cbz	w0, 0xeda0 <syna_dev_resume+0x378>
    ed8c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc372
    ed90: 91000000     	add	x0, x0, #0x0
		000000000000ed90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc372
    ed94: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ed94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ed98: 91000021     	add	x1, x1, #0x0
		000000000000ed98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ed9c: 94000000     	bl	0xed9c <syna_dev_resume+0x374>
		000000000000ed9c:  R_AARCH64_CALL26	_printk
    eda0: b9460a61     	ldr	w1, [x19, #0x608]
    eda4: aa1303e0     	mov	x0, x19
    eda8: 2a1403e2     	mov	w2, w20
    edac: 94000000     	bl	0xedac <syna_dev_resume+0x384>
		000000000000edac:  R_AARCH64_CALL26	syna_dev_set_display_rotation
    edb0: b945de68     	ldr	w8, [x19, #0x5dc]
    edb4: 350000c8     	cbnz	w8, 0xedcc <syna_dev_resume+0x3a4>
    edb8: b945fa61     	ldr	w1, [x19, #0x5f8]
    edbc: aa1303e0     	mov	x0, x19
    edc0: 2a1403e2     	mov	w2, w20
    edc4: 94000000     	bl	0xedc4 <syna_dev_resume+0x39c>
		000000000000edc4:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    edc8: 1400001b     	b	0xee34 <syna_dev_resume+0x40c>
    edcc: aa1303e0     	mov	x0, x19
    edd0: 52800021     	mov	w1, #0x1                // =1
    edd4: 2a1403e2     	mov	w2, w20
    edd8: 94000000     	bl	0xedd8 <syna_dev_resume+0x3b0>
		000000000000edd8:  R_AARCH64_CALL26	syna_dev_set_play_game
    eddc: 340000c0     	cbz	w0, 0xedf4 <syna_dev_resume+0x3cc>
    ede0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ede0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328e
    ede4: 91000000     	add	x0, x0, #0x0
		000000000000ede4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328e
    ede8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ede8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    edec: 91000021     	add	x1, x1, #0x0
		000000000000edec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    edf0: 94000000     	bl	0xedf0 <syna_dev_resume+0x3c8>
		000000000000edf0:  R_AARCH64_CALL26	_printk
    edf4: b945fa61     	ldr	w1, [x19, #0x5f8]
    edf8: aa1303e0     	mov	x0, x19
    edfc: 2a1403e2     	mov	w2, w20
    ee00: 94000000     	bl	0xee00 <syna_dev_resume+0x3d8>
		000000000000ee00:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    ee04: b945fe61     	ldr	w1, [x19, #0x5fc]
    ee08: aa1303e0     	mov	x0, x19
    ee0c: 2a1403e2     	mov	w2, w20
    ee10: 94000000     	bl	0xee10 <syna_dev_resume+0x3e8>
		000000000000ee10:  R_AARCH64_CALL26	syna_dev_set_sensibility_level
    ee14: b9460261     	ldr	w1, [x19, #0x600]
    ee18: aa1303e0     	mov	x0, x19
    ee1c: 2a1403e2     	mov	w2, w20
    ee20: 94000000     	bl	0xee20 <syna_dev_resume+0x3f8>
		000000000000ee20:  R_AARCH64_CALL26	syna_dev_set_follow_hand_level
    ee24: b9460661     	ldr	w1, [x19, #0x604]
    ee28: aa1303e0     	mov	x0, x19
    ee2c: 2a1403e2     	mov	w2, w20
    ee30: 94000000     	bl	0xee30 <syna_dev_resume+0x408>
		000000000000ee30:  R_AARCH64_CALL26	syna_dev_set_stability_level
    ee34: b945ee68     	ldr	w8, [x19, #0x5ec]
    ee38: b945f669     	ldr	w9, [x19, #0x5f4]
    ee3c: 90000015     	adrp	x21, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ee3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc362
    ee40: 910002b5     	add	x21, x21, #0x0
		000000000000ee40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc362
    ee44: b945b262     	ldr	w2, [x19, #0x5b0]
    ee48: 2a0003f4     	mov	w20, w0
    ee4c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ee4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa200
    ee50: 91000000     	add	x0, x0, #0x0
		000000000000ee50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa200
    ee54: aa1503e1     	mov	x1, x21
    ee58: b905ea68     	str	w8, [x19, #0x5e8]
    ee5c: b905f269     	str	w9, [x19, #0x5f0]
    ee60: 94000000     	bl	0xee60 <syna_dev_resume+0x438>
		000000000000ee60:  R_AARCH64_CALL26	_printk
    ee64: b945c662     	ldr	w2, [x19, #0x5c4]
    ee68: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ee68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa908
    ee6c: 91000000     	add	x0, x0, #0x0
		000000000000ee6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa908
    ee70: aa1503e1     	mov	x1, x21
    ee74: 94000000     	bl	0xee74 <syna_dev_resume+0x44c>
		000000000000ee74:  R_AARCH64_CALL26	_printk
    ee78: b945d662     	ldr	w2, [x19, #0x5d4]
    ee7c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ee7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b8c
    ee80: 91000000     	add	x0, x0, #0x0
		000000000000ee80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b8c
    ee84: aa1503e1     	mov	x1, x21
    ee88: 94000000     	bl	0xee88 <syna_dev_resume+0x460>
		000000000000ee88:  R_AARCH64_CALL26	_printk
    ee8c: b945ea62     	ldr	w2, [x19, #0x5e8]
    ee90: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000ee90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x201c
    ee94: 91000000     	add	x0, x0, #0x0
		000000000000ee94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x201c
    ee98: aa1503e1     	mov	x1, x21
    ee9c: 94000000     	bl	0xee9c <syna_dev_resume+0x474>
		000000000000ee9c:  R_AARCH64_CALL26	_printk
    eea0: b945f262     	ldr	w2, [x19, #0x5f0]
    eea4: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000eea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x832e
    eea8: 91000000     	add	x0, x0, #0x0
		000000000000eea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x832e
    eeac: aa1503e1     	mov	x1, x21
    eeb0: 94000000     	bl	0xeeb0 <syna_dev_resume+0x488>
		000000000000eeb0:  R_AARCH64_CALL26	_printk
    eeb4: 2a1403e0     	mov	w0, w20
    eeb8: 17fffef8     	b	0xea98 <syna_dev_resume+0x70>
    eebc: 52800640     	mov	w0, #0x32               // =50
    eec0: 94000000     	bl	0xeec0 <syna_dev_resume+0x498>
		000000000000eec0:  R_AARCH64_CALL26	msleep
    eec4: f9400260     	ldr	x0, [x19]
    eec8: 910013e1     	add	x1, sp, #0x4
    eecc: aa1f03e2     	mov	x2, xzr
    eed0: 94000000     	bl	0xeed0 <syna_dev_resume+0x4a8>
		000000000000eed0:  R_AARCH64_CALL26	syna_tcm_get_event_data
    eed4: 37ffeae0     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    eed8: 394013e8     	ldrb	w8, [sp, #0x4]
    eedc: 7100411f     	cmp	w8, #0x10
    eee0: 54ffeca0     	b.eq	0xec74 <syna_dev_resume+0x24c>
    eee4: 52800640     	mov	w0, #0x32               // =50
    eee8: 94000000     	bl	0xeee8 <syna_dev_resume+0x4c0>
		000000000000eee8:  R_AARCH64_CALL26	msleep
    eeec: f9400260     	ldr	x0, [x19]
    eef0: 910013e1     	add	x1, sp, #0x4
    eef4: aa1f03e2     	mov	x2, xzr
    eef8: 94000000     	bl	0xeef8 <syna_dev_resume+0x4d0>
		000000000000eef8:  R_AARCH64_CALL26	syna_tcm_get_event_data
    eefc: 37ffe9a0     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    ef00: 394013e8     	ldrb	w8, [sp, #0x4]
    ef04: 7100411f     	cmp	w8, #0x10
    ef08: 54ffeb60     	b.eq	0xec74 <syna_dev_resume+0x24c>
    ef0c: 52800640     	mov	w0, #0x32               // =50
    ef10: 94000000     	bl	0xef10 <syna_dev_resume+0x4e8>
		000000000000ef10:  R_AARCH64_CALL26	msleep
    ef14: f9400260     	ldr	x0, [x19]
    ef18: 910013e1     	add	x1, sp, #0x4
    ef1c: aa1f03e2     	mov	x2, xzr
    ef20: 94000000     	bl	0xef20 <syna_dev_resume+0x4f8>
		000000000000ef20:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef24: 37ffe860     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    ef28: 394013e8     	ldrb	w8, [sp, #0x4]
    ef2c: 7100411f     	cmp	w8, #0x10
    ef30: 54ffea20     	b.eq	0xec74 <syna_dev_resume+0x24c>
    ef34: 52800640     	mov	w0, #0x32               // =50
    ef38: 94000000     	bl	0xef38 <syna_dev_resume+0x510>
		000000000000ef38:  R_AARCH64_CALL26	msleep
    ef3c: f9400260     	ldr	x0, [x19]
    ef40: 910013e1     	add	x1, sp, #0x4
    ef44: aa1f03e2     	mov	x2, xzr
    ef48: 94000000     	bl	0xef48 <syna_dev_resume+0x520>
		000000000000ef48:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef4c: 37ffe720     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    ef50: 394013e8     	ldrb	w8, [sp, #0x4]
    ef54: 7100411f     	cmp	w8, #0x10
    ef58: 54ffe8e0     	b.eq	0xec74 <syna_dev_resume+0x24c>
    ef5c: 52800640     	mov	w0, #0x32               // =50
    ef60: 94000000     	bl	0xef60 <syna_dev_resume+0x538>
		000000000000ef60:  R_AARCH64_CALL26	msleep
    ef64: f9400260     	ldr	x0, [x19]
    ef68: 910013e1     	add	x1, sp, #0x4
    ef6c: aa1f03e2     	mov	x2, xzr
    ef70: 94000000     	bl	0xef70 <syna_dev_resume+0x548>
		000000000000ef70:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef74: 37ffe5e0     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    ef78: 394013e8     	ldrb	w8, [sp, #0x4]
    ef7c: 7100411f     	cmp	w8, #0x10
    ef80: 54ffe7a0     	b.eq	0xec74 <syna_dev_resume+0x24c>
    ef84: 52800640     	mov	w0, #0x32               // =50
    ef88: 94000000     	bl	0xef88 <syna_dev_resume+0x560>
		000000000000ef88:  R_AARCH64_CALL26	msleep
    ef8c: f9400260     	ldr	x0, [x19]
    ef90: 910013e1     	add	x1, sp, #0x4
    ef94: aa1f03e2     	mov	x2, xzr
    ef98: 94000000     	bl	0xef98 <syna_dev_resume+0x570>
		000000000000ef98:  R_AARCH64_CALL26	syna_tcm_get_event_data
    ef9c: 37ffe4a0     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    efa0: 394013e8     	ldrb	w8, [sp, #0x4]
    efa4: 7100411f     	cmp	w8, #0x10
    efa8: 54ffe660     	b.eq	0xec74 <syna_dev_resume+0x24c>
    efac: 52800640     	mov	w0, #0x32               // =50
    efb0: 94000000     	bl	0xefb0 <syna_dev_resume+0x588>
		000000000000efb0:  R_AARCH64_CALL26	msleep
    efb4: f9400260     	ldr	x0, [x19]
    efb8: 910013e1     	add	x1, sp, #0x4
    efbc: aa1f03e2     	mov	x2, xzr
    efc0: 94000000     	bl	0xefc0 <syna_dev_resume+0x598>
		000000000000efc0:  R_AARCH64_CALL26	syna_tcm_get_event_data
    efc4: 37ffe360     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    efc8: 394013e8     	ldrb	w8, [sp, #0x4]
    efcc: 7100411f     	cmp	w8, #0x10
    efd0: 54ffe520     	b.eq	0xec74 <syna_dev_resume+0x24c>
    efd4: 52800640     	mov	w0, #0x32               // =50
    efd8: 94000000     	bl	0xefd8 <syna_dev_resume+0x5b0>
		000000000000efd8:  R_AARCH64_CALL26	msleep
    efdc: f9400260     	ldr	x0, [x19]
    efe0: 910013e1     	add	x1, sp, #0x4
    efe4: aa1f03e2     	mov	x2, xzr
    efe8: 94000000     	bl	0xefe8 <syna_dev_resume+0x5c0>
		000000000000efe8:  R_AARCH64_CALL26	syna_tcm_get_event_data
    efec: 37ffe220     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    eff0: 394013e8     	ldrb	w8, [sp, #0x4]
    eff4: 7100411f     	cmp	w8, #0x10
    eff8: 54ffe3e0     	b.eq	0xec74 <syna_dev_resume+0x24c>
    effc: 52800640     	mov	w0, #0x32               // =50
    f000: 94000000     	bl	0xf000 <syna_dev_resume+0x5d8>
		000000000000f000:  R_AARCH64_CALL26	msleep
    f004: f9400260     	ldr	x0, [x19]
    f008: 910013e1     	add	x1, sp, #0x4
    f00c: aa1f03e2     	mov	x2, xzr
    f010: 94000000     	bl	0xf010 <syna_dev_resume+0x5e8>
		000000000000f010:  R_AARCH64_CALL26	syna_tcm_get_event_data
    f014: 37ffe0e0     	tbnz	w0, #0x1f, 0xec30 <syna_dev_resume+0x208>
    f018: 394013e8     	ldrb	w8, [sp, #0x4]
    f01c: 7100411f     	cmp	w8, #0x10
    f020: 54ffe2a0     	b.eq	0xec74 <syna_dev_resume+0x24c>
    f024: 52800640     	mov	w0, #0x32               // =50
    f028: 94000000     	bl	0xf028 <syna_dev_resume+0x600>
		000000000000f028:  R_AARCH64_CALL26	msleep
    f02c: 17ffff12     	b	0xec74 <syna_dev_resume+0x24c>
    f030: 94000000     	bl	0xf030 <syna_dev_resume+0x608>
		000000000000f030:  R_AARCH64_CALL26	__stack_chk_fail
