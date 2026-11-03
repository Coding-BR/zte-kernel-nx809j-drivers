
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009890 <syna_cdev_operation_begin>:
    9890: d503233f     	paciasp
    9894: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9898: a9014ff4     	stp	x20, x19, [sp, #0x10]
    989c: 910003fd     	mov	x29, sp
    98a0: aa0003f4     	mov	x20, x0
    98a4: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098a4:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    98a8: 91000000     	add	x0, x0, #0x0
		00000000000098a8:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    98ac: aa0103f3     	mov	x19, x1
    98b0: 94000000     	bl	0x98b0 <syna_cdev_operation_begin+0x20>
		00000000000098b0:  R_AARCH64_CALL26	mutex_lock
    98b4: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098b4:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_online
    98b8: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098b8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    98bc: 9000000c     	adrp	x12, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098bc:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_generation
    98c0: 3940010a     	ldrb	w10, [x8]
		00000000000098c0:  R_AARCH64_LDST8_ABS_LO12_NC	syna_cdev_lifecycle_online
    98c4: f9400129     	ldr	x9, [x9]
		00000000000098c4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data
    98c8: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e0
    98cc: f940010b     	ldr	x11, [x8]
		00000000000098cc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    98d0: f100013f     	cmp	x9, #0x0
    98d4: f9400189     	ldr	x9, [x12]
		00000000000098d4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_cdev_lifecycle_generation
    98d8: 1a8a03ea     	csel	w10, wzr, w10, eq
    98dc: f100017f     	cmp	x11, #0x0
    98e0: 1a8a03ea     	csel	w10, wzr, w10, eq
    98e4: eb14013f     	cmp	x9, x20
    98e8: 1a8a13f4     	csel	w20, wzr, w10, ne
    98ec: 7100069f     	cmp	w20, #0x1
    98f0: 54000121     	b.ne	0x9914 <syna_cdev_operation_begin+0x84>
    98f4: 14000010     	b	0x9934 <syna_cdev_operation_begin+0xa4>
    98f8: 52800029     	mov	w9, #0x1                // =1
    98fc: 9000000a     	adrp	x10, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000098fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    9900: 9100014a     	add	x10, x10, #0x0
		0000000000009900:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26d8
    9904: b829015f     	stadd	w9, [x10]
    9908: b4000073     	cbz	x19, 0x9914 <syna_cdev_operation_begin+0x84>
    990c: f9400108     	ldr	x8, [x8]
		000000000000990c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    9910: f9000268     	str	x8, [x19]
    9914: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009914:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    9918: 91000000     	add	x0, x0, #0x0
		0000000000009918:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    991c: 94000000     	bl	0x991c <syna_cdev_operation_begin+0x8c>
		000000000000991c:  R_AARCH64_CALL26	mutex_unlock
    9920: 2a1403e0     	mov	w0, w20
    9924: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9928: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    992c: d50323bf     	autiasp
    9930: d65f03c0     	ret
    9934: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009934:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    9938: 91000129     	add	x9, x9, #0x0
		0000000000009938:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26d8
    993c: f9800131     	prfm	pstl1strm, [x9]
    9940: 885f7d2a     	ldxr	w10, [x9]
    9944: 1100054a     	add	w10, w10, #0x1
    9948: 880b7d2a     	stxr	w11, w10, [x9]
    994c: 35ffffab     	cbnz	w11, 0x9940 <syna_cdev_operation_begin+0xb0>
    9950: b5fffdf3     	cbnz	x19, 0x990c <syna_cdev_operation_begin+0x7c>
    9954: 17fffff0     	b	0x9914 <syna_cdev_operation_begin+0x84>
