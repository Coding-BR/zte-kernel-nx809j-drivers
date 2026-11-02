
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e8d4 <syna_dev_reflash_startup_work>:
   1e8d4: d503233f     	paciasp
   1e8d8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1e8dc: a90157f6     	stp	x22, x21, [sp, #0x10]
   1e8e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1e8e4: 910003fd     	mov	x29, sp
   1e8e8: aa0003f3     	mov	x19, x0
   1e8ec: 91070000     	add	x0, x0, #0x1c0
   1e8f0: 52801f41     	mov	w1, #0xfa               // =250
   1e8f4: 94000000     	bl	0x1e8f4 <syna_dev_reflash_startup_work+0x20>
		000000000001e8f4:  R_AARCH64_CALL26	wait_for_completion_timeout
   1e8f8: 3946ee68     	ldrb	w8, [x19, #0x1bb]
   1e8fc: 36000248     	tbz	w8, #0x0, 0x1e944 <syna_dev_reflash_startup_work+0x70>
   1e900: d10f0276     	sub	x22, x19, #0x3c0
   1e904: d10f2274     	sub	x20, x19, #0x3c8
   1e908: f94002c8     	ldr	x8, [x22]
   1e90c: 91004100     	add	x0, x8, #0x10
   1e910: 94000000     	bl	0x1e910 <syna_dev_reflash_startup_work+0x3c>
		000000000001e910:  R_AARCH64_CALL26	pm_stay_awake
   1e914: aa1403e0     	mov	x0, x20
   1e918: 2a1f03e1     	mov	w1, wzr
   1e91c: 94000000     	bl	0x1e91c <syna_dev_reflash_startup_work+0x48>
		000000000001e91c:  R_AARCH64_CALL26	syna_dev_do_reflash
   1e920: 36f801e0     	tbz	w0, #0x1f, 0x1e95c <syna_dev_reflash_startup_work+0x88>
   1e924: f94002c8     	ldr	x8, [x22]
   1e928: 91004100     	add	x0, x8, #0x10
   1e92c: 94000000     	bl	0x1e92c <syna_dev_reflash_startup_work+0x58>
		000000000001e92c:  R_AARCH64_CALL26	pm_relax
   1e930: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1e934: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1e938: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1e93c: d50323bf     	autiasp
   1e940: d65f03c0     	ret
   1e944: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19859
   1e948: 91000000     	add	x0, x0, #0x0
		000000000001e948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19859
   1e94c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e94c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18532
   1e950: 91000021     	add	x1, x1, #0x0
		000000000001e950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18532
   1e954: 94000000     	bl	0x1e954 <syna_dev_reflash_startup_work+0x80>
		000000000001e954:  R_AARCH64_CALL26	_printk
   1e958: 17fffff6     	b	0x1e930 <syna_dev_reflash_startup_work+0x5c>
   1e95c: aa1403e0     	mov	x0, x20
   1e960: 97fffc31     	bl	0x1da24 <syna_cdev_release+0x54>
		000000000001e960:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
   1e964: 36f80080     	tbz	w0, #0x1f, 0x1e974 <syna_dev_reflash_startup_work+0xa0>
   1e968: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1baa7
   1e96c: 91000000     	add	x0, x0, #0x0
		000000000001e96c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1baa7
   1e970: 14000006     	b	0x1e988 <syna_dev_reflash_startup_work+0xb4>
   1e974: aa1403e0     	mov	x0, x20
   1e978: 97fffeb8     	bl	0x1e458 <syna_cdev_process_reports+0x1d8>
		000000000001e978:  R_AARCH64_CALL26	syna_dev_set_up_input_device
   1e97c: 36f800e0     	tbz	w0, #0x1f, 0x1e998 <syna_dev_reflash_startup_work+0xc4>
   1e980: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dbe
   1e984: 91000000     	add	x0, x0, #0x0
		000000000001e984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dbe
   1e988: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18532
   1e98c: 91000021     	add	x1, x1, #0x0
		000000000001e98c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18532
   1e990: 94000000     	bl	0x1e990 <syna_dev_reflash_startup_work+0xbc>
		000000000001e990:  R_AARCH64_CALL26	_printk
   1e994: 17ffffe4     	b	0x1e924 <syna_dev_reflash_startup_work+0x50>
   1e998: 90000015     	adrp	x21, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18532
   1e99c: 910002b5     	add	x21, x21, #0x0
		000000000001e99c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18532
   1e9a0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e9a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c2c4
   1e9a4: 91000000     	add	x0, x0, #0x0
		000000000001e9a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c2c4
   1e9a8: aa1503e1     	mov	x1, x21
   1e9ac: 94000000     	bl	0x1e9ac <syna_dev_reflash_startup_work+0xd8>
		000000000001e9ac:  R_AARCH64_CALL26	_printk
   1e9b0: aa1403e0     	mov	x0, x20
   1e9b4: 94000000     	bl	0x1e9b4 <syna_dev_reflash_startup_work+0xe0>
		000000000001e9b4:  R_AARCH64_CALL26	syna_tpd_register_fw_class
   1e9b8: aa1403e0     	mov	x0, x20
   1e9bc: 2a1f03e1     	mov	w1, wzr
   1e9c0: 94000000     	bl	0x1e9c0 <syna_dev_reflash_startup_work+0xec>
		000000000001e9c0:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
   1e9c4: 2a0003e2     	mov	w2, w0
   1e9c8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e9c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0a1
   1e9cc: 91000000     	add	x0, x0, #0x0
		000000000001e9cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0a1
   1e9d0: aa1503e1     	mov	x1, x21
   1e9d4: 94000000     	bl	0x1e9d4 <syna_dev_reflash_startup_work+0x100>
		000000000001e9d4:  R_AARCH64_CALL26	_printk
   1e9d8: b9423261     	ldr	w1, [x19, #0x230]
   1e9dc: aa1403e0     	mov	x0, x20
   1e9e0: 2a1f03e2     	mov	w2, wzr
   1e9e4: 94000000     	bl	0x1e9e4 <syna_dev_reflash_startup_work+0x110>
		000000000001e9e4:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   1e9e8: b9423262     	ldr	w2, [x19, #0x230]
   1e9ec: 2a0003e3     	mov	w3, w0
   1e9f0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e9f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b45b
   1e9f4: 91000000     	add	x0, x0, #0x0
		000000000001e9f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b45b
   1e9f8: aa1503e1     	mov	x1, x21
   1e9fc: 94000000     	bl	0x1e9fc <syna_dev_reflash_startup_work+0x128>
		000000000001e9fc:  R_AARCH64_CALL26	_printk
   1ea00: 17ffffc9     	b	0x1e924 <syna_dev_reflash_startup_work+0x50>
