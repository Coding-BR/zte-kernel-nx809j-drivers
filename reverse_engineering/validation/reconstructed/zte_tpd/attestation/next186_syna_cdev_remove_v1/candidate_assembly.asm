
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000077cc <syna_cdev_remove>:
    77cc: d503233f     	paciasp
    77d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    77d4: a90157f6     	stp	x22, x21, [sp, #0x10]
    77d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    77dc: 910003fd     	mov	x29, sp
    77e0: b40009a0     	cbz	x0, 0x7914 <syna_cdev_remove+0x148>
    77e4: aa0003f3     	mov	x19, x0
    77e8: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000077e8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    77ec: 91000000     	add	x0, x0, #0x0
		00000000000077ec:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    77f0: 94000000     	bl	0x77f0 <syna_cdev_remove+0x24>
		00000000000077f0:  R_AARCH64_CALL26	mutex_lock
    77f4: f9427e74     	ldr	x20, [x19, #0x4f8]
    77f8: 9113e275     	add	x21, x19, #0x4f8
    77fc: eb15029f     	cmp	x20, x21
    7800: 540003e0     	b.eq	0x787c <syna_cdev_remove+0xb0>
    7804: d2802016     	mov	x22, #0x100             // =256
    7808: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    780c: 14000004     	b	0x781c <syna_cdev_remove+0x50>
    7810: f94002b4     	ldr	x20, [x21]
    7814: eb15029f     	cmp	x20, x21
    7818: 54000320     	b.eq	0x787c <syna_cdev_remove+0xb0>
    781c: f9400688     	ldr	x8, [x20, #0x8]
    7820: f9400109     	ldr	x9, [x8]
    7824: eb09029f     	cmp	x20, x9
    7828: 54000241     	b.ne	0x7870 <syna_cdev_remove+0xa4>
    782c: f9400289     	ldr	x9, [x20]
    7830: f940052a     	ldr	x10, [x9, #0x8]
    7834: eb14015f     	cmp	x10, x20
    7838: 540001c1     	b.ne	0x7870 <syna_cdev_remove+0xa4>
    783c: f9000528     	str	x8, [x9, #0x8]
    7840: f9000109     	str	x9, [x8]
    7844: f9400a80     	ldr	x0, [x20, #0x10]
    7848: 91008ac8     	add	x8, x22, #0x22
    784c: a9002296     	stp	x22, x8, [x20]
    7850: 94000000     	bl	0x7850 <syna_cdev_remove+0x84>
		0000000000007850:  R_AARCH64_CALL26	kfree
    7854: aa1403e0     	mov	x0, x20
    7858: 94000000     	bl	0x7858 <syna_cdev_remove+0x8c>
		0000000000007858:  R_AARCH64_CALL26	kfree
    785c: b944f268     	ldr	w8, [x19, #0x4f0]
    7860: 34fffd88     	cbz	w8, 0x7810 <syna_cdev_remove+0x44>
    7864: 51000508     	sub	w8, w8, #0x1
    7868: b904f268     	str	w8, [x19, #0x4f0]
    786c: 17ffffe9     	b	0x7810 <syna_cdev_remove+0x44>
    7870: aa1403e0     	mov	x0, x20
    7874: 94000000     	bl	0x7874 <syna_cdev_remove+0xa8>
		0000000000007874:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    7878: 17fffff3     	b	0x7844 <syna_cdev_remove+0x78>
    787c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		000000000000787c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    7880: 91000000     	add	x0, x0, #0x0
		0000000000007880:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    7884: 94000000     	bl	0x7884 <syna_cdev_remove+0xb8>
		0000000000007884:  R_AARCH64_CALL26	mutex_unlock
    7888: f941ca68     	ldr	x8, [x19, #0x390]
    788c: b903867f     	str	wzr, [x19, #0x384]
    7890: b4000168     	cbz	x8, 0x78bc <syna_cdev_remove+0xf0>
    7894: f941c660     	ldr	x0, [x19, #0x388]
    7898: b9438261     	ldr	w1, [x19, #0x380]
    789c: 94000000     	bl	0x789c <syna_cdev_remove+0xd0>
		000000000000789c:  R_AARCH64_CALL26	device_destroy
    78a0: f941c660     	ldr	x0, [x19, #0x388]
    78a4: 94000000     	bl	0x78a4 <syna_cdev_remove+0xd8>
		00000000000078a4:  R_AARCH64_CALL26	class_destroy
    78a8: 910be260     	add	x0, x19, #0x2f8
    78ac: 94000000     	bl	0x78ac <syna_cdev_remove+0xe0>
		00000000000078ac:  R_AARCH64_CALL26	cdev_del
    78b0: b9438260     	ldr	w0, [x19, #0x380]
    78b4: 52800021     	mov	w1, #0x1                // =1
    78b8: 94000000     	bl	0x78b8 <syna_cdev_remove+0xec>
		00000000000078b8:  R_AARCH64_CALL26	unregister_chrdev_region
    78bc: 90000008     	adrp	x8, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000078bc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    78c0: 39400102     	ldrb	w2, [x8]
		00000000000078c0:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    78c4: 35000342     	cbnz	w2, 0x792c <syna_cdev_remove+0x160>
    78c8: 90000008     	adrp	x8, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000078c8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    78cc: f9400114     	ldr	x20, [x8]
		00000000000078cc:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    78d0: 94000000     	bl	0x78d0 <syna_cdev_remove+0x104>
		00000000000078d0:  R_AARCH64_CALL26	syna_request_managed_device
    78d4: b4000380     	cbz	x0, 0x7944 <syna_cdev_remove+0x178>
    78d8: b4000074     	cbz	x20, 0x78e4 <syna_cdev_remove+0x118>
    78dc: aa1403e1     	mov	x1, x20
    78e0: 94000000     	bl	0x78e0 <syna_cdev_remove+0x114>
		00000000000078e0:  R_AARCH64_CALL26	devm_kfree
    78e4: 90000008     	adrp	x8, 0x7000 <syna_cdev_process_reports+0x1ac>
		00000000000078e4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    78e8: 91000108     	add	x8, x8, #0x0
		00000000000078e8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    78ec: f901c67f     	str	xzr, [x19, #0x388]
    78f0: f900091f     	str	xzr, [x8, #0x10]
    78f4: 3901211f     	strb	wzr, [x8, #0x48]
    78f8: f901ca7f     	str	xzr, [x19, #0x390]
    78fc: f900011f     	str	xzr, [x8]
    7900: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7904: a94157f6     	ldp	x22, x21, [sp, #0x10]
    7908: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    790c: d50323bf     	autiasp
    7910: d65f03c0     	ret
    7914: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		0000000000007914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x464
    7918: 91000000     	add	x0, x0, #0x0
		0000000000007918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x464
    791c: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x1ac>
		000000000000791c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e9a
    7920: 91000021     	add	x1, x1, #0x0
		0000000000007920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e9a
    7924: 94000000     	bl	0x7924 <syna_cdev_remove+0x158>
		0000000000007924:  R_AARCH64_CALL26	_printk
    7928: 17fffff6     	b	0x7900 <syna_cdev_remove+0x134>
    792c: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		000000000000792c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c34
    7930: 91000000     	add	x0, x0, #0x0
		0000000000007930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c34
    7934: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x1ac>
		0000000000007934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b9c
    7938: 91000021     	add	x1, x1, #0x0
		0000000000007938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b9c
    793c: 94000000     	bl	0x793c <syna_cdev_remove+0x170>
		000000000000793c:  R_AARCH64_CALL26	_printk
    7940: 17ffffe2     	b	0x78c8 <syna_cdev_remove+0xfc>
    7944: 90000000     	adrp	x0, 0x7000 <syna_cdev_process_reports+0x1ac>
		0000000000007944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62d6
    7948: 91000000     	add	x0, x0, #0x0
		0000000000007948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62d6
    794c: 90000001     	adrp	x1, 0x7000 <syna_cdev_process_reports+0x1ac>
		000000000000794c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3f
    7950: 91000021     	add	x1, x1, #0x0
		0000000000007950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3f
    7954: 94000000     	bl	0x7954 <syna_cdev_remove+0x188>
		0000000000007954:  R_AARCH64_CALL26	_printk
    7958: 17ffffe3     	b	0x78e4 <syna_cdev_remove+0x118>
