
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001eb8c <syna_spi_remove>:
   1eb8c: d503233f     	paciasp
   1eb90: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1eb94: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1eb98: 910003fd     	mov	x29, sp
   1eb9c: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb9c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f0c
   1eba0: b9400100     	ldr	w0, [x8]
		000000000001eba0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f0c
   1eba4: 7100041f     	cmp	w0, #0x1
   1eba8: 5400004b     	b.lt	0x1ebb0 <syna_spi_remove+0x24>
   1ebac: 94000000     	bl	0x1ebac <syna_spi_remove+0x20>
		000000000001ebac:  R_AARCH64_CALL26	gpio_free
   1ebb0: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ebb0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f54
   1ebb4: b9400100     	ldr	w0, [x8]
		000000000001ebb4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f54
   1ebb8: 7100041f     	cmp	w0, #0x1
   1ebbc: 5400004b     	b.lt	0x1ebc4 <syna_spi_remove+0x38>
   1ebc0: 94000000     	bl	0x1ebc0 <syna_spi_remove+0x34>
		000000000001ebc0:  R_AARCH64_CALL26	gpio_free
   1ebc4: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ebc4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f04
   1ebc8: b9400100     	ldr	w0, [x8]
		000000000001ebc8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f04
   1ebcc: 7100041f     	cmp	w0, #0x1
   1ebd0: 5400004b     	b.lt	0x1ebd8 <syna_spi_remove+0x4c>
   1ebd4: 94000000     	bl	0x1ebd4 <syna_spi_remove+0x48>
		000000000001ebd4:  R_AARCH64_CALL26	gpio_free
   1ebd8: 90000014     	adrp	x20, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ebd8:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   1ebdc: 90000013     	adrp	x19, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ebdc:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   1ebe0: f9400281     	ldr	x1, [x20]
		000000000001ebe0:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   1ebe4: b40000e1     	cbz	x1, 0x1ec00 <syna_spi_remove+0x74>
   1ebe8: f9400268     	ldr	x8, [x19]
		000000000001ebe8:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   1ebec: b4000728     	cbz	x8, 0x1ecd0 <syna_spi_remove+0x144>
   1ebf0: f9403900     	ldr	x0, [x8, #0x70]
   1ebf4: b40006e0     	cbz	x0, 0x1ecd0 <syna_spi_remove+0x144>
   1ebf8: 94000000     	bl	0x1ebf8 <syna_spi_remove+0x6c>
		000000000001ebf8:  R_AARCH64_CALL26	devm_kfree
   1ebfc: f900029f     	str	xzr, [x20]
		000000000001ebfc:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   1ec00: 90000014     	adrp	x20, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec00:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   1ec04: f9400281     	ldr	x1, [x20]
		000000000001ec04:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   1ec08: b40000e1     	cbz	x1, 0x1ec24 <syna_spi_remove+0x98>
   1ec0c: f9400268     	ldr	x8, [x19]
		000000000001ec0c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   1ec10: b40006c8     	cbz	x8, 0x1ece8 <syna_spi_remove+0x15c>
   1ec14: f9403900     	ldr	x0, [x8, #0x70]
   1ec18: b4000680     	cbz	x0, 0x1ece8 <syna_spi_remove+0x15c>
   1ec1c: 94000000     	bl	0x1ec1c <syna_spi_remove+0x90>
		000000000001ec1c:  R_AARCH64_CALL26	devm_kfree
   1ec20: f900029f     	str	xzr, [x20]
		000000000001ec20:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   1ec24: 90000014     	adrp	x20, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec24:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   1ec28: f9400281     	ldr	x1, [x20]
		000000000001ec28:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   1ec2c: b40000e1     	cbz	x1, 0x1ec48 <syna_spi_remove+0xbc>
   1ec30: f9400268     	ldr	x8, [x19]
		000000000001ec30:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   1ec34: b4000668     	cbz	x8, 0x1ed00 <syna_spi_remove+0x174>
   1ec38: f9403900     	ldr	x0, [x8, #0x70]
   1ec3c: b4000620     	cbz	x0, 0x1ed00 <syna_spi_remove+0x174>
   1ec40: 94000000     	bl	0x1ec40 <syna_spi_remove+0xb4>
		000000000001ec40:  R_AARCH64_CALL26	devm_kfree
   1ec44: f900029f     	str	xzr, [x20]
		000000000001ec44:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   1ec48: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec48:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f8c
   1ec4c: b9400108     	ldr	w8, [x8]
		000000000001ec4c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f8c
   1ec50: 7100051f     	cmp	w8, #0x1
   1ec54: 540000c1     	b.ne	0x1ec6c <syna_spi_remove+0xe0>
   1ec58: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec58:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f9c
   1ec5c: f9400100     	ldr	x0, [x8]
		000000000001ec5c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x30f9c
   1ec60: b4000120     	cbz	x0, 0x1ec84 <syna_spi_remove+0xf8>
   1ec64: 94000000     	bl	0x1ec64 <syna_spi_remove+0xd8>
		000000000001ec64:  R_AARCH64_CALL26	devm_regulator_put
   1ec68: 14000007     	b	0x1ec84 <syna_spi_remove+0xf8>
   1ec6c: 540000cb     	b.lt	0x1ec84 <syna_spi_remove+0xf8>
   1ec70: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec70:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30fa4
   1ec74: b9400100     	ldr	w0, [x8]
		000000000001ec74:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30fa4
   1ec78: 7100041f     	cmp	w0, #0x1
   1ec7c: 5400004b     	b.lt	0x1ec84 <syna_spi_remove+0xf8>
   1ec80: 94000000     	bl	0x1ec80 <syna_spi_remove+0xf4>
		000000000001ec80:  R_AARCH64_CALL26	gpio_free
   1ec84: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec84:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f64
   1ec88: b9400108     	ldr	w8, [x8]
		000000000001ec88:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f64
   1ec8c: 7100051f     	cmp	w8, #0x1
   1ec90: 540000c1     	b.ne	0x1eca8 <syna_spi_remove+0x11c>
   1ec94: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ec94:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f74
   1ec98: f9400100     	ldr	x0, [x8]
		000000000001ec98:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x30f74
   1ec9c: b4000120     	cbz	x0, 0x1ecc0 <syna_spi_remove+0x134>
   1eca0: 94000000     	bl	0x1eca0 <syna_spi_remove+0x114>
		000000000001eca0:  R_AARCH64_CALL26	devm_regulator_put
   1eca4: 14000007     	b	0x1ecc0 <syna_spi_remove+0x134>
   1eca8: 540000cb     	b.lt	0x1ecc0 <syna_spi_remove+0x134>
   1ecac: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ecac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30f7c
   1ecb0: b9400100     	ldr	w0, [x8]
		000000000001ecb0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30f7c
   1ecb4: 7100041f     	cmp	w0, #0x1
   1ecb8: 5400004b     	b.lt	0x1ecc0 <syna_spi_remove+0x134>
   1ecbc: 94000000     	bl	0x1ecbc <syna_spi_remove+0x130>
		000000000001ecbc:  R_AARCH64_CALL26	gpio_free
   1ecc0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1ecc4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1ecc8: d50323bf     	autiasp
   1eccc: d65f03c0     	ret
   1ecd0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ecd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1ecd4: 91000000     	add	x0, x0, #0x0
		000000000001ecd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1ecd8: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ecd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1ecdc: 91000021     	add	x1, x1, #0x0
		000000000001ecdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1ece0: 94000000     	bl	0x1ece0 <syna_spi_remove+0x154>
		000000000001ece0:  R_AARCH64_CALL26	_printk
   1ece4: 17ffffc6     	b	0x1ebfc <syna_spi_remove+0x70>
   1ece8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ece8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1ecec: 91000000     	add	x0, x0, #0x0
		000000000001ecec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1ecf0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ecf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1ecf4: 91000021     	add	x1, x1, #0x0
		000000000001ecf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1ecf8: 94000000     	bl	0x1ecf8 <syna_spi_remove+0x16c>
		000000000001ecf8:  R_AARCH64_CALL26	_printk
   1ecfc: 17ffffc9     	b	0x1ec20 <syna_spi_remove+0x94>
   1ed00: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ed00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1ed04: 91000000     	add	x0, x0, #0x0
		000000000001ed04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1ed08: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ed08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1ed0c: 91000021     	add	x1, x1, #0x0
		000000000001ed0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1ed10: 94000000     	bl	0x1ed10 <syna_spi_remove+0x184>
		000000000001ed10:  R_AARCH64_CALL26	_printk
   1ed14: 17ffffcc     	b	0x1ec44 <syna_spi_remove+0xb8>
