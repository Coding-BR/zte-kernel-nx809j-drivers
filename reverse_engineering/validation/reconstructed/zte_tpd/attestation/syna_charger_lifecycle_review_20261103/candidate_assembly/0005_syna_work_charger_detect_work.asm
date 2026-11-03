
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001da3c <syna_work_charger_detect_work>:
   1da3c: d503233f     	paciasp
   1da40: d10143ff     	sub	sp, sp, #0x50
   1da44: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1da48: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1da4c: a90357f6     	stp	x22, x21, [sp, #0x30]
   1da50: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1da54: 910043fd     	add	x29, sp, #0x10
   1da58: d5384108     	mrs	x8, SP_EL0
   1da5c: f9438908     	ldr	x8, [x8, #0x710]
   1da60: f1188013     	subs	x19, x0, #0x620
   1da64: f90007e8     	str	x8, [sp, #0x8]
   1da68: 540001a1     	b.ne	0x1da9c <syna_work_charger_detect_work+0x60>
   1da6c: d5384108     	mrs	x8, SP_EL0
   1da70: f9438908     	ldr	x8, [x8, #0x710]
   1da74: f94007e9     	ldr	x9, [sp, #0x8]
   1da78: eb09011f     	cmp	x8, x9
   1da7c: 54000ca1     	b.ne	0x1dc10 <syna_work_charger_detect_work+0x1d4>
   1da80: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1da84: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1da88: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1da8c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1da90: 910143ff     	add	sp, sp, #0x50
   1da94: d50323bf     	autiasp
   1da98: d65f03c0     	ret
   1da9c: d10ec008     	sub	x8, x0, #0x3b0
   1daa0: f9400109     	ldr	x9, [x8]
   1daa4: f9400268     	ldr	x8, [x19]
   1daa8: b940b92a     	ldr	w10, [x9, #0xb8]
   1daac: 340000ca     	cbz	w10, 0x1dac4 <syna_work_charger_detect_work+0x88>
   1dab0: 3942f129     	ldrb	w9, [x9, #0xbc]
   1dab4: 36000089     	tbz	w9, #0x0, 0x1dac4 <syna_work_charger_detect_work+0x88>
   1dab8: aa0003f7     	mov	x23, x0
   1dabc: 2a1f03f4     	mov	w20, wzr
   1dac0: 14000003     	b	0x1dacc <syna_work_charger_detect_work+0x90>
   1dac4: b9420d14     	ldr	w20, [x8, #0x20c]
   1dac8: aa0003f7     	mov	x23, x0
   1dacc: 90000000     	adrp	x0, 0x1d000 <string_change+0x464>
		000000000001dacc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e0c
   1dad0: 91000000     	add	x0, x0, #0x0
		000000000001dad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e0c
   1dad4: 90000001     	adrp	x1, 0x1d000 <string_change+0x464>
		000000000001dad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x373e
   1dad8: 91000021     	add	x1, x1, #0x0
		000000000001dad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x373e
   1dadc: 94000000     	bl	0x1dadc <syna_work_charger_detect_work+0xa0>
		000000000001dadc:  R_AARCH64_CALL26	_printk
   1dae0: 90000015     	adrp	x21, 0x1d000 <string_change+0x464>
		000000000001dae0:  R_AARCH64_ADR_PREL_PG_HI21	syna_get_charger_status.batt_psy
   1dae4: 90000016     	adrp	x22, 0x1d000 <string_change+0x464>
		000000000001dae4:  R_AARCH64_ADR_PREL_PG_HI21	syna_work_charger_detect_work.status
   1dae8: f90003ff     	str	xzr, [sp]
   1daec: f94002a0     	ldr	x0, [x21]
		000000000001daec:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1daf0: b50001e0     	cbnz	x0, 0x1db2c <syna_work_charger_detect_work+0xf0>
   1daf4: 90000000     	adrp	x0, 0x1d000 <string_change+0x464>
		000000000001daf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba48
   1daf8: 91000000     	add	x0, x0, #0x0
		000000000001daf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba48
   1dafc: 94000000     	bl	0x1dafc <syna_work_charger_detect_work+0xc0>
		000000000001dafc:  R_AARCH64_CALL26	power_supply_get_by_name
   1db00: f90002a0     	str	x0, [x21]
		000000000001db00:  R_AARCH64_LDST64_ABS_LO12_NC	syna_get_charger_status.batt_psy
   1db04: b5000140     	cbnz	x0, 0x1db2c <syna_work_charger_detect_work+0xf0>
   1db08: 90000000     	adrp	x0, 0x1d000 <string_change+0x464>
		000000000001db08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1db0c: 91000000     	add	x0, x0, #0x0
		000000000001db0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1db10: 90000001     	adrp	x1, 0x1d000 <string_change+0x464>
		000000000001db10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1db14: 91000021     	add	x1, x1, #0x0
		000000000001db14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1db18: 2a1f03e2     	mov	w2, wzr
   1db1c: 94000000     	bl	0x1db1c <syna_work_charger_detect_work+0xe0>
		000000000001db1c:  R_AARCH64_CALL26	_printk
   1db20: 90000008     	adrp	x8, 0x1d000 <string_change+0x464>
		000000000001db20:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1db24: 3900011f     	strb	wzr, [x8]
		000000000001db24:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1db28: 14000024     	b	0x1dbb8 <syna_work_charger_detect_work+0x17c>
   1db2c: f9400008     	ldr	x8, [x0]
   1db30: 910003e2     	mov	x2, sp
   1db34: 2a1f03e1     	mov	w1, wzr
   1db38: f9401508     	ldr	x8, [x8, #0x28]
   1db3c: b85fc110     	ldur	w16, [x8, #-0x4]
   1db40: 72819a71     	movk	w17, #0xcd3
   1db44: 72bd1331     	movk	w17, #0xe899, lsl #16
   1db48: 6b11021f     	cmp	w16, w17
   1db4c: 54000040     	b.eq	0x1db54 <syna_work_charger_detect_work+0x118>
   1db50: d4304500     	brk	#0x8228
   1db54: d63f0100     	blr	x8
   1db58: b94003f8     	ldr	w24, [sp]
   1db5c: 90000000     	adrp	x0, 0x1d000 <string_change+0x464>
		000000000001db5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96aa
   1db60: 91000000     	add	x0, x0, #0x0
		000000000001db60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96aa
   1db64: 90000001     	adrp	x1, 0x1d000 <string_change+0x464>
		000000000001db64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8658
   1db68: 91000021     	add	x1, x1, #0x0
		000000000001db68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8658
   1db6c: 7100131f     	cmp	w24, #0x4
   1db70: 1a9f17e8     	cset	w8, eq
   1db74: 7100071f     	cmp	w24, #0x1
   1db78: 1a9f1515     	csinc	w21, w8, wzr, ne
   1db7c: 2a1503e2     	mov	w2, w21
   1db80: 94000000     	bl	0x1db80 <syna_work_charger_detect_work+0x144>
		000000000001db80:  R_AARCH64_CALL26	_printk
   1db84: 7100131f     	cmp	w24, #0x4
   1db88: 90000008     	adrp	x8, 0x1d000 <string_change+0x464>
		000000000001db88:  R_AARCH64_ADR_PREL_PG_HI21	syna_usb_detect_flag
   1db8c: 39000115     	strb	w21, [x8]
		000000000001db8c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_usb_detect_flag
   1db90: 54000060     	b.eq	0x1db9c <syna_work_charger_detect_work+0x160>
   1db94: 7100071f     	cmp	w24, #0x1
   1db98: 54000101     	b.ne	0x1dbb8 <syna_work_charger_detect_work+0x17c>
   1db9c: b855c2e8     	ldur	w8, [x23, #-0xa4]
   1dba0: 394002c9     	ldrb	w9, [x22]
		000000000001dba0:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1dba4: 7100051f     	cmp	w8, #0x1
   1dba8: 54000201     	b.ne	0x1dbe8 <syna_work_charger_detect_work+0x1ac>
   1dbac: 370001e9     	tbnz	w9, #0x0, 0x1dbe8 <syna_work_charger_detect_work+0x1ac>
   1dbb0: 52800035     	mov	w21, #0x1               // =1
   1dbb4: 14000007     	b	0x1dbd0 <syna_work_charger_detect_work+0x194>
   1dbb8: b855c2e8     	ldur	w8, [x23, #-0xa4]
   1dbbc: 394002c9     	ldrb	w9, [x22]
		000000000001dbbc:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1dbc0: 7100051f     	cmp	w8, #0x1
   1dbc4: 540001c1     	b.ne	0x1dbfc <syna_work_charger_detect_work+0x1c0>
   1dbc8: 360001a9     	tbz	w9, #0x0, 0x1dbfc <syna_work_charger_detect_work+0x1c0>
   1dbcc: 2a1f03f5     	mov	w21, wzr
   1dbd0: aa1303e0     	mov	x0, x19
   1dbd4: 2a1503e1     	mov	w1, w21
   1dbd8: 2a1403e2     	mov	w2, w20
   1dbdc: 94000000     	bl	0x1dbdc <syna_work_charger_detect_work+0x1a0>
		000000000001dbdc:  R_AARCH64_CALL26	syna_dev_set_charger_mode
   1dbe0: 390002d5     	strb	w21, [x22]
		000000000001dbe0:  R_AARCH64_LDST8_ABS_LO12_NC	syna_work_charger_detect_work.status
   1dbe4: 17ffffa2     	b	0x1da6c <syna_work_charger_detect_work+0x30>
   1dbe8: 7100051f     	cmp	w8, #0x1
   1dbec: 1a9f1528     	csinc	w8, w9, wzr, ne
   1dbf0: 3707f3e8     	tbnz	w8, #0x0, 0x1da6c <syna_work_charger_detect_work+0x30>
   1dbf4: 52800035     	mov	w21, #0x1               // =1
   1dbf8: 17fffffa     	b	0x1dbe0 <syna_work_charger_detect_work+0x1a4>
   1dbfc: 7100051f     	cmp	w8, #0x1
   1dc00: 1a8903e8     	csel	w8, wzr, w9, eq
   1dc04: 3607f348     	tbz	w8, #0x0, 0x1da6c <syna_work_charger_detect_work+0x30>
   1dc08: 2a1f03f5     	mov	w21, wzr
   1dc0c: 17fffff5     	b	0x1dbe0 <syna_work_charger_detect_work+0x1a4>
   1dc10: 94000000     	bl	0x1dc10 <syna_work_charger_detect_work+0x1d4>
		000000000001dc10:  R_AARCH64_CALL26	__stack_chk_fail
