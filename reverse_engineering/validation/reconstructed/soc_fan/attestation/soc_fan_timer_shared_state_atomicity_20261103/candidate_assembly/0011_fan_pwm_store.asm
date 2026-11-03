
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000054c <fan_pwm_store>:
     54c: d503233f     	paciasp
     550: d10183ff     	sub	sp, sp, #0x60
     554: a9037bfd     	stp	x29, x30, [sp, #0x30]
     558: a90457f6     	stp	x22, x21, [sp, #0x40]
     55c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     560: 9100c3fd     	add	x29, sp, #0x30
     564: d5384108     	mrs	x8, SP_EL0
     568: aa0203e0     	mov	x0, x2
     56c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000056c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x918
     570: 91000021     	add	x1, x1, #0x0
		0000000000000570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x918
     574: f9438908     	ldr	x8, [x8, #0x710]
     578: 910033e2     	add	x2, sp, #0xc
     57c: aa0303f3     	mov	x19, x3
     580: f81f83a8     	stur	x8, [x29, #-0x8]
     584: b9000fff     	str	wzr, [sp, #0xc]
     588: 94000000     	bl	0x588 <fan_pwm_store+0x3c>
		0000000000000588:  R_AARCH64_CALL26	sscanf
     58c: b9400fe4     	ldr	w4, [sp, #0xc]
     590: 7101949f     	cmp	w4, #0x65
     594: 540005e2     	b.hs	0x650 <fan_pwm_store+0x104>
     598: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000598:  R_AARCH64_ADR_PREL_PG_HI21	chip
     59c: f94002c8     	ldr	x8, [x22]
		000000000000059c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5a0: 91006100     	add	x0, x8, #0x18
     5a4: 94000000     	bl	0x5a4 <fan_pwm_store+0x58>
		00000000000005a4:  R_AARCH64_CALL26	mutex_lock
     5a8: f94002c8     	ldr	x8, [x22]
		00000000000005a8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     5ac: 394033f4     	ldrb	w20, [sp, #0xc]
     5b0: 52803209     	mov	w9, #0x190              // =400
     5b4: 910043e2     	add	x2, sp, #0x10
     5b8: f9400508     	ldr	x8, [x8, #0x8]
     5bc: 9ba97e89     	umull	x9, w20, w9
     5c0: f9403501     	ldr	x1, [x8, #0x68]
     5c4: f9400c20     	ldr	x0, [x1, #0x18]
     5c8: f9402028     	ldr	x8, [x1, #0x40]
     5cc: f941c80a     	ldr	x10, [x0, #0x390]
     5d0: f90013e8     	str	x8, [sp, #0x20]
     5d4: 52800028     	mov	w8, #0x1                // =1
     5d8: 390093e8     	strb	w8, [sp, #0x24]
     5dc: 52938808     	mov	w8, #0x9c40             // =40000
     5e0: f9400d4a     	ldr	x10, [x10, #0x18]
     5e4: a90127e8     	stp	x8, x9, [sp, #0x10]
     5e8: b85fc150     	ldur	w16, [x10, #-0x4]
     5ec: 7292fa11     	movk	w17, #0x97d0
     5f0: 72bbba11     	movk	w17, #0xddd0, lsl #16
     5f4: 6b11021f     	cmp	w16, w17
     5f8: 54000040     	b.eq	0x600 <fan_pwm_store+0xb4>
     5fc: d4304540     	brk	#0x822a
     600: d63f0140     	blr	x10
     604: 2a0003f5     	mov	w21, w0
     608: 37f803c0     	tbnz	w0, #0x1f, 0x680 <fan_pwm_store+0x134>
     60c: 34000515     	cbz	w21, 0x6ac <fan_pwm_store+0x160>
     610: f94002c8     	ldr	x8, [x22]
		0000000000000610:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     614: 91006100     	add	x0, x8, #0x18
     618: 94000000     	bl	0x618 <fan_pwm_store+0xcc>
		0000000000000618:  R_AARCH64_CALL26	mutex_unlock
     61c: 93407eb3     	sxtw	x19, w21
     620: d5384108     	mrs	x8, SP_EL0
     624: f9438908     	ldr	x8, [x8, #0x710]
     628: f85f83a9     	ldur	x9, [x29, #-0x8]
     62c: eb09011f     	cmp	x8, x9
     630: 540005a1     	b.ne	0x6e4 <fan_pwm_store+0x198>
     634: aa1303e0     	mov	x0, x19
     638: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     63c: a94457f6     	ldp	x22, x21, [sp, #0x40]
     640: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     644: 910183ff     	add	sp, sp, #0x60
     648: d50323bf     	autiasp
     64c: d65f03c0     	ret
     650: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50c
     654: 91000000     	add	x0, x0, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50c
     658: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     65c: 91000021     	add	x1, x1, #0x0
		000000000000065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     660: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ad
     664: 91000042     	add	x2, x2, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ad
     668: 52803023     	mov	w3, #0x181              // =385
     66c: 2a1f03e5     	mov	w5, wzr
     670: 52800c86     	mov	w6, #0x64               // =100
     674: 94000000     	bl	0x674 <fan_pwm_store+0x128>
		0000000000000674:  R_AARCH64_CALL26	_printk
     678: 928002b3     	mov	x19, #-0x16             // =-22
     67c: 17ffffe9     	b	0x620 <fan_pwm_store+0xd4>
     680: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x271
     684: 91000000     	add	x0, x0, #0x0
		0000000000000684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x271
     688: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     68c: 91000021     	add	x1, x1, #0x0
		000000000000068c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     690: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a8
     694: 91000042     	add	x2, x2, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a8
     698: 52801aa3     	mov	w3, #0xd5               // =213
     69c: 2a1403e4     	mov	w4, w20
     6a0: 2a1503e5     	mov	w5, w21
     6a4: 94000000     	bl	0x6a4 <fan_pwm_store+0x158>
		00000000000006a4:  R_AARCH64_CALL26	_printk
     6a8: 17ffffda     	b	0x610 <fan_pwm_store+0xc4>
     6ac: f94002c8     	ldr	x8, [x22]
		00000000000006ac:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     6b0: 91006100     	add	x0, x8, #0x18
     6b4: 94000000     	bl	0x6b4 <fan_pwm_store+0x168>
		00000000000006b4:  R_AARCH64_CALL26	mutex_unlock
     6b8: b9400fe4     	ldr	w4, [sp, #0xc]
     6bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff
     6c0: 91000000     	add	x0, x0, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff
     6c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     6c8: 91000021     	add	x1, x1, #0x0
		00000000000006c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     6cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ad
     6d0: 91000042     	add	x2, x2, #0x0
		00000000000006d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ad
     6d4: 52803183     	mov	w3, #0x18c              // =396
     6d8: 2a1f03e5     	mov	w5, wzr
     6dc: 94000000     	bl	0x6dc <fan_pwm_store+0x190>
		00000000000006dc:  R_AARCH64_CALL26	_printk
     6e0: 17ffffd0     	b	0x620 <fan_pwm_store+0xd4>
     6e4: 94000000     	bl	0x6e4 <fan_pwm_store+0x198>
		00000000000006e4:  R_AARCH64_CALL26	__stack_chk_fail
