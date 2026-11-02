
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000199b8 <uf_touch_report>:
   199b8: d503233f     	paciasp
   199bc: d100c3ff     	sub	sp, sp, #0x30
   199c0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   199c4: 910083fd     	add	x29, sp, #0x20
   199c8: d5384108     	mrs	x8, SP_EL0
   199cc: f9438908     	ldr	x8, [x8, #0x710]
   199d0: f81f83a8     	stur	x8, [x29, #-0x8]
   199d4: 340006a0     	cbz	w0, 0x19aa8 <uf_touch_report+0xf0>
   199d8: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		00000000000199d8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   199dc: f9400109     	ldr	x9, [x8]
		00000000000199dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   199e0: 79403d2a     	ldrh	w10, [x9, #0x1e]
   199e4: 79404528     	ldrh	w8, [x9, #0x22]
   199e8: 4b08014b     	sub	w11, w10, w8
   199ec: 0b0a010a     	add	w10, w8, w10
   199f0: 6b01017f     	cmp	w11, w1
   199f4: 7a41b144     	ccmp	w10, w1, #0x4, lt
   199f8: 5400064d     	b.le	0x19ac0 <uf_touch_report+0x108>
   199fc: 79404129     	ldrh	w9, [x9, #0x20]
   19a00: 4b08012a     	sub	w10, w9, w8
   19a04: 6b02015f     	cmp	w10, w2
   19a08: 540005ca     	b.ge	0x19ac0 <uf_touch_report+0x108>
   19a0c: 0b080128     	add	w8, w9, w8
   19a10: 6b02011f     	cmp	w8, w2
   19a14: 5400056d     	b.le	0x19ac0 <uf_touch_report+0x108>
   19a18: 7100287f     	cmp	w3, #0xa
   19a1c: 54000a62     	b.hs	0x19b68 <uf_touch_report+0x1b0>
   19a20: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a20:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.fp_finger
   19a24: 91000129     	add	x9, x9, #0x0
		0000000000019a24:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report.fp_finger
   19a28: b8635928     	ldr	w8, [x9, w3, uxtw #2]
   19a2c: 350004a8     	cbnz	w8, 0x19ac0 <uf_touch_report+0x108>
   19a30: 9000000a     	adrp	x10, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a30:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.area_meet_down
   19a34: 39400148     	ldrb	w8, [x10]
		0000000000019a34:  R_AARCH64_LDST8_ABS_LO12_NC	uf_touch_report.area_meet_down
   19a38: 37000448     	tbnz	w8, #0x0, 0x19ac0 <uf_touch_report+0x108>
   19a3c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a3c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   19a40: 5280002b     	mov	w11, #0x1               // =1
   19a44: b823592b     	str	w11, [x9, w3, uxtw #2]
   19a48: f9400108     	ldr	x8, [x8]
		0000000000019a48:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   19a4c: 3900014b     	strb	w11, [x10]
		0000000000019a4c:  R_AARCH64_LDST8_ABS_LO12_NC	uf_touch_report.area_meet_down
   19a50: b4000568     	cbz	x8, 0x19afc <uf_touch_report+0x144>
   19a54: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c856
   19a58: 91000129     	add	x9, x9, #0x0
		0000000000019a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c856
   19a5c: f90003e9     	str	x9, [sp]
   19a60: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a60:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   19a64: b9400129     	ldr	w9, [x9]
		0000000000019a64:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   19a68: 71000d3f     	cmp	w9, #0x3
   19a6c: 540007e2     	b.hs	0x19b68 <uf_touch_report+0x1b0>
   19a70: 9000000a     	adrp	x10, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a70:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report_tppower_to_str
   19a74: 9100014a     	add	x10, x10, #0x0
		0000000000019a74:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report_tppower_to_str
   19a78: 91004100     	add	x0, x8, #0x10
   19a7c: f8697949     	ldr	x9, [x10, x9, lsl #3]
   19a80: 910003e2     	mov	x2, sp
   19a84: 52800041     	mov	w1, #0x2                // =2
   19a88: a900ffe9     	stp	x9, xzr, [sp, #0x8]
   19a8c: 94000000     	bl	0x19a8c <uf_touch_report+0xd4>
		0000000000019a8c:  R_AARCH64_CALL26	kobject_uevent_env
   19a90: f94007e2     	ldr	x2, [sp, #0x8]
   19a94: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1df
   19a98: 91000000     	add	x0, x0, #0x0
		0000000000019a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1df
   19a9c: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		0000000000019a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c856
   19aa0: 91000021     	add	x1, x1, #0x0
		0000000000019aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c856
   19aa4: 1400002e     	b	0x19b5c <uf_touch_report+0x1a4>
   19aa8: 7100247f     	cmp	w3, #0x9
   19aac: 540005e8     	b.hi	0x19b68 <uf_touch_report+0x1b0>
   19ab0: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019ab0:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.fp_finger
   19ab4: 91000129     	add	x9, x9, #0x0
		0000000000019ab4:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report.fp_finger
   19ab8: b8635928     	ldr	w8, [x9, w3, uxtw #2]
   19abc: 35000148     	cbnz	w8, 0x19ae4 <uf_touch_report+0x12c>
   19ac0: d5384108     	mrs	x8, SP_EL0
   19ac4: f9438908     	ldr	x8, [x8, #0x710]
   19ac8: f85f83a9     	ldur	x9, [x29, #-0x8]
   19acc: eb09011f     	cmp	x8, x9
   19ad0: 540004a1     	b.ne	0x19b64 <uf_touch_report+0x1ac>
   19ad4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   19ad8: 9100c3ff     	add	sp, sp, #0x30
   19adc: d50323bf     	autiasp
   19ae0: d65f03c0     	ret
   19ae4: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019ae4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   19ae8: b823593f     	str	wzr, [x9, w3, uxtw #2]
   19aec: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019aec:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report.area_meet_down
   19af0: f9400108     	ldr	x8, [x8]
		0000000000019af0:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   19af4: 3900013f     	strb	wzr, [x9]
		0000000000019af4:  R_AARCH64_LDST8_ABS_LO12_NC	uf_touch_report.area_meet_down
   19af8: b50000a8     	cbnz	x8, 0x19b0c <uf_touch_report+0x154>
   19afc: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1b9
   19b00: 91000000     	add	x0, x0, #0x0
		0000000000019b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1b9
   19b04: 94000000     	bl	0x19b04 <uf_touch_report+0x14c>
		0000000000019b04:  R_AARCH64_CALL26	_printk
   19b08: 17ffffee     	b	0x19ac0 <uf_touch_report+0x108>
   19b0c: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c090
   19b10: 91000129     	add	x9, x9, #0x0
		0000000000019b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c090
   19b14: f90003e9     	str	x9, [sp]
   19b18: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b18:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   19b1c: b9400129     	ldr	w9, [x9]
		0000000000019b1c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   19b20: 71000d3f     	cmp	w9, #0x3
   19b24: 54000222     	b.hs	0x19b68 <uf_touch_report+0x1b0>
   19b28: 9000000a     	adrp	x10, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b28:  R_AARCH64_ADR_PREL_PG_HI21	uf_touch_report_tppower_to_str
   19b2c: 9100014a     	add	x10, x10, #0x0
		0000000000019b2c:  R_AARCH64_ADD_ABS_LO12_NC	uf_touch_report_tppower_to_str
   19b30: 91004100     	add	x0, x8, #0x10
   19b34: f8697949     	ldr	x9, [x10, x9, lsl #3]
   19b38: 910003e2     	mov	x2, sp
   19b3c: 52800041     	mov	w1, #0x2                // =2
   19b40: a900ffe9     	stp	x9, xzr, [sp, #0x8]
   19b44: 94000000     	bl	0x19b44 <uf_touch_report+0x18c>
		0000000000019b44:  R_AARCH64_CALL26	kobject_uevent_env
   19b48: f94007e2     	ldr	x2, [sp, #0x8]
   19b4c: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1df
   19b50: 91000000     	add	x0, x0, #0x0
		0000000000019b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1df
   19b54: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c090
   19b58: 91000021     	add	x1, x1, #0x0
		0000000000019b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c090
   19b5c: 94000000     	bl	0x19b5c <uf_touch_report+0x1a4>
		0000000000019b5c:  R_AARCH64_CALL26	_printk
   19b60: 17ffffd8     	b	0x19ac0 <uf_touch_report+0x108>
   19b64: 94000000     	bl	0x19b64 <uf_touch_report+0x1ac>
		0000000000019b64:  R_AARCH64_CALL26	__stack_chk_fail
   19b68: d42aa240     	brk	#0x5512
