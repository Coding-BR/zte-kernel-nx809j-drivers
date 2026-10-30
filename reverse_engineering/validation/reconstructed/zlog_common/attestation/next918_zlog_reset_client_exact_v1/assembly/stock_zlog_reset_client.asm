
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006e0 <zlog_reset_client>:
     6e0: d503233f     	paciasp
     6e4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     6e8: f9000bf3     	str	x19, [sp, #0x10]
     6ec: 910003fd     	mov	x29, sp
     6f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
     6f4: 39400108     	ldrb	w8, [x8]
		00000000000006f4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
     6f8: 36000288     	tbz	w8, #0x0, 0x748 <zlog_reset_client+0x68>
     6fc: aa0003f3     	mov	x19, x0
     700: b4000320     	cbz	x0, 0x764 <zlog_reset_client+0x84>
     704: 9102c260     	add	x0, x19, #0xb0
     708: 94000000     	bl	0x708 <zlog_reset_client+0x28>
		0000000000000708:  R_AARCH64_CALL26	mutex_lock
     70c: a9500262     	ldp	x2, x0, [x19, #0x100]
     710: 2a1f03e1     	mov	w1, wzr
     714: b900e67f     	str	wzr, [x19, #0xe4]
     718: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     71c: 94000000     	bl	0x71c <zlog_reset_client+0x3c>
		000000000000071c:  R_AARCH64_CALL26	memset
     720: 14000017     	b	0x77c <zlog_reset_client+0x9c>
     724: 9103a268     	add	x8, x19, #0xe8
     728: 52800049     	mov	w9, #0x2                // =2
     72c: f829111f     	stclr	x9, [x8]
     730: 9102c260     	add	x0, x19, #0xb0
     734: 94000000     	bl	0x734 <zlog_reset_client+0x54>
		0000000000000734:  R_AARCH64_CALL26	mutex_unlock
     738: f9400bf3     	ldr	x19, [sp, #0x10]
     73c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     740: d50323bf     	autiasp
     744: d65f03c0     	ret
     748: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x416
     74c: 91000021     	add	x1, x1, #0x0
		000000000000074c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x416
     750: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x581
     754: 91000000     	add	x0, x0, #0x0
		0000000000000754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x581
     758: aa0103e2     	mov	x2, x1
     75c: 94000000     	bl	0x75c <zlog_reset_client+0x7c>
		000000000000075c:  R_AARCH64_CALL26	_printk
     760: 17fffff6     	b	0x738 <zlog_reset_client+0x58>
     764: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     768: 91000000     	add	x0, x0, #0x0
		0000000000000768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     76c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x416
     770: 91000021     	add	x1, x1, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x416
     774: 94000000     	bl	0x774 <zlog_reset_client+0x94>
		0000000000000774:  R_AARCH64_CALL26	_printk
     778: 17fffff0     	b	0x738 <zlog_reset_client+0x58>
     77c: 9103a268     	add	x8, x19, #0xe8
     780: 52800049     	mov	w9, #0x2                // =2
     784: f9800111     	prfm	pstl1strm, [x8]
     788: c85f7d0a     	ldxr	x10, [x8]
     78c: 8a29014a     	bic	x10, x10, x9
     790: c80b7d0a     	stxr	w11, x10, [x8]
     794: 35ffffab     	cbnz	w11, 0x788 <zlog_reset_client+0xa8>
     798: 17ffffe6     	b	0x730 <zlog_reset_client+0x50>
