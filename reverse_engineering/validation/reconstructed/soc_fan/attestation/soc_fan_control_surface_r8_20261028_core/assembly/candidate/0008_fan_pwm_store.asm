
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000928 <fan_pwm_store>:
     928: d503233f     	paciasp
     92c: d10183ff     	sub	sp, sp, #0x60
     930: a9037bfd     	stp	x29, x30, [sp, #0x30]
     934: a90457f6     	stp	x22, x21, [sp, #0x40]
     938: a9054ff4     	stp	x20, x19, [sp, #0x50]
     93c: 9100c3fd     	add	x29, sp, #0x30
     940: d5384108     	mrs	x8, SP_EL0
     944: aa0203e0     	mov	x0, x2
     948: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368
     94c: 91000021     	add	x1, x1, #0x0
		000000000000094c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368
     950: f9438908     	ldr	x8, [x8, #0x710]
     954: 910033e2     	add	x2, sp, #0xc
     958: aa0303f3     	mov	x19, x3
     95c: f81f83a8     	stur	x8, [x29, #-0x8]
     960: b9000fff     	str	wzr, [sp, #0xc]
     964: 94000000     	bl	0x964 <fan_pwm_store+0x3c>
		0000000000000964:  R_AARCH64_CALL26	sscanf
     968: b9400fe4     	ldr	w4, [sp, #0xc]
     96c: 7101949f     	cmp	w4, #0x65
     970: 540005e2     	b.hs	0xa2c <fan_pwm_store+0x104>
     974: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000974:  R_AARCH64_ADR_PREL_PG_HI21	chip
     978: f94002c8     	ldr	x8, [x22]
		0000000000000978:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     97c: 91006100     	add	x0, x8, #0x18
     980: 94000000     	bl	0x980 <fan_pwm_store+0x58>
		0000000000000980:  R_AARCH64_CALL26	mutex_lock
     984: f94002c8     	ldr	x8, [x22]
		0000000000000984:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     988: 394033f4     	ldrb	w20, [sp, #0xc]
     98c: 52803209     	mov	w9, #0x190              // =400
     990: 910043e2     	add	x2, sp, #0x10
     994: f9400508     	ldr	x8, [x8, #0x8]
     998: 9ba97e89     	umull	x9, w20, w9
     99c: f9403501     	ldr	x1, [x8, #0x68]
     9a0: f9400c20     	ldr	x0, [x1, #0x18]
     9a4: f9402028     	ldr	x8, [x1, #0x40]
     9a8: f941c80a     	ldr	x10, [x0, #0x390]
     9ac: f90013e8     	str	x8, [sp, #0x20]
     9b0: 52800028     	mov	w8, #0x1                // =1
     9b4: 390093e8     	strb	w8, [sp, #0x24]
     9b8: 52938808     	mov	w8, #0x9c40             // =40000
     9bc: f9400d4a     	ldr	x10, [x10, #0x18]
     9c0: a90127e8     	stp	x8, x9, [sp, #0x10]
     9c4: b85fc150     	ldur	w16, [x10, #-0x4]
     9c8: 7292fa11     	movk	w17, #0x97d0
     9cc: 72bbba11     	movk	w17, #0xddd0, lsl #16
     9d0: 6b11021f     	cmp	w16, w17
     9d4: 54000040     	b.eq	0x9dc <fan_pwm_store+0xb4>
     9d8: d4304540     	brk	#0x822a
     9dc: d63f0140     	blr	x10
     9e0: 2a0003f5     	mov	w21, w0
     9e4: 37f803c0     	tbnz	w0, #0x1f, 0xa5c <fan_pwm_store+0x134>
     9e8: 34000515     	cbz	w21, 0xa88 <fan_pwm_store+0x160>
     9ec: f94002c8     	ldr	x8, [x22]
		00000000000009ec:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     9f0: 91006100     	add	x0, x8, #0x18
     9f4: 94000000     	bl	0x9f4 <fan_pwm_store+0xcc>
		00000000000009f4:  R_AARCH64_CALL26	mutex_unlock
     9f8: 93407eb3     	sxtw	x19, w21
     9fc: d5384108     	mrs	x8, SP_EL0
     a00: f9438908     	ldr	x8, [x8, #0x710]
     a04: f85f83a9     	ldur	x9, [x29, #-0x8]
     a08: eb09011f     	cmp	x8, x9
     a0c: 540005a1     	b.ne	0xac0 <fan_pwm_store+0x198>
     a10: aa1303e0     	mov	x0, x19
     a14: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     a18: a94457f6     	ldp	x22, x21, [sp, #0x40]
     a1c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     a20: 910183ff     	add	sp, sp, #0x60
     a24: d50323bf     	autiasp
     a28: d65f03c0     	ret
     a2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6
     a30: 91000000     	add	x0, x0, #0x0
		0000000000000a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6
     a34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     a38: 91000021     	add	x1, x1, #0x0
		0000000000000a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     a3c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35a
     a40: 91000042     	add	x2, x2, #0x0
		0000000000000a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35a
     a44: 52803023     	mov	w3, #0x181              // =385
     a48: 2a1f03e5     	mov	w5, wzr
     a4c: 52800c86     	mov	w6, #0x64               // =100
     a50: 94000000     	bl	0xa50 <fan_pwm_store+0x128>
		0000000000000a50:  R_AARCH64_CALL26	_printk
     a54: 928002b3     	mov	x19, #-0x16             // =-22
     a58: 17ffffe9     	b	0x9fc <fan_pwm_store+0xd4>
     a5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     a60: 91000000     	add	x0, x0, #0x0
		0000000000000a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     a64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     a68: 91000021     	add	x1, x1, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     a6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x296
     a70: 91000042     	add	x2, x2, #0x0
		0000000000000a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x296
     a74: 52801aa3     	mov	w3, #0xd5               // =213
     a78: 2a1403e4     	mov	w4, w20
     a7c: 2a1503e5     	mov	w5, w21
     a80: 94000000     	bl	0xa80 <fan_pwm_store+0x158>
		0000000000000a80:  R_AARCH64_CALL26	_printk
     a84: 17ffffda     	b	0x9ec <fan_pwm_store+0xc4>
     a88: f94002c8     	ldr	x8, [x22]
		0000000000000a88:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     a8c: 91006100     	add	x0, x8, #0x18
     a90: 94000000     	bl	0xa90 <fan_pwm_store+0x168>
		0000000000000a90:  R_AARCH64_CALL26	mutex_unlock
     a94: b9400fe4     	ldr	w4, [sp, #0xc]
     a98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x137
     a9c: 91000000     	add	x0, x0, #0x0
		0000000000000a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x137
     aa0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c0
     aa4: 91000021     	add	x1, x1, #0x0
		0000000000000aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c0
     aa8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35a
     aac: 91000042     	add	x2, x2, #0x0
		0000000000000aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35a
     ab0: 52803183     	mov	w3, #0x18c              // =396
     ab4: 2a1f03e5     	mov	w5, wzr
     ab8: 94000000     	bl	0xab8 <fan_pwm_store+0x190>
		0000000000000ab8:  R_AARCH64_CALL26	_printk
     abc: 17ffffd0     	b	0x9fc <fan_pwm_store+0xd4>
     ac0: 94000000     	bl	0xac0 <fan_pwm_store+0x198>
		0000000000000ac0:  R_AARCH64_CALL26	__stack_chk_fail
