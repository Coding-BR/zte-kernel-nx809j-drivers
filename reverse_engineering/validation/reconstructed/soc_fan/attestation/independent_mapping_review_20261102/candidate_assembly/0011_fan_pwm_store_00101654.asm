
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008e4 <fan_pwm_store>:
     8e4: d503233f     	paciasp
     8e8: d10183ff     	sub	sp, sp, #0x60
     8ec: a9037bfd     	stp	x29, x30, [sp, #0x30]
     8f0: a90457f6     	stp	x22, x21, [sp, #0x40]
     8f4: a9054ff4     	stp	x20, x19, [sp, #0x50]
     8f8: 9100c3fd     	add	x29, sp, #0x30
     8fc: d5384108     	mrs	x8, SP_EL0
     900: aa0203e0     	mov	x0, x2
     904: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
     908: 91000021     	add	x1, x1, #0x0
		0000000000000908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
     90c: f9438908     	ldr	x8, [x8, #0x710]
     910: 910033e2     	add	x2, sp, #0xc
     914: aa0303f3     	mov	x19, x3
     918: f81f83a8     	stur	x8, [x29, #-0x8]
     91c: b9000fff     	str	wzr, [sp, #0xc]
     920: 94000000     	bl	0x920 <fan_pwm_store+0x3c>
		0000000000000920:  R_AARCH64_CALL26	sscanf
     924: b9400fe4     	ldr	w4, [sp, #0xc]
     928: 7101949f     	cmp	w4, #0x65
     92c: 540005e2     	b.hs	0x9e8 <fan_pwm_store+0x104>
     930: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000930:  R_AARCH64_ADR_PREL_PG_HI21	chip
     934: f94002c8     	ldr	x8, [x22]
		0000000000000934:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     938: 91006100     	add	x0, x8, #0x18
     93c: 94000000     	bl	0x93c <fan_pwm_store+0x58>
		000000000000093c:  R_AARCH64_CALL26	mutex_lock
     940: f94002c8     	ldr	x8, [x22]
		0000000000000940:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     944: 394033f4     	ldrb	w20, [sp, #0xc]
     948: 52803209     	mov	w9, #0x190              // =400
     94c: 910043e2     	add	x2, sp, #0x10
     950: f9400508     	ldr	x8, [x8, #0x8]
     954: 9ba97e89     	umull	x9, w20, w9
     958: f9403501     	ldr	x1, [x8, #0x68]
     95c: f9400c20     	ldr	x0, [x1, #0x18]
     960: f9402028     	ldr	x8, [x1, #0x40]
     964: f941c80a     	ldr	x10, [x0, #0x390]
     968: f90013e8     	str	x8, [sp, #0x20]
     96c: 52800028     	mov	w8, #0x1                // =1
     970: 390093e8     	strb	w8, [sp, #0x24]
     974: 52938808     	mov	w8, #0x9c40             // =40000
     978: f9400d4a     	ldr	x10, [x10, #0x18]
     97c: a90127e8     	stp	x8, x9, [sp, #0x10]
     980: b85fc150     	ldur	w16, [x10, #-0x4]
     984: 7292fa11     	movk	w17, #0x97d0
     988: 72bbba11     	movk	w17, #0xddd0, lsl #16
     98c: 6b11021f     	cmp	w16, w17
     990: 54000040     	b.eq	0x998 <fan_pwm_store+0xb4>
     994: d4304540     	brk	#0x822a
     998: d63f0140     	blr	x10
     99c: 2a0003f5     	mov	w21, w0
     9a0: 37f803c0     	tbnz	w0, #0x1f, 0xa18 <fan_pwm_store+0x134>
     9a4: 34000515     	cbz	w21, 0xa44 <fan_pwm_store+0x160>
     9a8: f94002c8     	ldr	x8, [x22]
		00000000000009a8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     9ac: 91006100     	add	x0, x8, #0x18
     9b0: 94000000     	bl	0x9b0 <fan_pwm_store+0xcc>
		00000000000009b0:  R_AARCH64_CALL26	mutex_unlock
     9b4: 93407eb3     	sxtw	x19, w21
     9b8: d5384108     	mrs	x8, SP_EL0
     9bc: f9438908     	ldr	x8, [x8, #0x710]
     9c0: f85f83a9     	ldur	x9, [x29, #-0x8]
     9c4: eb09011f     	cmp	x8, x9
     9c8: 540005a1     	b.ne	0xa7c <fan_pwm_store+0x198>
     9cc: aa1303e0     	mov	x0, x19
     9d0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     9d4: a94457f6     	ldp	x22, x21, [sp, #0x40]
     9d8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     9dc: 910183ff     	add	sp, sp, #0x60
     9e0: d50323bf     	autiasp
     9e4: d65f03c0     	ret
     9e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d9
     9ec: 91000000     	add	x0, x0, #0x0
		00000000000009ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d9
     9f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     9f4: 91000021     	add	x1, x1, #0x0
		00000000000009f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     9f8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87a
     9fc: 91000042     	add	x2, x2, #0x0
		00000000000009fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87a
     a00: 52803023     	mov	w3, #0x181              // =385
     a04: 2a1f03e5     	mov	w5, wzr
     a08: 52800c86     	mov	w6, #0x64               // =100
     a0c: 94000000     	bl	0xa0c <fan_pwm_store+0x128>
		0000000000000a0c:  R_AARCH64_CALL26	_printk
     a10: 928002b3     	mov	x19, #-0x16             // =-22
     a14: 17ffffe9     	b	0x9b8 <fan_pwm_store+0xd4>
     a18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x271
     a1c: 91000000     	add	x0, x0, #0x0
		0000000000000a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x271
     a20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     a24: 91000021     	add	x1, x1, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     a28: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x675
     a2c: 91000042     	add	x2, x2, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x675
     a30: 52801aa3     	mov	w3, #0xd5               // =213
     a34: 2a1403e4     	mov	w4, w20
     a38: 2a1503e5     	mov	w5, w21
     a3c: 94000000     	bl	0xa3c <fan_pwm_store+0x158>
		0000000000000a3c:  R_AARCH64_CALL26	_printk
     a40: 17ffffda     	b	0x9a8 <fan_pwm_store+0xc4>
     a44: f94002c8     	ldr	x8, [x22]
		0000000000000a44:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     a48: 91006100     	add	x0, x8, #0x18
     a4c: 94000000     	bl	0xa4c <fan_pwm_store+0x168>
		0000000000000a4c:  R_AARCH64_CALL26	mutex_unlock
     a50: b9400fe4     	ldr	w4, [sp, #0xc]
     a54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff
     a58: 91000000     	add	x0, x0, #0x0
		0000000000000a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff
     a5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     a60: 91000021     	add	x1, x1, #0x0
		0000000000000a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     a64: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87a
     a68: 91000042     	add	x2, x2, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87a
     a6c: 52803183     	mov	w3, #0x18c              // =396
     a70: 2a1f03e5     	mov	w5, wzr
     a74: 94000000     	bl	0xa74 <fan_pwm_store+0x190>
		0000000000000a74:  R_AARCH64_CALL26	_printk
     a78: 17ffffd0     	b	0x9b8 <fan_pwm_store+0xd4>
     a7c: 94000000     	bl	0xa7c <fan_pwm_store+0x198>
		0000000000000a7c:  R_AARCH64_CALL26	__stack_chk_fail
