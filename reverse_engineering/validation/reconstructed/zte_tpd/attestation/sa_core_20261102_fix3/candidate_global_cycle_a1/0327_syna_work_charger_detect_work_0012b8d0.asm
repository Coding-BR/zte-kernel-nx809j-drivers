
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001baf8 <syna_work_charger_detect_work>:
   1baf8: d503233f     	paciasp
   1bafc: d10143ff     	sub	sp, sp, #0x50
   1bb00: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1bb04: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1bb08: a90357f6     	stp	x22, x21, [sp, #0x30]
   1bb0c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1bb10: 910043fd     	add	x29, sp, #0x10
   1bb14: d5384108     	mrs	x8, SP_EL0
   1bb18: f9438908     	ldr	x8, [x8, #0x710]
   1bb1c: f1188013     	subs	x19, x0, #0x620
   1bb20: f90007e8     	str	x8, [sp, #0x8]
   1bb24: 540001a1     	b.ne	0x1bb58 <syna_work_charger_detect_work+0x60>
   1bb28: d5384108     	mrs	x8, SP_EL0
   1bb2c: f9438908     	ldr	x8, [x8, #0x710]
   1bb30: f94007e9     	ldr	x9, [sp, #0x8]
   1bb34: eb09011f     	cmp	x8, x9
   1bb38: 54000ca1     	b.ne	0x1bccc <syna_work_charger_detect_work+0x1d4>
   1bb3c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1bb40: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1bb44: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1bb48: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1bb4c: 910143ff     	add	sp, sp, #0x50
   1bb50: d50323bf     	autiasp
   1bb54: d65f03c0     	ret
   1bb58: d10ec008     	sub	x8, x0, #0x3b0
   1bb5c: f9400109     	ldr	x9, [x8]
   1bb60: f9400268     	ldr	x8, [x19]
   1bb64: b940b92a     	ldr	w10, [x9, #0xb8]
   1bb68: 340000ca     	cbz	w10, 0x1bb80 <syna_work_charger_detect_work+0x88>
   1bb6c: 3942f129     	ldrb	w9, [x9, #0xbc]
   1bb70: 36000089     	tbz	w9, #0x0, 0x1bb80 <syna_work_charger_detect_work+0x88>
   1bb74: aa0003f7     	mov	x23, x0
   1bb78: 2a1f03f4     	mov	w20, wzr
   1bb7c: 14000003     	b	0x1bb88 <syna_work_charger_detect_work+0x90>
   1bb80: b9420d14     	ldr	w20, [x8, #0x20c]
   1bb84: aa0003f7     	mov	x23, x0
   1bb88: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bb88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e0c
   1bb8c: 91000000     	add	x0, x0, #0x0
		000000000001bb8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e0c
   1bb90: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001bb90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x373e
   1bb94: 91000021     	add	x1, x1, #0x0
		000000000001bb94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x373e
   1bb98: 94000000     	bl	0x1bb98 <syna_work_charger_detect_work+0xa0>
		000000000001bb98:  R_AARCH64_CALL26	_printk
   1bb9c: 90000015     	adrp	x21, 0x1b000 <string_change+0x3a8>
		000000000001bb9c:  R_AARCH64_ADR_PREL_PG_HI21	syna_get_charger_status.batt_psy
   1bba0: 90000016     	adrp	x22, 0x1b000 <string_change+0x3a8>
		000000000001bba0:  R_AARCH64_ADR_PREL_PG_HI21	syna_work_charger_detect_work.status
   1bba4: f90003ff     	str	xzr, [sp]
   1bba8: f94002a0     	ldr	x0, [x21]
		000000000001bba8:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1bbac: b50001e0     	cbnz	x0, 0x1bbe8 <syna_work_charger_detect_work+0xf0>
   1bbb0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bbb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba48
   1bbb4: 91000000     	add	x0, x0, #0x0
		000000000001bbb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba48
   1bbb8: 94000000     	bl	0x1bbb8 <syna_work_charger_detect_work+0xc0>
		000000000001bbb8:  R_AARCH64_CALL26	power_supply_get_by_name
   1bbbc: f90002a0     	str	x0, [x21]
		000000000001bbbc:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1bbc0: b5000140     	cbnz	x0, 0x1bbe8 <syna_work_charger_detect_work+0xf0>
   1bbc4: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bbc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1bbc8: 91000000     	add	x0, x0, #0x0
		000000000001bbc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1bbcc: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001bbcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1bbd0: 91000021     	add	x1, x1, #0x0
		000000000001bbd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1bbd4: 2a1f03e2     	mov	w2, wzr
   1bbd8: 94000000     	bl	0x1bbd8 <syna_work_charger_detect_work+0xe0>
		000000000001bbd8:  R_AARCH64_CALL26	_printk
   1bbdc: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001bbdc:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1bbe0: 3900011f     	strb	wzr, [x8]
		000000000001bbe0:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1bbe4: 14000024     	b	0x1bc74 <syna_work_charger_detect_work+0x17c>
   1bbe8: f9400008     	ldr	x8, [x0]
   1bbec: 910003e2     	mov	x2, sp
   1bbf0: 2a1f03e1     	mov	w1, wzr
   1bbf4: f9401508     	ldr	x8, [x8, #0x28]
   1bbf8: b85fc110     	ldur	w16, [x8, #-0x4]
   1bbfc: 72819a71     	movk	w17, #0xcd3
   1bc00: 72bd1331     	movk	w17, #0xe899, lsl #16
   1bc04: 6b11021f     	cmp	w16, w17
   1bc08: 54000040     	b.eq	0x1bc10 <syna_work_charger_detect_work+0x118>
   1bc0c: d4304500     	brk	#0x8228
   1bc10: d63f0100     	blr	x8
   1bc14: b94003f8     	ldr	w24, [sp]
   1bc18: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bc18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1bc1c: 91000000     	add	x0, x0, #0x0
		000000000001bc1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1bc20: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001bc20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1bc24: 91000021     	add	x1, x1, #0x0
		000000000001bc24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1bc28: 7100131f     	cmp	w24, #0x4
   1bc2c: 1a9f17e8     	cset	w8, eq
   1bc30: 7100071f     	cmp	w24, #0x1
   1bc34: 1a9f1515     	csinc	w21, w8, wzr, ne
   1bc38: 2a1503e2     	mov	w2, w21
   1bc3c: 94000000     	bl	0x1bc3c <syna_work_charger_detect_work+0x144>
		000000000001bc3c:  R_AARCH64_CALL26	_printk
   1bc40: 7100131f     	cmp	w24, #0x4
   1bc44: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001bc44:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1bc48: 39000115     	strb	w21, [x8]
		000000000001bc48:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1bc4c: 54000060     	b.eq	0x1bc58 <syna_work_charger_detect_work+0x160>
   1bc50: 7100071f     	cmp	w24, #0x1
   1bc54: 54000101     	b.ne	0x1bc74 <syna_work_charger_detect_work+0x17c>
   1bc58: b855c2e8     	ldur	w8, [x23, #-0xa4]
   1bc5c: 394002c9     	ldrb	w9, [x22]
		000000000001bc5c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1bc60: 7100051f     	cmp	w8, #0x1
   1bc64: 54000201     	b.ne	0x1bca4 <syna_work_charger_detect_work+0x1ac>
   1bc68: 370001e9     	tbnz	w9, #0x0, 0x1bca4 <syna_work_charger_detect_work+0x1ac>
   1bc6c: 52800035     	mov	w21, #0x1               // =1
   1bc70: 14000007     	b	0x1bc8c <syna_work_charger_detect_work+0x194>
   1bc74: b855c2e8     	ldur	w8, [x23, #-0xa4]
   1bc78: 394002c9     	ldrb	w9, [x22]
		000000000001bc78:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1bc7c: 7100051f     	cmp	w8, #0x1
   1bc80: 540001c1     	b.ne	0x1bcb8 <syna_work_charger_detect_work+0x1c0>
   1bc84: 360001a9     	tbz	w9, #0x0, 0x1bcb8 <syna_work_charger_detect_work+0x1c0>
   1bc88: 2a1f03f5     	mov	w21, wzr
   1bc8c: aa1303e0     	mov	x0, x19
   1bc90: 2a1503e1     	mov	w1, w21
   1bc94: 2a1403e2     	mov	w2, w20
   1bc98: 94000000     	bl	0x1bc98 <syna_work_charger_detect_work+0x1a0>
		000000000001bc98:  R_AARCH64_CALL26	syna_dev_set_charger_mode
   1bc9c: 390002d5     	strb	w21, [x22]
		000000000001bc9c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1bca0: 17ffffa2     	b	0x1bb28 <syna_work_charger_detect_work+0x30>
   1bca4: 7100051f     	cmp	w8, #0x1
   1bca8: 1a9f1528     	csinc	w8, w9, wzr, ne
   1bcac: 3707f3e8     	tbnz	w8, #0x0, 0x1bb28 <syna_work_charger_detect_work+0x30>
   1bcb0: 52800035     	mov	w21, #0x1               // =1
   1bcb4: 17fffffa     	b	0x1bc9c <syna_work_charger_detect_work+0x1a4>
   1bcb8: 7100051f     	cmp	w8, #0x1
   1bcbc: 1a8903e8     	csel	w8, wzr, w9, eq
   1bcc0: 3607f348     	tbz	w8, #0x0, 0x1bb28 <syna_work_charger_detect_work+0x30>
   1bcc4: 2a1f03f5     	mov	w21, wzr
   1bcc8: 17fffff5     	b	0x1bc9c <syna_work_charger_detect_work+0x1a4>
   1bccc: 94000000     	bl	0x1bccc <syna_work_charger_detect_work+0x1d4>
		000000000001bccc:  R_AARCH64_CALL26	__stack_chk_fail
