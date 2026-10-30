
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ba9c <syna_work_charger_detect_work>:
   1ba9c: d503233f     	paciasp
   1baa0: d10143ff     	sub	sp, sp, #0x50
   1baa4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1baa8: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1baac: a90357f6     	stp	x22, x21, [sp, #0x30]
   1bab0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1bab4: 910043fd     	add	x29, sp, #0x10
   1bab8: d5384108     	mrs	x8, SP_EL0
   1babc: f9438908     	ldr	x8, [x8, #0x710]
   1bac0: f1188013     	subs	x19, x0, #0x620
   1bac4: f90007e8     	str	x8, [sp, #0x8]
   1bac8: 540001a1     	b.ne	0x1bafc <syna_work_charger_detect_work+0x60>
   1bacc: d5384108     	mrs	x8, SP_EL0
   1bad0: f9438908     	ldr	x8, [x8, #0x710]
   1bad4: f94007e9     	ldr	x9, [sp, #0x8]
   1bad8: eb09011f     	cmp	x8, x9
   1badc: 54000ca1     	b.ne	0x1bc70 <syna_work_charger_detect_work+0x1d4>
   1bae0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1bae4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1bae8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1baec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1baf0: 910143ff     	add	sp, sp, #0x50
   1baf4: d50323bf     	autiasp
   1baf8: d65f03c0     	ret
   1bafc: d10ec008     	sub	x8, x0, #0x3b0
   1bb00: f9400109     	ldr	x9, [x8]
   1bb04: f9400268     	ldr	x8, [x19]
   1bb08: b940b92a     	ldr	w10, [x9, #0xb8]
   1bb0c: 340000ca     	cbz	w10, 0x1bb24 <syna_work_charger_detect_work+0x88>
   1bb10: 3942f129     	ldrb	w9, [x9, #0xbc]
   1bb14: 36000089     	tbz	w9, #0x0, 0x1bb24 <syna_work_charger_detect_work+0x88>
   1bb18: aa0003f7     	mov	x23, x0
   1bb1c: 2a1f03f4     	mov	w20, wzr
   1bb20: 14000003     	b	0x1bb2c <syna_work_charger_detect_work+0x90>
   1bb24: b9420d14     	ldr	w20, [x8, #0x20c]
   1bb28: aa0003f7     	mov	x23, x0
   1bb2c: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bb2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e0c
   1bb30: 91000000     	add	x0, x0, #0x0
		000000000001bb30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e0c
   1bb34: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001bb34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x373e
   1bb38: 91000021     	add	x1, x1, #0x0
		000000000001bb38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x373e
   1bb3c: 94000000     	bl	0x1bb3c <syna_work_charger_detect_work+0xa0>
		000000000001bb3c:  R_AARCH64_CALL26	_printk
   1bb40: 90000015     	adrp	x21, 0x1b000 <string_change+0x404>
		000000000001bb40:  R_AARCH64_ADR_PREL_PG_HI21	syna_get_charger_status.batt_psy
   1bb44: 90000016     	adrp	x22, 0x1b000 <string_change+0x404>
		000000000001bb44:  R_AARCH64_ADR_PREL_PG_HI21	syna_work_charger_detect_work.status
   1bb48: f90003ff     	str	xzr, [sp]
   1bb4c: f94002a0     	ldr	x0, [x21]
		000000000001bb4c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1bb50: b50001e0     	cbnz	x0, 0x1bb8c <syna_work_charger_detect_work+0xf0>
   1bb54: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bb54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba48
   1bb58: 91000000     	add	x0, x0, #0x0
		000000000001bb58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba48
   1bb5c: 94000000     	bl	0x1bb5c <syna_work_charger_detect_work+0xc0>
		000000000001bb5c:  R_AARCH64_CALL26	power_supply_get_by_name
   1bb60: f90002a0     	str	x0, [x21]
		000000000001bb60:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1bb64: b5000140     	cbnz	x0, 0x1bb8c <syna_work_charger_detect_work+0xf0>
   1bb68: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bb68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1bb6c: 91000000     	add	x0, x0, #0x0
		000000000001bb6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1bb70: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001bb70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1bb74: 91000021     	add	x1, x1, #0x0
		000000000001bb74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1bb78: 2a1f03e2     	mov	w2, wzr
   1bb7c: 94000000     	bl	0x1bb7c <syna_work_charger_detect_work+0xe0>
		000000000001bb7c:  R_AARCH64_CALL26	_printk
   1bb80: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bb80:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1bb84: 3900011f     	strb	wzr, [x8]
		000000000001bb84:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1bb88: 14000024     	b	0x1bc18 <syna_work_charger_detect_work+0x17c>
   1bb8c: f9400008     	ldr	x8, [x0]
   1bb90: 910003e2     	mov	x2, sp
   1bb94: 2a1f03e1     	mov	w1, wzr
   1bb98: f9401508     	ldr	x8, [x8, #0x28]
   1bb9c: b85fc110     	ldur	w16, [x8, #-0x4]
   1bba0: 72819a71     	movk	w17, #0xcd3
   1bba4: 72bd1331     	movk	w17, #0xe899, lsl #16
   1bba8: 6b11021f     	cmp	w16, w17
   1bbac: 54000040     	b.eq	0x1bbb4 <syna_work_charger_detect_work+0x118>
   1bbb0: d4304500     	brk	#0x8228
   1bbb4: d63f0100     	blr	x8
   1bbb8: b94003f8     	ldr	w24, [sp]
   1bbbc: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bbbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1bbc0: 91000000     	add	x0, x0, #0x0
		000000000001bbc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1bbc4: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001bbc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1bbc8: 91000021     	add	x1, x1, #0x0
		000000000001bbc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1bbcc: 7100131f     	cmp	w24, #0x4
   1bbd0: 1a9f17e8     	cset	w8, eq
   1bbd4: 7100071f     	cmp	w24, #0x1
   1bbd8: 1a9f1515     	csinc	w21, w8, wzr, ne
   1bbdc: 2a1503e2     	mov	w2, w21
   1bbe0: 94000000     	bl	0x1bbe0 <syna_work_charger_detect_work+0x144>
		000000000001bbe0:  R_AARCH64_CALL26	_printk
   1bbe4: 7100131f     	cmp	w24, #0x4
   1bbe8: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bbe8:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1bbec: 39000115     	strb	w21, [x8]
		000000000001bbec:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1bbf0: 54000060     	b.eq	0x1bbfc <syna_work_charger_detect_work+0x160>
   1bbf4: 7100071f     	cmp	w24, #0x1
   1bbf8: 54000101     	b.ne	0x1bc18 <syna_work_charger_detect_work+0x17c>
   1bbfc: b855c2e8     	ldur	w8, [x23, #-0xa4]
   1bc00: 394002c9     	ldrb	w9, [x22]
		000000000001bc00:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1bc04: 7100051f     	cmp	w8, #0x1
   1bc08: 54000201     	b.ne	0x1bc48 <syna_work_charger_detect_work+0x1ac>
   1bc0c: 370001e9     	tbnz	w9, #0x0, 0x1bc48 <syna_work_charger_detect_work+0x1ac>
   1bc10: 52800035     	mov	w21, #0x1               // =1
   1bc14: 14000007     	b	0x1bc30 <syna_work_charger_detect_work+0x194>
   1bc18: b855c2e8     	ldur	w8, [x23, #-0xa4]
   1bc1c: 394002c9     	ldrb	w9, [x22]
		000000000001bc1c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1bc20: 7100051f     	cmp	w8, #0x1
   1bc24: 540001c1     	b.ne	0x1bc5c <syna_work_charger_detect_work+0x1c0>
   1bc28: 360001a9     	tbz	w9, #0x0, 0x1bc5c <syna_work_charger_detect_work+0x1c0>
   1bc2c: 2a1f03f5     	mov	w21, wzr
   1bc30: aa1303e0     	mov	x0, x19
   1bc34: 2a1503e1     	mov	w1, w21
   1bc38: 2a1403e2     	mov	w2, w20
   1bc3c: 94000000     	bl	0x1bc3c <syna_work_charger_detect_work+0x1a0>
		000000000001bc3c:  R_AARCH64_CALL26	syna_dev_set_charger_mode
   1bc40: 390002d5     	strb	w21, [x22]
		000000000001bc40:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1bc44: 17ffffa2     	b	0x1bacc <syna_work_charger_detect_work+0x30>
   1bc48: 7100051f     	cmp	w8, #0x1
   1bc4c: 1a9f1528     	csinc	w8, w9, wzr, ne
   1bc50: 3707f3e8     	tbnz	w8, #0x0, 0x1bacc <syna_work_charger_detect_work+0x30>
   1bc54: 52800035     	mov	w21, #0x1               // =1
   1bc58: 17fffffa     	b	0x1bc40 <syna_work_charger_detect_work+0x1a4>
   1bc5c: 7100051f     	cmp	w8, #0x1
   1bc60: 1a8903e8     	csel	w8, wzr, w9, eq
   1bc64: 3607f348     	tbz	w8, #0x0, 0x1bacc <syna_work_charger_detect_work+0x30>
   1bc68: 2a1f03f5     	mov	w21, wzr
   1bc6c: 17fffff5     	b	0x1bc40 <syna_work_charger_detect_work+0x1a4>
   1bc70: 94000000     	bl	0x1bc70 <syna_work_charger_detect_work+0x1d4>
		000000000001bc70:  R_AARCH64_CALL26	__stack_chk_fail
