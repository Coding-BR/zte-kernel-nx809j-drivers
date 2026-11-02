
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000299d8 <syna_dev_reflash_startup_work>:
   299d8: d503233f     	paciasp
   299dc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   299e0: a90157f6     	stp	x22, x21, [sp, #0x10]
   299e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   299e8: 910003fd     	mov	x29, sp
   299ec: aa0003f3     	mov	x19, x0
   299f0: 91070000     	add	x0, x0, #0x1c0
   299f4: 52801f41     	mov	w1, #0xfa               // =250
   299f8: 94000000     	bl	0x299f8 <syna_dev_reflash_startup_work+0x20>
		00000000000299f8:  R_AARCH64_CALL26	wait_for_completion_timeout
   299fc: 3946ee68     	ldrb	w8, [x19, #0x1bb]
   29a00: 36000248     	tbz	w8, #0x0, 0x29a48 <syna_dev_reflash_startup_work+0x70>
   29a04: d10f0276     	sub	x22, x19, #0x3c0
   29a08: d10f2274     	sub	x20, x19, #0x3c8
   29a0c: f94002c8     	ldr	x8, [x22]
   29a10: 91004100     	add	x0, x8, #0x10
   29a14: 94000000     	bl	0x29a14 <syna_dev_reflash_startup_work+0x3c>
		0000000000029a14:  R_AARCH64_CALL26	pm_stay_awake
   29a18: aa1403e0     	mov	x0, x20
   29a1c: 2a1f03e1     	mov	w1, wzr
   29a20: 94000000     	bl	0x29a20 <syna_dev_reflash_startup_work+0x48>
		0000000000029a20:  R_AARCH64_CALL26	syna_dev_do_reflash
   29a24: 36f801e0     	tbz	w0, #0x1f, 0x29a60 <syna_dev_reflash_startup_work+0x88>
   29a28: f94002c8     	ldr	x8, [x22]
   29a2c: 91004100     	add	x0, x8, #0x10
   29a30: 94000000     	bl	0x29a30 <syna_dev_reflash_startup_work+0x58>
		0000000000029a30:  R_AARCH64_CALL26	pm_relax
   29a34: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   29a38: a94157f6     	ldp	x22, x21, [sp, #0x10]
   29a3c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   29a40: d50323bf     	autiasp
   29a44: d65f03c0     	ret
   29a48: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b55
   29a4c: 91000000     	add	x0, x0, #0x0
		0000000000029a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b55
   29a50: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c0
   29a54: 91000021     	add	x1, x1, #0x0
		0000000000029a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c0
   29a58: 94000000     	bl	0x29a58 <syna_dev_reflash_startup_work+0x80>
		0000000000029a58:  R_AARCH64_CALL26	_printk
   29a5c: 17fffff6     	b	0x29a34 <syna_dev_reflash_startup_work+0x5c>
   29a60: aa1403e0     	mov	x0, x20
   29a64: 97fffc31     	bl	0x28b28 <syna_cdev_release+0x54>
		0000000000029a64:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
   29a68: 36f80080     	tbz	w0, #0x1f, 0x29a78 <syna_dev_reflash_startup_work+0xa0>
   29a6c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be21
   29a70: 91000000     	add	x0, x0, #0x0
		0000000000029a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be21
   29a74: 14000006     	b	0x29a8c <syna_dev_reflash_startup_work+0xb4>
   29a78: aa1403e0     	mov	x0, x20
   29a7c: 97fffeb8     	bl	0x2955c <syna_cdev_process_reports+0x1d8>
		0000000000029a7c:  R_AARCH64_CALL26	syna_dev_set_up_input_device
   29a80: 36f800e0     	tbz	w0, #0x1f, 0x29a9c <syna_dev_reflash_startup_work+0xc4>
   29a84: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a11f
   29a88: 91000000     	add	x0, x0, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a11f
   29a8c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c0
   29a90: 91000021     	add	x1, x1, #0x0
		0000000000029a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c0
   29a94: 94000000     	bl	0x29a94 <syna_dev_reflash_startup_work+0xbc>
		0000000000029a94:  R_AARCH64_CALL26	_printk
   29a98: 17ffffe4     	b	0x29a28 <syna_dev_reflash_startup_work+0x50>
   29a9c: 90000015     	adrp	x21, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c0
   29aa0: 910002b5     	add	x21, x21, #0x0
		0000000000029aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c0
   29aa4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c594
   29aa8: 91000000     	add	x0, x0, #0x0
		0000000000029aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c594
   29aac: aa1503e1     	mov	x1, x21
   29ab0: 94000000     	bl	0x29ab0 <syna_dev_reflash_startup_work+0xd8>
		0000000000029ab0:  R_AARCH64_CALL26	_printk
   29ab4: aa1403e0     	mov	x0, x20
   29ab8: 94000000     	bl	0x29ab8 <syna_dev_reflash_startup_work+0xe0>
		0000000000029ab8:  R_AARCH64_CALL26	syna_tpd_register_fw_class
   29abc: aa1403e0     	mov	x0, x20
   29ac0: 2a1f03e1     	mov	w1, wzr
   29ac4: 94000000     	bl	0x29ac4 <syna_dev_reflash_startup_work+0xec>
		0000000000029ac4:  R_AARCH64_CALL26	syna_dev_set_screen_on_fp_mode
   29ac8: 2a0003e2     	mov	w2, w0
   29acc: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c36e
   29ad0: 91000000     	add	x0, x0, #0x0
		0000000000029ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c36e
   29ad4: aa1503e1     	mov	x1, x21
   29ad8: 94000000     	bl	0x29ad8 <syna_dev_reflash_startup_work+0x100>
		0000000000029ad8:  R_AARCH64_CALL26	_printk
   29adc: b9423261     	ldr	w1, [x19, #0x230]
   29ae0: aa1403e0     	mov	x0, x20
   29ae4: 2a1f03e2     	mov	w2, wzr
   29ae8: 94000000     	bl	0x29ae8 <syna_dev_reflash_startup_work+0x110>
		0000000000029ae8:  R_AARCH64_CALL26	syna_dev_set_tp_report_rate
   29aec: b9423262     	ldr	w2, [x19, #0x230]
   29af0: 2a0003e3     	mov	w3, w0
   29af4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctl_raw_write+0x34>
		0000000000029af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8cd
   29af8: 91000000     	add	x0, x0, #0x0
		0000000000029af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8cd
   29afc: aa1503e1     	mov	x1, x21
   29b00: 94000000     	bl	0x29b00 <syna_dev_reflash_startup_work+0x128>
		0000000000029b00:  R_AARCH64_CALL26	_printk
   29b04: 17ffffc9     	b	0x29a28 <syna_dev_reflash_startup_work+0x50>
