
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007ab0 <syna_dev_connect>:
    7ab0: d503233f     	paciasp
    7ab4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    7ab8: a90157f6     	stp	x22, x21, [sp, #0x10]
    7abc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7ac0: 910003fd     	mov	x29, sp
    7ac4: f9400014     	ldr	x20, [x0]
    7ac8: b4000334     	cbz	x20, 0x7b2c <syna_dev_connect+0x7c>
    7acc: 39560808     	ldrb	w8, [x0, #0x582]
    7ad0: aa0003f3     	mov	x19, x0
    7ad4: 7100051f     	cmp	w8, #0x1
    7ad8: 54000380     	b.eq	0x7b48 <syna_dev_connect+0x98>
    7adc: f9413a75     	ldr	x21, [x19, #0x270]
    7ae0: f940c2a8     	ldr	x8, [x21, #0x180]
    7ae4: b40004c8     	cbz	x8, 0x7b7c <syna_dev_connect+0xcc>
    7ae8: aa1503e0     	mov	x0, x21
    7aec: 52800021     	mov	w1, #0x1                // =1
    7af0: b85fc110     	ldur	w16, [x8, #-0x4]
    7af4: 72894471     	movk	w17, #0x4a23
    7af8: 72ae9ab1     	movk	w17, #0x74d5, lsl #16
    7afc: 6b11021f     	cmp	w16, w17
    7b00: 54000040     	b.eq	0x7b08 <syna_dev_connect+0x58>
    7b04: d4304500     	brk	#0x8228
    7b08: d63f0100     	blr	x8
    7b0c: 36f80300     	tbz	w0, #0x1f, 0x7b6c <syna_dev_connect+0xbc>
    7b10: 12800255     	mov	w21, #-0x13             // =-19
    7b14: 2a1503e0     	mov	w0, w21
    7b18: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7b1c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    7b20: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    7b24: d50323bf     	autiasp
    7b28: d65f03c0     	ret
    7b2c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007b2c:  R_AARCH64_ADR_PREL_PG_HI21	unk_32430
    7b30: 91000000     	add	x0, x0, #0x0
		0000000000007b30:  R_AARCH64_ADD_ABS_LO12_NC	unk_32430
    7b34: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7b38: 91000021     	add	x1, x1, #0x0
		0000000000007b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7b3c: 94000000     	bl	0x7b3c <syna_dev_connect+0x8c>
		0000000000007b3c:  R_AARCH64_CALL26	_printk
    7b40: 128002b5     	mov	w21, #-0x16             // =-22
    7b44: 17fffff4     	b	0x7b14 <syna_dev_connect+0x64>
    7b48: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007b48:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A284
    7b4c: 91000000     	add	x0, x0, #0x0
		0000000000007b4c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A284
    7b50: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7b54: 91000021     	add	x1, x1, #0x0
		0000000000007b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7b58: 90000002     	adrp	x2, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225d
    7b5c: 91000042     	add	x2, x2, #0x0
		0000000000007b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225d
    7b60: 94000000     	bl	0x7b60 <syna_dev_connect+0xb0>
		0000000000007b60:  R_AARCH64_CALL26	_printk
    7b64: 2a1f03f5     	mov	w21, wzr
    7b68: 17ffffeb     	b	0x7b14 <syna_dev_connect+0x64>
    7b6c: b94156a0     	ldr	w0, [x21, #0x154]
    7b70: 7100041f     	cmp	w0, #0x1
    7b74: 5400004b     	b.lt	0x7b7c <syna_dev_connect+0xcc>
    7b78: 94000000     	bl	0x7b78 <syna_dev_connect+0xc8>
		0000000000007b78:  R_AARCH64_CALL26	msleep
    7b7c: f940c6a8     	ldr	x8, [x21, #0x188]
    7b80: b4000128     	cbz	x8, 0x7ba4 <syna_dev_connect+0xf4>
    7b84: aa1503e0     	mov	x0, x21
    7b88: b85fc110     	ldur	w16, [x8, #-0x4]
    7b8c: 728631d1     	movk	w17, #0x318e
    7b90: 72b73211     	movk	w17, #0xb990, lsl #16
    7b94: 6b11021f     	cmp	w16, w17
    7b98: 54000040     	b.eq	0x7ba0 <syna_dev_connect+0xf0>
    7b9c: d4304500     	brk	#0x8228
    7ba0: d63f0100     	blr	x8
    7ba4: f9400260     	ldr	x0, [x19]
    7ba8: 52800021     	mov	w1, #0x1                // =1
    7bac: 2a1f03e2     	mov	w2, wzr
    7bb0: 94000000     	bl	0x7bb0 <syna_dev_connect+0x100>
		0000000000007bb0:  R_AARCH64_CALL26	syna_tcm_detect_device
    7bb4: 37f801c0     	tbnz	w0, #0x1f, 0x7bec <syna_dev_connect+0x13c>
    7bb8: 39402682     	ldrb	w2, [x20, #0x9]
    7bbc: f100045f     	cmp	x2, #0x1
    7bc0: 54000261     	b.ne	0x7c0c <syna_dev_connect+0x15c>
    7bc4: aa1303e0     	mov	x0, x19
    7bc8: 94000000     	bl	0x7bc8 <syna_dev_connect+0x118>
		0000000000007bc8:  R_AARCH64_CALL26	syna_dev_set_up_app_fw
    7bcc: 37f80480     	tbnz	w0, #0x1f, 0x7c5c <syna_dev_connect+0x1ac>
    7bd0: aa1303e0     	mov	x0, x19
    7bd4: 94000000     	bl	0x7bd4 <syna_dev_connect+0x124>
		0000000000007bd4:  R_AARCH64_CALL26	syna_dev_set_up_input_device
    7bd8: aa0003f5     	mov	x21, x0
    7bdc: 36f80615     	tbz	w21, #0x1f, 0x7c9c <syna_dev_connect+0x1ec>
    7be0: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007be0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A2AF
    7be4: 91000000     	add	x0, x0, #0x0
		0000000000007be4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A2AF
    7be8: 14000004     	b	0x7bf8 <syna_dev_connect+0x148>
    7bec: 2a0003f5     	mov	w21, w0
    7bf0: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007bf0:  R_AARCH64_ADR_PREL_PG_HI21	unk_340F1
    7bf4: 91000000     	add	x0, x0, #0x0
		0000000000007bf4:  R_AARCH64_ADD_ABS_LO12_NC	unk_340F1
    7bf8: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7bfc: 91000021     	add	x1, x1, #0x0
		0000000000007bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7c00: aa1f03e2     	mov	x2, xzr
    7c04: 94000000     	bl	0x7c04 <syna_dev_connect+0x154>
		0000000000007c04:  R_AARCH64_CALL26	_printk
    7c08: 17ffffc3     	b	0x7b14 <syna_dev_connect+0x64>
    7c0c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c0c:  R_AARCH64_ADR_PREL_PG_HI21	unk_32EDC
    7c10: 91000000     	add	x0, x0, #0x0
		0000000000007c10:  R_AARCH64_ADD_ABS_LO12_NC	unk_32EDC
    7c14: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7c18: 91000021     	add	x1, x1, #0x0
		0000000000007c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7c1c: 94000000     	bl	0x7c1c <syna_dev_connect+0x16c>
		0000000000007c1c:  R_AARCH64_CALL26	_printk
    7c20: 39402688     	ldrb	w8, [x20, #0x9]
    7c24: 71002d1f     	cmp	w8, #0xb
    7c28: 540003a1     	b.ne	0x7c9c <syna_dev_connect+0x1ec>
    7c2c: aa1403e0     	mov	x0, x20
    7c30: aa1f03e1     	mov	x1, xzr
    7c34: 52800282     	mov	w2, #0x14               // =20
    7c38: 94000000     	bl	0x7c38 <syna_dev_connect+0x188>
		0000000000007c38:  R_AARCH64_CALL26	syna_tcm_get_boot_info
    7c3c: 37f80300     	tbnz	w0, #0x1f, 0x7c9c <syna_dev_connect+0x1ec>
    7c40: 39438682     	ldrb	w2, [x20, #0xe1]
    7c44: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c44:  R_AARCH64_ADR_PREL_PG_HI21	unk_39879
    7c48: 91000000     	add	x0, x0, #0x0
		0000000000007c48:  R_AARCH64_ADD_ABS_LO12_NC	unk_39879
    7c4c: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7c50: 91000021     	add	x1, x1, #0x0
		0000000000007c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7c54: 94000000     	bl	0x7c54 <syna_dev_connect+0x1a4>
		0000000000007c54:  R_AARCH64_CALL26	_printk
    7c58: 14000011     	b	0x7c9c <syna_dev_connect+0x1ec>
    7c5c: 90000015     	adrp	x21, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7c60: 910002b5     	add	x21, x21, #0x0
		0000000000007c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7c64: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c64:  R_AARCH64_ADR_PREL_PG_HI21	unk_392F3
    7c68: 91000000     	add	x0, x0, #0x0
		0000000000007c68:  R_AARCH64_ADD_ABS_LO12_NC	unk_392F3
    7c6c: aa1503e1     	mov	x1, x21
    7c70: aa1f03e2     	mov	x2, xzr
    7c74: 94000000     	bl	0x7c74 <syna_dev_connect+0x1c4>
		0000000000007c74:  R_AARCH64_CALL26	_printk
    7c78: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c78:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CB1F
    7c7c: 91000000     	add	x0, x0, #0x0
		0000000000007c7c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CB1F
    7c80: aa1503e1     	mov	x1, x21
    7c84: aa1f03e2     	mov	x2, xzr
    7c88: 94000000     	bl	0x7c88 <syna_dev_connect+0x1d8>
		0000000000007c88:  R_AARCH64_CALL26	_printk
    7c8c: b941ea82     	ldr	w2, [x20, #0x1e8]
    7c90: aa1403e0     	mov	x0, x20
    7c94: 52800161     	mov	w1, #0xb                // =11
    7c98: 94000000     	bl	0x7c98 <syna_dev_connect+0x1e8>
		0000000000007c98:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    7c9c: 90000002     	adrp	x2, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007c9c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_process_unexpected_reset
    7ca0: 91000042     	add	x2, x2, #0x0
		0000000000007ca0:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_process_unexpected_reset
    7ca4: aa1403e0     	mov	x0, x20
    7ca8: 52800201     	mov	w1, #0x10               // =16
    7cac: aa1303e3     	mov	x3, x19
    7cb0: 94000000     	bl	0x7cb0 <syna_dev_connect+0x200>
		0000000000007cb0:  R_AARCH64_CALL26	syna_tcm_set_report_dispatcher
    7cb4: 36f800e0     	tbz	w0, #0x1f, 0x7cd0 <syna_dev_connect+0x220>
    7cb8: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007cb8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3244F
    7cbc: 91000000     	add	x0, x0, #0x0
		0000000000007cbc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3244F
    7cc0: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7cc4: 91000021     	add	x1, x1, #0x0
		0000000000007cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7cc8: aa1f03e2     	mov	x2, xzr
    7ccc: 94000000     	bl	0x7ccc <syna_dev_connect+0x21c>
		0000000000007ccc:  R_AARCH64_CALL26	_printk
    7cd0: f9413a76     	ldr	x22, [x19, #0x270]
    7cd4: 94000000     	bl	0x7cd4 <syna_dev_connect+0x224>
		0000000000007cd4:  R_AARCH64_CALL26	syna_request_managed_device
    7cd8: b5000080     	cbnz	x0, 0x7ce8 <syna_dev_connect+0x238>
    7cdc: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007cdc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    7ce0: 91000000     	add	x0, x0, #0x0
		0000000000007ce0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    7ce4: 14000057     	b	0x7e40 <syna_dev_connect+0x390>
    7ce8: b940aac8     	ldr	w8, [x22, #0xa8]
    7cec: 37f80a68     	tbnz	w8, #0x1f, 0x7e38 <syna_dev_connect+0x388>
    7cf0: aa0003f4     	mov	x20, x0
    7cf4: 2a0803e0     	mov	w0, w8
    7cf8: 94000000     	bl	0x7cf8 <syna_dev_connect+0x248>
		0000000000007cf8:  R_AARCH64_CALL26	gpio_to_desc
    7cfc: 94000000     	bl	0x7cfc <syna_dev_connect+0x24c>
		0000000000007cfc:  R_AARCH64_CALL26	gpiod_to_irq
    7d00: f9405ac4     	ldr	x4, [x22, #0xb0]
    7d04: 2a0003e1     	mov	w1, w0
    7d08: b900bac0     	str	w0, [x22, #0xb8]
    7d0c: 90000003     	adrp	x3, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d0c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_isr
    7d10: 91000063     	add	x3, x3, #0x0
		0000000000007d10:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_isr
    7d14: 90000005     	adrp	x5, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225d
    7d18: 910000a5     	add	x5, x5, #0x0
		0000000000007d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225d
    7d1c: aa1403e0     	mov	x0, x20
    7d20: aa1f03e2     	mov	x2, xzr
    7d24: aa1303e6     	mov	x6, x19
    7d28: 94000000     	bl	0x7d28 <syna_dev_connect+0x278>
		0000000000007d28:  R_AARCH64_CALL26	devm_request_threaded_irq
    7d2c: 37f80aa0     	tbnz	w0, #0x1f, 0x7e80 <syna_dev_connect+0x3d0>
    7d30: 52800034     	mov	w20, #0x1               // =1
    7d34: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d34:  R_AARCH64_ADR_PREL_PG_HI21	unk_3601F
    7d38: 91000000     	add	x0, x0, #0x0
		0000000000007d38:  R_AARCH64_ADD_ABS_LO12_NC	unk_3601F
    7d3c: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b9
    7d40: 91000021     	add	x1, x1, #0x0
		0000000000007d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b9
    7d44: aa1f03e2     	mov	x2, xzr
    7d48: 3902f2d4     	strb	w20, [x22, #0xbc]
    7d4c: 94000000     	bl	0x7d4c <syna_dev_connect+0x29c>
		0000000000007d4c:  R_AARCH64_CALL26	_printk
    7d50: 52800141     	mov	w1, #0xa                // =10
    7d54: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d54:  R_AARCH64_ADR_PREL_PG_HI21	unk_364AC
    7d58: 91000000     	add	x0, x0, #0x0
		0000000000007d58:  R_AARCH64_ADD_ABS_LO12_NC	unk_364AC
    7d5c: 90000003     	adrp	x3, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b80
    7d60: 91000063     	add	x3, x3, #0x0
		0000000000007d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b80
    7d64: 72a000c1     	movk	w1, #0x6, lsl #16
    7d68: 52800022     	mov	w2, #0x1                // =1
    7d6c: 94000000     	bl	0x7d6c <syna_dev_connect+0x2bc>
		0000000000007d6c:  R_AARCH64_CALL26	alloc_workqueue
    7d70: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    7d74: f9021a60     	str	x0, [x19, #0x430]
    7d78: 910f4269     	add	x9, x19, #0x3d0
    7d7c: f901e668     	str	x8, [x19, #0x3c8]
    7d80: 90000008     	adrp	x8, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d80:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_reflash_startup_work
    7d84: 91000108     	add	x8, x8, #0x0
		0000000000007d84:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_reflash_startup_work
    7d88: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007d88:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    7d8c: 91000021     	add	x1, x1, #0x0
		0000000000007d8c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    7d90: 910fa260     	add	x0, x19, #0x3e8
    7d94: 52a00402     	mov	w2, #0x200000           // =2097152
    7d98: aa1f03e3     	mov	x3, xzr
    7d9c: aa1f03e4     	mov	x4, xzr
    7da0: f901ea69     	str	x9, [x19, #0x3d0]
    7da4: f901ee69     	str	x9, [x19, #0x3d8]
    7da8: f901f268     	str	x8, [x19, #0x3e0]
    7dac: 94000000     	bl	0x7dac <syna_dev_connect+0x2fc>
		0000000000007dac:  R_AARCH64_CALL26	init_timer_key
    7db0: f9421a61     	ldr	x1, [x19, #0x430]
    7db4: 910f2262     	add	x2, x19, #0x3c8
    7db8: 52800400     	mov	w0, #0x20               // =32
    7dbc: 52800643     	mov	w3, #0x32               // =50
    7dc0: 94000000     	bl	0x7dc0 <syna_dev_connect+0x310>
		0000000000007dc0:  R_AARCH64_CALL26	queue_delayed_work_on
    7dc4: f9400268     	ldr	x8, [x19]
    7dc8: b9057e74     	str	w20, [x19, #0x57c]
    7dcc: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007dcc:  R_AARCH64_ADR_PREL_PG_HI21	unk_39326
    7dd0: 91000000     	add	x0, x0, #0x0
		0000000000007dd0:  R_AARCH64_ADD_ABS_LO12_NC	unk_39326
    7dd4: 39160a74     	strb	w20, [x19, #0x582]
    7dd8: 90000014     	adrp	x20, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a25
    7ddc: 91000294     	add	x20, x20, #0x0
		0000000000007ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a25
    7de0: b9403902     	ldr	w2, [x8, #0x38]
    7de4: aa1403e1     	mov	x1, x20
    7de8: 94000000     	bl	0x7de8 <syna_dev_connect+0x338>
		0000000000007de8:  R_AARCH64_CALL26	_printk
    7dec: 90000015     	adrp	x21, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a38
    7df0: 910002b5     	add	x21, x21, #0x0
		0000000000007df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a38
    7df4: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007df4:  R_AARCH64_ADR_PREL_PG_HI21	unk_34D1D
    7df8: 91000000     	add	x0, x0, #0x0
		0000000000007df8:  R_AARCH64_ADD_ABS_LO12_NC	unk_34D1D
    7dfc: aa1403e1     	mov	x1, x20
    7e00: aa1503e2     	mov	x2, x21
    7e04: 94000000     	bl	0x7e04 <syna_dev_connect+0x354>
		0000000000007e04:  R_AARCH64_CALL26	_printk
    7e08: 39560668     	ldrb	w8, [x19, #0x581]
    7e0c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e0c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A30A
    7e10: 91000000     	add	x0, x0, #0x0
		0000000000007e10:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A30A
    7e14: aa1403e1     	mov	x1, x20
    7e18: 7100011f     	cmp	w8, #0x0
    7e1c: 90000008     	adrp	x8, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e1c:  R_AARCH64_ADR_PREL_PG_HI21	unk_398C0
    7e20: 91000108     	add	x8, x8, #0x0
		0000000000007e20:  R_AARCH64_ADD_ABS_LO12_NC	unk_398C0
    7e24: 9a950102     	csel	x2, x8, x21, eq
    7e28: 94000000     	bl	0x7e28 <syna_dev_connect+0x378>
		0000000000007e28:  R_AARCH64_CALL26	_printk
    7e2c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e2c:  R_AARCH64_ADR_PREL_PG_HI21	unk_39D58
    7e30: 91000000     	add	x0, x0, #0x0
		0000000000007e30:  R_AARCH64_ADD_ABS_LO12_NC	unk_39D58
    7e34: 17ffff47     	b	0x7b50 <syna_dev_connect+0xa0>
    7e38: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e38:  R_AARCH64_ADR_PREL_PG_HI21	unk_398A0
    7e3c: 91000000     	add	x0, x0, #0x0
		0000000000007e3c:  R_AARCH64_ADD_ABS_LO12_NC	unk_398A0
    7e40: 128002b5     	mov	w21, #-0x16             // =-22
    7e44: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b9
    7e48: 91000021     	add	x1, x1, #0x0
		0000000000007e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b9
    7e4c: aa1f03e2     	mov	x2, xzr
    7e50: 94000000     	bl	0x7e50 <syna_dev_connect+0x3a0>
		0000000000007e50:  R_AARCH64_CALL26	_printk
    7e54: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e54:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A8CE
    7e58: 91000000     	add	x0, x0, #0x0
		0000000000007e58:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A8CE
    7e5c: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fd5
    7e60: 91000021     	add	x1, x1, #0x0
		0000000000007e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fd5
    7e64: aa1f03e2     	mov	x2, xzr
    7e68: 94000000     	bl	0x7e68 <syna_dev_connect+0x3b8>
		0000000000007e68:  R_AARCH64_CALL26	_printk
    7e6c: f941da60     	ldr	x0, [x19, #0x3b0]
    7e70: b4ffe520     	cbz	x0, 0x7b14 <syna_dev_connect+0x64>
    7e74: 94000000     	bl	0x7e74 <syna_dev_connect+0x3c4>
		0000000000007e74:  R_AARCH64_CALL26	input_unregister_device
    7e78: f901da7f     	str	xzr, [x19, #0x3b0]
    7e7c: 17ffff26     	b	0x7b14 <syna_dev_connect+0x64>
    7e80: 2a0003f5     	mov	w21, w0
    7e84: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007e84:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B7BA
    7e88: 91000000     	add	x0, x0, #0x0
		0000000000007e88:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B7BA
    7e8c: 17ffffee     	b	0x7e44 <syna_dev_connect+0x394>
