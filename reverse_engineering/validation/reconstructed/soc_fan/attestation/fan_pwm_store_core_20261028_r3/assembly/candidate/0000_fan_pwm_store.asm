
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000434 <fan_pwm_store>:
     434: d503233f     	paciasp
     438: d10183ff     	sub	sp, sp, #0x60
     43c: a9037bfd     	stp	x29, x30, [sp, #0x30]
     440: a90457f6     	stp	x22, x21, [sp, #0x40]
     444: a9054ff4     	stp	x20, x19, [sp, #0x50]
     448: 9100c3fd     	add	x29, sp, #0x30
     44c: d5384108     	mrs	x8, SP_EL0
     450: aa0203e0     	mov	x0, x2
     454: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed
     458: 91000021     	add	x1, x1, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed
     45c: f9438908     	ldr	x8, [x8, #0x710]
     460: 910033e2     	add	x2, sp, #0xc
     464: aa0303f3     	mov	x19, x3
     468: f81f83a8     	stur	x8, [x29, #-0x8]
     46c: b9000fff     	str	wzr, [sp, #0xc]
     470: 94000000     	bl	0x470 <fan_pwm_store+0x3c>
		0000000000000470:  R_AARCH64_CALL26	sscanf
     474: b9400fe4     	ldr	w4, [sp, #0xc]
     478: 7101909f     	cmp	w4, #0x64
     47c: 540005e8     	b.hi	0x538 <fan_pwm_store+0x104>
     480: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000480:  R_AARCH64_ADR_PREL_PG_HI21	chip
     484: f94002c8     	ldr	x8, [x22]
		0000000000000484:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     488: 91006100     	add	x0, x8, #0x18
     48c: 94000000     	bl	0x48c <fan_pwm_store+0x58>
		000000000000048c:  R_AARCH64_CALL26	mutex_lock
     490: f94002c8     	ldr	x8, [x22]
		0000000000000490:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     494: 394033f4     	ldrb	w20, [sp, #0xc]
     498: 52803209     	mov	w9, #0x190              // =400
     49c: 910043e2     	add	x2, sp, #0x10
     4a0: f9400508     	ldr	x8, [x8, #0x8]
     4a4: 9ba97e89     	umull	x9, w20, w9
     4a8: f9403501     	ldr	x1, [x8, #0x68]
     4ac: f9400c20     	ldr	x0, [x1, #0x18]
     4b0: f9402028     	ldr	x8, [x1, #0x40]
     4b4: f941c80a     	ldr	x10, [x0, #0x390]
     4b8: f90013e8     	str	x8, [sp, #0x20]
     4bc: 52800028     	mov	w8, #0x1                // =1
     4c0: 390093e8     	strb	w8, [sp, #0x24]
     4c4: 52938808     	mov	w8, #0x9c40             // =40000
     4c8: f9400d4a     	ldr	x10, [x10, #0x18]
     4cc: a90127e8     	stp	x8, x9, [sp, #0x10]
     4d0: b85fc150     	ldur	w16, [x10, #-0x4]
     4d4: 7292fa11     	movk	w17, #0x97d0
     4d8: 72bbba11     	movk	w17, #0xddd0, lsl #16
     4dc: 6b11021f     	cmp	w16, w17
     4e0: 54000040     	b.eq	0x4e8 <fan_pwm_store+0xb4>
     4e4: d4304540     	brk	#0x822a
     4e8: d63f0140     	blr	x10
     4ec: 2a0003f5     	mov	w21, w0
     4f0: 37f803c0     	tbnz	w0, #0x1f, 0x568 <fan_pwm_store+0x134>
     4f4: 34000515     	cbz	w21, 0x594 <fan_pwm_store+0x160>
     4f8: f94002c8     	ldr	x8, [x22]
		00000000000004f8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     4fc: 91006100     	add	x0, x8, #0x18
     500: 94000000     	bl	0x500 <fan_pwm_store+0xcc>
		0000000000000500:  R_AARCH64_CALL26	mutex_unlock
     504: 93407eb3     	sxtw	x19, w21
     508: d5384108     	mrs	x8, SP_EL0
     50c: f9438908     	ldr	x8, [x8, #0x710]
     510: f85f83a9     	ldur	x9, [x29, #-0x8]
     514: eb09011f     	cmp	x8, x9
     518: 540005a1     	b.ne	0x5cc <fan_pwm_store+0x198>
     51c: aa1303e0     	mov	x0, x19
     520: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     524: a94457f6     	ldp	x22, x21, [sp, #0x40]
     528: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     52c: 910183ff     	add	sp, sp, #0x60
     530: d50323bf     	autiasp
     534: d65f03c0     	ret
     538: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe4
     53c: 91000000     	add	x0, x0, #0x0
		000000000000053c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe4
     540: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b
     544: 91000021     	add	x1, x1, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b
     548: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1df
     54c: 91000042     	add	x2, x2, #0x0
		000000000000054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1df
     550: 52803023     	mov	w3, #0x181              // =385
     554: 2a1f03e5     	mov	w5, wzr
     558: 52800c86     	mov	w6, #0x64               // =100
     55c: 94000000     	bl	0x55c <fan_pwm_store+0x128>
		000000000000055c:  R_AARCH64_CALL26	_printk
     560: 928002b3     	mov	x19, #-0x16             // =-22
     564: 17ffffe9     	b	0x508 <fan_pwm_store+0xd4>
     568: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70
     56c: 91000000     	add	x0, x0, #0x0
		000000000000056c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70
     570: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b
     574: 91000021     	add	x1, x1, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b
     578: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f
     57c: 91000042     	add	x2, x2, #0x0
		000000000000057c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f
     580: 52801aa3     	mov	w3, #0xd5               // =213
     584: 2a1403e4     	mov	w4, w20
     588: 2a1503e5     	mov	w5, w21
     58c: 94000000     	bl	0x58c <fan_pwm_store+0x158>
		000000000000058c:  R_AARCH64_CALL26	_printk
     590: 17ffffda     	b	0x4f8 <fan_pwm_store+0xc4>
     594: f94002c8     	ldr	x8, [x22]
		0000000000000594:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     598: 91006100     	add	x0, x8, #0x18
     59c: 94000000     	bl	0x59c <fan_pwm_store+0x168>
		000000000000059c:  R_AARCH64_CALL26	mutex_unlock
     5a0: b9400fe4     	ldr	w4, [sp, #0xc]
     5a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf
     5a8: 91000000     	add	x0, x0, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf
     5ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b
     5b0: 91000021     	add	x1, x1, #0x0
		00000000000005b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b
     5b4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1df
     5b8: 91000042     	add	x2, x2, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1df
     5bc: 52803183     	mov	w3, #0x18c              // =396
     5c0: 2a1f03e5     	mov	w5, wzr
     5c4: 94000000     	bl	0x5c4 <fan_pwm_store+0x190>
		00000000000005c4:  R_AARCH64_CALL26	_printk
     5c8: 17ffffd0     	b	0x508 <fan_pwm_store+0xd4>
     5cc: 94000000     	bl	0x5cc <fan_pwm_store+0x198>
		00000000000005cc:  R_AARCH64_CALL26	__stack_chk_fail
