
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006d4 <zlog_reset_client>:
     6d4: d503233f     	paciasp
     6d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     6dc: f9000bf3     	str	x19, [sp, #0x10]
     6e0: 910003fd     	mov	x29, sp
     6e4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
     6e8: 39400108     	ldrb	w8, [x8]
		00000000000006e8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
     6ec: 36000288     	tbz	w8, #0x0, 0x73c <zlog_reset_client+0x68>
     6f0: aa0003f3     	mov	x19, x0
     6f4: b4000320     	cbz	x0, 0x758 <zlog_reset_client+0x84>
     6f8: 9102c260     	add	x0, x19, #0xb0
     6fc: 94000000     	bl	0x6fc <zlog_reset_client+0x28>
		00000000000006fc:  R_AARCH64_CALL26	mutex_lock
     700: a9500262     	ldp	x2, x0, [x19, #0x100]
     704: 2a1f03e1     	mov	w1, wzr
     708: b900e67f     	str	wzr, [x19, #0xe4]
     70c: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     710: 94000000     	bl	0x710 <zlog_reset_client+0x3c>
		0000000000000710:  R_AARCH64_CALL26	memset
     714: 14000017     	b	0x770 <zlog_reset_client+0x9c>
     718: 9103a268     	add	x8, x19, #0xe8
     71c: 52800049     	mov	w9, #0x2                // =2
     720: f829111f     	stclr	x9, [x8]
     724: 9102c260     	add	x0, x19, #0xb0
     728: 94000000     	bl	0x728 <zlog_reset_client+0x54>
		0000000000000728:  R_AARCH64_CALL26	mutex_unlock
     72c: f9400bf3     	ldr	x19, [sp, #0x10]
     730: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     734: d50323bf     	autiasp
     738: d65f03c0     	ret
     73c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000073c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x400
     740: 91000021     	add	x1, x1, #0x0
		0000000000000740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x400
     744: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b
     748: 91000000     	add	x0, x0, #0x0
		0000000000000748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b
     74c: aa0103e2     	mov	x2, x1
     750: 94000000     	bl	0x750 <zlog_reset_client+0x7c>
		0000000000000750:  R_AARCH64_CALL26	_printk
     754: 17fffff6     	b	0x72c <zlog_reset_client+0x58>
     758: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     75c: 91000000     	add	x0, x0, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     760: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x400
     764: 91000021     	add	x1, x1, #0x0
		0000000000000764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x400
     768: 94000000     	bl	0x768 <zlog_reset_client+0x94>
		0000000000000768:  R_AARCH64_CALL26	_printk
     76c: 17fffff0     	b	0x72c <zlog_reset_client+0x58>
     770: 9103a268     	add	x8, x19, #0xe8
     774: 52800049     	mov	w9, #0x2                // =2
     778: f9800111     	prfm	pstl1strm, [x8]
     77c: c85f7d0a     	ldxr	x10, [x8]
     780: 8a29014a     	bic	x10, x10, x9
     784: c80b7d0a     	stxr	w11, x10, [x8]
     788: 35ffffab     	cbnz	w11, 0x77c <zlog_reset_client+0xa8>
     78c: 17ffffe6     	b	0x724 <zlog_reset_client+0x50>
