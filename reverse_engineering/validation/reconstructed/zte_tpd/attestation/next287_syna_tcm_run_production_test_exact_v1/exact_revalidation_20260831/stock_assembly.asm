
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d3ac <syna_tcm_run_production_test>:
   1d3ac: d503233f     	paciasp
   1d3b0: d10103ff     	sub	sp, sp, #0x40
   1d3b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1d3b8: a90257f6     	stp	x22, x21, [sp, #0x20]
   1d3bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1d3c0: 910043fd     	add	x29, sp, #0x10
   1d3c4: d5384108     	mrs	x8, SP_EL0
   1d3c8: f9438908     	ldr	x8, [x8, #0x710]
   1d3cc: f90007e8     	str	x8, [sp, #0x8]
   1d3d0: b40005a0     	cbz	x0, 0x1d484 <syna_tcm_run_production_test+0xd8>
   1d3d4: aa0203f3     	mov	x19, x2
   1d3d8: 39402402     	ldrb	w2, [x0, #0x9]
   1d3dc: aa0003f4     	mov	x20, x0
   1d3e0: 7100045f     	cmp	w2, #0x1
   1d3e4: 540005e1     	b.ne	0x1d4a0 <syna_tcm_run_production_test+0xf4>
   1d3e8: 2a0303f5     	mov	w21, w3
   1d3ec: 350000a3     	cbnz	w3, 0x1d400 <syna_tcm_run_production_test+0x54>
   1d3f0: f9402688     	ldr	x8, [x20, #0x48]
   1d3f4: 39405108     	ldrb	w8, [x8, #0x14]
   1d3f8: 36000888     	tbz	w8, #0x0, 0x1d508 <syna_tcm_run_production_test+0x15c>
   1d3fc: 2a1f03f5     	mov	w21, wzr
   1d400: f941ce88     	ldr	x8, [x20, #0x398]
   1d404: 390013e1     	strb	w1, [sp, #0x4]
   1d408: 910013e2     	add	x2, sp, #0x4
   1d40c: aa1403e0     	mov	x0, x20
   1d410: 52800541     	mov	w1, #0x2a               // =42
   1d414: 52800023     	mov	w3, #0x1                // =1
   1d418: aa1f03e4     	mov	x4, xzr
   1d41c: 2a1503e5     	mov	w5, w21
   1d420: b85fc110     	ldur	w16, [x8, #-0x4]
   1d424: 728751d1     	movk	w17, #0x3a8e
   1d428: 72a48411     	movk	w17, #0x2420, lsl #16
   1d42c: 6b11021f     	cmp	w16, w17
   1d430: 54000040     	b.eq	0x1d438 <syna_tcm_run_production_test+0x8c>
   1d434: d4304500     	brk	#0x8228
   1d438: d63f0100     	blr	x8
   1d43c: 37f80400     	tbnz	w0, #0x1f, 0x1d4bc <syna_tcm_run_production_test+0x110>
   1d440: b40000d3     	cbz	x19, 0x1d458 <syna_tcm_run_production_test+0xac>
   1d444: 91052281     	add	x1, x20, #0x148
   1d448: aa1303e0     	mov	x0, x19
   1d44c: 97fff7cf     	bl	0x1b388 <syna_tcm_buf_copy>
   1d450: 37f804a0     	tbnz	w0, #0x1f, 0x1d4e4 <syna_tcm_run_production_test+0x138>
   1d454: 2a1f03e0     	mov	w0, wzr
   1d458: d5384108     	mrs	x8, SP_EL0
   1d45c: f9438908     	ldr	x8, [x8, #0x710]
   1d460: f94007e9     	ldr	x9, [sp, #0x8]
   1d464: eb09011f     	cmp	x8, x9
   1d468: 54000641     	b.ne	0x1d530 <syna_tcm_run_production_test+0x184>
   1d46c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1d470: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1d474: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1d478: 910103ff     	add	sp, sp, #0x40
   1d47c: d50323bf     	autiasp
   1d480: d65f03c0     	ret
   1d484: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d488: 91000000     	add	x0, x0, #0x0
		000000000001d488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d48c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d48c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3525
   1d490: 91000021     	add	x1, x1, #0x0
		000000000001d490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3525
   1d494: 94000000     	bl	0x1d494 <syna_tcm_run_production_test+0xe8>
		000000000001d494:  R_AARCH64_CALL26	_printk
   1d498: 12801e00     	mov	w0, #-0xf1              // =-241
   1d49c: 17ffffef     	b	0x1d458 <syna_tcm_run_production_test+0xac>
   1d4a0: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d4a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1d4a4: 91000000     	add	x0, x0, #0x0
		000000000001d4a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1d4a8: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d4a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3525
   1d4ac: 91000021     	add	x1, x1, #0x0
		000000000001d4ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3525
   1d4b0: 94000000     	bl	0x1d4b0 <syna_tcm_run_production_test+0x104>
		000000000001d4b0:  R_AARCH64_CALL26	_printk
   1d4b4: 12801e00     	mov	w0, #-0xf1              // =-241
   1d4b8: 17ffffe8     	b	0x1d458 <syna_tcm_run_production_test+0xac>
   1d4bc: 394013e2     	ldrb	w2, [sp, #0x4]
   1d4c0: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d4c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d22
   1d4c4: 91000108     	add	x8, x8, #0x0
		000000000001d4c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d22
   1d4c8: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d4c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3525
   1d4cc: 91000021     	add	x1, x1, #0x0
		000000000001d4cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3525
   1d4d0: 2a0003f3     	mov	w19, w0
   1d4d4: aa0803e0     	mov	x0, x8
   1d4d8: 52800543     	mov	w3, #0x2a               // =42
   1d4dc: 94000000     	bl	0x1d4dc <syna_tcm_run_production_test+0x130>
		000000000001d4dc:  R_AARCH64_CALL26	_printk
   1d4e0: 14000008     	b	0x1d500 <syna_tcm_run_production_test+0x154>
   1d4e4: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d4e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e4a
   1d4e8: 91000108     	add	x8, x8, #0x0
		000000000001d4e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e4a
   1d4ec: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d4ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3525
   1d4f0: 91000021     	add	x1, x1, #0x0
		000000000001d4f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3525
   1d4f4: 2a0003f3     	mov	w19, w0
   1d4f8: aa0803e0     	mov	x0, x8
   1d4fc: 94000000     	bl	0x1d4fc <syna_tcm_run_production_test+0x150>
		000000000001d4fc:  R_AARCH64_CALL26	_printk
   1d500: 2a1303e0     	mov	w0, w19
   1d504: 17ffffd5     	b	0x1d458 <syna_tcm_run_production_test+0xac>
   1d508: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3525
   1d50c: 91000108     	add	x8, x8, #0x0
		000000000001d50c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3525
   1d510: b9420e95     	ldr	w21, [x20, #0x20c]
   1d514: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1d518: 91000000     	add	x0, x0, #0x0
		000000000001d518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1d51c: 2a0103f6     	mov	w22, w1
   1d520: aa0803e1     	mov	x1, x8
   1d524: 94000000     	bl	0x1d524 <syna_tcm_run_production_test+0x178>
		000000000001d524:  R_AARCH64_CALL26	_printk
   1d528: 2a1603e1     	mov	w1, w22
   1d52c: 17ffffb5     	b	0x1d400 <syna_tcm_run_production_test+0x54>
   1d530: 94000000     	bl	0x1d530 <syna_tcm_run_production_test+0x184>
		000000000001d530:  R_AARCH64_CALL26	__stack_chk_fail
