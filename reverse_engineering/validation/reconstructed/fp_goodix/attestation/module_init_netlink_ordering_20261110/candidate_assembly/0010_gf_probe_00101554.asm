
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000798 <gf_probe>:
     798: d503233f     	paciasp
     79c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     7a0: f9000bf9     	str	x25, [sp, #0x10]
     7a4: a9025ff8     	stp	x24, x23, [sp, #0x20]
     7a8: a90357f6     	stp	x22, x21, [sp, #0x30]
     7ac: a9044ff4     	stp	x20, x19, [sp, #0x40]
     7b0: 910003fd     	mov	x29, sp
     7b4: aa0003f4     	mov	x20, x0
     7b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78
     7bc: 91000000     	add	x0, x0, #0x0
		00000000000007bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78
     7c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1010
     7c4: 91000021     	add	x1, x1, #0x0
		00000000000007c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1010
     7c8: 94000000     	bl	0x7c8 <gf_probe+0x30>
		00000000000007c8:  R_AARCH64_CALL26	_printk
     7cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     7d0: 91000000     	add	x0, x0, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     7d4: 94000000     	bl	0x7d4 <gf_probe+0x3c>
		00000000000007d4:  R_AARCH64_CALL26	mutex_lock
     7d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x38
     7dc: b9400108     	ldr	w8, [x8]
		00000000000007dc:  R_AARCH64_LDST32_ABS_LO12_NC	gf+0x38
     7e0: 350000e8     	cbnz	w8, 0x7fc <gf_probe+0x64>
     7e4: 90000015     	adrp	x21, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x18
     7e8: 910002b5     	add	x21, x21, #0x0
		00000000000007e8:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x18
     7ec: f94002a8     	ldr	x8, [x21]
     7f0: b40001e8     	cbz	x8, 0x82c <gf_probe+0x94>
     7f4: b94106a8     	ldr	w8, [x21, #0x104]
     7f8: 350001a8     	cbnz	w8, 0x82c <gf_probe+0x94>
     7fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007fc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     800: 91000000     	add	x0, x0, #0x0
		0000000000000800:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     804: 94000000     	bl	0x804 <gf_probe+0x6c>
		0000000000000804:  R_AARCH64_CALL26	mutex_unlock
     808: 128001f4     	mov	w20, #-0x10             // =-16
     80c: 2a1403e0     	mov	w0, w20
     810: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     814: f9400bf9     	ldr	x25, [sp, #0x10]
     818: a94357f6     	ldp	x22, x21, [sp, #0x30]
     81c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     820: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     824: d50323bf     	autiasp
     828: d65f03c0     	ret
     82c: 90000013     	adrp	x19, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	gf
     830: 91000273     	add	x19, x19, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	gf
     834: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000834:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     838: 91002268     	add	x8, x19, #0x8
     83c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000083c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     840: 91000000     	add	x0, x0, #0x0
		0000000000000840:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     844: f9000668     	str	x8, [x19, #0x8]
     848: f9000a68     	str	x8, [x19, #0x10]
     84c: 128002a8     	mov	w8, #-0x16              // =-22
     850: b9004268     	str	w8, [x19, #0x40]
     854: f8044268     	stur	x8, [x19, #0x44]
     858: d2dffd48     	mov	x8, #0xffea00000000     // =281380487430144
     85c: f2ffffe8     	movk	x8, #0xffff, lsl #48
     860: f9000e74     	str	x20, [x19, #0x18]
     864: a903227f     	stp	xzr, x8, [x19, #0x30]
     868: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     86c: b900027f     	str	wzr, [x19]
     870: b9004e7f     	str	wzr, [x19, #0x4c]
     874: 7900e27f     	strh	wzr, [x19, #0x70]
     878: a907fe7f     	stp	xzr, xzr, [x19, #0x78]
     87c: a908fe7f     	stp	xzr, xzr, [x19, #0x88]
     880: a909fe7f     	stp	xzr, xzr, [x19, #0x98]
     884: a9117e7f     	stp	xzr, xzr, [x19, #0x110]
     888: f90002ff     	str	xzr, [x23]
		0000000000000888:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     88c: f900011f     	str	xzr, [x8]
		000000000000088c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
     890: 94000000     	bl	0x890 <gf_probe+0xf8>
		0000000000000890:  R_AARCH64_CALL26	mutex_unlock
     894: 94000000     	bl	0x894 <gf_probe+0xfc>
		0000000000000894:  R_AARCH64_CALL26	input_allocate_device
     898: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     89c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
     8a0: f9001a60     	str	x0, [x19, #0x30]
     8a4: b4001460     	cbz	x0, 0xb30 <gf_probe+0x398>
     8a8: 52800021     	mov	w1, #0x1                // =1
     8ac: 52800cc2     	mov	w2, #0x66               // =102
     8b0: 94000000     	bl	0x8b0 <gf_probe+0x118>
		00000000000008b0:  R_AARCH64_CALL26	input_set_capability
     8b4: f94002c0     	ldr	x0, [x22]
		00000000000008b4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8b8: 52800021     	mov	w1, #0x1                // =1
     8bc: 52801162     	mov	w2, #0x8b               // =139
     8c0: 94000000     	bl	0x8c0 <gf_probe+0x128>
		00000000000008c0:  R_AARCH64_CALL26	input_set_capability
     8c4: f94002c0     	ldr	x0, [x22]
		00000000000008c4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8c8: 52800021     	mov	w1, #0x1                // =1
     8cc: 528013c2     	mov	w2, #0x9e               // =158
     8d0: 94000000     	bl	0x8d0 <gf_probe+0x138>
		00000000000008d0:  R_AARCH64_CALL26	input_set_capability
     8d4: f94002c0     	ldr	x0, [x22]
		00000000000008d4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8d8: 52800021     	mov	w1, #0x1                // =1
     8dc: 52800e82     	mov	w2, #0x74               // =116
     8e0: 94000000     	bl	0x8e0 <gf_probe+0x148>
		00000000000008e0:  R_AARCH64_CALL26	input_set_capability
     8e4: f94002c0     	ldr	x0, [x22]
		00000000000008e4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8e8: 52800021     	mov	w1, #0x1                // =1
     8ec: 52800ce2     	mov	w2, #0x67               // =103
     8f0: 94000000     	bl	0x8f0 <gf_probe+0x158>
		00000000000008f0:  R_AARCH64_CALL26	input_set_capability
     8f4: f94002c0     	ldr	x0, [x22]
		00000000000008f4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8f8: 52800021     	mov	w1, #0x1                // =1
     8fc: 52800d82     	mov	w2, #0x6c               // =108
     900: 94000000     	bl	0x900 <gf_probe+0x168>
		0000000000000900:  R_AARCH64_CALL26	input_set_capability
     904: f94002c0     	ldr	x0, [x22]
		0000000000000904:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     908: 52800021     	mov	w1, #0x1                // =1
     90c: 52800d42     	mov	w2, #0x6a               // =106
     910: 94000000     	bl	0x910 <gf_probe+0x178>
		0000000000000910:  R_AARCH64_CALL26	input_set_capability
     914: f94002c0     	ldr	x0, [x22]
		0000000000000914:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     918: 52800021     	mov	w1, #0x1                // =1
     91c: 52800d22     	mov	w2, #0x69               // =105
     920: 94000000     	bl	0x920 <gf_probe+0x188>
		0000000000000920:  R_AARCH64_CALL26	input_set_capability
     924: f94002c0     	ldr	x0, [x22]
		0000000000000924:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     928: 52800021     	mov	w1, #0x1                // =1
     92c: 52801a82     	mov	w2, #0xd4               // =212
     930: 94000000     	bl	0x930 <gf_probe+0x198>
		0000000000000930:  R_AARCH64_CALL26	input_set_capability
     934: f94002c0     	ldr	x0, [x22]
		0000000000000934:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     938: 52800021     	mov	w1, #0x1                // =1
     93c: 52800e42     	mov	w2, #0x72               // =114
     940: 94000000     	bl	0x940 <gf_probe+0x1a8>
		0000000000000940:  R_AARCH64_CALL26	input_set_capability
     944: f94002c0     	ldr	x0, [x22]
		0000000000000944:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     948: 52800021     	mov	w1, #0x1                // =1
     94c: 52800e62     	mov	w2, #0x73               // =115
     950: 94000000     	bl	0x950 <gf_probe+0x1b8>
		0000000000000950:  R_AARCH64_CALL26	input_set_capability
     954: f94002c0     	ldr	x0, [x22]
		0000000000000954:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     958: 52800021     	mov	w1, #0x1                // =1
     95c: 52801b22     	mov	w2, #0xd9               // =217
     960: 94000000     	bl	0x960 <gf_probe+0x1c8>
		0000000000000960:  R_AARCH64_CALL26	input_set_capability
     964: f94002c0     	ldr	x0, [x22]
		0000000000000964:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     968: 52800021     	mov	w1, #0x1                // =1
     96c: 52801b02     	mov	w2, #0xd8               // =216
     970: 94000000     	bl	0x970 <gf_probe+0x1d8>
		0000000000000970:  R_AARCH64_CALL26	input_set_capability
     974: f94002c8     	ldr	x8, [x22]
		0000000000000974:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     978: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cd
     97c: 91000129     	add	x9, x9, #0x0
		000000000000097c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cd
     980: f9000109     	str	x9, [x8]
     984: f94002c0     	ldr	x0, [x22]
		0000000000000984:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     988: 94000000     	bl	0x988 <gf_probe+0x1f0>
		0000000000000988:  R_AARCH64_CALL26	input_register_device
     98c: 35000e20     	cbnz	w0, 0xb50 <gf_probe+0x3b8>
     990: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x130
     994: 91000000     	add	x0, x0, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x130
     998: 94000000     	bl	0x998 <gf_probe+0x200>
		0000000000000998:  R_AARCH64_CALL26	wakeup_source_add
     99c: 52800141     	mov	w1, #0xa                // =10
     9a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cb
     9a4: 91000000     	add	x0, x0, #0x0
		00000000000009a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cb
     9a8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eb
     9ac: 91000063     	add	x3, x3, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eb
     9b0: 72a000c1     	movk	w1, #0x6, lsl #16
     9b4: 52800022     	mov	w2, #0x1                // =1
     9b8: 94000000     	bl	0x9b8 <gf_probe+0x220>
		00000000000009b8:  R_AARCH64_CALL26	alloc_workqueue
     9bc: f9000300     	str	x0, [x24]
		00000000000009bc:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     9c0: b4000300     	cbz	x0, 0xa20 <gf_probe+0x288>
     9c4: 90000019     	adrp	x25, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     9c8: 91000339     	add	x25, x25, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	gf+0xa0
     9cc: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     9d0: aa1903f4     	mov	x20, x25
     9d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     9d8: 91000021     	add	x1, x1, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     9dc: f8008e88     	str	x8, [x20, #0x8]!
     9e0: 91004328     	add	x8, x25, #0x10
     9e4: f9000b28     	str	x8, [x25, #0x10]
     9e8: 9100a320     	add	x0, x25, #0x28
     9ec: 52a00402     	mov	w2, #0x200000           // =2097152
     9f0: f9000f28     	str	x8, [x25, #0x18]
     9f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xd98
     9f8: 91000108     	add	x8, x8, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xd98
     9fc: aa1f03e3     	mov	x3, xzr
     a00: aa1f03e4     	mov	x4, xzr
     a04: f9001328     	str	x8, [x25, #0x20]
     a08: 94000000     	bl	0xa08 <gf_probe+0x270>
		0000000000000a08:  R_AARCH64_CALL26	init_timer_key
     a0c: f9400321     	ldr	x1, [x25]
     a10: 52800400     	mov	w0, #0x20               // =32
     a14: aa1403e2     	mov	x2, x20
     a18: 52809c43     	mov	w3, #0x4e2              // =1250
     a1c: 94000000     	bl	0xa1c <gf_probe+0x284>
		0000000000000a1c:  R_AARCH64_CALL26	queue_delayed_work_on
     a20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     a24: 91000000     	add	x0, x0, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     a28: 94000000     	bl	0xa28 <gf_probe+0x290>
		0000000000000a28:  R_AARCH64_CALL26	mutex_lock
     a2c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
     a30: f9400108     	ldr	x8, [x8]
		0000000000000a30:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x200
     a34: b2607d08     	orr	x8, x8, #0xffffffff00000000
     a38: b100051f     	cmn	x8, #0x1
     a3c: 54000360     	b.eq	0xaa8 <gf_probe+0x310>
     a40: aa2803e8     	mvn	x8, x8
     a44: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
     a48: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cd
     a4c: 91000084     	add	x4, x4, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cd
     a50: dac00108     	rbit	x8, x8
     a54: b9400129     	ldr	w9, [x9]
		0000000000000a54:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x120
     a58: aa1303e3     	mov	x3, x19
     a5c: dac01119     	clz	x25, x8
     a60: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x128
     a64: f9400100     	ldr	x0, [x8]
		0000000000000a64:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x128
     a68: f9400e68     	ldr	x8, [x19, #0x18]
     a6c: 2a095322     	orr	w2, w25, w9, lsl #20
     a70: 91004101     	add	x1, x8, #0x10
     a74: b9000262     	str	w2, [x19]
     a78: 94000000     	bl	0xa78 <gf_probe+0x2e0>
		0000000000000a78:  R_AARCH64_CALL26	device_create
     a7c: b13ffc1f     	cmn	x0, #0xfff
     a80: 540007a3     	b.lo	0xb74 <gf_probe+0x3dc>
     a84: aa0003f4     	mov	x20, x0
     a88: 34000774     	cbz	w20, 0xb74 <gf_probe+0x3dc>
     a8c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	gf
     a90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     a94: 91000000     	add	x0, x0, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     a98: b900011f     	str	wzr, [x8]
		0000000000000a98:  R_AARCH64_LDST32_ABS_LO12_NC	gf
     a9c: 94000000     	bl	0xa9c <gf_probe+0x304>
		0000000000000a9c:  R_AARCH64_CALL26	mutex_unlock
     aa0: 52800033     	mov	w19, #0x1               // =1
     aa4: 14000006     	b	0xabc <gf_probe+0x324>
     aa8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     aac: 91000000     	add	x0, x0, #0x0
		0000000000000aac:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     ab0: 94000000     	bl	0xab0 <gf_probe+0x318>
		0000000000000ab0:  R_AARCH64_CALL26	mutex_unlock
     ab4: 52800033     	mov	w19, #0x1               // =1
     ab8: 12800254     	mov	w20, #-0x13             // =-19
     abc: f9400308     	ldr	x8, [x24]
		0000000000000abc:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     ac0: b4000168     	cbz	x8, 0xaec <gf_probe+0x354>
     ac4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ac4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa8
     ac8: 91000000     	add	x0, x0, #0x0
		0000000000000ac8:  R_AARCH64_ADD_ABS_LO12_NC	gf+0xa8
     acc: 94000000     	bl	0xacc <gf_probe+0x334>
		0000000000000acc:  R_AARCH64_CALL26	cancel_delayed_work_sync
     ad0: f94002e0     	ldr	x0, [x23]
		0000000000000ad0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     ad4: b4000060     	cbz	x0, 0xae0 <gf_probe+0x348>
     ad8: 94000000     	bl	0xad8 <gf_probe+0x340>
		0000000000000ad8:  R_AARCH64_CALL26	panel_event_notifier_unregister
     adc: f90002ff     	str	xzr, [x23]
		0000000000000adc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     ae0: f9400300     	ldr	x0, [x24]
		0000000000000ae0:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     ae4: 94000000     	bl	0xae4 <gf_probe+0x34c>
		0000000000000ae4:  R_AARCH64_CALL26	destroy_workqueue
     ae8: f900031f     	str	xzr, [x24]
		0000000000000ae8:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0xa0
     aec: 340000f3     	cbz	w19, 0xb08 <gf_probe+0x370>
     af0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x130
     af4: 91000000     	add	x0, x0, #0x0
		0000000000000af4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x130
     af8: 94000000     	bl	0xaf8 <gf_probe+0x360>
		0000000000000af8:  R_AARCH64_CALL26	wakeup_source_remove
     afc: f94002c0     	ldr	x0, [x22]
		0000000000000afc:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     b00: 94000000     	bl	0xb00 <gf_probe+0x368>
		0000000000000b00:  R_AARCH64_CALL26	input_unregister_device
     b04: f90002df     	str	xzr, [x22]
		0000000000000b04:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     b08: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     b0c: 91000273     	add	x19, x19, #0x0
		0000000000000b0c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     b10: aa1303e0     	mov	x0, x19
     b14: 94000000     	bl	0xb14 <gf_probe+0x37c>
		0000000000000b14:  R_AARCH64_CALL26	mutex_lock
     b18: 52800028     	mov	w8, #0x1                // =1
     b1c: aa1303e0     	mov	x0, x19
     b20: f90002bf     	str	xzr, [x21]
     b24: b90106a8     	str	w8, [x21, #0x104]
     b28: 94000000     	bl	0xb28 <gf_probe+0x390>
		0000000000000b28:  R_AARCH64_CALL26	mutex_unlock
     b2c: 17ffff38     	b	0x80c <gf_probe+0x74>
     b30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcaa
     b34: 91000000     	add	x0, x0, #0x0
		0000000000000b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcaa
     b38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1010
     b3c: 91000021     	add	x1, x1, #0x0
		0000000000000b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1010
     b40: 94000000     	bl	0xb40 <gf_probe+0x3a8>
		0000000000000b40:  R_AARCH64_CALL26	_printk
     b44: 2a1f03f3     	mov	w19, wzr
     b48: 12800174     	mov	w20, #-0xc              // =-12
     b4c: 17ffffdc     	b	0xabc <gf_probe+0x324>
     b50: 2a0003f4     	mov	w20, w0
     b54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe00
     b58: 91000000     	add	x0, x0, #0x0
		0000000000000b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe00
     b5c: 94000000     	bl	0xb5c <gf_probe+0x3c4>
		0000000000000b5c:  R_AARCH64_CALL26	_printk
     b60: f94002c0     	ldr	x0, [x22]
		0000000000000b60:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     b64: 94000000     	bl	0xb64 <gf_probe+0x3cc>
		0000000000000b64:  R_AARCH64_CALL26	input_free_device
     b68: 2a1f03f3     	mov	w19, wzr
     b6c: f90002df     	str	xzr, [x22]
		0000000000000b6c:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     b70: 17ffffd3     	b	0xabc <gf_probe+0x324>
     b74: 52800028     	mov	w8, #0x1                // =1
     b78: 9ad92108     	lsl	x8, x8, x25
     b7c: 14000011     	b	0xbc0 <gf_probe+0x428>
     b80: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
     b84: 91000129     	add	x9, x9, #0x0
		0000000000000b84:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x200
     b88: f828313f     	stset	x8, [x9]
     b8c: 940000d1     	bl	0xed0 <list_add>
     b90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     b94: 91000000     	add	x0, x0, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     b98: 94000000     	bl	0xb98 <gf_probe+0x400>
		0000000000000b98:  R_AARCH64_CALL26	mutex_unlock
     b9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xed8
     ba0: 91000000     	add	x0, x0, #0x0
		0000000000000ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xed8
     ba4: 52800021     	mov	w1, #0x1                // =1
     ba8: 52800042     	mov	w2, #0x2                // =2
     bac: 52800083     	mov	w3, #0x4                // =4
     bb0: 52800044     	mov	w4, #0x2                // =2
     bb4: 94000000     	bl	0xbb4 <gf_probe+0x41c>
		0000000000000bb4:  R_AARCH64_CALL26	_printk
     bb8: 2a1f03f4     	mov	w20, wzr
     bbc: 17ffff14     	b	0x80c <gf_probe+0x74>
     bc0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
     bc4: 91000129     	add	x9, x9, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x200
     bc8: f9800131     	prfm	pstl1strm, [x9]
     bcc: c85f7d2a     	ldxr	x10, [x9]
     bd0: aa08014a     	orr	x10, x10, x8
     bd4: c80b7d2a     	stxr	w11, x10, [x9]
     bd8: 35ffffab     	cbnz	w11, 0xbcc <gf_probe+0x434>
     bdc: 17ffffec     	b	0xb8c <gf_probe+0x3f4>
