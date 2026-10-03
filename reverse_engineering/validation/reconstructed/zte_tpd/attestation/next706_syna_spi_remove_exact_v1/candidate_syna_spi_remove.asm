
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029900 <syna_spi_remove>:
   29900: d503233f     	paciasp
   29904: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   29908: a9014ff4     	stp	x20, x19, [sp, #0x10]
   2990c: 910003fd     	mov	x29, sp
   29910: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029910:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f0c
   29914: b9400100     	ldr	w0, [x8]
		0000000000029914:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f0c
   29918: 7100041f     	cmp	w0, #0x1
   2991c: 5400004b     	b.lt	0x29924 <syna_spi_remove+0x24>
   29920: 94000000     	bl	0x29920 <syna_spi_remove+0x20>
		0000000000029920:  R_AARCH64_CALL26	gpio_free
   29924: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029924:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f54
   29928: b9400100     	ldr	w0, [x8]
		0000000000029928:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f54
   2992c: 7100041f     	cmp	w0, #0x1
   29930: 5400004b     	b.lt	0x29938 <syna_spi_remove+0x38>
   29934: 94000000     	bl	0x29934 <syna_spi_remove+0x34>
		0000000000029934:  R_AARCH64_CALL26	gpio_free
   29938: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029938:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f04
   2993c: b9400100     	ldr	w0, [x8]
		000000000002993c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f04
   29940: 7100041f     	cmp	w0, #0x1
   29944: 5400004b     	b.lt	0x2994c <syna_spi_remove+0x4c>
   29948: 94000000     	bl	0x29948 <syna_spi_remove+0x48>
		0000000000029948:  R_AARCH64_CALL26	gpio_free
   2994c: 90000014     	adrp	x20, 0x29000 <syna_cdev_process_reports+0x260>
		000000000002994c:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   29950: 90000013     	adrp	x19, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029950:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   29954: f9400281     	ldr	x1, [x20]
		0000000000029954:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29958: b40000e1     	cbz	x1, 0x29974 <syna_spi_remove+0x74>
   2995c: f9400268     	ldr	x8, [x19]
		000000000002995c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29960: b4000728     	cbz	x8, 0x29a44 <syna_spi_remove+0x144>
   29964: f9403900     	ldr	x0, [x8, #0x70]
   29968: b40006e0     	cbz	x0, 0x29a44 <syna_spi_remove+0x144>
   2996c: 94000000     	bl	0x2996c <syna_spi_remove+0x6c>
		000000000002996c:  R_AARCH64_CALL26	devm_kfree
   29970: f900029f     	str	xzr, [x20]
		0000000000029970:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29974: 90000014     	adrp	x20, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029974:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   29978: f9400281     	ldr	x1, [x20]
		0000000000029978:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   2997c: b40000e1     	cbz	x1, 0x29998 <syna_spi_remove+0x98>
   29980: f9400268     	ldr	x8, [x19]
		0000000000029980:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29984: b40006c8     	cbz	x8, 0x29a5c <syna_spi_remove+0x15c>
   29988: f9403900     	ldr	x0, [x8, #0x70]
   2998c: b4000680     	cbz	x0, 0x29a5c <syna_spi_remove+0x15c>
   29990: 94000000     	bl	0x29990 <syna_spi_remove+0x90>
		0000000000029990:  R_AARCH64_CALL26	devm_kfree
   29994: f900029f     	str	xzr, [x20]
		0000000000029994:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29998: 90000014     	adrp	x20, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029998:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   2999c: f9400281     	ldr	x1, [x20]
		000000000002999c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   299a0: b40000e1     	cbz	x1, 0x299bc <syna_spi_remove+0xbc>
   299a4: f9400268     	ldr	x8, [x19]
		00000000000299a4:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   299a8: b4000668     	cbz	x8, 0x29a74 <syna_spi_remove+0x174>
   299ac: f9403900     	ldr	x0, [x8, #0x70]
   299b0: b4000620     	cbz	x0, 0x29a74 <syna_spi_remove+0x174>
   299b4: 94000000     	bl	0x299b4 <syna_spi_remove+0xb4>
		00000000000299b4:  R_AARCH64_CALL26	devm_kfree
   299b8: f900029f     	str	xzr, [x20]
		00000000000299b8:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   299bc: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		00000000000299bc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f8c
   299c0: b9400108     	ldr	w8, [x8]
		00000000000299c0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f8c
   299c4: 7100051f     	cmp	w8, #0x1
   299c8: 540000c1     	b.ne	0x299e0 <syna_spi_remove+0xe0>
   299cc: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		00000000000299cc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f9c
   299d0: f9400100     	ldr	x0, [x8]
		00000000000299d0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x30f9c
   299d4: b4000120     	cbz	x0, 0x299f8 <syna_spi_remove+0xf8>
   299d8: 94000000     	bl	0x299d8 <syna_spi_remove+0xd8>
		00000000000299d8:  R_AARCH64_CALL26	devm_regulator_put
   299dc: 14000007     	b	0x299f8 <syna_spi_remove+0xf8>
   299e0: 540000cb     	b.lt	0x299f8 <syna_spi_remove+0xf8>
   299e4: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		00000000000299e4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30fa4
   299e8: b9400100     	ldr	w0, [x8]
		00000000000299e8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30fa4
   299ec: 7100041f     	cmp	w0, #0x1
   299f0: 5400004b     	b.lt	0x299f8 <syna_spi_remove+0xf8>
   299f4: 94000000     	bl	0x299f4 <syna_spi_remove+0xf4>
		00000000000299f4:  R_AARCH64_CALL26	gpio_free
   299f8: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		00000000000299f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f64
   299fc: b9400108     	ldr	w8, [x8]
		00000000000299fc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f64
   29a00: 7100051f     	cmp	w8, #0x1
   29a04: 540000c1     	b.ne	0x29a1c <syna_spi_remove+0x11c>
   29a08: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f74
   29a0c: f9400100     	ldr	x0, [x8]
		0000000000029a0c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x30f74
   29a10: b4000120     	cbz	x0, 0x29a34 <syna_spi_remove+0x134>
   29a14: 94000000     	bl	0x29a14 <syna_spi_remove+0x114>
		0000000000029a14:  R_AARCH64_CALL26	devm_regulator_put
   29a18: 14000007     	b	0x29a34 <syna_spi_remove+0x134>
   29a1c: 540000cb     	b.lt	0x29a34 <syna_spi_remove+0x134>
   29a20: 90000008     	adrp	x8, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f7c
   29a24: b9400100     	ldr	w0, [x8]
		0000000000029a24:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f7c
   29a28: 7100041f     	cmp	w0, #0x1
   29a2c: 5400004b     	b.lt	0x29a34 <syna_spi_remove+0x134>
   29a30: 94000000     	bl	0x29a30 <syna_spi_remove+0x130>
		0000000000029a30:  R_AARCH64_CALL26	gpio_free
   29a34: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   29a38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   29a3c: d50323bf     	autiasp
   29a40: d65f03c0     	ret
   29a44: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1c6
   29a48: 91000000     	add	x0, x0, #0x0
		0000000000029a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1c6
   29a4c: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbec
   29a50: 91000021     	add	x1, x1, #0x0
		0000000000029a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbec
   29a54: 94000000     	bl	0x29a54 <syna_spi_remove+0x154>
		0000000000029a54:  R_AARCH64_CALL26	_printk
   29a58: 17ffffc6     	b	0x29970 <syna_spi_remove+0x70>
   29a5c: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1c6
   29a60: 91000000     	add	x0, x0, #0x0
		0000000000029a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1c6
   29a64: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbec
   29a68: 91000021     	add	x1, x1, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbec
   29a6c: 94000000     	bl	0x29a6c <syna_spi_remove+0x16c>
		0000000000029a6c:  R_AARCH64_CALL26	_printk
   29a70: 17ffffc9     	b	0x29994 <syna_spi_remove+0x94>
   29a74: 90000000     	adrp	x0, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1c6
   29a78: 91000000     	add	x0, x0, #0x0
		0000000000029a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1c6
   29a7c: 90000001     	adrp	x1, 0x29000 <syna_cdev_process_reports+0x260>
		0000000000029a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbec
   29a80: 91000021     	add	x1, x1, #0x0
		0000000000029a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbec
   29a84: 94000000     	bl	0x29a84 <syna_spi_remove+0x184>
		0000000000029a84:  R_AARCH64_CALL26	_printk
   29a88: 17ffffcc     	b	0x299b8 <syna_spi_remove+0xb8>
