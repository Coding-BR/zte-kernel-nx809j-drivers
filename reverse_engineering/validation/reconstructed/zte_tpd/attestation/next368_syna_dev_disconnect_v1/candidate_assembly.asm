
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007e94 <syna_dev_disconnect>:
    7e94: d503233f     	paciasp
    7e98: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    7e9c: f9000bf7     	str	x23, [sp, #0x10]
    7ea0: a90257f6     	stp	x22, x21, [sp, #0x20]
    7ea4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7ea8: 910003fd     	mov	x29, sp
    7eac: 39560808     	ldrb	w8, [x0, #0x582]
    7eb0: 35000088     	cbnz	w8, 0x7ec0 <syna_dev_disconnect+0x2c>
    7eb4: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007eb4:  R_AARCH64_ADR_PREL_PG_HI21	unk_34798
    7eb8: 91000000     	add	x0, x0, #0x0
		0000000000007eb8:  R_AARCH64_ADD_ABS_LO12_NC	unk_34798
    7ebc: 14000067     	b	0x8058 <syna_dev_disconnect+0x1c4>
    7ec0: b9457c08     	ldr	w8, [x0, #0x57c]
    7ec4: f9413814     	ldr	x20, [x0, #0x270]
    7ec8: aa0003f3     	mov	x19, x0
    7ecc: 71000d1f     	cmp	w8, #0x3
    7ed0: 54000121     	b.ne	0x7ef4 <syna_dev_disconnect+0x60>
    7ed4: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007ed4:  R_AARCH64_ADR_PREL_PG_HI21	unk_398C3
    7ed8: 91000000     	add	x0, x0, #0x0
		0000000000007ed8:  R_AARCH64_ADD_ABS_LO12_NC	unk_398C3
    7edc: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d
    7ee0: 91000021     	add	x1, x1, #0x0
		0000000000007ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d
    7ee4: 94000000     	bl	0x7ee4 <syna_dev_disconnect+0x50>
		0000000000007ee4:  R_AARCH64_CALL26	_printk
    7ee8: f940c295     	ldr	x21, [x20, #0x180]
    7eec: b5000855     	cbnz	x21, 0x7ff4 <syna_dev_disconnect+0x160>
    7ef0: 14000056     	b	0x8048 <syna_dev_disconnect+0x1b4>
    7ef4: f9421a68     	ldr	x8, [x19, #0x430]
    7ef8: b4000108     	cbz	x8, 0x7f18 <syna_dev_disconnect+0x84>
    7efc: 910f2260     	add	x0, x19, #0x3c8
    7f00: 94000000     	bl	0x7f00 <syna_dev_disconnect+0x6c>
		0000000000007f00:  R_AARCH64_CALL26	cancel_delayed_work_sync
    7f04: f9421a60     	ldr	x0, [x19, #0x430]
    7f08: 94000000     	bl	0x7f08 <syna_dev_disconnect+0x74>
		0000000000007f08:  R_AARCH64_CALL26	__flush_workqueue
    7f0c: f9421a60     	ldr	x0, [x19, #0x430]
    7f10: 94000000     	bl	0x7f10 <syna_dev_disconnect+0x7c>
		0000000000007f10:  R_AARCH64_CALL26	destroy_workqueue
    7f14: f9021a7f     	str	xzr, [x19, #0x430]
    7f18: b940ba88     	ldr	w8, [x20, #0xb8]
    7f1c: 340005c8     	cbz	w8, 0x7fd4 <syna_dev_disconnect+0x140>
    7f20: f9413a75     	ldr	x21, [x19, #0x270]
    7f24: 94000000     	bl	0x7f24 <syna_dev_disconnect+0x90>
		0000000000007f24:  R_AARCH64_CALL26	syna_request_managed_device
    7f28: b5000080     	cbnz	x0, 0x7f38 <syna_dev_disconnect+0xa4>
    7f2c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007f2c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    7f30: 91000000     	add	x0, x0, #0x0
		0000000000007f30:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    7f34: 14000024     	b	0x7fc4 <syna_dev_disconnect+0x130>
    7f38: b940baa1     	ldr	w1, [x21, #0xb8]
    7f3c: 7100043f     	cmp	w1, #0x1
    7f40: 540004ab     	b.lt	0x7fd4 <syna_dev_disconnect+0x140>
    7f44: f94022b6     	ldr	x22, [x21, #0x40]
    7f48: b4000336     	cbz	x22, 0x7fac <syna_dev_disconnect+0x118>
    7f4c: b85fc2c8     	ldur	w8, [x22, #-0x4]
    7f50: 528c3629     	mov	w9, #0x61b1             // =25009
    7f54: aa0003f7     	mov	x23, x0
    7f58: 72a685c9     	movk	w9, #0x342e, lsl #16
    7f5c: 6b09011f     	cmp	w8, w9
    7f60: 54000100     	b.eq	0x7f80 <syna_dev_disconnect+0xec>
    7f64: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    7f68: 91000000     	add	x0, x0, #0x0
		0000000000007f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    7f6c: 90000002     	adrp	x2, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cff
    7f70: 91000042     	add	x2, x2, #0x0
		0000000000007f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cff
    7f74: 52904501     	mov	w1, #0x8228             // =33320
    7f78: 52800723     	mov	w3, #0x39               // =57
    7f7c: 94000000     	bl	0x7f7c <syna_dev_disconnect+0xe8>
		0000000000007f7c:  R_AARCH64_CALL26	_printk
    7f80: 910022a0     	add	x0, x21, #0x8
    7f84: aa1f03e1     	mov	x1, xzr
    7f88: b85fc2d0     	ldur	w16, [x22, #-0x4]
    7f8c: 7280e7f1     	movk	w17, #0x73f
    7f90: 72b8e2f1     	movk	w17, #0xc717, lsl #16
    7f94: 6b11021f     	cmp	w16, w17
    7f98: 54000040     	b.eq	0x7fa0 <syna_dev_disconnect+0x10c>
    7f9c: d43046c0     	brk	#0x8236
    7fa0: d63f02c0     	blr	x22
    7fa4: b940baa1     	ldr	w1, [x21, #0xb8]
    7fa8: aa1703e0     	mov	x0, x23
    7fac: aa1303e2     	mov	x2, x19
    7fb0: 94000000     	bl	0x7fb0 <syna_dev_disconnect+0x11c>
		0000000000007fb0:  R_AARCH64_CALL26	devm_free_irq
    7fb4: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007fb4:  R_AARCH64_ADR_PREL_PG_HI21	unk_36071
    7fb8: 91000000     	add	x0, x0, #0x0
		0000000000007fb8:  R_AARCH64_ADD_ABS_LO12_NC	unk_36071
    7fbc: b900babf     	str	wzr, [x21, #0xb8]
    7fc0: 3902f2bf     	strb	wzr, [x21, #0xbc]
    7fc4: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x188>
		0000000000007fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a15
    7fc8: 91000021     	add	x1, x1, #0x0
		0000000000007fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a15
    7fcc: aa1f03e2     	mov	x2, xzr
    7fd0: 94000000     	bl	0x7fd0 <syna_dev_disconnect+0x13c>
		0000000000007fd0:  R_AARCH64_CALL26	_printk
    7fd4: f941da60     	ldr	x0, [x19, #0x3b0]
    7fd8: b4000060     	cbz	x0, 0x7fe4 <syna_dev_disconnect+0x150>
    7fdc: 94000000     	bl	0x7fdc <syna_dev_disconnect+0x148>
		0000000000007fdc:  R_AARCH64_CALL26	input_unregister_device
    7fe0: f901da7f     	str	xzr, [x19, #0x3b0]
    7fe4: f901de7f     	str	xzr, [x19, #0x3b8]
    7fe8: b903c27f     	str	wzr, [x19, #0x3c0]
    7fec: f940c295     	ldr	x21, [x20, #0x180]
    7ff0: b40002d5     	cbz	x21, 0x8048 <syna_dev_disconnect+0x1b4>
    7ff4: b85fc2a8     	ldur	w8, [x21, #-0x4]
    7ff8: 52850569     	mov	w9, #0x282b             // =10283
    7ffc: 72abe609     	movk	w9, #0x5f30, lsl #16
    8000: 6b09011f     	cmp	w8, w9
    8004: 54000100     	b.eq	0x8024 <syna_dev_disconnect+0x190>
    8008: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    800c: 91000000     	add	x0, x0, #0x0
		000000000000800c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    8010: 90000002     	adrp	x2, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cff
    8014: 91000042     	add	x2, x2, #0x0
		0000000000008014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cff
    8018: 52904501     	mov	w1, #0x8228             // =33320
    801c: 52800423     	mov	w3, #0x21               // =33
    8020: 94000000     	bl	0x8020 <syna_dev_disconnect+0x18c>
		0000000000008020:  R_AARCH64_CALL26	_printk
    8024: aa1403e0     	mov	x0, x20
    8028: aa1f03e1     	mov	x1, xzr
    802c: b85fc2b0     	ldur	w16, [x21, #-0x4]
    8030: 7280e7f1     	movk	w17, #0x73f
    8034: 72b8e2f1     	movk	w17, #0xc717, lsl #16
    8038: 6b11021f     	cmp	w16, w17
    803c: 54000040     	b.eq	0x8044 <syna_dev_disconnect+0x1b0>
    8040: d43046a0     	brk	#0x8235
    8044: d63f02a0     	blr	x21
    8048: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008048:  R_AARCH64_ADR_PREL_PG_HI21	unk_3604B
    804c: 91000000     	add	x0, x0, #0x0
		000000000000804c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3604B
    8050: b9057e7f     	str	wzr, [x19, #0x57c]
    8054: 39160a7f     	strb	wzr, [x19, #0x582]
    8058: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d
    805c: 91000021     	add	x1, x1, #0x0
		000000000000805c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d
    8060: 90000002     	adrp	x2, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225d
    8064: 91000042     	add	x2, x2, #0x0
		0000000000008064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225d
    8068: 94000000     	bl	0x8068 <syna_dev_disconnect+0x1d4>
		0000000000008068:  R_AARCH64_CALL26	_printk
    806c: 2a1f03e0     	mov	w0, wzr
    8070: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    8074: f9400bf7     	ldr	x23, [sp, #0x10]
    8078: a94257f6     	ldp	x22, x21, [sp, #0x20]
    807c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8080: d50323bf     	autiasp
    8084: d65f03c0     	ret
