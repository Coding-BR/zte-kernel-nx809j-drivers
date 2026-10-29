
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000076c <i2c_r_bytes>:
     76c: d503233f     	paciasp
     770: d10143ff     	sub	sp, sp, #0x50
     774: a9037bfd     	stp	x29, x30, [sp, #0x30]
     778: f90023f3     	str	x19, [sp, #0x40]
     77c: 9100c3fd     	add	x29, sp, #0x30
     780: d5384108     	mrs	x8, SP_EL0
     784: 52a00029     	mov	w9, #0x10000            // =65536
     788: f9438908     	ldr	x8, [x8, #0x710]
     78c: f81f83a8     	stur	x8, [x29, #-0x8]
     790: f9419408     	ldr	x8, [x0, #0x328]
     794: 390013e1     	strb	w1, [sp, #0x4]
     798: 910023e1     	add	x1, sp, #0x8
     79c: 7940050a     	ldrh	w10, [x8, #0x2]
     7a0: f90013e2     	str	x2, [sp, #0x20]
     7a4: 52800042     	mov	w2, #0x2                // =2
     7a8: b800a3e9     	stur	w9, [sp, #0xa]
     7ac: 910013e9     	add	x9, sp, #0x4
     7b0: f9400d00     	ldr	x0, [x8, #0x18]
     7b4: f9000be9     	str	x9, [sp, #0x10]
     7b8: 52800029     	mov	w9, #0x1                // =1
     7bc: 79001fff     	strh	wzr, [sp, #0xe]
     7c0: 790037e9     	strh	w9, [sp, #0x1a]
     7c4: 790013ea     	strh	w10, [sp, #0x8]
     7c8: 790033ea     	strh	w10, [sp, #0x18]
     7cc: 79003be3     	strh	w3, [sp, #0x1c]
     7d0: 79003fff     	strh	wzr, [sp, #0x1e]
     7d4: 94000000     	bl	0x7d4 <i2c_r_bytes+0x68>
		00000000000007d4:  R_AARCH64_CALL26	i2c_transfer
     7d8: 37f801a0     	tbnz	w0, #0x1f, 0x80c <i2c_r_bytes+0xa0>
     7dc: 7100081f     	cmp	w0, #0x2
     7e0: 540002e1     	b.ne	0x83c <i2c_r_bytes+0xd0>
     7e4: d5384108     	mrs	x8, SP_EL0
     7e8: f9438908     	ldr	x8, [x8, #0x710]
     7ec: f85f83a9     	ldur	x9, [x29, #-0x8]
     7f0: eb09011f     	cmp	x8, x9
     7f4: 54000381     	b.ne	0x864 <i2c_r_bytes+0xf8>
     7f8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     7fc: f94023f3     	ldr	x19, [sp, #0x40]
     800: 910143ff     	add	sp, sp, #0x50
     804: d50323bf     	autiasp
     808: d65f03c0     	ret
     80c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000080c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94
     810: 91000108     	add	x8, x8, #0x0
		0000000000000810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94
     814: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     818: 91000021     	add	x1, x1, #0x0
		0000000000000818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     81c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000081c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     820: 91000063     	add	x3, x3, #0x0
		0000000000000820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     824: 2a0003f3     	mov	w19, w0
     828: aa0803e0     	mov	x0, x8
     82c: 52800ca2     	mov	w2, #0x65               // =101
     830: 94000000     	bl	0x830 <i2c_r_bytes+0xc4>
		0000000000000830:  R_AARCH64_CALL26	_printk
     834: 2a1303e0     	mov	w0, w19
     838: 17ffffeb     	b	0x7e4 <i2c_r_bytes+0x78>
     83c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e
     840: 91000000     	add	x0, x0, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e
     844: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     848: 91000021     	add	x1, x1, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     84c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     850: 91000063     	add	x3, x3, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     854: 52800d02     	mov	w2, #0x68               // =104
     858: 94000000     	bl	0x858 <i2c_r_bytes+0xec>
		0000000000000858:  R_AARCH64_CALL26	_printk
     85c: 128000a0     	mov	w0, #-0x6               // =-6
     860: 17ffffe1     	b	0x7e4 <i2c_r_bytes+0x78>
     864: 94000000     	bl	0x864 <i2c_r_bytes+0xf8>
		0000000000000864:  R_AARCH64_CALL26	__stack_chk_fail
