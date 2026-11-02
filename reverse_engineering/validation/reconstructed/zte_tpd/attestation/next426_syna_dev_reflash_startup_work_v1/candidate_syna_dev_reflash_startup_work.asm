
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009390 <syna_dev_reflash_startup_work>:
    9390: d503233f     	paciasp
    9394: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9398: a90157f6     	stp	x22, x21, [sp, #0x10]
    939c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    93a0: 910003fd     	mov	x29, sp
    93a4: aa0003f3     	mov	x19, x0
    93a8: 91070000     	add	x0, x0, #0x1c0
    93ac: 52801f41     	mov	w1, #0xfa               // =250
    93b0: 94000000     	bl	0x93b0 <syna_dev_reflash_startup_work+0x20>
		00000000000093b0:  R_AARCH64_CALL26	wait_for_completion_timeout
    93b4: 3946ee68     	ldrb	w8, [x19, #0x1bb]
    93b8: 36000248     	tbz	w8, #0x0, 0x9400 <syna_dev_reflash_startup_work+0x70>
    93bc: d10f0276     	sub	x22, x19, #0x3c0
    93c0: f94002c8     	ldr	x8, [x22]
    93c4: 91004100     	add	x0, x8, #0x10
    93c8: 94000000     	bl	0x93c8 <syna_dev_reflash_startup_work+0x38>
		00000000000093c8:  R_AARCH64_CALL26	pm_stay_awake
    93cc: d10f2274     	sub	x20, x19, #0x3c8
    93d0: 2a1f03e1     	mov	w1, wzr
    93d4: aa1403e0     	mov	x0, x20
    93d8: 94000000     	bl	0x93d8 <syna_dev_reflash_startup_work+0x48>
		00000000000093d8:  R_AARCH64_CALL26	syna_dev_do_reflash
    93dc: 36f801e0     	tbz	w0, #0x1f, 0x9418 <syna_dev_reflash_startup_work+0x88>
    93e0: f94002c8     	ldr	x8, [x22]
    93e4: 91004100     	add	x0, x8, #0x10
    93e8: 94000000     	bl	0x93e8 <syna_dev_reflash_startup_work+0x58>
		00000000000093e8:  R_AARCH64_CALL26	pm_relax
    93ec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    93f0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    93f4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    93f8: d50323bf     	autiasp
    93fc: d65f03c0     	ret
    9400: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009400:  R_AARCH64_ADR_PREL_PG_HI21	unk_36640
    9404: 91000000     	add	x0, x0, #0x0
		0000000000009404:  R_AARCH64_ADD_ABS_LO12_NC	unk_36640
    9408: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    940c: 91000021     	add	x1, x1, #0x0
		000000000000940c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    9410: 94000000     	bl	0x9410 <syna_dev_reflash_startup_work+0x80>
		0000000000009410:  R_AARCH64_CALL26	_printk
    9414: 17fffff6     	b	0x93ec <syna_dev_reflash_startup_work+0x5c>
    9418: aa1403e0     	mov	x0, x20
    941c: 94000000     	bl	0x941c <syna_dev_reflash_startup_work+0x8c>
		000000000000941c:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
    9420: 37f803e0     	tbnz	w0, #0x1f, 0x949c <syna_dev_reflash_startup_work+0x10c>
    9424: aa1403e0     	mov	x0, x20
    9428: 94000000     	bl	0x9428 <syna_dev_reflash_startup_work+0x98>
		0000000000009428:  R_AARCH64_CALL26	syna_dev_set_up_input_device
    942c: 37f803e0     	tbnz	w0, #0x1f, 0x94a8 <syna_dev_reflash_startup_work+0x118>
    9430: 90000015     	adrp	x21, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    9434: 910002b5     	add	x21, x21, #0x0
		0000000000009434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    9438: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009438:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C4B0
    943c: 91000000     	add	x0, x0, #0x0
		000000000000943c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C4B0
    9440: aa1503e1     	mov	x1, x21
    9444: 94000000     	bl	0x9444 <syna_dev_reflash_startup_work+0xb4>
		0000000000009444:  R_AARCH64_CALL26	_printk
    9448: aa1403e0     	mov	x0, x20
    944c: 94000000     	bl	0x944c <syna_dev_reflash_startup_work+0xbc>
		000000000000944c:  R_AARCH64_CALL26	syna_tpd_register_fw_class
    9450: aa1403e0     	mov	x0, x20
    9454: 2a1f03e1     	mov	w1, wzr
    9458: 94000000     	bl	0x9458 <syna_dev_reflash_startup_work+0xc8>
		0000000000009458:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
    945c: 2a0003e2     	mov	w2, w0
    9460: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009460:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BEE4
    9464: 91000000     	add	x0, x0, #0x0
		0000000000009464:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BEE4
    9468: aa1503e1     	mov	x1, x21
    946c: 94000000     	bl	0x946c <syna_dev_reflash_startup_work+0xdc>
		000000000000946c:  R_AARCH64_CALL26	_printk
    9470: b9423261     	ldr	w1, [x19, #0x230]
    9474: aa1403e0     	mov	x0, x20
    9478: 2a1f03e2     	mov	w2, wzr
    947c: 94000000     	bl	0x947c <syna_dev_reflash_startup_work+0xec>
		000000000000947c:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    9480: b9423262     	ldr	w2, [x19, #0x230]
    9484: 2a0003e3     	mov	w3, w0
    9488: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		0000000000009488:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A2DA
    948c: 91000000     	add	x0, x0, #0x0
		000000000000948c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A2DA
    9490: aa1503e1     	mov	x1, x21
    9494: 94000000     	bl	0x9494 <syna_dev_reflash_startup_work+0x104>
		0000000000009494:  R_AARCH64_CALL26	_printk
    9498: 17ffffd2     	b	0x93e0 <syna_dev_reflash_startup_work+0x50>
    949c: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		000000000000949c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B114
    94a0: 91000000     	add	x0, x0, #0x0
		00000000000094a0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B114
    94a4: 14000003     	b	0x94b0 <syna_dev_reflash_startup_work+0x120>
    94a8: 90000000     	adrp	x0, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000094a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_375F8
    94ac: 91000000     	add	x0, x0, #0x0
		00000000000094ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_375F8
    94b0: 90000001     	adrp	x1, 0x9000 <syna_dev_process_touch_report+0x28c>
		00000000000094b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    94b4: 91000021     	add	x1, x1, #0x0
		00000000000094b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    94b8: 94000000     	bl	0x94b8 <syna_dev_reflash_startup_work+0x128>
		00000000000094b8:  R_AARCH64_CALL26	_printk
    94bc: 17ffffc9     	b	0x93e0 <syna_dev_reflash_startup_work+0x50>
