
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008830 <syna_dev_probe>:
    8830: d503233f     	paciasp
    8834: d10143ff     	sub	sp, sp, #0x50
    8838: a9027bfd     	stp	x29, x30, [sp, #0x20]
    883c: a90357f6     	stp	x22, x21, [sp, #0x30]
    8840: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8844: 910083fd     	add	x29, sp, #0x20
    8848: d5384108     	mrs	x8, SP_EL0
    884c: aa0003f4     	mov	x20, x0
    8850: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008850:  R_AARCH64_ADR_PREL_PG_HI21	unk_365DA
    8854: 91000000     	add	x0, x0, #0x0
		0000000000008854:  R_AARCH64_ADD_ABS_LO12_NC	unk_365DA
    8858: f9438908     	ldr	x8, [x8, #0x710]
    885c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		000000000000885c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8860: 91000021     	add	x1, x1, #0x0
		0000000000008860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8864: aa1f03e2     	mov	x2, xzr
    8868: f81f83a8     	stur	x8, [x29, #-0x8]
    886c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    8870: d5384108     	mrs	x8, SP_EL0
    8874: 94000000     	bl	0x8874 <syna_dev_probe+0x44>
		0000000000008874:  R_AARCH64_CALL26	_printk
    8878: f9405295     	ldr	x21, [x20, #0xa0]
    887c: b5000135     	cbnz	x21, 0x88a0 <syna_dev_probe+0x70>
    8880: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008880:  R_AARCH64_ADR_PREL_PG_HI21	unk_36FB5
    8884: 91000000     	add	x0, x0, #0x0
		0000000000008884:  R_AARCH64_ADD_ABS_LO12_NC	unk_36FB5
    8888: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    888c: 91000021     	add	x1, x1, #0x0
		000000000000888c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8890: aa1f03e2     	mov	x2, xzr
    8894: 94000000     	bl	0x8894 <syna_dev_probe+0x64>
		0000000000008894:  R_AARCH64_CALL26	_printk
    8898: 128002a0     	mov	w0, #-0x16              // =-22
    889c: 14000015     	b	0x88f0 <syna_dev_probe+0xc0>
    88a0: 94000000     	bl	0x88a0 <syna_dev_probe+0x70>
		00000000000088a0:  R_AARCH64_CALL26	syna_request_managed_device
    88a4: b5000100     	cbnz	x0, 0x88c4 <syna_dev_probe+0x94>
    88a8: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000088a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    88ac: 91000000     	add	x0, x0, #0x0
		00000000000088ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    88b0: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000088b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cc8
    88b4: 91000021     	add	x1, x1, #0x0
		00000000000088b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cc8
    88b8: aa1f03e2     	mov	x2, xzr
    88bc: 94000000     	bl	0x88bc <syna_dev_probe+0x8c>
		00000000000088bc:  R_AARCH64_CALL26	_printk
    88c0: 14000005     	b	0x88d4 <syna_dev_probe+0xa4>
    88c4: 5280da01     	mov	w1, #0x6d0              // =1744
    88c8: 5281b802     	mov	w2, #0xdc0              // =3520
    88cc: 94000000     	bl	0x88cc <syna_dev_probe+0x9c>
		00000000000088cc:  R_AARCH64_CALL26	devm_kmalloc
    88d0: b5000280     	cbnz	x0, 0x8920 <syna_dev_probe+0xf0>
    88d4: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000088d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE0E
    88d8: 91000000     	add	x0, x0, #0x0
		00000000000088d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE0E
    88dc: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000088dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    88e0: 91000021     	add	x1, x1, #0x0
		00000000000088e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    88e4: aa1f03e2     	mov	x2, xzr
    88e8: 94000000     	bl	0x88e8 <syna_dev_probe+0xb8>
		00000000000088e8:  R_AARCH64_CALL26	_printk
    88ec: 12800160     	mov	w0, #-0xc               // =-12
    88f0: d5384108     	mrs	x8, SP_EL0
    88f4: f9438908     	ldr	x8, [x8, #0x710]
    88f8: d5384109     	mrs	x9, SP_EL0
    88fc: f85f83a9     	ldur	x9, [x29, #-0x8]
    8900: eb09011f     	cmp	x8, x9
    8904: 54002301     	b.ne	0x8d64 <syna_dev_probe+0x534>
    8908: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    890c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    8910: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    8914: 910143ff     	add	sp, sp, #0x50
    8918: d50323bf     	autiasp
    891c: d65f03c0     	ret
    8920: aa0003f3     	mov	x19, x0
    8924: b905881f     	str	wzr, [x0, #0x588]
    8928: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa4
    892c: 91000021     	add	x1, x1, #0x0
		000000000000892c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa4
    8930: 90000002     	adrp	x2, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008930:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    8934: 91000042     	add	x2, x2, #0x0
		0000000000008934:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    8938: 91164000     	add	x0, x0, #0x590
    893c: 94000000     	bl	0x893c <syna_dev_probe+0x10c>
		000000000000893c:  R_AARCH64_CALL26	__init_swait_queue_head
    8940: 910023e0     	add	x0, sp, #0x8
    8944: 910022a1     	add	x1, x21, #0x8
    8948: aa1303e2     	mov	x2, x19
    894c: 94000000     	bl	0x894c <syna_dev_probe+0x11c>
		000000000000894c:  R_AARCH64_CALL26	syna_tcm_allocate_device
    8950: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008950:  R_AARCH64_ADR_PREL_PG_HI21	unk_35F48
    8954: 91000108     	add	x8, x8, #0x0
		0000000000008954:  R_AARCH64_ADD_ABS_LO12_NC	unk_35F48
    8958: 37f81840     	tbnz	w0, #0x1f, 0x8c60 <syna_dev_probe+0x430>
    895c: f94007e9     	ldr	x9, [sp, #0x8]
    8960: b4001809     	cbz	x9, 0x8c60 <syna_dev_probe+0x430>
    8964: a9005269     	stp	x9, x20, [x19]
    8968: f94007e0     	ldr	x0, [sp, #0x8]
    896c: 910023e9     	add	x9, sp, #0x8
    8970: f9013a75     	str	x21, [x19, #0x270]
    8974: 91002121     	add	x1, x9, #0x8
    8978: 2a1f03e2     	mov	w2, wzr
    897c: f940aea8     	ldr	x8, [x21, #0x158]
    8980: 529fffe3     	mov	w3, #0xffff             // =65535
    8984: f9000be8     	str	x8, [sp, #0x10]
    8988: 94000000     	bl	0x8988 <syna_dev_probe+0x158>
		0000000000008988:  R_AARCH64_CALL26	syna_tcm_config_timings
    898c: 37f81560     	tbnz	w0, #0x1f, 0x8c38 <syna_dev_probe+0x408>
    8990: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63c1
    8994: 910002b5     	add	x21, x21, #0x0
		0000000000008994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63c1
    8998: 90000016     	adrp	x22, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008998:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    899c: 910002d6     	add	x22, x22, #0x0
		000000000000899c:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    89a0: 910ae260     	add	x0, x19, #0x2b8
    89a4: aa1503e1     	mov	x1, x21
    89a8: aa1603e2     	mov	x2, x22
    89ac: 390ba27f     	strb	wzr, [x19, #0x2e8]
    89b0: f901567f     	str	xzr, [x19, #0x2a8]
    89b4: f9015a7f     	str	xzr, [x19, #0x2b0]
    89b8: 94000000     	bl	0x89b8 <syna_dev_probe+0x188>
		00000000000089b8:  R_AARCH64_CALL26	__mutex_init
    89bc: 9109e260     	add	x0, x19, #0x278
    89c0: aa1503e1     	mov	x1, x21
    89c4: aa1603e2     	mov	x2, x22
    89c8: 94000000     	bl	0x89c8 <syna_dev_probe+0x198>
		00000000000089c8:  R_AARCH64_CALL26	__mutex_init
    89cc: 91160668     	add	x8, x19, #0x581
    89d0: 52800029     	mov	w9, #0x1                // =1
    89d4: 390bd27f     	strb	wzr, [x19, #0x2f4]
    89d8: 79000109     	strh	w9, [x8]
    89dc: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000089dc:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_connect
    89e0: 91000108     	add	x8, x8, #0x0
		00000000000089e0:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_connect
    89e4: f9035668     	str	x8, [x19, #0x6a8]
    89e8: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000089e8:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_disconnect
    89ec: 91000108     	add	x8, x8, #0x0
		00000000000089ec:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_disconnect
    89f0: f9035a68     	str	x8, [x19, #0x6b0]
    89f4: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		00000000000089f4:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_set_up_app_fw
    89f8: 91000108     	add	x8, x8, #0x0
		00000000000089f8:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_set_up_app_fw
    89fc: f9035e68     	str	x8, [x19, #0x6b8]
    8a00: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a00:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_resume
    8a04: 91000108     	add	x8, x8, #0x0
		0000000000008a04:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_resume
    8a08: f9036268     	str	x8, [x19, #0x6c0]
    8a0c: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a0c:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_suspend
    8a10: 91000108     	add	x8, x8, #0x0
		0000000000008a10:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_suspend
    8a14: b9057e7f     	str	wzr, [x19, #0x57c]
    8a18: f9036668     	str	x8, [x19, #0x6c8]
    8a1c: d503201f     	nop
    8a20: 52840000     	mov	w0, #0x2000             // =8192
    8a24: 52819801     	mov	w1, #0xcc0              // =3264
    8a28: 72a00060     	movk	w0, #0x3, lsl #16
    8a2c: 94000000     	bl	0x8a2c <syna_dev_probe+0x1fc>
		0000000000008a2c:  R_AARCH64_CALL26	__kmalloc_large_noprof
    8a30: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a30:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    8a34: 910002b5     	add	x21, x21, #0x0
		0000000000008a34:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    8a38: f9023260     	str	x0, [x19, #0x460]
    8a3c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e2d
    8a40: 91000021     	add	x1, x1, #0x0
		0000000000008a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e2d
    8a44: 9111c260     	add	x0, x19, #0x470
    8a48: aa1503e2     	mov	x2, x21
    8a4c: 94000000     	bl	0x8a4c <syna_dev_probe+0x21c>
		0000000000008a4c:  R_AARCH64_CALL26	__mutex_init
    8a50: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e3f
    8a54: 91000021     	add	x1, x1, #0x0
		0000000000008a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e3f
    8a58: 91112260     	add	x0, x19, #0x448
    8a5c: aa1503e2     	mov	x2, x21
    8a60: 94000000     	bl	0x8a60 <syna_dev_probe+0x230>
		0000000000008a60:  R_AARCH64_CALL26	__init_waitqueue_head
    8a64: 52801fe8     	mov	w8, #0xff               // =255
    8a68: 91128260     	add	x0, x19, #0x4a0
    8a6c: b9046a7f     	str	wzr, [x19, #0x468]
    8a70: b904a268     	str	w8, [x19, #0x4a0]
    8a74: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54da
    8a78: 91000108     	add	x8, x8, #0x0
		0000000000008a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54da
    8a7c: f9025668     	str	x8, [x19, #0x4a8]
    8a80: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008a80:  R_AARCH64_ADR_PREL_PG_HI21	zte_fops
    8a84: 91000108     	add	x8, x8, #0x0
		0000000000008a84:  R_AARCH64_ADD_ABS_LO12_NC	zte_fops
    8a88: f9025a68     	str	x8, [x19, #0x4b0]
    8a8c: f902667f     	str	xzr, [x19, #0x4c8]
    8a90: 94000000     	bl	0x8a90 <syna_dev_probe+0x260>
		0000000000008a90:  R_AARCH64_CALL26	misc_register
    8a94: 35000e20     	cbnz	w0, 0x8c58 <syna_dev_probe+0x428>
    8a98: 91004280     	add	x0, x20, #0x10
    8a9c: 52800021     	mov	w1, #0x1                // =1
    8aa0: f902d67f     	str	xzr, [x19, #0x5a8]
    8aa4: f9005693     	str	x19, [x20, #0xa8]
    8aa8: 94000000     	bl	0x8aa8 <syna_dev_probe+0x278>
		0000000000008aa8:  R_AARCH64_CALL26	device_set_wakeup_capable
    8aac: 91004280     	add	x0, x20, #0x10
    8ab0: 94000000     	bl	0x8ab0 <syna_dev_probe+0x280>
		0000000000008ab0:  R_AARCH64_CALL26	device_wakeup_enable
    8ab4: aa1303e0     	mov	x0, x19
    8ab8: 94000000     	bl	0x8ab8 <syna_dev_probe+0x288>
		0000000000008ab8:  R_AARCH64_CALL26	syna_dev_connect
    8abc: 37f80e20     	tbnz	w0, #0x1f, 0x8c80 <syna_dev_probe+0x450>
    8ac0: aa1303e0     	mov	x0, x19
    8ac4: aa1403e1     	mov	x1, x20
    8ac8: 94000000     	bl	0x8ac8 <syna_dev_probe+0x298>
		0000000000008ac8:  R_AARCH64_CALL26	syna_cdev_create
    8acc: 37f80ea0     	tbnz	w0, #0x1f, 0x8ca0 <syna_dev_probe+0x470>
    8ad0: aa1303e0     	mov	x0, x19
    8ad4: aa1403e1     	mov	x1, x20
    8ad8: 94000000     	bl	0x8ad8 <syna_dev_probe+0x2a8>
		0000000000008ad8:  R_AARCH64_CALL26	syna_sysfs_create_dir
    8adc: 37f80f20     	tbnz	w0, #0x1f, 0x8cc0 <syna_dev_probe+0x490>
    8ae0: aa1303e0     	mov	x0, x19
    8ae4: 94000000     	bl	0x8ae4 <syna_dev_probe+0x2b4>
		0000000000008ae4:  R_AARCH64_CALL26	syna_ts_register_for_panel_events
    8ae8: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008ae8:  R_AARCH64_ADR_PREL_PG_HI21	unk_393AC
    8aec: 91000000     	add	x0, x0, #0x0
		0000000000008aec:  R_AARCH64_ADD_ABS_LO12_NC	unk_393AC
    8af0: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6786
    8af4: 91000021     	add	x1, x1, #0x0
		0000000000008af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6786
    8af8: aa1f03e2     	mov	x2, xzr
    8afc: 94000000     	bl	0x8afc <syna_dev_probe+0x2cc>
		0000000000008afc:  R_AARCH64_CALL26	_printk
    8b00: 90000015     	adrp	x21, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b00:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    8b04: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b04:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_resume
    8b08: 91000129     	add	x9, x9, #0x0
		0000000000008b08:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_resume
    8b0c: f94002a8     	ldr	x8, [x21]
		0000000000008b0c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8b10: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa4
    8b14: 91000021     	add	x1, x1, #0x0
		0000000000008b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa4
    8b18: 90000002     	adrp	x2, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b18:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    8b1c: 91000042     	add	x2, x2, #0x0
		0000000000008b1c:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    8b20: 91158260     	add	x0, x19, #0x560
    8b24: f9062909     	str	x9, [x8, #0xc50]
    8b28: 90000009     	adrp	x9, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b28:  R_AARCH64_ADR_PREL_PG_HI21	tpd_goodix_ts_suspend
    8b2c: 91000129     	add	x9, x9, #0x0
		0000000000008b2c:  R_AARCH64_ADD_ABS_LO12_NC	tpd_goodix_ts_suspend
    8b30: f9061113     	str	x19, [x8, #0xc20]
    8b34: f9062d09     	str	x9, [x8, #0xc58]
    8b38: b9055a7f     	str	wzr, [x19, #0x558]
    8b3c: 94000000     	bl	0x8b3c <syna_dev_probe+0x30c>
		0000000000008b3c:  R_AARCH64_CALL26	__init_swait_queue_head
    8b40: 52800141     	mov	w1, #0xa                // =10
    8b44: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b44:  R_AARCH64_ADR_PREL_PG_HI21	unk_364AC
    8b48: 91000000     	add	x0, x0, #0x0
		0000000000008b48:  R_AARCH64_ADD_ABS_LO12_NC	unk_364AC
    8b4c: 90000003     	adrp	x3, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d23
    8b50: 91000063     	add	x3, x3, #0x0
		0000000000008b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d23
    8b54: 72a000c1     	movk	w1, #0x6, lsl #16
    8b58: 52800022     	mov	w2, #0x1                // =1
    8b5c: 3915e27f     	strb	wzr, [x19, #0x578]
    8b60: 52800036     	mov	w22, #0x1               // =1
    8b64: b905227f     	str	wzr, [x19, #0x520]
    8b68: 94000000     	bl	0x8b68 <syna_dev_probe+0x338>
		0000000000008b68:  R_AARCH64_CALL26	alloc_workqueue
    8b6c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    8b70: f902a660     	str	x0, [x19, #0x548]
    8b74: f9029668     	str	x8, [x19, #0x528]
    8b78: 9114c268     	add	x8, x19, #0x530
    8b7c: f9029a68     	str	x8, [x19, #0x530]
    8b80: f9029e68     	str	x8, [x19, #0x538]
    8b84: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008b84:  R_AARCH64_ADR_PREL_PG_HI21	syna_dev_helper_work
    8b88: 91000108     	add	x8, x8, #0x0
		0000000000008b88:  R_AARCH64_ADD_ABS_LO12_NC	syna_dev_helper_work
    8b8c: f902a268     	str	x8, [x19, #0x540]
    8b90: b21f03e8     	mov	x8, #0x200000002        // =8589934594
    8b94: f9030268     	str	x8, [x19, #0x600]
    8b98: 52800048     	mov	w8, #0x2                // =2
    8b9c: b9060e68     	str	w8, [x19, #0x60c]
    8ba0: d2800028     	mov	x8, #0x1                // =1
    8ba4: f2c00048     	movk	x8, #0x2, lsl #32
    8ba8: f902da7f     	str	xzr, [x19, #0x5b0]
    8bac: b905ba7f     	str	wzr, [x19, #0x5b8]
    8bb0: b905c67f     	str	wzr, [x19, #0x5c4]
    8bb4: b905d67f     	str	wzr, [x19, #0x5d4]
    8bb8: b905de7f     	str	wzr, [x19, #0x5dc]
    8bbc: f902fe68     	str	x8, [x19, #0x5f8]
    8bc0: f902f67f     	str	xzr, [x19, #0x5e8]
    8bc4: f902fa7f     	str	xzr, [x19, #0x5f0]
    8bc8: 94000000     	bl	0x8bc8 <syna_dev_probe+0x398>
		0000000000008bc8:  R_AARCH64_CALL26	zte_get_boot_mode
    8bcc: 90000014     	adrp	x20, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8bd0: 91000294     	add	x20, x20, #0x0
		0000000000008bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8bd4: aa0003e2     	mov	x2, x0
    8bd8: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008bd8:  R_AARCH64_ADR_PREL_PG_HI21	unk_36FE8
    8bdc: 91000000     	add	x0, x0, #0x0
		0000000000008bdc:  R_AARCH64_ADD_ABS_LO12_NC	unk_36FE8
    8be0: aa1403e1     	mov	x1, x20
    8be4: b9061a62     	str	w2, [x19, #0x618]
    8be8: 94000000     	bl	0x8be8 <syna_dev_probe+0x3b8>
		0000000000008be8:  R_AARCH64_CALL26	_printk
    8bec: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008bec:  R_AARCH64_ADR_PREL_PG_HI21	unk_31906
    8bf0: 91000000     	add	x0, x0, #0x0
		0000000000008bf0:  R_AARCH64_ADD_ABS_LO12_NC	unk_31906
    8bf4: 90000002     	adrp	x2, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225d
    8bf8: 91000042     	add	x2, x2, #0x0
		0000000000008bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225d
    8bfc: aa1403e1     	mov	x1, x20
    8c00: 94000000     	bl	0x8c00 <syna_dev_probe+0x3d0>
		0000000000008c00:  R_AARCH64_CALL26	_printk
    8c04: f94002a8     	ldr	x8, [x21]
		0000000000008c04:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    8c08: 91162260     	add	x0, x19, #0x588
    8c0c: 39160e76     	strb	w22, [x19, #0x583]
    8c10: 39007516     	strb	w22, [x8, #0x1d]
    8c14: 39111916     	strb	w22, [x8, #0x446]
    8c18: 94000000     	bl	0x8c18 <syna_dev_probe+0x3e8>
		0000000000008c18:  R_AARCH64_CALL26	completion_done
    8c1c: 2a0003e8     	mov	w8, w0
    8c20: 2a1f03e0     	mov	w0, wzr
    8c24: 3707e668     	tbnz	w8, #0x0, 0x88f0 <syna_dev_probe+0xc0>
    8c28: 91162260     	add	x0, x19, #0x588
    8c2c: 94000000     	bl	0x8c2c <syna_dev_probe+0x3fc>
		0000000000008c2c:  R_AARCH64_CALL26	complete
    8c30: 2a1f03e0     	mov	w0, wzr
    8c34: 17ffff2f     	b	0x88f0 <syna_dev_probe+0xc0>
    8c38: 2a0003f5     	mov	w21, w0
    8c3c: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008c3c:  R_AARCH64_ADR_PREL_PG_HI21	unk_318DC
    8c40: 91000000     	add	x0, x0, #0x0
		0000000000008c40:  R_AARCH64_ADD_ABS_LO12_NC	unk_318DC
    8c44: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8c48: 91000021     	add	x1, x1, #0x0
		0000000000008c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8c4c: aa1f03e2     	mov	x2, xzr
    8c50: 94000000     	bl	0x8c50 <syna_dev_probe+0x420>
		0000000000008c50:  R_AARCH64_CALL26	_printk
    8c54: 14000033     	b	0x8d20 <syna_dev_probe+0x4f0>
    8c58: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008c58:  R_AARCH64_ADR_PREL_PG_HI21	unk_38836
    8c5c: 91000108     	add	x8, x8, #0x0
		0000000000008c5c:  R_AARCH64_ADD_ABS_LO12_NC	unk_38836
    8c60: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8c64: 91000021     	add	x1, x1, #0x0
		0000000000008c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8c68: 2a0003f3     	mov	w19, w0
    8c6c: aa0803e0     	mov	x0, x8
    8c70: aa1f03e2     	mov	x2, xzr
    8c74: 94000000     	bl	0x8c74 <syna_dev_probe+0x444>
		0000000000008c74:  R_AARCH64_CALL26	_printk
    8c78: 2a1303e0     	mov	w0, w19
    8c7c: 17ffff1d     	b	0x88f0 <syna_dev_probe+0xc0>
    8c80: 2a0003f5     	mov	w21, w0
    8c84: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008c84:  R_AARCH64_ADR_PREL_PG_HI21	unk_38208
    8c88: 91000000     	add	x0, x0, #0x0
		0000000000008c88:  R_AARCH64_ADD_ABS_LO12_NC	unk_38208
    8c8c: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8c90: 91000021     	add	x1, x1, #0x0
		0000000000008c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8c94: aa1f03e2     	mov	x2, xzr
    8c98: 94000000     	bl	0x8c98 <syna_dev_probe+0x468>
		0000000000008c98:  R_AARCH64_CALL26	_printk
    8c9c: 14000014     	b	0x8cec <syna_dev_probe+0x4bc>
    8ca0: 2a0003f5     	mov	w21, w0
    8ca4: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008ca4:  R_AARCH64_ADR_PREL_PG_HI21	unk_31E7C
    8ca8: 91000000     	add	x0, x0, #0x0
		0000000000008ca8:  R_AARCH64_ADD_ABS_LO12_NC	unk_31E7C
    8cac: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8cb0: 91000021     	add	x1, x1, #0x0
		0000000000008cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8cb4: aa1f03e2     	mov	x2, xzr
    8cb8: 94000000     	bl	0x8cb8 <syna_dev_probe+0x488>
		0000000000008cb8:  R_AARCH64_CALL26	_printk
    8cbc: 1400000a     	b	0x8ce4 <syna_dev_probe+0x4b4>
    8cc0: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008cc0:  R_AARCH64_ADR_PREL_PG_HI21	unk_31EAB
    8cc4: 91000000     	add	x0, x0, #0x0
		0000000000008cc4:  R_AARCH64_ADD_ABS_LO12_NC	unk_31EAB
    8cc8: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2284
    8ccc: 91000021     	add	x1, x1, #0x0
		0000000000008ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2284
    8cd0: aa1f03e2     	mov	x2, xzr
    8cd4: 94000000     	bl	0x8cd4 <syna_dev_probe+0x4a4>
		0000000000008cd4:  R_AARCH64_CALL26	_printk
    8cd8: aa1303e0     	mov	x0, x19
    8cdc: 94000000     	bl	0x8cdc <syna_dev_probe+0x4ac>
		0000000000008cdc:  R_AARCH64_CALL26	syna_cdev_remove
    8ce0: 12800275     	mov	w21, #-0x14             // =-20
    8ce4: aa1303e0     	mov	x0, x19
    8ce8: 94000000     	bl	0x8ce8 <syna_dev_probe+0x4b8>
		0000000000008ce8:  R_AARCH64_CALL26	syna_dev_disconnect
    8cec: f9423260     	ldr	x0, [x19, #0x460]
    8cf0: 94000000     	bl	0x8cf0 <syna_dev_probe+0x4c0>
		0000000000008cf0:  R_AARCH64_CALL26	kfree
    8cf4: 394ba262     	ldrb	w2, [x19, #0x2e8]
    8cf8: 350001c2     	cbnz	w2, 0x8d30 <syna_dev_probe+0x500>
    8cfc: f9415674     	ldr	x20, [x19, #0x2a8]
    8d00: 94000000     	bl	0x8d00 <syna_dev_probe+0x4d0>
		0000000000008d00:  R_AARCH64_CALL26	syna_request_managed_device
    8d04: b4000220     	cbz	x0, 0x8d48 <syna_dev_probe+0x518>
    8d08: b4000094     	cbz	x20, 0x8d18 <syna_dev_probe+0x4e8>
    8d0c: 94000000     	bl	0x8d0c <syna_dev_probe+0x4dc>
		0000000000008d0c:  R_AARCH64_CALL26	syna_request_managed_device
    8d10: aa1403e1     	mov	x1, x20
    8d14: 94000000     	bl	0x8d14 <syna_dev_probe+0x4e4>
		0000000000008d14:  R_AARCH64_CALL26	devm_kfree
    8d18: f9015a7f     	str	xzr, [x19, #0x2b0]
    8d1c: 390ba27f     	strb	wzr, [x19, #0x2e8]
    8d20: f94007e0     	ldr	x0, [sp, #0x8]
    8d24: 94000000     	bl	0x8d24 <syna_dev_probe+0x4f4>
		0000000000008d24:  R_AARCH64_CALL26	syna_tcm_remove_device
    8d28: 2a1503e0     	mov	w0, w21
    8d2c: 17fffef1     	b	0x88f0 <syna_dev_probe+0xc0>
    8d30: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008d30:  R_AARCH64_ADR_PREL_PG_HI21	unk_34845
    8d34: 91000000     	add	x0, x0, #0x0
		0000000000008d34:  R_AARCH64_ADD_ABS_LO12_NC	unk_34845
    8d38: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ce7
    8d3c: 91000021     	add	x1, x1, #0x0
		0000000000008d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ce7
    8d40: 94000000     	bl	0x8d40 <syna_dev_probe+0x510>
		0000000000008d40:  R_AARCH64_CALL26	_printk
    8d44: 17ffffee     	b	0x8cfc <syna_dev_probe+0x4cc>
    8d48: 90000000     	adrp	x0, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008d48:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    8d4c: 91000000     	add	x0, x0, #0x0
		0000000000008d4c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    8d50: 90000001     	adrp	x1, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b6e
    8d54: 91000021     	add	x1, x1, #0x0
		0000000000008d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b6e
    8d58: aa1f03e2     	mov	x2, xzr
    8d5c: 94000000     	bl	0x8d5c <syna_dev_probe+0x52c>
		0000000000008d5c:  R_AARCH64_CALL26	_printk
    8d60: 17ffffee     	b	0x8d18 <syna_dev_probe+0x4e8>
    8d64: 94000000     	bl	0x8d64 <syna_dev_probe+0x534>
		0000000000008d64:  R_AARCH64_CALL26	__stack_chk_fail
    8d68: 52840000     	mov	w0, #0x2000             // =8192
    8d6c: d5384115     	mrs	x21, SP_EL0
    8d70: f9402ab6     	ldr	x22, [x21, #0x50]
    8d74: 90000008     	adrp	x8, 0x8000 <syna_dev_disconnect+0x16c>
		0000000000008d74:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf0
    8d78: 91000108     	add	x8, x8, #0x0
		0000000000008d78:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf0
    8d7c: 72a00060     	movk	w0, #0x3, lsl #16
    8d80: 52819801     	mov	w1, #0xcc0              // =3264
    8d84: f9002aa8     	str	x8, [x21, #0x50]
    8d88: 94000000     	bl	0x8d88 <syna_dev_probe+0x558>
		0000000000008d88:  R_AARCH64_CALL26	__kmalloc_large_noprof
    8d8c: f9002ab6     	str	x22, [x21, #0x50]
    8d90: 17ffff28     	b	0x8a30 <syna_dev_probe+0x200>
