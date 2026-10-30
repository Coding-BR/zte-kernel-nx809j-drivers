
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d2b8 <syna_dev_reflash_startup_work>:
    d2b8: d503233f     	paciasp
    d2bc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    d2c0: a90157f6     	stp	x22, x21, [sp, #0x10]
    d2c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d2c8: 910003fd     	mov	x29, sp
    d2cc: aa0003f3     	mov	x19, x0
    d2d0: 91070000     	add	x0, x0, #0x1c0
    d2d4: 52801f41     	mov	w1, #0xfa               // =250
    d2d8: 94000000     	bl	0xd2d8 <syna_dev_reflash_startup_work+0x20>
		000000000000d2d8:  R_AARCH64_CALL26	wait_for_completion_timeout
    d2dc: 3946ee68     	ldrb	w8, [x19, #0x1bb]
    d2e0: 36000248     	tbz	w8, #0x0, 0xd328 <syna_dev_reflash_startup_work+0x70>
    d2e4: d10f0276     	sub	x22, x19, #0x3c0
    d2e8: d10f2274     	sub	x20, x19, #0x3c8
    d2ec: f94002c8     	ldr	x8, [x22]
    d2f0: 91004100     	add	x0, x8, #0x10
    d2f4: 94000000     	bl	0xd2f4 <syna_dev_reflash_startup_work+0x3c>
		000000000000d2f4:  R_AARCH64_CALL26	pm_stay_awake
    d2f8: aa1403e0     	mov	x0, x20
    d2fc: 2a1f03e1     	mov	w1, wzr
    d300: 94000000     	bl	0xd300 <syna_dev_reflash_startup_work+0x48>
		000000000000d300:  R_AARCH64_CALL26	syna_dev_do_reflash
    d304: 36f801e0     	tbz	w0, #0x1f, 0xd340 <syna_dev_reflash_startup_work+0x88>
    d308: f94002c8     	ldr	x8, [x22]
    d30c: 91004100     	add	x0, x8, #0x10
    d310: 94000000     	bl	0xd310 <syna_dev_reflash_startup_work+0x58>
		000000000000d310:  R_AARCH64_CALL26	pm_relax
    d314: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d318: a94157f6     	ldp	x22, x21, [sp, #0x10]
    d31c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d320: d50323bf     	autiasp
    d324: d65f03c0     	ret
    d328: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51de
    d32c: 91000000     	add	x0, x0, #0x0
		000000000000d32c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51de
    d330: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264a
    d334: 91000021     	add	x1, x1, #0x0
		000000000000d334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264a
    d338: 94000000     	bl	0xd338 <syna_dev_reflash_startup_work+0x80>
		000000000000d338:  R_AARCH64_CALL26	_printk
    d33c: 17fffff6     	b	0xd314 <syna_dev_reflash_startup_work+0x5c>
    d340: aa1403e0     	mov	x0, x20
    d344: 97fffc31     	bl	0xc408 <syna_dev_set_up_app_fw>
    d348: 36f80080     	tbz	w0, #0x1f, 0xd358 <syna_dev_reflash_startup_work+0xa0>
    d34c: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d34c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f4d
    d350: 91000000     	add	x0, x0, #0x0
		000000000000d350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f4d
    d354: 14000006     	b	0xd36c <syna_dev_reflash_startup_work+0xb4>
    d358: aa1403e0     	mov	x0, x20
    d35c: 97fffeb8     	bl	0xce3c <syna_dev_set_up_input_device>
    d360: 36f800e0     	tbz	w0, #0x1f, 0xd37c <syna_dev_reflash_startup_work+0xc4>
    d364: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6210
    d368: 91000000     	add	x0, x0, #0x0
		000000000000d368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6210
    d36c: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d36c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264a
    d370: 91000021     	add	x1, x1, #0x0
		000000000000d370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264a
    d374: 94000000     	bl	0xd374 <syna_dev_reflash_startup_work+0xbc>
		000000000000d374:  R_AARCH64_CALL26	_printk
    d378: 17ffffe4     	b	0xd308 <syna_dev_reflash_startup_work+0x50>
    d37c: 90000015     	adrp	x21, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d37c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264a
    d380: 910002b5     	add	x21, x21, #0x0
		000000000000d380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264a
    d384: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb39f
    d388: 91000000     	add	x0, x0, #0x0
		000000000000d388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb39f
    d38c: aa1503e1     	mov	x1, x21
    d390: 94000000     	bl	0xd390 <syna_dev_reflash_startup_work+0xd8>
		000000000000d390:  R_AARCH64_CALL26	_printk
    d394: aa1403e0     	mov	x0, x20
    d398: 94000000     	bl	0xd398 <syna_dev_reflash_startup_work+0xe0>
		000000000000d398:  R_AARCH64_CALL26	syna_tpd_register_fw_class
    d39c: aa1403e0     	mov	x0, x20
    d3a0: 2a1f03e1     	mov	w1, wzr
    d3a4: 94000000     	bl	0xd3a4 <syna_dev_reflash_startup_work+0xec>
		000000000000d3a4:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
    d3a8: 2a0003e2     	mov	w2, w0
    d3ac: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d3ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xadd3
    d3b0: 91000000     	add	x0, x0, #0x0
		000000000000d3b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xadd3
    d3b4: aa1503e1     	mov	x1, x21
    d3b8: 94000000     	bl	0xd3b8 <syna_dev_reflash_startup_work+0x100>
		000000000000d3b8:  R_AARCH64_CALL26	_printk
    d3bc: b9423261     	ldr	w1, [x19, #0x230]
    d3c0: aa1403e0     	mov	x0, x20
    d3c4: 2a1f03e2     	mov	w2, wzr
    d3c8: 94000000     	bl	0xd3c8 <syna_dev_reflash_startup_work+0x110>
		000000000000d3c8:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
    d3cc: b9423262     	ldr	w2, [x19, #0x230]
    d3d0: 2a0003e3     	mov	w3, w0
    d3d4: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000d3d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x90b1
    d3d8: 91000000     	add	x0, x0, #0x0
		000000000000d3d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x90b1
    d3dc: aa1503e1     	mov	x1, x21
    d3e0: 94000000     	bl	0xd3e0 <syna_dev_reflash_startup_work+0x128>
		000000000000d3e0:  R_AARCH64_CALL26	_printk
    d3e4: 17ffffc9     	b	0xd308 <syna_dev_reflash_startup_work+0x50>
