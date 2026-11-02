
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009814 <syna_cdev_create>:
    9814: d503233f     	paciasp
    9818: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    981c: a9015ff8     	stp	x24, x23, [sp, #0x10]
    9820: a90257f6     	stp	x22, x21, [sp, #0x20]
    9824: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9828: 910003fd     	mov	x29, sp
    982c: 90000018     	adrp	x24, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000982c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    9830: 91000318     	add	x24, x24, #0x0
		0000000000009830:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    9834: 90000016     	adrp	x22, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009834:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
    9838: 910002d6     	add	x22, x22, #0x0
		0000000000009838:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
    983c: 90000017     	adrp	x23, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000983c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26dc
    9840: 910002f7     	add	x23, x23, #0x0
		0000000000009840:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26dc
    9844: aa0003f3     	mov	x19, x0
    9848: aa1803f4     	mov	x20, x24
    984c: aa1803f5     	mov	x21, x24
    9850: aa1803e0     	mov	x0, x24
    9854: f9000301     	str	x1, [x24]
    9858: aa1603e1     	mov	x1, x22
    985c: aa1703e2     	mov	x2, x23
    9860: a90bff1f     	stp	xzr, xzr, [x24, #0xb8]
    9864: a90aff1f     	stp	xzr, xzr, [x24, #0xa8]
    9868: a909ff1f     	stp	xzr, xzr, [x24, #0x98]
    986c: a908ff1f     	stp	xzr, xzr, [x24, #0x88]
    9870: a9077f1f     	stp	xzr, xzr, [x24, #0x70]
    9874: a9067f1f     	stp	xzr, xzr, [x24, #0x60]
    9878: f9002f1f     	str	xzr, [x24, #0x58]
    987c: a9047f1f     	stp	xzr, xzr, [x24, #0x40]
    9880: a9037f1f     	stp	xzr, xzr, [x24, #0x30]
    9884: a9027f1f     	stp	xzr, xzr, [x24, #0x20]
    9888: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    988c: f8018e9f     	str	xzr, [x20, #0x18]!
    9890: f8080ebf     	str	xzr, [x21, #0x80]!
    9894: f8050c1f     	str	xzr, [x0, #0x50]!
    9898: f901c67f     	str	xzr, [x19, #0x388]
    989c: f901ca7f     	str	xzr, [x19, #0x390]
    98a0: 94000000     	bl	0x98a0 <syna_cdev_create+0x8c>
		00000000000098a0:  R_AARCH64_CALL26	__mutex_init
    98a4: aa1503e0     	mov	x0, x21
    98a8: aa1603e1     	mov	x1, x22
    98ac: aa1703e2     	mov	x2, x23
    98b0: 94000000     	bl	0x98b0 <syna_cdev_create+0x9c>
		00000000000098b0:  R_AARCH64_CALL26	__mutex_init
    98b4: aa1403e0     	mov	x0, x20
    98b8: aa1603e1     	mov	x1, x22
    98bc: aa1703e2     	mov	x2, x23
    98c0: 3901231f     	strb	wzr, [x24, #0x48]
    98c4: a900ff1f     	stp	xzr, xzr, [x24, #0x8]
    98c8: 94000000     	bl	0x98c8 <syna_cdev_create+0xb4>
		00000000000098c8:  R_AARCH64_CALL26	__mutex_init
    98cc: 90000016     	adrp	x22, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    98d0: b94002c8     	ldr	w8, [x22]
		00000000000098d0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x26d8
    98d4: 34000188     	cbz	w8, 0x9904 <syna_cdev_create+0xf0>
    98d8: 530c2d00     	lsl	w0, w8, #20
    98dc: 90000002     	adrp	x2, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
    98e0: 91000042     	add	x2, x2, #0x0
		00000000000098e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
    98e4: 52800021     	mov	w1, #0x1                // =1
    98e8: b9038260     	str	w0, [x19, #0x380]
    98ec: 94000000     	bl	0x98ec <syna_cdev_create+0xd8>
		00000000000098ec:  R_AARCH64_CALL26	register_chrdev_region
    98f0: 36f80200     	tbz	w0, #0x1f, 0x9930 <syna_cdev_create+0x11c>
    98f4: 2a0003f4     	mov	w20, w0
    98f8: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b34f
    98fc: 91000000     	add	x0, x0, #0x0
		00000000000098fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b34f
    9900: 1400005f     	b	0x9a7c <syna_cdev_create+0x268>
    9904: 910e0275     	add	x21, x19, #0x380
    9908: 90000003     	adrp	x3, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
    990c: 91000063     	add	x3, x3, #0x0
		000000000000990c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
    9910: aa1503e0     	mov	x0, x21
    9914: 2a1f03e1     	mov	w1, wzr
    9918: 52800022     	mov	w2, #0x1                // =1
    991c: 94000000     	bl	0x991c <syna_cdev_create+0x108>
		000000000000991c:  R_AARCH64_CALL26	alloc_chrdev_region
    9920: 37f80a80     	tbnz	w0, #0x1f, 0x9a70 <syna_cdev_create+0x25c>
    9924: b94002a8     	ldr	w8, [x21]
    9928: 53147d08     	lsr	w8, w8, #20
    992c: b90002c8     	str	w8, [x22]
		000000000000992c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x26d8
    9930: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x8c88
    9934: 91000021     	add	x1, x1, #0x0
		0000000000009934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x8c88
    9938: 910be260     	add	x0, x19, #0x2f8
    993c: 94000000     	bl	0x993c <syna_cdev_create+0x128>
		000000000000993c:  R_AARCH64_CALL26	cdev_init
    9940: b9438261     	ldr	w1, [x19, #0x380]
    9944: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009944:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    9948: 91000108     	add	x8, x8, #0x0
		0000000000009948:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    994c: 910be260     	add	x0, x19, #0x2f8
    9950: 52800022     	mov	w2, #0x1                // =1
    9954: f901ae68     	str	x8, [x19, #0x358]
    9958: 94000000     	bl	0x9958 <syna_cdev_create+0x144>
		0000000000009958:  R_AARCH64_CALL26	cdev_add
    995c: 37f80540     	tbnz	w0, #0x1f, 0x9a04 <syna_cdev_create+0x1f0>
    9960: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8c
    9964: 91000000     	add	x0, x0, #0x0
		0000000000009964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8c
    9968: 94000000     	bl	0x9968 <syna_cdev_create+0x154>
		0000000000009968:  R_AARCH64_CALL26	class_create
    996c: aa0003f4     	mov	x20, x0
    9970: b13ffc1f     	cmn	x0, #0xfff
    9974: 54000562     	b.hs	0x9a20 <syna_cdev_create+0x20c>
    9978: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009978:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_devnode
    997c: 91000108     	add	x8, x8, #0x0
		000000000000997c:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_devnode
    9980: 90000004     	adrp	x4, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1841a
    9984: 91000084     	add	x4, x4, #0x0
		0000000000009984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1841a
    9988: f9001288     	str	x8, [x20, #0x20]
    998c: aa1403e0     	mov	x0, x20
    9990: b9438262     	ldr	w2, [x19, #0x380]
    9994: aa1f03e1     	mov	x1, xzr
    9998: aa1f03e3     	mov	x3, xzr
    999c: 12004c45     	and	w5, w2, #0xfffff
    99a0: 94000000     	bl	0x99a0 <syna_cdev_create+0x18c>
		00000000000099a0:  R_AARCH64_CALL26	device_create
    99a4: b13ffc1f     	cmn	x0, #0xfff
    99a8: 54000482     	b.hs	0x9a38 <syna_cdev_create+0x224>
    99ac: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000099ac:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
    99b0: f901ca60     	str	x0, [x19, #0x390]
    99b4: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000099b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188b4
    99b8: 91000021     	add	x1, x1, #0x0
		00000000000099b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188b4
    99bc: b900011f     	str	wzr, [x8]
		00000000000099bc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
    99c0: 9113e268     	add	x8, x19, #0x4f8
    99c4: 90000002     	adrp	x2, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000099c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26dd
    99c8: 91000042     	add	x2, x2, #0x0
		00000000000099c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26dd
    99cc: 91142260     	add	x0, x19, #0x508
    99d0: f901c674     	str	x20, [x19, #0x388]
    99d4: b903867f     	str	wzr, [x19, #0x384]
    99d8: f9027e68     	str	x8, [x19, #0x4f8]
    99dc: f9028268     	str	x8, [x19, #0x500]
    99e0: 94000000     	bl	0x99e0 <syna_cdev_create+0x1cc>
		00000000000099e0:  R_AARCH64_CALL26	__init_waitqueue_head
    99e4: 2a1f03f4     	mov	w20, wzr
    99e8: 2a1403e0     	mov	w0, w20
    99ec: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    99f0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    99f4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    99f8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    99fc: d50323bf     	autiasp
    9a00: d65f03c0     	ret
    9a04: 2a0003f4     	mov	w20, w0
    9a08: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b597
    9a0c: 91000000     	add	x0, x0, #0x0
		0000000000009a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b597
    9a10: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b37b
    9a14: 91000021     	add	x1, x1, #0x0
		0000000000009a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b37b
    9a18: 94000000     	bl	0x9a18 <syna_cdev_create+0x204>
		0000000000009a18:  R_AARCH64_CALL26	_printk
    9a1c: 14000011     	b	0x9a60 <syna_cdev_create+0x24c>
    9a20: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19129
    9a24: 91000000     	add	x0, x0, #0x0
		0000000000009a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19129
    9a28: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b37b
    9a2c: 91000021     	add	x1, x1, #0x0
		0000000000009a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b37b
    9a30: 94000000     	bl	0x9a30 <syna_cdev_create+0x21c>
		0000000000009a30:  R_AARCH64_CALL26	_printk
    9a34: 14000009     	b	0x9a58 <syna_cdev_create+0x244>
    9a38: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbc6
    9a3c: 91000000     	add	x0, x0, #0x0
		0000000000009a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbc6
    9a40: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b37b
    9a44: 91000021     	add	x1, x1, #0x0
		0000000000009a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b37b
    9a48: 94000000     	bl	0x9a48 <syna_cdev_create+0x234>
		0000000000009a48:  R_AARCH64_CALL26	_printk
    9a4c: aa1403e0     	mov	x0, x20
    9a50: 94000000     	bl	0x9a50 <syna_cdev_create+0x23c>
		0000000000009a50:  R_AARCH64_CALL26	class_destroy
    9a54: 12800034     	mov	w20, #-0x2              // =-2
    9a58: 910be260     	add	x0, x19, #0x2f8
    9a5c: 94000000     	bl	0x9a5c <syna_cdev_create+0x248>
		0000000000009a5c:  R_AARCH64_CALL26	cdev_del
    9a60: b9438260     	ldr	w0, [x19, #0x380]
    9a64: 52800021     	mov	w1, #0x1                // =1
    9a68: 94000000     	bl	0x9a68 <syna_cdev_create+0x254>
		0000000000009a68:  R_AARCH64_CALL26	unregister_chrdev_region
    9a6c: 17ffffdf     	b	0x99e8 <syna_cdev_create+0x1d4>
    9a70: 2a0003f4     	mov	w20, w0
    9a74: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180d5
    9a78: 91000000     	add	x0, x0, #0x0
		0000000000009a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180d5
    9a7c: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b37b
    9a80: 91000021     	add	x1, x1, #0x0
		0000000000009a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b37b
    9a84: 94000000     	bl	0x9a84 <syna_cdev_create+0x270>
		0000000000009a84:  R_AARCH64_CALL26	_printk
    9a88: 17ffffd8     	b	0x99e8 <syna_cdev_create+0x1d4>
