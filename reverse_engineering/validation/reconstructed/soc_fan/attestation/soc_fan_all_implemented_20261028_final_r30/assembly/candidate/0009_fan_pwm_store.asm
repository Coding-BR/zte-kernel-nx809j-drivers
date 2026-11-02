
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c00 <fan_pwm_store>:
     c00: d503233f     	paciasp
     c04: d10183ff     	sub	sp, sp, #0x60
     c08: a9037bfd     	stp	x29, x30, [sp, #0x30]
     c0c: a90457f6     	stp	x22, x21, [sp, #0x40]
     c10: a9054ff4     	stp	x20, x19, [sp, #0x50]
     c14: 9100c3fd     	add	x29, sp, #0x30
     c18: d5384108     	mrs	x8, SP_EL0
     c1c: aa0203e0     	mov	x0, x2
     c20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x415
     c24: 91000021     	add	x1, x1, #0x0
		0000000000000c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x415
     c28: f9438908     	ldr	x8, [x8, #0x710]
     c2c: 910033e2     	add	x2, sp, #0xc
     c30: aa0303f3     	mov	x19, x3
     c34: f81f83a8     	stur	x8, [x29, #-0x8]
     c38: b9000fff     	str	wzr, [sp, #0xc]
     c3c: 94000000     	bl	0xc3c <fan_pwm_store+0x3c>
		0000000000000c3c:  R_AARCH64_CALL26	sscanf
     c40: b9400fe4     	ldr	w4, [sp, #0xc]
     c44: 7101949f     	cmp	w4, #0x65
     c48: 540005e2     	b.hs	0xd04 <fan_pwm_store+0x104>
     c4c: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000c4c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     c50: f94002c8     	ldr	x8, [x22]
		0000000000000c50:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c54: 91006100     	add	x0, x8, #0x18
     c58: 94000000     	bl	0xc58 <fan_pwm_store+0x58>
		0000000000000c58:  R_AARCH64_CALL26	mutex_lock
     c5c: f94002c8     	ldr	x8, [x22]
		0000000000000c5c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c60: 394033f4     	ldrb	w20, [sp, #0xc]
     c64: 52803209     	mov	w9, #0x190              // =400
     c68: 910043e2     	add	x2, sp, #0x10
     c6c: f9400508     	ldr	x8, [x8, #0x8]
     c70: 9ba97e89     	umull	x9, w20, w9
     c74: f9403501     	ldr	x1, [x8, #0x68]
     c78: f9400c20     	ldr	x0, [x1, #0x18]
     c7c: f9402028     	ldr	x8, [x1, #0x40]
     c80: f941c80a     	ldr	x10, [x0, #0x390]
     c84: f90013e8     	str	x8, [sp, #0x20]
     c88: 52800028     	mov	w8, #0x1                // =1
     c8c: 390093e8     	strb	w8, [sp, #0x24]
     c90: 52938808     	mov	w8, #0x9c40             // =40000
     c94: f9400d4a     	ldr	x10, [x10, #0x18]
     c98: a90127e8     	stp	x8, x9, [sp, #0x10]
     c9c: b85fc150     	ldur	w16, [x10, #-0x4]
     ca0: 7292fa11     	movk	w17, #0x97d0
     ca4: 72bbba11     	movk	w17, #0xddd0, lsl #16
     ca8: 6b11021f     	cmp	w16, w17
     cac: 54000040     	b.eq	0xcb4 <fan_pwm_store+0xb4>
     cb0: d4304540     	brk	#0x822a
     cb4: d63f0140     	blr	x10
     cb8: 2a0003f5     	mov	w21, w0
     cbc: 37f803c0     	tbnz	w0, #0x1f, 0xd34 <fan_pwm_store+0x134>
     cc0: 34000515     	cbz	w21, 0xd60 <fan_pwm_store+0x160>
     cc4: f94002c8     	ldr	x8, [x22]
		0000000000000cc4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     cc8: 91006100     	add	x0, x8, #0x18
     ccc: 94000000     	bl	0xccc <fan_pwm_store+0xcc>
		0000000000000ccc:  R_AARCH64_CALL26	mutex_unlock
     cd0: 93407eb3     	sxtw	x19, w21
     cd4: d5384108     	mrs	x8, SP_EL0
     cd8: f9438908     	ldr	x8, [x8, #0x710]
     cdc: f85f83a9     	ldur	x9, [x29, #-0x8]
     ce0: eb09011f     	cmp	x8, x9
     ce4: 540005a1     	b.ne	0xd98 <fan_pwm_store+0x198>
     ce8: aa1303e0     	mov	x0, x19
     cec: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     cf0: a94457f6     	ldp	x22, x21, [sp, #0x40]
     cf4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     cf8: 910183ff     	add	sp, sp, #0x60
     cfc: d50323bf     	autiasp
     d00: d65f03c0     	ret
     d04: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6
     d08: 91000000     	add	x0, x0, #0x0
		0000000000000d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6
     d0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     d10: 91000021     	add	x1, x1, #0x0
		0000000000000d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     d14: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x407
     d18: 91000042     	add	x2, x2, #0x0
		0000000000000d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x407
     d1c: 52803023     	mov	w3, #0x181              // =385
     d20: 2a1f03e5     	mov	w5, wzr
     d24: 52800c86     	mov	w6, #0x64               // =100
     d28: 94000000     	bl	0xd28 <fan_pwm_store+0x128>
		0000000000000d28:  R_AARCH64_CALL26	_printk
     d2c: 928002b3     	mov	x19, #-0x16             // =-22
     d30: 17ffffe9     	b	0xcd4 <fan_pwm_store+0xd4>
     d34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     d38: 91000000     	add	x0, x0, #0x0
		0000000000000d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     d3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     d40: 91000021     	add	x1, x1, #0x0
		0000000000000d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     d44: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x307
     d48: 91000042     	add	x2, x2, #0x0
		0000000000000d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x307
     d4c: 52801aa3     	mov	w3, #0xd5               // =213
     d50: 2a1403e4     	mov	w4, w20
     d54: 2a1503e5     	mov	w5, w21
     d58: 94000000     	bl	0xd58 <fan_pwm_store+0x158>
		0000000000000d58:  R_AARCH64_CALL26	_printk
     d5c: 17ffffda     	b	0xcc4 <fan_pwm_store+0xc4>
     d60: f94002c8     	ldr	x8, [x22]
		0000000000000d60:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d64: 91006100     	add	x0, x8, #0x18
     d68: 94000000     	bl	0xd68 <fan_pwm_store+0x168>
		0000000000000d68:  R_AARCH64_CALL26	mutex_unlock
     d6c: b9400fe4     	ldr	w4, [sp, #0xc]
     d70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148
     d74: 91000000     	add	x0, x0, #0x0
		0000000000000d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148
     d78: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     d7c: 91000021     	add	x1, x1, #0x0
		0000000000000d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     d80: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x407
     d84: 91000042     	add	x2, x2, #0x0
		0000000000000d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x407
     d88: 52803183     	mov	w3, #0x18c              // =396
     d8c: 2a1f03e5     	mov	w5, wzr
     d90: 94000000     	bl	0xd90 <fan_pwm_store+0x190>
		0000000000000d90:  R_AARCH64_CALL26	_printk
     d94: 17ffffd0     	b	0xcd4 <fan_pwm_store+0xd4>
     d98: 94000000     	bl	0xd98 <fan_pwm_store+0x198>
		0000000000000d98:  R_AARCH64_CALL26	__stack_chk_fail
