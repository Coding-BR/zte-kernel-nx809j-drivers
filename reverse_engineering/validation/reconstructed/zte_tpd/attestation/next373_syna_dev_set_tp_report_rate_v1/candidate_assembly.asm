
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a3b0 <syna_dev_set_tp_report_rate>:
    a3b0: d503233f     	paciasp
    a3b4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a3b8: f9000bf5     	str	x21, [sp, #0x10]
    a3bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a3c0: 910003fd     	mov	x29, sp
    a3c4: 2a0103f5     	mov	w21, w1
    a3c8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a3c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d57
    a3cc: 91000021     	add	x1, x1, #0x0
		000000000000a3cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d57
    a3d0: 2a0203f3     	mov	w19, w2
    a3d4: aa0003f4     	mov	x20, x0
    a3d8: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a3d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A85B
    a3dc: 91000000     	add	x0, x0, #0x0
		000000000000a3dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A85B
    a3e0: aa0103e2     	mov	x2, x1
    a3e4: 94000000     	bl	0xa3e4 <syna_dev_set_tp_report_rate+0x34>
		000000000000a3e4:  R_AARCH64_CALL26	_printk
    a3e8: b4000254     	cbz	x20, 0xa430 <syna_dev_set_tp_report_rate+0x80>
    a3ec: 71000abf     	cmp	w21, #0x2
    a3f0: 5400024b     	b.lt	0xa438 <syna_dev_set_tp_report_rate+0x88>
    a3f4: 710012bf     	cmp	w21, #0x4
    a3f8: 540004a0     	b.eq	0xa48c <syna_dev_set_tp_report_rate+0xdc>
    a3fc: 71000ebf     	cmp	w21, #0x3
    a400: 54000580     	b.eq	0xa4b0 <syna_dev_set_tp_report_rate+0x100>
    a404: 71000abf     	cmp	w21, #0x2
    a408: 540006c1     	b.ne	0xa4e0 <syna_dev_set_tp_report_rate+0x130>
    a40c: f9400280     	ldr	x0, [x20]
    a410: 52801cc1     	mov	w1, #0xe6               // =230
    a414: 52800082     	mov	w2, #0x4                // =4
    a418: 2a1303e3     	mov	w3, w19
    a41c: 94000000     	bl	0xa41c <syna_dev_set_tp_report_rate+0x6c>
		000000000000a41c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a420: 37f806e0     	tbnz	w0, #0x1f, 0xa4fc <syna_dev_set_tp_report_rate+0x14c>
    a424: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a424:  R_AARCH64_ADR_PREL_PG_HI21	unk_36F56
    a428: 91000000     	add	x0, x0, #0x0
		000000000000a428:  R_AARCH64_ADD_ABS_LO12_NC	unk_36F56
    a42c: 14000029     	b	0xa4d0 <syna_dev_set_tp_report_rate+0x120>
    a430: 128002a0     	mov	w0, #-0x16              // =-22
    a434: 14000032     	b	0xa4fc <syna_dev_set_tp_report_rate+0x14c>
    a438: 710006bf     	cmp	w21, #0x1
    a43c: 54000160     	b.eq	0xa468 <syna_dev_set_tp_report_rate+0xb8>
    a440: 35000515     	cbnz	w21, 0xa4e0 <syna_dev_set_tp_report_rate+0x130>
    a444: f9400280     	ldr	x0, [x20]
    a448: 52801cc1     	mov	w1, #0xe6               // =230
    a44c: 2a1f03e2     	mov	w2, wzr
    a450: 2a1303e3     	mov	w3, w19
    a454: 94000000     	bl	0xa454 <syna_dev_set_tp_report_rate+0xa4>
		000000000000a454:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a458: 37f80520     	tbnz	w0, #0x1f, 0xa4fc <syna_dev_set_tp_report_rate+0x14c>
    a45c: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a45c:  R_AARCH64_ADR_PREL_PG_HI21	unk_35446
    a460: 91000000     	add	x0, x0, #0x0
		000000000000a460:  R_AARCH64_ADD_ABS_LO12_NC	unk_35446
    a464: 1400001b     	b	0xa4d0 <syna_dev_set_tp_report_rate+0x120>
    a468: f9400280     	ldr	x0, [x20]
    a46c: 52801cc1     	mov	w1, #0xe6               // =230
    a470: 528000a2     	mov	w2, #0x5                // =5
    a474: 2a1303e3     	mov	w3, w19
    a478: 94000000     	bl	0xa478 <syna_dev_set_tp_report_rate+0xc8>
		000000000000a478:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a47c: 37f80400     	tbnz	w0, #0x1f, 0xa4fc <syna_dev_set_tp_report_rate+0x14c>
    a480: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a480:  R_AARCH64_ADR_PREL_PG_HI21	unk_397FC
    a484: 91000000     	add	x0, x0, #0x0
		000000000000a484:  R_AARCH64_ADD_ABS_LO12_NC	unk_397FC
    a488: 14000012     	b	0xa4d0 <syna_dev_set_tp_report_rate+0x120>
    a48c: f9400280     	ldr	x0, [x20]
    a490: 52801cc1     	mov	w1, #0xe6               // =230
    a494: 52800022     	mov	w2, #0x1                // =1
    a498: 2a1303e3     	mov	w3, w19
    a49c: 94000000     	bl	0xa49c <syna_dev_set_tp_report_rate+0xec>
		000000000000a49c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a4a0: 37f802e0     	tbnz	w0, #0x1f, 0xa4fc <syna_dev_set_tp_report_rate+0x14c>
    a4a4: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a4a4:  R_AARCH64_ADR_PREL_PG_HI21	unk_38139
    a4a8: 91000000     	add	x0, x0, #0x0
		000000000000a4a8:  R_AARCH64_ADD_ABS_LO12_NC	unk_38139
    a4ac: 14000009     	b	0xa4d0 <syna_dev_set_tp_report_rate+0x120>
    a4b0: f9400280     	ldr	x0, [x20]
    a4b4: 52801cc1     	mov	w1, #0xe6               // =230
    a4b8: 52800062     	mov	w2, #0x3                // =3
    a4bc: 2a1303e3     	mov	w3, w19
    a4c0: 94000000     	bl	0xa4c0 <syna_dev_set_tp_report_rate+0x110>
		000000000000a4c0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a4c4: 37f801c0     	tbnz	w0, #0x1f, 0xa4fc <syna_dev_set_tp_report_rate+0x14c>
    a4c8: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a4c8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33B9F
    a4cc: 91000000     	add	x0, x0, #0x0
		000000000000a4cc:  R_AARCH64_ADD_ABS_LO12_NC	unk_33B9F
    a4d0: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d57
    a4d4: 91000021     	add	x1, x1, #0x0
		000000000000a4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d57
    a4d8: 94000000     	bl	0xa4d8 <syna_dev_set_tp_report_rate+0x128>
		000000000000a4d8:  R_AARCH64_CALL26	_printk
    a4dc: 14000007     	b	0xa4f8 <syna_dev_set_tp_report_rate+0x148>
    a4e0: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a4e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d57
    a4e4: 91000021     	add	x1, x1, #0x0
		000000000000a4e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d57
    a4e8: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a4e8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BDBF
    a4ec: 91000000     	add	x0, x0, #0x0
		000000000000a4ec:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BDBF
    a4f0: aa0103e2     	mov	x2, x1
    a4f4: 94000000     	bl	0xa4f4 <syna_dev_set_tp_report_rate+0x144>
		000000000000a4f4:  R_AARCH64_CALL26	_printk
    a4f8: 2a1f03e0     	mov	w0, wzr
    a4fc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a500: f9400bf5     	ldr	x21, [sp, #0x10]
    a504: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a508: d50323bf     	autiasp
    a50c: d65f03c0     	ret
