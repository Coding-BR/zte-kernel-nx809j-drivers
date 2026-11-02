
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024010 <syna_tcm_testing_noise>:
   24010: d503233f     	paciasp
   24014: d10243ff     	sub	sp, sp, #0x90
   24018: a9057bfd     	stp	x29, x30, [sp, #0x50]
   2401c: f90033f7     	str	x23, [sp, #0x60]
   24020: a90757f6     	stp	x22, x21, [sp, #0x70]
   24024: a9084ff4     	stp	x20, x19, [sp, #0x80]
   24028: 910143fd     	add	x29, sp, #0x50
   2402c: d5384108     	mrs	x8, SP_EL0
   24030: f9438908     	ldr	x8, [x8, #0x710]
   24034: f81f83a8     	stur	x8, [x29, #-0x8]
   24038: 12801408     	mov	w8, #-0xa1              // =-161
   2403c: b4000040     	cbz	x0, 0x24044 <syna_tcm_testing_noise+0x34>
   24040: b50001c1     	cbnz	x1, 0x24078 <syna_tcm_testing_noise+0x68>
   24044: d5384109     	mrs	x9, SP_EL0
   24048: f9438929     	ldr	x9, [x9, #0x710]
   2404c: f85f83aa     	ldur	x10, [x29, #-0x8]
   24050: eb0a013f     	cmp	x9, x10
   24054: 54000fc1     	b.ne	0x2424c <syna_tcm_testing_noise+0x23c>
   24058: 2a0803e0     	mov	w0, w8
   2405c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   24060: f94033f7     	ldr	x23, [sp, #0x60]
   24064: a94757f6     	ldp	x22, x21, [sp, #0x70]
   24068: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   2406c: 910243ff     	add	sp, sp, #0x90
   24070: d50323bf     	autiasp
   24074: d65f03c0     	ret
   24078: 910003e8     	mov	x8, sp
   2407c: 2a0203f7     	mov	w23, w2
   24080: aa0103f6     	mov	x22, x1
   24084: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   24088: 91000021     	add	x1, x1, #0x0
		0000000000024088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   2408c: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002408c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x641b
   24090: 91000042     	add	x2, x2, #0x0
		0000000000024090:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x641b
   24094: aa0003f5     	mov	x21, x0
   24098: 91004100     	add	x0, x8, #0x10
   2409c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   240a0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   240a4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   240a8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   240ac: f90003ff     	str	xzr, [sp]
   240b0: 94000000     	bl	0x240b0 <syna_tcm_testing_noise+0xa0>
		00000000000240b0:  R_AARCH64_CALL26	__mutex_init
   240b4: 2943ceb4     	ldp	w20, w19, [x21, #0x1c]
   240b8: 910003e2     	mov	x2, sp
   240bc: aa1503e0     	mov	x0, x21
   240c0: 52800141     	mov	w1, #0xa                // =10
   240c4: 2a1f03e3     	mov	w3, wzr
   240c8: 94000000     	bl	0x240c8 <syna_tcm_testing_noise+0xb8>
		00000000000240c8:  R_AARCH64_CALL26	syna_tcm_run_production_test
   240cc: 36f80180     	tbz	w0, #0x1f, 0x240fc <syna_tcm_testing_noise+0xec>
   240d0: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000240d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bba0
   240d4: 91000000     	add	x0, x0, #0x0
		00000000000240d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bba0
   240d8: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000240d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193fc
   240dc: 91000021     	add	x1, x1, #0x0
		00000000000240dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193fc
   240e0: 52800142     	mov	w2, #0xa                // =10
   240e4: 94000000     	bl	0x240e4 <syna_tcm_testing_noise+0xd4>
		00000000000240e4:  R_AARCH64_CALL26	_printk
   240e8: 390042df     	strb	wzr, [x22, #0x10]
   240ec: 12801454     	mov	w20, #-0xa3             // =-163
   240f0: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000240f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
   240f4: 91000042     	add	x2, x2, #0x0
		00000000000240f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
   240f8: 1400003a     	b	0x241e0 <syna_tcm_testing_noise+0x1d0>
   240fc: f9406ec8     	ldr	x8, [x22, #0xd8]
   24100: aa1603e9     	mov	x9, x22
   24104: b40000e8     	cbz	x8, 0x24120 <syna_tcm_testing_noise+0x110>
   24108: 910003e1     	mov	x1, sp
   2410c: 2a0003f5     	mov	w21, w0
   24110: aa0803e0     	mov	x0, x8
   24114: 9400004f     	bl	0x24250 <syna_tcm_buf_copy>
   24118: aa1603e9     	mov	x9, x22
   2411c: 2a1503e0     	mov	w0, w21
   24120: 360000f7     	tbz	w23, #0x0, 0x2413c <syna_tcm_testing_noise+0x12c>
   24124: 52800028     	mov	w8, #0x1                // =1
   24128: 2a0003f4     	mov	w20, w0
   2412c: 90000002     	adrp	x2, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002412c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
   24130: 91000042     	add	x2, x2, #0x0
		0000000000024130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
   24134: 39004128     	strb	w8, [x9, #0x10]
   24138: 1400002a     	b	0x241e0 <syna_tcm_testing_noise+0x1d0>
   2413c: f9401d28     	ldr	x8, [x9, #0x38]
   24140: b5000088     	cbnz	x8, 0x24150 <syna_tcm_testing_noise+0x140>
   24144: 2a0003f7     	mov	w23, w0
   24148: 2a1f03f5     	mov	w21, wzr
   2414c: 1400000d     	b	0x24180 <syna_tcm_testing_noise+0x170>
   24150: 2a0003f7     	mov	w23, w0
   24154: f94003e0     	ldr	x0, [sp]
   24158: b9400fe1     	ldr	w1, [sp, #0xc]
   2415c: f9400105     	ldr	x5, [x8]
   24160: b9400906     	ldr	w6, [x8, #0x8]
   24164: 90000004     	adrp	x4, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024164:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_testing_0A00_check_upper_bound
   24168: 91000084     	add	x4, x4, #0x0
		0000000000024168:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_testing_0A00_check_upper_bound
   2416c: 2a1403e2     	mov	w2, w20
   24170: 2a1303e3     	mov	w3, w19
   24174: 940000d7     	bl	0x244d0 <syna_tcm_testing_check_frame_data>
   24178: aa1603e9     	mov	x9, x22
   2417c: 2a0003f5     	mov	w21, w0
   24180: f9402128     	ldr	x8, [x9, #0x40]
   24184: b5000068     	cbnz	x8, 0x24190 <syna_tcm_testing_noise+0x180>
   24188: 2a1f03e0     	mov	w0, wzr
   2418c: 1400000b     	b	0x241b8 <syna_tcm_testing_noise+0x1a8>
   24190: f94003e0     	ldr	x0, [sp]
   24194: b9400fe1     	ldr	w1, [sp, #0xc]
   24198: 90000004     	adrp	x4, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024198:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_testing_0A00_check_lower_bound
   2419c: 91000084     	add	x4, x4, #0x0
		000000000002419c:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_testing_0A00_check_lower_bound
   241a0: f9400105     	ldr	x5, [x8]
   241a4: b9400906     	ldr	w6, [x8, #0x8]
   241a8: 2a1403e2     	mov	w2, w20
   241ac: 2a1303e3     	mov	w3, w19
   241b0: 940000c8     	bl	0x244d0 <syna_tcm_testing_check_frame_data>
   241b4: aa1603e9     	mov	x9, x22
   241b8: 0a0002a8     	and	w8, w21, w0
   241bc: 1280142a     	mov	w10, #-0xa2             // =-162
   241c0: 9000000b     	adrp	x11, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000241c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
   241c4: 9100016b     	add	x11, x11, #0x0
		00000000000241c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
   241c8: 72000108     	ands	w8, w8, #0x1
   241cc: 39004128     	strb	w8, [x9, #0x10]
   241d0: 90000008     	adrp	x8, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000241d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
   241d4: 91000108     	add	x8, x8, #0x0
		00000000000241d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
   241d8: 1a8a12f4     	csel	w20, w23, w10, ne
   241dc: 9a8b1102     	csel	x2, x8, x11, ne
   241e0: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000241e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fbf
   241e4: 91000000     	add	x0, x0, #0x0
		00000000000241e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fbf
   241e8: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		00000000000241e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193fc
   241ec: 91000021     	add	x1, x1, #0x0
		00000000000241ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193fc
   241f0: 94000000     	bl	0x241f0 <syna_tcm_testing_noise+0x1e0>
		00000000000241f0:  R_AARCH64_CALL26	_printk
   241f4: 394103e2     	ldrb	w2, [sp, #0x40]
   241f8: 35000122     	cbnz	w2, 0x2421c <syna_tcm_testing_noise+0x20c>
   241fc: f94003f3     	ldr	x19, [sp]
   24200: 94000000     	bl	0x24200 <syna_tcm_testing_noise+0x1f0>
		0000000000024200:  R_AARCH64_CALL26	syna_request_managed_device
   24204: b4000180     	cbz	x0, 0x24234 <syna_tcm_testing_noise+0x224>
   24208: b4000073     	cbz	x19, 0x24214 <syna_tcm_testing_noise+0x204>
   2420c: aa1303e1     	mov	x1, x19
   24210: 94000000     	bl	0x24210 <syna_tcm_testing_noise+0x200>
		0000000000024210:  R_AARCH64_CALL26	devm_kfree
   24214: 2a1403e8     	mov	w8, w20
   24218: 17ffff8b     	b	0x24044 <syna_tcm_testing_noise+0x34>
   2421c: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002421c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   24220: 91000000     	add	x0, x0, #0x0
		0000000000024220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   24224: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   24228: 91000021     	add	x1, x1, #0x0
		0000000000024228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   2422c: 94000000     	bl	0x2422c <syna_tcm_testing_noise+0x21c>
		000000000002422c:  R_AARCH64_CALL26	_printk
   24230: 17fffff3     	b	0x241fc <syna_tcm_testing_noise+0x1ec>
   24234: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   24238: 91000000     	add	x0, x0, #0x0
		0000000000024238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2423c: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		000000000002423c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   24240: 91000021     	add	x1, x1, #0x0
		0000000000024240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   24244: 94000000     	bl	0x24244 <syna_tcm_testing_noise+0x234>
		0000000000024244:  R_AARCH64_CALL26	_printk
   24248: 17fffff3     	b	0x24214 <syna_tcm_testing_noise+0x204>
   2424c: 94000000     	bl	0x2424c <syna_tcm_testing_noise+0x23c>
		000000000002424c:  R_AARCH64_CALL26	__stack_chk_fail
