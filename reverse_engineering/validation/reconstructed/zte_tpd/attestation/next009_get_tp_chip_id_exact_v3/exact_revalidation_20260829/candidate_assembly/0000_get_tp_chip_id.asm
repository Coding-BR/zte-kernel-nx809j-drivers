
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000093cc <get_tp_chip_id>:
    93cc: d503233f     	paciasp
    93d0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    93d4: f9000bf5     	str	x21, [sp, #0x10]
    93d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    93dc: 910003fd     	mov	x29, sp
    93e0: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000093e0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    93e4: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000093e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac3d
    93e8: 91000273     	add	x19, x19, #0x0
		00000000000093e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac3d
    93ec: f9400115     	ldr	x21, [x8]
		00000000000093ec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    93f0: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000093f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a382
    93f4: 91000000     	add	x0, x0, #0x0
		00000000000093f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a382
    93f8: aa1303e1     	mov	x1, x19
    93fc: 94000000     	bl	0x93fc <get_tp_chip_id+0x30>
		00000000000093fc:  R_AARCH64_CALL26	_printk
    9400: 90000014     	adrp	x20, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    9404: 91000294     	add	x20, x20, #0x0
		0000000000009404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9408: 52801fe8     	mov	w8, #0xff               // =255
    940c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000940c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3ab
    9410: 91000000     	add	x0, x0, #0x0
		0000000000009410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3ab
    9414: aa1303e1     	mov	x1, x19
    9418: aa1403e2     	mov	x2, x20
    941c: 39111aa8     	strb	w8, [x21, #0x446]
    9420: 94000000     	bl	0x9420 <get_tp_chip_id+0x54>
		0000000000009420:  R_AARCH64_CALL26	_printk
    9424: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009424:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l
    9428: 91000273     	add	x19, x19, #0x0
		0000000000009428:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l
    942c: aa1403e0     	mov	x0, x20
    9430: f9400661     	ldr	x1, [x19, #0x8]
    9434: 52800162     	mov	w2, #0xb                // =11
    9438: 94000000     	bl	0x9438 <get_tp_chip_id+0x6c>
		0000000000009438:  R_AARCH64_CALL26	strnstr
    943c: b5000a60     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9440: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009440:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x10
    9444: 91000273     	add	x19, x19, #0x0
		0000000000009444:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x10
    9448: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    944c: 91000000     	add	x0, x0, #0x0
		000000000000944c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9450: f9400661     	ldr	x1, [x19, #0x8]
    9454: 52800162     	mov	w2, #0xb                // =11
    9458: 94000000     	bl	0x9458 <get_tp_chip_id+0x8c>
		0000000000009458:  R_AARCH64_CALL26	strnstr
    945c: b5000960     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9460: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009460:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x20
    9464: 91000273     	add	x19, x19, #0x0
		0000000000009464:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x20
    9468: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    946c: 91000000     	add	x0, x0, #0x0
		000000000000946c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9470: f9400661     	ldr	x1, [x19, #0x8]
    9474: 52800162     	mov	w2, #0xb                // =11
    9478: 94000000     	bl	0x9478 <get_tp_chip_id+0xac>
		0000000000009478:  R_AARCH64_CALL26	strnstr
    947c: b5000860     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9480: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009480:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x30
    9484: 91000273     	add	x19, x19, #0x0
		0000000000009484:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x30
    9488: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    948c: 91000000     	add	x0, x0, #0x0
		000000000000948c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9490: f9400661     	ldr	x1, [x19, #0x8]
    9494: 52800162     	mov	w2, #0xb                // =11
    9498: 94000000     	bl	0x9498 <get_tp_chip_id+0xcc>
		0000000000009498:  R_AARCH64_CALL26	strnstr
    949c: b5000760     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    94a0: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000094a0:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x40
    94a4: 91000273     	add	x19, x19, #0x0
		00000000000094a4:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x40
    94a8: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000094a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    94ac: 91000000     	add	x0, x0, #0x0
		00000000000094ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    94b0: f9400661     	ldr	x1, [x19, #0x8]
    94b4: 52800162     	mov	w2, #0xb                // =11
    94b8: 94000000     	bl	0x94b8 <get_tp_chip_id+0xec>
		00000000000094b8:  R_AARCH64_CALL26	strnstr
    94bc: b5000660     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    94c0: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000094c0:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x50
    94c4: 91000273     	add	x19, x19, #0x0
		00000000000094c4:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x50
    94c8: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000094c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    94cc: 91000000     	add	x0, x0, #0x0
		00000000000094cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    94d0: f9400661     	ldr	x1, [x19, #0x8]
    94d4: 52800162     	mov	w2, #0xb                // =11
    94d8: 94000000     	bl	0x94d8 <get_tp_chip_id+0x10c>
		00000000000094d8:  R_AARCH64_CALL26	strnstr
    94dc: b5000560     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    94e0: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000094e0:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x60
    94e4: 91000273     	add	x19, x19, #0x0
		00000000000094e4:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x60
    94e8: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000094e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    94ec: 91000000     	add	x0, x0, #0x0
		00000000000094ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    94f0: f9400661     	ldr	x1, [x19, #0x8]
    94f4: 52800162     	mov	w2, #0xb                // =11
    94f8: 94000000     	bl	0x94f8 <get_tp_chip_id+0x12c>
		00000000000094f8:  R_AARCH64_CALL26	strnstr
    94fc: b5000460     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9500: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009500:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x70
    9504: 91000273     	add	x19, x19, #0x0
		0000000000009504:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x70
    9508: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    950c: 91000000     	add	x0, x0, #0x0
		000000000000950c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9510: f9400661     	ldr	x1, [x19, #0x8]
    9514: 52800162     	mov	w2, #0xb                // =11
    9518: 94000000     	bl	0x9518 <get_tp_chip_id+0x14c>
		0000000000009518:  R_AARCH64_CALL26	strnstr
    951c: b5000360     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9520: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009520:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x80
    9524: 91000273     	add	x19, x19, #0x0
		0000000000009524:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x80
    9528: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    952c: 91000000     	add	x0, x0, #0x0
		000000000000952c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9530: f9400661     	ldr	x1, [x19, #0x8]
    9534: 52800162     	mov	w2, #0xb                // =11
    9538: 94000000     	bl	0x9538 <get_tp_chip_id+0x16c>
		0000000000009538:  R_AARCH64_CALL26	strnstr
    953c: b5000260     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9540: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009540:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0x90
    9544: 91000273     	add	x19, x19, #0x0
		0000000000009544:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0x90
    9548: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    954c: 91000000     	add	x0, x0, #0x0
		000000000000954c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9550: f9400661     	ldr	x1, [x19, #0x8]
    9554: 52800162     	mov	w2, #0xb                // =11
    9558: 94000000     	bl	0x9558 <get_tp_chip_id+0x18c>
		0000000000009558:  R_AARCH64_CALL26	strnstr
    955c: b5000160     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9560: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009560:  R_AARCH64_ADR_PREL_PG_HI21	tp_ic_vendor_info_l+0xa0
    9564: 91000273     	add	x19, x19, #0x0
		0000000000009564:  R_AARCH64_ADD_ABS_LO12_NC	tp_ic_vendor_info_l+0xa0
    9568: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c18a
    956c: 91000000     	add	x0, x0, #0x0
		000000000000956c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c18a
    9570: f9400661     	ldr	x1, [x19, #0x8]
    9574: 52800162     	mov	w2, #0xb                // =11
    9578: 94000000     	bl	0x9578 <get_tp_chip_id+0x1ac>
		0000000000009578:  R_AARCH64_CALL26	strnstr
    957c: b5000060     	cbnz	x0, 0x9588 <get_tp_chip_id+0x1bc>
    9580: 12800080     	mov	w0, #-0x5               // =-5
    9584: 14000009     	b	0x95a8 <get_tp_chip_id+0x1dc>
    9588: 39400262     	ldrb	w2, [x19]
    958c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000958c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d66
    9590: 91000000     	add	x0, x0, #0x0
		0000000000009590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d66
    9594: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac3d
    9598: 91000021     	add	x1, x1, #0x0
		0000000000009598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac3d
    959c: 39111aa2     	strb	w2, [x21, #0x446]
    95a0: 94000000     	bl	0x95a0 <get_tp_chip_id+0x1d4>
		00000000000095a0:  R_AARCH64_CALL26	_printk
    95a4: 2a1f03e0     	mov	w0, wzr
    95a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    95ac: f9400bf5     	ldr	x21, [sp, #0x10]
    95b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    95b4: d50323bf     	autiasp
    95b8: d65f03c0     	ret
