
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029a7c <syna_spi_power_on>:
   29a7c: d503233f     	paciasp
   29a80: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   29a84: f9000bf5     	str	x21, [sp, #0x10]
   29a88: a9024ff4     	stp	x20, x19, [sp, #0x20]
   29a8c: 910003fd     	mov	x29, sp
   29a90: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0xc50>
		0000000000029a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d7a8
   29a94: 91000108     	add	x8, x8, #0x0
		0000000000029a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d7a8
   29a98: 7200003f     	tst	w1, #0x1
   29a9c: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0xc50>
		0000000000029a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d47e
   29aa0: 91000129     	add	x9, x9, #0x0
		0000000000029aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d47e
   29aa4: 2a0103f4     	mov	w20, w1
   29aa8: aa0003f3     	mov	x19, x0
   29aac: 9a881122     	csel	x2, x9, x8, ne
   29ab0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b12
   29ab4: 91000000     	add	x0, x0, #0x0
		0000000000029ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b12
   29ab8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xc50>
		0000000000029ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13e
   29abc: 91000021     	add	x1, x1, #0x0
		0000000000029abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13e
   29ac0: 94000000     	bl	0x29ac0 <syna_spi_power_on+0x44>
		0000000000029ac0:  R_AARCH64_CALL26	_printk
   29ac4: 360001f4     	tbz	w20, #0x0, 0x29b00 <syna_spi_power_on+0x84>
   29ac8: b9412a68     	ldr	w8, [x19, #0x128]
   29acc: 7100051f     	cmp	w8, #0x1
   29ad0: 5400026b     	b.lt	0x29b1c <syna_spi_power_on+0xa0>
   29ad4: 54000281     	b.ne	0x29b24 <syna_spi_power_on+0xa8>
   29ad8: f9409e60     	ldr	x0, [x19, #0x138]
   29adc: b13ffc1f     	cmn	x0, #0xfff
   29ae0: 54000c23     	b.lo	0x29c64 <syna_spi_power_on+0x1e8>
   29ae4: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b12d
   29ae8: 91000000     	add	x0, x0, #0x0
		0000000000029ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b12d
   29aec: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xc50>
		0000000000029aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13e
   29af0: 91000021     	add	x1, x1, #0x0
		0000000000029af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13e
   29af4: 94000000     	bl	0x29af4 <syna_spi_power_on+0x78>
		0000000000029af4:  R_AARCH64_CALL26	_printk
   29af8: 2a1f03f4     	mov	w20, wzr
   29afc: 14000074     	b	0x29ccc <syna_spi_power_on+0x250>
   29b00: b9410268     	ldr	w8, [x19, #0x100]
   29b04: 7100051f     	cmp	w8, #0x1
   29b08: 5400054b     	b.lt	0x29bb0 <syna_spi_power_on+0x134>
   29b0c: 54000381     	b.ne	0x29b7c <syna_spi_power_on+0x100>
   29b10: f9408a60     	ldr	x0, [x19, #0x110]
   29b14: 94000000     	bl	0x29b14 <syna_spi_power_on+0x98>
		0000000000029b14:  R_AARCH64_CALL26	regulator_disable
   29b18: 14000022     	b	0x29ba0 <syna_spi_power_on+0x124>
   29b1c: 2a1f03f4     	mov	w20, wzr
   29b20: 1400000d     	b	0x29b54 <syna_spi_power_on+0xd8>
   29b24: b9414260     	ldr	w0, [x19, #0x140]
   29b28: 7100041f     	cmp	w0, #0x1
   29b2c: 540000ab     	b.lt	0x29b40 <syna_spi_power_on+0xc4>
   29b30: b9415274     	ldr	w20, [x19, #0x150]
   29b34: 94000000     	bl	0x29b34 <syna_spi_power_on+0xb8>
		0000000000029b34:  R_AARCH64_CALL26	gpio_to_desc
   29b38: 2a1403e1     	mov	w1, w20
   29b3c: 94000000     	bl	0x29b3c <syna_spi_power_on+0xc0>
		0000000000029b3c:  R_AARCH64_CALL26	gpiod_set_raw_value
   29b40: 2a1f03f4     	mov	w20, wzr
   29b44: b9414a60     	ldr	w0, [x19, #0x148]
   29b48: 7100041f     	cmp	w0, #0x1
   29b4c: 5400004b     	b.lt	0x29b54 <syna_spi_power_on+0xd8>
   29b50: 94000000     	bl	0x29b50 <syna_spi_power_on+0xd4>
		0000000000029b50:  R_AARCH64_CALL26	msleep
   29b54: b9410268     	ldr	w8, [x19, #0x100]
   29b58: 7100051f     	cmp	w8, #0x1
   29b5c: 54000aab     	b.lt	0x29cb0 <syna_spi_power_on+0x234>
   29b60: 54000721     	b.ne	0x29c44 <syna_spi_power_on+0x1c8>
   29b64: f9408a60     	ldr	x0, [x19, #0x110]
   29b68: b13ffc1f     	cmn	x0, #0xfff
   29b6c: 54000883     	b.lo	0x29c7c <syna_spi_power_on+0x200>
   29b70: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c43d
   29b74: 91000000     	add	x0, x0, #0x0
		0000000000029b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c43d
   29b78: 14000046     	b	0x29c90 <syna_spi_power_on+0x214>
   29b7c: b9411a60     	ldr	w0, [x19, #0x118]
   29b80: 7100041f     	cmp	w0, #0x1
   29b84: 540000eb     	b.lt	0x29ba0 <syna_spi_power_on+0x124>
   29b88: b9415268     	ldr	w8, [x19, #0x150]
   29b8c: 7100011f     	cmp	w8, #0x0
   29b90: 1a9f17f4     	cset	w20, eq
   29b94: 94000000     	bl	0x29b94 <syna_spi_power_on+0x118>
		0000000000029b94:  R_AARCH64_CALL26	gpio_to_desc
   29b98: 2a1403e1     	mov	w1, w20
   29b9c: 94000000     	bl	0x29b9c <syna_spi_power_on+0x120>
		0000000000029b9c:  R_AARCH64_CALL26	gpiod_set_raw_value
   29ba0: b9412660     	ldr	w0, [x19, #0x124]
   29ba4: 7100041f     	cmp	w0, #0x1
   29ba8: 5400004b     	b.lt	0x29bb0 <syna_spi_power_on+0x134>
   29bac: 94000000     	bl	0x29bac <syna_spi_power_on+0x130>
		0000000000029bac:  R_AARCH64_CALL26	msleep
   29bb0: b9412a68     	ldr	w8, [x19, #0x128]
   29bb4: 7100051f     	cmp	w8, #0x1
   29bb8: 5400024b     	b.lt	0x29c00 <syna_spi_power_on+0x184>
   29bbc: 54000081     	b.ne	0x29bcc <syna_spi_power_on+0x150>
   29bc0: f9409e60     	ldr	x0, [x19, #0x138]
   29bc4: 94000000     	bl	0x29bc4 <syna_spi_power_on+0x148>
		0000000000029bc4:  R_AARCH64_CALL26	regulator_disable
   29bc8: 1400000a     	b	0x29bf0 <syna_spi_power_on+0x174>
   29bcc: b9414260     	ldr	w0, [x19, #0x140]
   29bd0: 7100041f     	cmp	w0, #0x1
   29bd4: 540000eb     	b.lt	0x29bf0 <syna_spi_power_on+0x174>
   29bd8: b9415268     	ldr	w8, [x19, #0x150]
   29bdc: 7100011f     	cmp	w8, #0x0
   29be0: 1a9f17f4     	cset	w20, eq
   29be4: 94000000     	bl	0x29be4 <syna_spi_power_on+0x168>
		0000000000029be4:  R_AARCH64_CALL26	gpio_to_desc
   29be8: 2a1403e1     	mov	w1, w20
   29bec: 94000000     	bl	0x29bec <syna_spi_power_on+0x170>
		0000000000029bec:  R_AARCH64_CALL26	gpiod_set_raw_value
   29bf0: b9414e60     	ldr	w0, [x19, #0x14c]
   29bf4: 7100041f     	cmp	w0, #0x1
   29bf8: 5400004b     	b.lt	0x29c00 <syna_spi_power_on+0x184>
   29bfc: 94000000     	bl	0x29bfc <syna_spi_power_on+0x180>
		0000000000029bfc:  R_AARCH64_CALL26	msleep
   29c00: b940f260     	ldr	w0, [x19, #0xf0]
   29c04: 94000000     	bl	0x29c04 <syna_spi_power_on+0x188>
		0000000000029c04:  R_AARCH64_CALL26	gpio_to_desc
   29c08: 2a1f03e1     	mov	w1, wzr
   29c0c: 94000000     	bl	0x29c0c <syna_spi_power_on+0x190>
		0000000000029c0c:  R_AARCH64_CALL26	gpiod_direction_output_raw
   29c10: 5284e200     	mov	w0, #0x2710             // =10000
   29c14: 52855f01     	mov	w1, #0x2af8             // =11000
   29c18: 52800042     	mov	w2, #0x2                // =2
   29c1c: 94000000     	bl	0x29c1c <syna_spi_power_on+0x1a0>
		0000000000029c1c:  R_AARCH64_CALL26	usleep_range_state
   29c20: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c103
   29c24: 91000000     	add	x0, x0, #0x0
		0000000000029c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c103
   29c28: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xc50>
		0000000000029c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13e
   29c2c: 91000021     	add	x1, x1, #0x0
		0000000000029c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13e
   29c30: 94000000     	bl	0x29c30 <syna_spi_power_on+0x1b4>
		0000000000029c30:  R_AARCH64_CALL26	_printk
   29c34: 2a1f03f4     	mov	w20, wzr
   29c38: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0xc50>
		0000000000029c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b883
   29c3c: 91000042     	add	x2, x2, #0x0
		0000000000029c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b883
   29c40: 1400001e     	b	0x29cb8 <syna_spi_power_on+0x23c>
   29c44: b9411a60     	ldr	w0, [x19, #0x118]
   29c48: 7100041f     	cmp	w0, #0x1
   29c4c: 540002ab     	b.lt	0x29ca0 <syna_spi_power_on+0x224>
   29c50: b9415275     	ldr	w21, [x19, #0x150]
   29c54: 94000000     	bl	0x29c54 <syna_spi_power_on+0x1d8>
		0000000000029c54:  R_AARCH64_CALL26	gpio_to_desc
   29c58: 2a1503e1     	mov	w1, w21
   29c5c: 94000000     	bl	0x29c5c <syna_spi_power_on+0x1e0>
		0000000000029c5c:  R_AARCH64_CALL26	gpiod_set_raw_value
   29c60: 14000010     	b	0x29ca0 <syna_spi_power_on+0x224>
   29c64: 94000000     	bl	0x29c64 <syna_spi_power_on+0x1e8>
		0000000000029c64:  R_AARCH64_CALL26	regulator_enable
   29c68: 2a0003f4     	mov	w20, w0
   29c6c: 36fff6c0     	tbz	w0, #0x1f, 0x29b44 <syna_spi_power_on+0xc8>
   29c70: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17cda
   29c74: 91000000     	add	x0, x0, #0x0
		0000000000029c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17cda
   29c78: 14000006     	b	0x29c90 <syna_spi_power_on+0x214>
   29c7c: 94000000     	bl	0x29c7c <syna_spi_power_on+0x200>
		0000000000029c7c:  R_AARCH64_CALL26	regulator_enable
   29c80: 2a0003f4     	mov	w20, w0
   29c84: 36f800e0     	tbz	w0, #0x1f, 0x29ca0 <syna_spi_power_on+0x224>
   29c88: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bef2
   29c8c: 91000000     	add	x0, x0, #0x0
		0000000000029c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bef2
   29c90: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xc50>
		0000000000029c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13e
   29c94: 91000021     	add	x1, x1, #0x0
		0000000000029c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13e
   29c98: 94000000     	bl	0x29c98 <syna_spi_power_on+0x21c>
		0000000000029c98:  R_AARCH64_CALL26	_printk
   29c9c: 1400000c     	b	0x29ccc <syna_spi_power_on+0x250>
   29ca0: b9412260     	ldr	w0, [x19, #0x120]
   29ca4: 7100041f     	cmp	w0, #0x1
   29ca8: 5400004b     	b.lt	0x29cb0 <syna_spi_power_on+0x234>
   29cac: 94000000     	bl	0x29cac <syna_spi_power_on+0x230>
		0000000000029cac:  R_AARCH64_CALL26	msleep
   29cb0: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0xc50>
		0000000000029cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a753
   29cb4: 91000042     	add	x2, x2, #0x0
		0000000000029cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a753
   29cb8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0xc50>
		0000000000029cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19efd
   29cbc: 91000000     	add	x0, x0, #0x0
		0000000000029cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19efd
   29cc0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0xc50>
		0000000000029cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a13e
   29cc4: 91000021     	add	x1, x1, #0x0
		0000000000029cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a13e
   29cc8: 94000000     	bl	0x29cc8 <syna_spi_power_on+0x24c>
		0000000000029cc8:  R_AARCH64_CALL26	_printk
   29ccc: 2a1403e0     	mov	w0, w20
   29cd0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   29cd4: f9400bf5     	ldr	x21, [sp, #0x10]
   29cd8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   29cdc: d50323bf     	autiasp
   29ce0: d65f03c0     	ret
