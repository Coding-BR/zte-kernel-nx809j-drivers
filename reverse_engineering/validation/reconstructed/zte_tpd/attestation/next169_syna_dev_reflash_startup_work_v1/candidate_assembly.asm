
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009378 <syna_dev_reflash_startup_work>:
    9378: d503233f     	paciasp
    937c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9380: a90157f6     	stp	x22, x21, [sp, #0x10]
    9384: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9388: 910003fd     	mov	x29, sp
    938c: aa0003f3     	mov	x19, x0
    9390: 91070000     	add	x0, x0, #0x1c0
    9394: 52801f41     	mov	w1, #0xfa               // =250
    9398: 94000000     	bl	0x9398 <syna_dev_reflash_startup_work+0x20>
		0000000000009398:  R_AARCH64_CALL26	wait_for_completion_timeout
    939c: 3946ee68     	ldrb	w8, [x19, #0x1bb]
    93a0: 36000248     	tbz	w8, #0x0, 0x93e8 <syna_dev_reflash_startup_work+0x70>
    93a4: d10f0276     	sub	x22, x19, #0x3c0
    93a8: d10f2274     	sub	x20, x19, #0x3c8
    93ac: f94002c8     	ldr	x8, [x22]
    93b0: 91004100     	add	x0, x8, #0x10
    93b4: 94000000     	bl	0x93b4 <syna_dev_reflash_startup_work+0x3c>
		00000000000093b4:  R_AARCH64_CALL26	pm_stay_awake
    93b8: aa1403e0     	mov	x0, x20
    93bc: 2a1f03e1     	mov	w1, wzr
    93c0: 94000000     	bl	0x93c0 <syna_dev_reflash_startup_work+0x48>
		00000000000093c0:  R_AARCH64_CALL26	syna_dev_do_reflash
    93c4: 36f801e0     	tbz	w0, #0x1f, 0x9400 <syna_dev_reflash_startup_work+0x88>
    93c8: f94002c8     	ldr	x8, [x22]
    93cc: 91004100     	add	x0, x8, #0x10
    93d0: 94000000     	bl	0x93d0 <syna_dev_reflash_startup_work+0x58>
		00000000000093d0:  R_AARCH64_CALL26	pm_relax
    93d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    93d8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    93dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    93e0: d50323bf     	autiasp
    93e4: d65f03c0     	ret
    93e8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000093e8:  R_AARCH64_ADR_PREL_PG_HI21	unk_36640
    93ec: 91000000     	add	x0, x0, #0x0
		00000000000093ec:  R_AARCH64_ADD_ABS_LO12_NC	unk_36640
    93f0: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		00000000000093f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    93f4: 91000021     	add	x1, x1, #0x0
		00000000000093f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    93f8: 94000000     	bl	0x93f8 <syna_dev_reflash_startup_work+0x80>
		00000000000093f8:  R_AARCH64_CALL26	_printk
    93fc: 17fffff6     	b	0x93d4 <syna_dev_reflash_startup_work+0x5c>
    9400: aa1403e0     	mov	x0, x20
    9404: 94000000     	bl	0x9404 <syna_dev_reflash_startup_work+0x8c>
		0000000000009404:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
    9408: 37f803e0     	tbnz	w0, #0x1f, 0x9484 <syna_dev_reflash_startup_work+0x10c>
    940c: aa1403e0     	mov	x0, x20
    9410: 94000000     	bl	0x9410 <syna_dev_reflash_startup_work+0x98>
		0000000000009410:  R_AARCH64_CALL26	syna_dev_set_up_input_device
    9414: 37f803e0     	tbnz	w0, #0x1f, 0x9490 <syna_dev_reflash_startup_work+0x118>
    9418: 90000015     	adrp	x21, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    941c: 910002b5     	add	x21, x21, #0x0
		000000000000941c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    9420: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009420:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C4B0
    9424: 91000000     	add	x0, x0, #0x0
		0000000000009424:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C4B0
    9428: aa1503e1     	mov	x1, x21
    942c: 94000000     	bl	0x942c <syna_dev_reflash_startup_work+0xb4>
		000000000000942c:  R_AARCH64_CALL26	_printk
    9430: aa1403e0     	mov	x0, x20
    9434: 94000000     	bl	0x9434 <syna_dev_reflash_startup_work+0xbc>
		0000000000009434:  R_AARCH64_CALL26	syna_tpd_register_fw_class
    9438: aa1403e0     	mov	x0, x20
    943c: 2a1f03e1     	mov	w1, wzr
    9440: 94000000     	bl	0x9440 <syna_dev_reflash_startup_work+0xc8>
		0000000000009440:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
    9444: 2a0003e2     	mov	w2, w0
    9448: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009448:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BEE4
    944c: 91000000     	add	x0, x0, #0x0
		000000000000944c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BEE4
    9450: aa1503e1     	mov	x1, x21
    9454: 94000000     	bl	0x9454 <syna_dev_reflash_startup_work+0xdc>
		0000000000009454:  R_AARCH64_CALL26	_printk
    9458: b9423261     	ldr	w1, [x19, #0x230]
    945c: aa1403e0     	mov	x0, x20
    9460: 2a1f03e2     	mov	w2, wzr
    9464: 94000000     	bl	0x9464 <syna_dev_reflash_startup_work+0xec>
		0000000000009464:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    9468: b9423262     	ldr	w2, [x19, #0x230]
    946c: 2a0003e3     	mov	w3, w0
    9470: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009470:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A2DA
    9474: 91000000     	add	x0, x0, #0x0
		0000000000009474:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A2DA
    9478: aa1503e1     	mov	x1, x21
    947c: 94000000     	bl	0x947c <syna_dev_reflash_startup_work+0x104>
		000000000000947c:  R_AARCH64_CALL26	_printk
    9480: 17ffffd2     	b	0x93c8 <syna_dev_reflash_startup_work+0x50>
    9484: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009484:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B114
    9488: 91000000     	add	x0, x0, #0x0
		0000000000009488:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B114
    948c: 14000003     	b	0x9498 <syna_dev_reflash_startup_work+0x120>
    9490: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009490:  R_AARCH64_ADR_PREL_PG_HI21	unk_375F8
    9494: 91000000     	add	x0, x0, #0x0
		0000000000009494:  R_AARCH64_ADD_ABS_LO12_NC	unk_375F8
    9498: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x2a0>
		0000000000009498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    949c: 91000021     	add	x1, x1, #0x0
		000000000000949c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    94a0: 94000000     	bl	0x94a0 <syna_dev_reflash_startup_work+0x128>
		00000000000094a0:  R_AARCH64_CALL26	_printk
    94a4: 17ffffc9     	b	0x93c8 <syna_dev_reflash_startup_work+0x50>
