
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001a4 <syna_tcm_testing_trx_trx_short>:
     1a4: d503233f     	paciasp
     1a8: d10203ff     	sub	sp, sp, #0x80
     1ac: a9057bfd     	stp	x29, x30, [sp, #0x50]
     1b0: f90033f5     	str	x21, [sp, #0x60]
     1b4: a9074ff4     	stp	x20, x19, [sp, #0x70]
     1b8: 910143fd     	add	x29, sp, #0x50
     1bc: d5384108     	mrs	x8, SP_EL0
     1c0: f9438908     	ldr	x8, [x8, #0x710]
     1c4: f81f83a8     	stur	x8, [x29, #-0x8]
     1c8: 12801408     	mov	w8, #-0xa1              // =-161
     1cc: b4000040     	cbz	x0, 0x1d4 <syna_tcm_testing_trx_trx_short+0x30>
     1d0: b50001a1     	cbnz	x1, 0x204 <syna_tcm_testing_trx_trx_short+0x60>
     1d4: d5384109     	mrs	x9, SP_EL0
     1d8: f9438929     	ldr	x9, [x9, #0x710]
     1dc: f85f83aa     	ldur	x10, [x29, #-0x8]
     1e0: eb0a013f     	cmp	x9, x10
     1e4: 54000d21     	b.ne	0x388 <syna_tcm_testing_trx_trx_short+0x1e4>
     1e8: 2a0803e0     	mov	w0, w8
     1ec: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     1f0: f94033f5     	ldr	x21, [sp, #0x60]
     1f4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     1f8: 910203ff     	add	sp, sp, #0x80
     1fc: d50323bf     	autiasp
     200: d65f03c0     	ret
     204: 910003e8     	mov	x8, sp
     208: 2a0203f5     	mov	w21, w2
     20c: aa0103f4     	mov	x20, x1
     210: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a6c
     214: 91000021     	add	x1, x1, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a6c
     218: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x960
     21c: 91000042     	add	x2, x2, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x960
     220: aa0003f3     	mov	x19, x0
     224: 91004100     	add	x0, x8, #0x10
     228: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     22c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     230: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     234: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     238: f90003ff     	str	xzr, [sp]
     23c: 94000000     	bl	0x23c <syna_tcm_testing_trx_trx_short+0x98>
		000000000000023c:  R_AARCH64_CALL26	__mutex_init
     240: 910003e2     	mov	x2, sp
     244: aa1303e0     	mov	x0, x19
     248: 52800021     	mov	w1, #0x1                // =1
     24c: 2a1f03e3     	mov	w3, wzr
     250: 94000000     	bl	0x250 <syna_tcm_testing_trx_trx_short+0xac>
		0000000000000250:  R_AARCH64_CALL26	syna_tcm_run_production_test
     254: 36f80180     	tbz	w0, #0x1f, 0x284 <syna_tcm_testing_trx_trx_short+0xe0>
     258: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c30
     25c: 91000000     	add	x0, x0, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c30
     260: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d22
     264: 91000021     	add	x1, x1, #0x0
		0000000000000264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d22
     268: 52800022     	mov	w2, #0x1                // =1
     26c: 94000000     	bl	0x26c <syna_tcm_testing_trx_trx_short+0xc8>
		000000000000026c:  R_AARCH64_CALL26	_printk
     270: 3900429f     	strb	wzr, [x20, #0x10]
     274: 12801454     	mov	w20, #-0xa3             // =-163
     278: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcac6
     27c: 91000042     	add	x2, x2, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcac6
     280: 14000027     	b	0x31c <syna_tcm_testing_trx_trx_short+0x178>
     284: f9406e88     	ldr	x8, [x20, #0xd8]
     288: aa1403e9     	mov	x9, x20
     28c: b40000e8     	cbz	x8, 0x2a8 <syna_tcm_testing_trx_trx_short+0x104>
     290: 910003e1     	mov	x1, sp
     294: 2a0003f3     	mov	w19, w0
     298: aa0803e0     	mov	x0, x8
     29c: 9400003c     	bl	0x38c <_inline_copy_from_user>
		000000000000029c:  R_AARCH64_CALL26	syna_tcm_buf_copy
     2a0: aa1403e9     	mov	x9, x20
     2a4: 2a1303e0     	mov	w0, w19
     2a8: 360000f5     	tbz	w21, #0x0, 0x2c4 <syna_tcm_testing_trx_trx_short+0x120>
     2ac: 52800028     	mov	w8, #0x1                // =1
     2b0: 2a0003f4     	mov	w20, w0
     2b4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12120
     2b8: 91000042     	add	x2, x2, #0x0
		00000000000002b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12120
     2bc: 39004128     	strb	w8, [x9, #0x10]
     2c0: 14000017     	b	0x31c <syna_tcm_testing_trx_trx_short+0x178>
     2c4: f9401d2a     	ldr	x10, [x9, #0x38]
     2c8: b500008a     	cbnz	x10, 0x2d8 <syna_tcm_testing_trx_trx_short+0x134>
     2cc: 3900413f     	strb	wzr, [x9, #0x10]
     2d0: 12801434     	mov	w20, #-0xa2             // =-162
     2d4: 17ffffe9     	b	0x278 <syna_tcm_testing_trx_trx_short+0xd4>
     2d8: f94003e8     	ldr	x8, [sp]
     2dc: b9400fe1     	ldr	w1, [sp, #0xc]
     2e0: 2a0003f4     	mov	w20, w0
     2e4: f9400142     	ldr	x2, [x10]
     2e8: b9400943     	ldr	w3, [x10, #0x8]
     2ec: aa0903f3     	mov	x19, x9
     2f0: aa0803e0     	mov	x0, x8
     2f4: 940000c6     	bl	0x60c <get_finger_lock_flag+0x7c>
		00000000000002f4:  R_AARCH64_CALL26	syna_tcm_testing_check_array_data
     2f8: 12801428     	mov	w8, #-0xa2              // =-162
     2fc: 7200000a     	ands	w10, w0, #0x1
     300: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcac6
     304: 91000129     	add	x9, x9, #0x0
		0000000000000304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcac6
     308: 1a881294     	csel	w20, w20, w8, ne
     30c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12120
     310: 91000108     	add	x8, x8, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12120
     314: 3900426a     	strb	w10, [x19, #0x10]
     318: 9a891102     	csel	x2, x8, x9, ne
     31c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3dc
     320: 91000000     	add	x0, x0, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3dc
     324: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d22
     328: 91000021     	add	x1, x1, #0x0
		0000000000000328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d22
     32c: 94000000     	bl	0x32c <syna_tcm_testing_trx_trx_short+0x188>
		000000000000032c:  R_AARCH64_CALL26	_printk
     330: 394103e2     	ldrb	w2, [sp, #0x40]
     334: 35000122     	cbnz	w2, 0x358 <syna_tcm_testing_trx_trx_short+0x1b4>
     338: f94003f3     	ldr	x19, [sp]
     33c: 94000000     	bl	0x33c <syna_tcm_testing_trx_trx_short+0x198>
		000000000000033c:  R_AARCH64_CALL26	syna_request_managed_device
     340: b4000180     	cbz	x0, 0x370 <syna_tcm_testing_trx_trx_short+0x1cc>
     344: b4000073     	cbz	x19, 0x350 <syna_tcm_testing_trx_trx_short+0x1ac>
     348: aa1303e1     	mov	x1, x19
     34c: 94000000     	bl	0x34c <syna_tcm_testing_trx_trx_short+0x1a8>
		000000000000034c:  R_AARCH64_CALL26	devm_kfree
     350: 2a1403e8     	mov	w8, w20
     354: 17ffffa0     	b	0x1d4 <syna_tcm_testing_trx_trx_short+0x30>
     358: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdda2
     35c: 91000000     	add	x0, x0, #0x0
		000000000000035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdda2
     360: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x115e0
     364: 91000021     	add	x1, x1, #0x0
		0000000000000364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x115e0
     368: 94000000     	bl	0x368 <syna_tcm_testing_trx_trx_short+0x1c4>
		0000000000000368:  R_AARCH64_CALL26	_printk
     36c: 17fffff3     	b	0x338 <syna_tcm_testing_trx_trx_short+0x194>
     370: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a80
     374: 91000000     	add	x0, x0, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a80
     378: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14c56
     37c: 91000021     	add	x1, x1, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14c56
     380: 94000000     	bl	0x380 <syna_tcm_testing_trx_trx_short+0x1dc>
		0000000000000380:  R_AARCH64_CALL26	_printk
     384: 17fffff3     	b	0x350 <syna_tcm_testing_trx_trx_short+0x1ac>
     388: 94000000     	bl	0x388 <syna_tcm_testing_trx_trx_short+0x1e4>
		0000000000000388:  R_AARCH64_CALL26	__stack_chk_fail
