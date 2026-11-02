
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022de8 <syna_spi_power_on>:
   22de8: d503233f     	paciasp
   22dec: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   22df0: f9000bf5     	str	x21, [sp, #0x10]
   22df4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   22df8: 910003fd     	mov	x29, sp
   22dfc: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c715
   22e00: 91000108     	add	x8, x8, #0x0
		0000000000022e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c715
   22e04: 7200003f     	tst	w1, #0x1
   22e08: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4aa
   22e0c: 91000129     	add	x9, x9, #0x0
		0000000000022e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4aa
   22e10: 2a0103f4     	mov	w20, w1
   22e14: aa0003f3     	mov	x19, x0
   22e18: 9a881122     	csel	x2, x9, x8, ne
   22e1c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185ef
   22e20: 91000000     	add	x0, x0, #0x0
		0000000000022e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185ef
   22e24: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198da
   22e28: 91000021     	add	x1, x1, #0x0
		0000000000022e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198da
   22e2c: 94000000     	bl	0x22e2c <syna_spi_power_on+0x44>
		0000000000022e2c:  R_AARCH64_CALL26	_printk
   22e30: 360001f4     	tbz	w20, #0x0, 0x22e6c <syna_spi_power_on+0x84>
   22e34: b9412a68     	ldr	w8, [x19, #0x128]
   22e38: 7100051f     	cmp	w8, #0x1
   22e3c: 5400026b     	b.lt	0x22e88 <syna_spi_power_on+0xa0>
   22e40: 54000281     	b.ne	0x22e90 <syna_spi_power_on+0xa8>
   22e44: f9409e60     	ldr	x0, [x19, #0x138]
   22e48: b13ffc1f     	cmn	x0, #0xfff
   22e4c: 54000c23     	b.lo	0x22fd0 <syna_spi_power_on+0x1e8>
   22e50: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5e9
   22e54: 91000000     	add	x0, x0, #0x0
		0000000000022e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5e9
   22e58: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198da
   22e5c: 91000021     	add	x1, x1, #0x0
		0000000000022e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198da
   22e60: 94000000     	bl	0x22e60 <syna_spi_power_on+0x78>
		0000000000022e60:  R_AARCH64_CALL26	_printk
   22e64: 2a1f03f4     	mov	w20, wzr
   22e68: 14000074     	b	0x23038 <syna_spi_power_on+0x250>
   22e6c: b9410268     	ldr	w8, [x19, #0x100]
   22e70: 7100051f     	cmp	w8, #0x1
   22e74: 5400054b     	b.lt	0x22f1c <syna_spi_power_on+0x134>
   22e78: 54000381     	b.ne	0x22ee8 <syna_spi_power_on+0x100>
   22e7c: f9408a60     	ldr	x0, [x19, #0x110]
   22e80: 94000000     	bl	0x22e80 <syna_spi_power_on+0x98>
		0000000000022e80:  R_AARCH64_CALL26	regulator_disable
   22e84: 14000022     	b	0x22f0c <syna_spi_power_on+0x124>
   22e88: 2a1f03f4     	mov	w20, wzr
   22e8c: 1400000d     	b	0x22ec0 <syna_spi_power_on+0xd8>
   22e90: b9414260     	ldr	w0, [x19, #0x140]
   22e94: 7100041f     	cmp	w0, #0x1
   22e98: 540000ab     	b.lt	0x22eac <syna_spi_power_on+0xc4>
   22e9c: b9415274     	ldr	w20, [x19, #0x150]
   22ea0: 94000000     	bl	0x22ea0 <syna_spi_power_on+0xb8>
		0000000000022ea0:  R_AARCH64_CALL26	gpio_to_desc
   22ea4: 2a1403e1     	mov	w1, w20
   22ea8: 94000000     	bl	0x22ea8 <syna_spi_power_on+0xc0>
		0000000000022ea8:  R_AARCH64_CALL26	gpiod_set_raw_value
   22eac: 2a1f03f4     	mov	w20, wzr
   22eb0: b9414a60     	ldr	w0, [x19, #0x148]
   22eb4: 7100041f     	cmp	w0, #0x1
   22eb8: 5400004b     	b.lt	0x22ec0 <syna_spi_power_on+0xd8>
   22ebc: 94000000     	bl	0x22ebc <syna_spi_power_on+0xd4>
		0000000000022ebc:  R_AARCH64_CALL26	msleep
   22ec0: b9410268     	ldr	w8, [x19, #0x100]
   22ec4: 7100051f     	cmp	w8, #0x1
   22ec8: 54000aab     	b.lt	0x2301c <syna_spi_power_on+0x234>
   22ecc: 54000721     	b.ne	0x22fb0 <syna_spi_power_on+0x1c8>
   22ed0: f9408a60     	ldr	x0, [x19, #0x110]
   22ed4: b13ffc1f     	cmn	x0, #0xfff
   22ed8: 54000883     	b.lo	0x22fe8 <syna_spi_power_on+0x200>
   22edc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b56e
   22ee0: 91000000     	add	x0, x0, #0x0
		0000000000022ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b56e
   22ee4: 14000046     	b	0x22ffc <syna_spi_power_on+0x214>
   22ee8: b9411a60     	ldr	w0, [x19, #0x118]
   22eec: 7100041f     	cmp	w0, #0x1
   22ef0: 540000eb     	b.lt	0x22f0c <syna_spi_power_on+0x124>
   22ef4: b9415268     	ldr	w8, [x19, #0x150]
   22ef8: 7100011f     	cmp	w8, #0x0
   22efc: 1a9f17f4     	cset	w20, eq
   22f00: 94000000     	bl	0x22f00 <syna_spi_power_on+0x118>
		0000000000022f00:  R_AARCH64_CALL26	gpio_to_desc
   22f04: 2a1403e1     	mov	w1, w20
   22f08: 94000000     	bl	0x22f08 <syna_spi_power_on+0x120>
		0000000000022f08:  R_AARCH64_CALL26	gpiod_set_raw_value
   22f0c: b9412660     	ldr	w0, [x19, #0x124]
   22f10: 7100041f     	cmp	w0, #0x1
   22f14: 5400004b     	b.lt	0x22f1c <syna_spi_power_on+0x134>
   22f18: 94000000     	bl	0x22f18 <syna_spi_power_on+0x130>
		0000000000022f18:  R_AARCH64_CALL26	msleep
   22f1c: b9412a68     	ldr	w8, [x19, #0x128]
   22f20: 7100051f     	cmp	w8, #0x1
   22f24: 5400024b     	b.lt	0x22f6c <syna_spi_power_on+0x184>
   22f28: 54000081     	b.ne	0x22f38 <syna_spi_power_on+0x150>
   22f2c: f9409e60     	ldr	x0, [x19, #0x138]
   22f30: 94000000     	bl	0x22f30 <syna_spi_power_on+0x148>
		0000000000022f30:  R_AARCH64_CALL26	regulator_disable
   22f34: 1400000a     	b	0x22f5c <syna_spi_power_on+0x174>
   22f38: b9414260     	ldr	w0, [x19, #0x140]
   22f3c: 7100041f     	cmp	w0, #0x1
   22f40: 540000eb     	b.lt	0x22f5c <syna_spi_power_on+0x174>
   22f44: b9415268     	ldr	w8, [x19, #0x150]
   22f48: 7100011f     	cmp	w8, #0x0
   22f4c: 1a9f17f4     	cset	w20, eq
   22f50: 94000000     	bl	0x22f50 <syna_spi_power_on+0x168>
		0000000000022f50:  R_AARCH64_CALL26	gpio_to_desc
   22f54: 2a1403e1     	mov	w1, w20
   22f58: 94000000     	bl	0x22f58 <syna_spi_power_on+0x170>
		0000000000022f58:  R_AARCH64_CALL26	gpiod_set_raw_value
   22f5c: b9414e60     	ldr	w0, [x19, #0x14c]
   22f60: 7100041f     	cmp	w0, #0x1
   22f64: 5400004b     	b.lt	0x22f6c <syna_spi_power_on+0x184>
   22f68: 94000000     	bl	0x22f68 <syna_spi_power_on+0x180>
		0000000000022f68:  R_AARCH64_CALL26	msleep
   22f6c: b940f260     	ldr	w0, [x19, #0xf0]
   22f70: 94000000     	bl	0x22f70 <syna_spi_power_on+0x188>
		0000000000022f70:  R_AARCH64_CALL26	gpio_to_desc
   22f74: 2a1f03e1     	mov	w1, wzr
   22f78: 94000000     	bl	0x22f78 <syna_spi_power_on+0x190>
		0000000000022f78:  R_AARCH64_CALL26	gpiod_direction_output_raw
   22f7c: 5284e200     	mov	w0, #0x2710             // =10000
   22f80: 52855f01     	mov	w1, #0x2af8             // =11000
   22f84: 52800042     	mov	w2, #0x2                // =2
   22f88: 94000000     	bl	0x22f88 <syna_spi_power_on+0x1a0>
		0000000000022f88:  R_AARCH64_CALL26	usleep_range_state
   22f8c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2e8
   22f90: 91000000     	add	x0, x0, #0x0
		0000000000022f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2e8
   22f94: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198da
   22f98: 91000021     	add	x1, x1, #0x0
		0000000000022f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198da
   22f9c: 94000000     	bl	0x22f9c <syna_spi_power_on+0x1b4>
		0000000000022f9c:  R_AARCH64_CALL26	_printk
   22fa0: 2a1f03f4     	mov	w20, wzr
   22fa4: 90000002     	adrp	x2, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac16
   22fa8: 91000042     	add	x2, x2, #0x0
		0000000000022fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac16
   22fac: 1400001e     	b	0x23024 <syna_spi_power_on+0x23c>
   22fb0: b9411a60     	ldr	w0, [x19, #0x118]
   22fb4: 7100041f     	cmp	w0, #0x1
   22fb8: 540002ab     	b.lt	0x2300c <syna_spi_power_on+0x224>
   22fbc: b9415275     	ldr	w21, [x19, #0x150]
   22fc0: 94000000     	bl	0x22fc0 <syna_spi_power_on+0x1d8>
		0000000000022fc0:  R_AARCH64_CALL26	gpio_to_desc
   22fc4: 2a1503e1     	mov	w1, w21
   22fc8: 94000000     	bl	0x22fc8 <syna_spi_power_on+0x1e0>
		0000000000022fc8:  R_AARCH64_CALL26	gpiod_set_raw_value
   22fcc: 14000010     	b	0x2300c <syna_spi_power_on+0x224>
   22fd0: 94000000     	bl	0x22fd0 <syna_spi_power_on+0x1e8>
		0000000000022fd0:  R_AARCH64_CALL26	regulator_enable
   22fd4: 2a0003f4     	mov	w20, w0
   22fd8: 36fff6c0     	tbz	w0, #0x1f, 0x22eb0 <syna_spi_power_on+0xc8>
   22fdc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ac7
   22fe0: 91000000     	add	x0, x0, #0x0
		0000000000022fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ac7
   22fe4: 14000006     	b	0x22ffc <syna_spi_power_on+0x214>
   22fe8: 94000000     	bl	0x22fe8 <syna_spi_power_on+0x200>
		0000000000022fe8:  R_AARCH64_CALL26	regulator_enable
   22fec: 2a0003f4     	mov	w20, w0
   22ff0: 36f800e0     	tbz	w0, #0x1f, 0x2300c <syna_spi_power_on+0x224>
   22ff4: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b10e
   22ff8: 91000000     	add	x0, x0, #0x0
		0000000000022ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b10e
   22ffc: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198da
   23000: 91000021     	add	x1, x1, #0x0
		0000000000023000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198da
   23004: 94000000     	bl	0x23004 <syna_spi_power_on+0x21c>
		0000000000023004:  R_AARCH64_CALL26	_printk
   23008: 1400000c     	b	0x23038 <syna_spi_power_on+0x250>
   2300c: b9412260     	ldr	w0, [x19, #0x120]
   23010: 7100041f     	cmp	w0, #0x1
   23014: 5400004b     	b.lt	0x2301c <syna_spi_power_on+0x234>
   23018: 94000000     	bl	0x23018 <syna_spi_power_on+0x230>
		0000000000023018:  R_AARCH64_CALL26	msleep
   2301c: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		000000000002301c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d05
   23020: 91000042     	add	x2, x2, #0x0
		0000000000023020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d05
   23024: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19736
   23028: 91000000     	add	x0, x0, #0x0
		0000000000023028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19736
   2302c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		000000000002302c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198da
   23030: 91000021     	add	x1, x1, #0x0
		0000000000023030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198da
   23034: 94000000     	bl	0x23034 <syna_spi_power_on+0x24c>
		0000000000023034:  R_AARCH64_CALL26	_printk
   23038: 2a1403e0     	mov	w0, w20
   2303c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   23040: f9400bf5     	ldr	x21, [sp, #0x10]
   23044: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   23048: d50323bf     	autiasp
   2304c: d65f03c0     	ret
