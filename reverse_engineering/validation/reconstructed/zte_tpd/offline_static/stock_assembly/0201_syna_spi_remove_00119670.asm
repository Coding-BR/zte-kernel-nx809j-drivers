
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012de8 <syna_spi_remove>:
   12de8: d503233f     	paciasp
   12dec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   12df0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   12df4: 910003fd     	mov	x29, sp
   12df8: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012df8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d8
   12dfc: b9400100     	ldr	w0, [x8]
		0000000000012dfc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d8
   12e00: 7100041f     	cmp	w0, #0x1
   12e04: 5400004b     	b.lt	0x12e0c <syna_spi_remove+0x24>
   12e08: 94000000     	bl	0x12e08 <syna_spi_remove+0x20>
		0000000000012e08:  R_AARCH64_CALL26	gpio_free
   12e0c: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012e0c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x920
   12e10: b9400100     	ldr	w0, [x8]
		0000000000012e10:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x920
   12e14: 7100041f     	cmp	w0, #0x1
   12e18: 5400004b     	b.lt	0x12e20 <syna_spi_remove+0x38>
   12e1c: 94000000     	bl	0x12e1c <syna_spi_remove+0x34>
		0000000000012e1c:  R_AARCH64_CALL26	gpio_free
   12e20: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012e20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d0
   12e24: b9400100     	ldr	w0, [x8]
		0000000000012e24:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d0
   12e28: 7100041f     	cmp	w0, #0x1
   12e2c: 5400004b     	b.lt	0x12e34 <syna_spi_remove+0x4c>
   12e30: 94000000     	bl	0x12e30 <syna_spi_remove+0x48>
		0000000000012e30:  R_AARCH64_CALL26	gpio_free
   12e34: 90000014     	adrp	x20, 0x12000 <syna_spi_probe+0x344>
		0000000000012e34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a0
   12e38: 90000013     	adrp	x19, 0x12000 <syna_spi_probe+0x344>
		0000000000012e38:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x890
   12e3c: f9400281     	ldr	x1, [x20]
		0000000000012e3c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   12e40: b40000e1     	cbz	x1, 0x12e5c <syna_spi_remove+0x74>
   12e44: f9400268     	ldr	x8, [x19]
		0000000000012e44:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12e48: b4000728     	cbz	x8, 0x12f2c <syna_spi_remove+0x144>
   12e4c: f9403900     	ldr	x0, [x8, #0x70]
   12e50: b40006e0     	cbz	x0, 0x12f2c <syna_spi_remove+0x144>
   12e54: 94000000     	bl	0x12e54 <syna_spi_remove+0x6c>
		0000000000012e54:  R_AARCH64_CALL26	devm_kfree
   12e58: f900029f     	str	xzr, [x20]
		0000000000012e58:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   12e5c: 90000014     	adrp	x20, 0x12000 <syna_spi_probe+0x344>
		0000000000012e5c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   12e60: f9400281     	ldr	x1, [x20]
		0000000000012e60:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   12e64: b40000e1     	cbz	x1, 0x12e80 <syna_spi_remove+0x98>
   12e68: f9400268     	ldr	x8, [x19]
		0000000000012e68:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12e6c: b40006c8     	cbz	x8, 0x12f44 <syna_spi_remove+0x15c>
   12e70: f9403900     	ldr	x0, [x8, #0x70]
   12e74: b4000680     	cbz	x0, 0x12f44 <syna_spi_remove+0x15c>
   12e78: 94000000     	bl	0x12e78 <syna_spi_remove+0x90>
		0000000000012e78:  R_AARCH64_CALL26	devm_kfree
   12e7c: f900029f     	str	xzr, [x20]
		0000000000012e7c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   12e80: 90000014     	adrp	x20, 0x12000 <syna_spi_probe+0x344>
		0000000000012e80:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   12e84: f9400281     	ldr	x1, [x20]
		0000000000012e84:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   12e88: b40000e1     	cbz	x1, 0x12ea4 <syna_spi_remove+0xbc>
   12e8c: f9400268     	ldr	x8, [x19]
		0000000000012e8c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12e90: b4000668     	cbz	x8, 0x12f5c <syna_spi_remove+0x174>
   12e94: f9403900     	ldr	x0, [x8, #0x70]
   12e98: b4000620     	cbz	x0, 0x12f5c <syna_spi_remove+0x174>
   12e9c: 94000000     	bl	0x12e9c <syna_spi_remove+0xb4>
		0000000000012e9c:  R_AARCH64_CALL26	devm_kfree
   12ea0: f900029f     	str	xzr, [x20]
		0000000000012ea0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   12ea4: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012ea4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   12ea8: b9400108     	ldr	w8, [x8]
		0000000000012ea8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x958
   12eac: 7100051f     	cmp	w8, #0x1
   12eb0: 540000c1     	b.ne	0x12ec8 <syna_spi_remove+0xe0>
   12eb4: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012eb4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x968
   12eb8: f9400100     	ldr	x0, [x8]
		0000000000012eb8:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x968
   12ebc: b4000120     	cbz	x0, 0x12ee0 <syna_spi_remove+0xf8>
   12ec0: 94000000     	bl	0x12ec0 <syna_spi_remove+0xd8>
		0000000000012ec0:  R_AARCH64_CALL26	devm_regulator_put
   12ec4: 14000007     	b	0x12ee0 <syna_spi_remove+0xf8>
   12ec8: 540000cb     	b.lt	0x12ee0 <syna_spi_remove+0xf8>
   12ecc: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012ecc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   12ed0: b9400100     	ldr	w0, [x8]
		0000000000012ed0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   12ed4: 7100041f     	cmp	w0, #0x1
   12ed8: 5400004b     	b.lt	0x12ee0 <syna_spi_remove+0xf8>
   12edc: 94000000     	bl	0x12edc <syna_spi_remove+0xf4>
		0000000000012edc:  R_AARCH64_CALL26	gpio_free
   12ee0: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012ee0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x930
   12ee4: b9400108     	ldr	w8, [x8]
		0000000000012ee4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12ee8: 7100051f     	cmp	w8, #0x1
   12eec: 540000c1     	b.ne	0x12f04 <syna_spi_remove+0x11c>
   12ef0: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012ef0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x940
   12ef4: f9400100     	ldr	x0, [x8]
		0000000000012ef4:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x940
   12ef8: b4000120     	cbz	x0, 0x12f1c <syna_spi_remove+0x134>
   12efc: 94000000     	bl	0x12efc <syna_spi_remove+0x114>
		0000000000012efc:  R_AARCH64_CALL26	devm_regulator_put
   12f00: 14000007     	b	0x12f1c <syna_spi_remove+0x134>
   12f04: 540000cb     	b.lt	0x12f1c <syna_spi_remove+0x134>
   12f08: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012f08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   12f0c: b9400100     	ldr	w0, [x8]
		0000000000012f0c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   12f10: 7100041f     	cmp	w0, #0x1
   12f14: 5400004b     	b.lt	0x12f1c <syna_spi_remove+0x134>
   12f18: 94000000     	bl	0x12f18 <syna_spi_remove+0x130>
		0000000000012f18:  R_AARCH64_CALL26	gpio_free
   12f1c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   12f20: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   12f24: d50323bf     	autiasp
   12f28: d65f03c0     	ret
   12f2c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12f30: 91000000     	add	x0, x0, #0x0
		0000000000012f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12f34: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12f38: 91000021     	add	x1, x1, #0x0
		0000000000012f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12f3c: 94000000     	bl	0x12f3c <syna_spi_remove+0x154>
		0000000000012f3c:  R_AARCH64_CALL26	_printk
   12f40: 17ffffc6     	b	0x12e58 <syna_spi_remove+0x70>
   12f44: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12f48: 91000000     	add	x0, x0, #0x0
		0000000000012f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12f4c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12f50: 91000021     	add	x1, x1, #0x0
		0000000000012f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12f54: 94000000     	bl	0x12f54 <syna_spi_remove+0x16c>
		0000000000012f54:  R_AARCH64_CALL26	_printk
   12f58: 17ffffc9     	b	0x12e7c <syna_spi_remove+0x94>
   12f5c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12f60: 91000000     	add	x0, x0, #0x0
		0000000000012f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12f64: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12f68: 91000021     	add	x1, x1, #0x0
		0000000000012f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12f6c: 94000000     	bl	0x12f6c <syna_spi_remove+0x184>
		0000000000012f6c:  R_AARCH64_CALL26	_printk
   12f70: 17ffffcc     	b	0x12ea0 <syna_spi_remove+0xb8>
