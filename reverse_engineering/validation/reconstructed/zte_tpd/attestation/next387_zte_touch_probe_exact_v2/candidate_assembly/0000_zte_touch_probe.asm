
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013d84 <zte_touch_probe>:
   13d84: d503233f     	paciasp
   13d88: d10103ff     	sub	sp, sp, #0x40
   13d8c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   13d90: a90257f6     	stp	x22, x21, [sp, #0x20]
   13d94: a9034ff4     	stp	x20, x19, [sp, #0x30]
   13d98: 910043fd     	add	x29, sp, #0x10
   13d9c: d5384108     	mrs	x8, SP_EL0
   13da0: aa0003f4     	mov	x20, x0
   13da4: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a4d
   13da8: 91000000     	add	x0, x0, #0x0
		0000000000013da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a4d
   13dac: f9438908     	ldr	x8, [x8, #0x710]
   13db0: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1852f
   13db4: 91000021     	add	x1, x1, #0x0
		0000000000013db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1852f
   13db8: 52816542     	mov	w2, #0xb2a              // =2858
   13dbc: f90007e8     	str	x8, [sp, #0x8]
   13dc0: 94000000     	bl	0x13dc0 <zte_touch_probe+0x3c>
		0000000000013dc0:  R_AARCH64_CALL26	_printk
   13dc4: 91004280     	add	x0, x20, #0x10
   13dc8: 52820101     	mov	w1, #0x1008             // =4104
   13dcc: 5281b802     	mov	w2, #0xdc0              // =3520
   13dd0: 94000000     	bl	0x13dd0 <zte_touch_probe+0x4c>
		0000000000013dd0:  R_AARCH64_CALL26	devm_kmalloc
   13dd4: b50000a0     	cbnz	x0, 0x13de8 <zte_touch_probe+0x64>
   13dd8: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d7cf
   13ddc: 91000000     	add	x0, x0, #0x0
		0000000000013ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d7cf
   13de0: 94000000     	bl	0x13de0 <zte_touch_probe+0x5c>
		0000000000013de0:  R_AARCH64_CALL26	_printk
   13de4: 14000246     	b	0x146fc <zte_touch_probe+0x978>
   13de8: 90000015     	adrp	x21, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013de8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   13dec: aa0003f3     	mov	x19, x0
   13df0: f906e414     	str	x20, [x0, #0xdc8]
   13df4: f90002a0     	str	x0, [x21]
		0000000000013df4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   13df8: f9005680     	str	x0, [x20, #0xa8]
   13dfc: 94000000     	bl	0x13dfc <zte_touch_probe+0x78>
		0000000000013dfc:  R_AARCH64_CALL26	zte_touch_pdev_register
   13e00: f9417e94     	ldr	x20, [x20, #0x2f8]
   13e04: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199e6
   13e08: 91000021     	add	x1, x1, #0x0
		0000000000013e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199e6
   13e0c: aa1f03e2     	mov	x2, xzr
   13e10: b90007ff     	str	wzr, [sp, #0x4]
   13e14: aa1403e0     	mov	x0, x20
   13e18: 94000000     	bl	0x13e18 <zte_touch_probe+0x94>
		0000000000013e18:  R_AARCH64_CALL26	of_find_property
   13e1c: f100001f     	cmp	x0, #0x0
   13e20: 1a9f07e8     	cset	w8, ne
   13e24: 39006e68     	strb	w8, [x19, #0x1b]
   13e28: b4000080     	cbz	x0, 0x13e38 <zte_touch_probe+0xb4>
   13e2c: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1853f
   13e30: 91000000     	add	x0, x0, #0x0
		0000000000013e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1853f
   13e34: 94000000     	bl	0x13e34 <zte_touch_probe+0xb0>
		0000000000013e34:  R_AARCH64_CALL26	_printk
   13e38: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19341
   13e3c: 91000021     	add	x1, x1, #0x0
		0000000000013e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19341
   13e40: aa1403e0     	mov	x0, x20
   13e44: aa1f03e2     	mov	x2, xzr
   13e48: 94000000     	bl	0x13e48 <zte_touch_probe+0xc4>
		0000000000013e48:  R_AARCH64_CALL26	of_find_property
   13e4c: f100001f     	cmp	x0, #0x0
   13e50: 1a9f07e8     	cset	w8, ne
   13e54: 39009668     	strb	w8, [x19, #0x25]
   13e58: b40006c0     	cbz	x0, 0x13f30 <zte_touch_probe+0x1ac>
   13e5c: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c428
   13e60: 91000000     	add	x0, x0, #0x0
		0000000000013e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c428
   13e64: 94000000     	bl	0x13e64 <zte_touch_probe+0xe0>
		0000000000013e64:  R_AARCH64_CALL26	_printk
   13e68: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c74e
   13e6c: 91000021     	add	x1, x1, #0x0
		0000000000013e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c74e
   13e70: 910013e2     	add	x2, sp, #0x4
   13e74: aa1403e0     	mov	x0, x20
   13e78: 52800023     	mov	w3, #0x1                // =1
   13e7c: aa1f03e4     	mov	x4, xzr
   13e80: 94000000     	bl	0x13e80 <zte_touch_probe+0xfc>
		0000000000013e80:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13e84: 37f80060     	tbnz	w0, #0x1f, 0x13e90 <zte_touch_probe+0x10c>
   13e88: b94007e8     	ldr	w8, [sp, #0x4]
   13e8c: 79007a68     	strh	w8, [x19, #0x3c]
   13e90: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da51
   13e94: 91000021     	add	x1, x1, #0x0
		0000000000013e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da51
   13e98: 910013e2     	add	x2, sp, #0x4
   13e9c: aa1403e0     	mov	x0, x20
   13ea0: 52800023     	mov	w3, #0x1                // =1
   13ea4: aa1f03e4     	mov	x4, xzr
   13ea8: 94000000     	bl	0x13ea8 <zte_touch_probe+0x124>
		0000000000013ea8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13eac: 37f80060     	tbnz	w0, #0x1f, 0x13eb8 <zte_touch_probe+0x134>
   13eb0: b94007e8     	ldr	w8, [sp, #0x4]
   13eb4: 3900d268     	strb	w8, [x19, #0x34]
   13eb8: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da6a
   13ebc: 91000021     	add	x1, x1, #0x0
		0000000000013ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da6a
   13ec0: 910013e2     	add	x2, sp, #0x4
   13ec4: aa1403e0     	mov	x0, x20
   13ec8: 52800023     	mov	w3, #0x1                // =1
   13ecc: aa1f03e4     	mov	x4, xzr
   13ed0: 94000000     	bl	0x13ed0 <zte_touch_probe+0x14c>
		0000000000013ed0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13ed4: 37f80060     	tbnz	w0, #0x1f, 0x13ee0 <zte_touch_probe+0x15c>
   13ed8: b94007e8     	ldr	w8, [sp, #0x4]
   13edc: 3900d668     	strb	w8, [x19, #0x35]
   13ee0: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c766
   13ee4: 91000021     	add	x1, x1, #0x0
		0000000000013ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c766
   13ee8: 910013e2     	add	x2, sp, #0x4
   13eec: aa1403e0     	mov	x0, x20
   13ef0: 52800023     	mov	w3, #0x1                // =1
   13ef4: aa1f03e4     	mov	x4, xzr
   13ef8: 94000000     	bl	0x13ef8 <zte_touch_probe+0x174>
		0000000000013ef8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13efc: 37f80060     	tbnz	w0, #0x1f, 0x13f08 <zte_touch_probe+0x184>
   13f00: b94007e8     	ldr	w8, [sp, #0x4]
   13f04: 3900da68     	strb	w8, [x19, #0x36]
   13f08: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18274
   13f0c: 91000021     	add	x1, x1, #0x0
		0000000000013f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18274
   13f10: 910013e2     	add	x2, sp, #0x4
   13f14: aa1403e0     	mov	x0, x20
   13f18: 52800023     	mov	w3, #0x1                // =1
   13f1c: aa1f03e4     	mov	x4, xzr
   13f20: 94000000     	bl	0x13f20 <zte_touch_probe+0x19c>
		0000000000013f20:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13f24: 37f80060     	tbnz	w0, #0x1f, 0x13f30 <zte_touch_probe+0x1ac>
   13f28: b94007e8     	ldr	w8, [sp, #0x4]
   13f2c: 3900de68     	strb	w8, [x19, #0x37]
   13f30: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b76b
   13f34: 91000021     	add	x1, x1, #0x0
		0000000000013f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b76b
   13f38: aa1403e0     	mov	x0, x20
   13f3c: aa1f03e2     	mov	x2, xzr
   13f40: 94000000     	bl	0x13f40 <zte_touch_probe+0x1bc>
		0000000000013f40:  R_AARCH64_CALL26	of_find_property
   13f44: f100001f     	cmp	x0, #0x0
   13f48: 1a9f07e8     	cset	w8, ne
   13f4c: 39124268     	strb	w8, [x19, #0x490]
   13f50: b4000de0     	cbz	x0, 0x1410c <zte_touch_probe+0x388>
   13f54: 90000000     	adrp	x0, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a60a
   13f58: 91000000     	add	x0, x0, #0x0
		0000000000013f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a60a
   13f5c: 94000000     	bl	0x13f5c <zte_touch_probe+0x1d8>
		0000000000013f5c:  R_AARCH64_CALL26	_printk
   13f60: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ea3
   13f64: 91000021     	add	x1, x1, #0x0
		0000000000013f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ea3
   13f68: 910013e2     	add	x2, sp, #0x4
   13f6c: aa1403e0     	mov	x0, x20
   13f70: 52800023     	mov	w3, #0x1                // =1
   13f74: aa1f03e4     	mov	x4, xzr
   13f78: 94000000     	bl	0x13f78 <zte_touch_probe+0x1f4>
		0000000000013f78:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13f7c: 394013e8     	ldrb	w8, [sp, #0x4]
   13f80: 7100001f     	cmp	w0, #0x0
   13f84: 52800329     	mov	w9, #0x19               // =25
   13f88: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb8e
   13f8c: 91000021     	add	x1, x1, #0x0
		0000000000013f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb8e
   13f90: 910013e2     	add	x2, sp, #0x4
   13f94: 1a89a108     	csel	w8, w8, w9, ge
   13f98: aa1403e0     	mov	x0, x20
   13f9c: 52800023     	mov	w3, #0x1                // =1
   13fa0: aa1f03e4     	mov	x4, xzr
   13fa4: 39124668     	strb	w8, [x19, #0x491]
   13fa8: 94000000     	bl	0x13fa8 <zte_touch_probe+0x224>
		0000000000013fa8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13fac: 394013e8     	ldrb	w8, [sp, #0x4]
   13fb0: 7100001f     	cmp	w0, #0x0
   13fb4: 52800289     	mov	w9, #0x14               // =20
   13fb8: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19353
   13fbc: 91000021     	add	x1, x1, #0x0
		0000000000013fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19353
   13fc0: 910013e2     	add	x2, sp, #0x4
   13fc4: 1a89a108     	csel	w8, w8, w9, ge
   13fc8: aa1403e0     	mov	x0, x20
   13fcc: 52800023     	mov	w3, #0x1                // =1
   13fd0: aa1f03e4     	mov	x4, xzr
   13fd4: 39124a68     	strb	w8, [x19, #0x492]
   13fd8: 94000000     	bl	0x13fd8 <zte_touch_probe+0x254>
		0000000000013fd8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   13fdc: 394013e8     	ldrb	w8, [sp, #0x4]
   13fe0: 7100001f     	cmp	w0, #0x0
   13fe4: 528000a9     	mov	w9, #0x5                // =5
   13fe8: 90000001     	adrp	x1, 0x13000 <tpd_zlog_record_notify+0x7d0>
		0000000000013fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c09
   13fec: 91000021     	add	x1, x1, #0x0
		0000000000013fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c09
   13ff0: 910013e2     	add	x2, sp, #0x4
   13ff4: 1a89a108     	csel	w8, w8, w9, ge
   13ff8: aa1403e0     	mov	x0, x20
   13ffc: 52800023     	mov	w3, #0x1                // =1
   14000: aa1f03e4     	mov	x4, xzr
   14004: 39124e68     	strb	w8, [x19, #0x493]
   14008: 94000000     	bl	0x14008 <zte_touch_probe+0x284>
		0000000000014008:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1400c: 394013e8     	ldrb	w8, [sp, #0x4]
   14010: 7100001f     	cmp	w0, #0x0
   14014: 52800109     	mov	w9, #0x8                // =8
   14018: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a09f
   1401c: 91000021     	add	x1, x1, #0x0
		000000000001401c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a09f
   14020: 910013e2     	add	x2, sp, #0x4
   14024: 1a89a108     	csel	w8, w8, w9, ge
   14028: aa1403e0     	mov	x0, x20
   1402c: 52800023     	mov	w3, #0x1                // =1
   14030: aa1f03e4     	mov	x4, xzr
   14034: 39125268     	strb	w8, [x19, #0x494]
   14038: 94000000     	bl	0x14038 <zte_touch_probe+0x2b4>
		0000000000014038:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1403c: 394013e8     	ldrb	w8, [sp, #0x4]
   14040: 7100001f     	cmp	w0, #0x0
   14044: 52800469     	mov	w9, #0x23               // =35
   14048: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a62
   1404c: 91000021     	add	x1, x1, #0x0
		000000000001404c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a62
   14050: 910013e2     	add	x2, sp, #0x4
   14054: 1a89a108     	csel	w8, w8, w9, ge
   14058: aa1403e0     	mov	x0, x20
   1405c: 52800023     	mov	w3, #0x1                // =1
   14060: aa1f03e4     	mov	x4, xzr
   14064: 39125668     	strb	w8, [x19, #0x495]
   14068: 94000000     	bl	0x14068 <zte_touch_probe+0x2e4>
		0000000000014068:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1406c: b94007e8     	ldr	w8, [sp, #0x4]
   14070: 7100001f     	cmp	w0, #0x0
   14074: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a7c
   14078: 91000021     	add	x1, x1, #0x0
		0000000000014078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a7c
   1407c: 910013e2     	add	x2, sp, #0x4
   14080: aa1403e0     	mov	x0, x20
   14084: 5a9fa108     	csinv	w8, w8, wzr, ge
   14088: 52800023     	mov	w3, #0x1                // =1
   1408c: aa1f03e4     	mov	x4, xzr
   14090: b9049a68     	str	w8, [x19, #0x498]
   14094: 94000000     	bl	0x14094 <zte_touch_probe+0x310>
		0000000000014094:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   14098: b94007e8     	ldr	w8, [sp, #0x4]
   1409c: 7100001f     	cmp	w0, #0x0
   140a0: 52828029     	mov	w9, #0x1401             // =5121
   140a4: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000140a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bba9
   140a8: 91000021     	add	x1, x1, #0x0
		00000000000140a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bba9
   140ac: 910013e2     	add	x2, sp, #0x4
   140b0: 1a89a108     	csel	w8, w8, w9, ge
   140b4: aa1403e0     	mov	x0, x20
   140b8: 52800023     	mov	w3, #0x1                // =1
   140bc: aa1f03e4     	mov	x4, xzr
   140c0: b9049e68     	str	w8, [x19, #0x49c]
   140c4: 94000000     	bl	0x140c4 <zte_touch_probe+0x340>
		00000000000140c4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   140c8: b94007e8     	ldr	w8, [sp, #0x4]
   140cc: 7100001f     	cmp	w0, #0x0
   140d0: 52806436     	mov	w22, #0x321             // =801
   140d4: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000140d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a9d
   140d8: 91000021     	add	x1, x1, #0x0
		00000000000140d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a9d
   140dc: 910013e2     	add	x2, sp, #0x4
   140e0: 1a96a108     	csel	w8, w8, w22, ge
   140e4: aa1403e0     	mov	x0, x20
   140e8: 52800023     	mov	w3, #0x1                // =1
   140ec: aa1f03e4     	mov	x4, xzr
   140f0: b904a268     	str	w8, [x19, #0x4a0]
   140f4: 94000000     	bl	0x140f4 <zte_touch_probe+0x370>
		00000000000140f4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   140f8: b94007e8     	ldr	w8, [sp, #0x4]
   140fc: 7100001f     	cmp	w0, #0x0
   14100: 39524661     	ldrb	w1, [x19, #0x491]
   14104: 1a96a108     	csel	w8, w8, w22, ge
   14108: 1400000d     	b	0x1413c <zte_touch_probe+0x3b8>
   1410c: 52828329     	mov	w9, #0x1419             // =5145
   14110: 91124668     	add	x8, x19, #0x491
   14114: 5280046a     	mov	w10, #0x23              // =35
   14118: 72a100a9     	movk	w9, #0x805, lsl #16
   1411c: 52800321     	mov	w1, #0x19               // =25
   14120: b9000109     	str	w9, [x8]
   14124: 92de6fc8     	mov	x8, #-0xf37e00000001    // =-267722491428865
   14128: 3912566a     	strb	w10, [x19, #0x495]
   1412c: f2e00008     	movk	x8, #0x0, lsl #48
   14130: f9024e68     	str	x8, [x19, #0x498]
   14134: 52806428     	mov	w8, #0x321              // =801
   14138: b904a268     	str	w8, [x19, #0x4a0]
   1413c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		000000000001413c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1855a
   14140: 91000000     	add	x0, x0, #0x0
		0000000000014140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1855a
   14144: b904a668     	str	w8, [x19, #0x4a4]
   14148: 94000000     	bl	0x14148 <zte_touch_probe+0x3c4>
		0000000000014148:  R_AARCH64_CALL26	_printk
   1414c: 39524a61     	ldrb	w1, [x19, #0x492]
   14150: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d1b
   14154: 91000000     	add	x0, x0, #0x0
		0000000000014154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d1b
   14158: 94000000     	bl	0x14158 <zte_touch_probe+0x3d4>
		0000000000014158:  R_AARCH64_CALL26	_printk
   1415c: 39524e61     	ldrb	w1, [x19, #0x493]
   14160: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1857f
   14164: 91000000     	add	x0, x0, #0x0
		0000000000014164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1857f
   14168: 94000000     	bl	0x14168 <zte_touch_probe+0x3e4>
		0000000000014168:  R_AARCH64_CALL26	_printk
   1416c: 39525261     	ldrb	w1, [x19, #0x494]
   14170: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188d5
   14174: 91000000     	add	x0, x0, #0x0
		0000000000014174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188d5
   14178: 94000000     	bl	0x14178 <zte_touch_probe+0x3f4>
		0000000000014178:  R_AARCH64_CALL26	_printk
   1417c: 39525661     	ldrb	w1, [x19, #0x495]
   14180: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beb6
   14184: 91000000     	add	x0, x0, #0x0
		0000000000014184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beb6
   14188: 94000000     	bl	0x14188 <zte_touch_probe+0x404>
		0000000000014188:  R_AARCH64_CALL26	_printk
   1418c: b9449a61     	ldr	w1, [x19, #0x498]
   14190: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b782
   14194: 91000000     	add	x0, x0, #0x0
		0000000000014194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b782
   14198: 94000000     	bl	0x14198 <zte_touch_probe+0x414>
		0000000000014198:  R_AARCH64_CALL26	_printk
   1419c: b9449e61     	ldr	w1, [x19, #0x49c]
   141a0: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000141a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0ba
   141a4: 91000000     	add	x0, x0, #0x0
		00000000000141a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0ba
   141a8: 94000000     	bl	0x141a8 <zte_touch_probe+0x424>
		00000000000141a8:  R_AARCH64_CALL26	_printk
   141ac: b944a261     	ldr	w1, [x19, #0x4a0]
   141b0: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000141b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17794
   141b4: 91000000     	add	x0, x0, #0x0
		00000000000141b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17794
   141b8: 94000000     	bl	0x141b8 <zte_touch_probe+0x434>
		00000000000141b8:  R_AARCH64_CALL26	_printk
   141bc: b944a661     	ldr	w1, [x19, #0x4a4]
   141c0: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000141c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188fa
   141c4: 91000000     	add	x0, x0, #0x0
		00000000000141c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188fa
   141c8: 94000000     	bl	0x141c8 <zte_touch_probe+0x444>
		00000000000141c8:  R_AARCH64_CALL26	_printk
   141cc: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000141cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0e4
   141d0: 91000021     	add	x1, x1, #0x0
		00000000000141d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0e4
   141d4: 910013e2     	add	x2, sp, #0x4
   141d8: aa1403e0     	mov	x0, x20
   141dc: 52800023     	mov	w3, #0x1                // =1
   141e0: aa1f03e4     	mov	x4, xzr
   141e4: 94000000     	bl	0x141e4 <zte_touch_probe+0x460>
		00000000000141e4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   141e8: 36f82a20     	tbz	w0, #0x1f, 0x1472c <zte_touch_probe+0x9a8>
   141ec: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000141ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18923
   141f0: 91000021     	add	x1, x1, #0x0
		00000000000141f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18923
   141f4: 910013e2     	add	x2, sp, #0x4
   141f8: aa1403e0     	mov	x0, x20
   141fc: 52800023     	mov	w3, #0x1                // =1
   14200: aa1f03e4     	mov	x4, xzr
   14204: 94000000     	bl	0x14204 <zte_touch_probe+0x480>
		0000000000014204:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   14208: 36f82c00     	tbz	w0, #0x1f, 0x14788 <zte_touch_probe+0xa04>
   1420c: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		000000000001420c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbc9
   14210: 91000021     	add	x1, x1, #0x0
		0000000000014210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbc9
   14214: aa1403e0     	mov	x0, x20
   14218: aa1f03e2     	mov	x2, xzr
   1421c: 94000000     	bl	0x1421c <zte_touch_probe+0x498>
		000000000001421c:  R_AARCH64_CALL26	of_find_property
   14220: f100001f     	cmp	x0, #0x0
   14224: 1a9f07e8     	cset	w8, ne
   14228: 39007268     	strb	w8, [x19, #0x1c]
   1422c: b5002c40     	cbnz	x0, 0x147b4 <zte_touch_probe+0xa30>
   14230: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c77f
   14234: 91000021     	add	x1, x1, #0x0
		0000000000014234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c77f
   14238: 90000002     	adrp	x2, 0x14000 <zte_touch_probe+0x27c>
		0000000000014238:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e4
   1423c: 91000042     	add	x2, x2, #0x0
		000000000001423c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26e4
   14240: 91318260     	add	x0, x19, #0xc60
   14244: 94000000     	bl	0x14244 <zte_touch_probe+0x4c0>
		0000000000014244:  R_AARCH64_CALL26	__mutex_init
   14248: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1755e
   1424c: 91000021     	add	x1, x1, #0x0
		000000000001424c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1755e
   14250: 90000002     	adrp	x2, 0x14000 <zte_touch_probe+0x27c>
		0000000000014250:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e5
   14254: 91000042     	add	x2, x2, #0x0
		0000000000014254:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26e5
   14258: 91324260     	add	x0, x19, #0xc90
   1425c: 94000000     	bl	0x1425c <zte_touch_probe+0x4d8>
		000000000001425c:  R_AARCH64_CALL26	__mutex_init
   14260: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c44d
   14264: 91000021     	add	x1, x1, #0x0
		0000000000014264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c44d
   14268: 90000002     	adrp	x2, 0x14000 <zte_touch_probe+0x27c>
		0000000000014268:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e6
   1426c: 91000042     	add	x2, x2, #0x0
		000000000001426c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26e6
   14270: 91330260     	add	x0, x19, #0xcc0
   14274: 94000000     	bl	0x14274 <zte_touch_probe+0x4f0>
		0000000000014274:  R_AARCH64_CALL26	__mutex_init
   14278: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18191
   1427c: 91000000     	add	x0, x0, #0x0
		000000000001427c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18191
   14280: aa1f03e1     	mov	x1, xzr
   14284: 94000000     	bl	0x14284 <zte_touch_probe+0x500>
		0000000000014284:  R_AARCH64_CALL26	proc_mkdir
   14288: 90000014     	adrp	x20, 0x14000 <zte_touch_probe+0x27c>
		0000000000014288:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
   1428c: f9000280     	str	x0, [x20]
		000000000001428c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14290: b4002d60     	cbz	x0, 0x1483c <zte_touch_probe+0xab8>
   14294: aa0003e2     	mov	x2, x0
   14298: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1903c
   1429c: 91000000     	add	x0, x0, #0x0
		000000000001429c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1903c
   142a0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000142a0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_module_Info
   142a4: 91000063     	add	x3, x3, #0x0
		00000000000142a4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_module_Info
   142a8: 52803681     	mov	w1, #0x1b4              // =436
   142ac: 94000000     	bl	0x142ac <zte_touch_probe+0x528>
		00000000000142ac:  R_AARCH64_CALL26	proc_create
   142b0: b40036e0     	cbz	x0, 0x1498c <zte_touch_probe+0xc08>
   142b4: f9400282     	ldr	x2, [x20]
		00000000000142b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   142b8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000142b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1904b
   142bc: 91000000     	add	x0, x0, #0x0
		00000000000142bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1904b
   142c0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000142c0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_wake_gesture
   142c4: 91000063     	add	x3, x3, #0x0
		00000000000142c4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_wake_gesture
   142c8: 52803681     	mov	w1, #0x1b4              // =436
   142cc: 94000000     	bl	0x142cc <zte_touch_probe+0x548>
		00000000000142cc:  R_AARCH64_CALL26	proc_create
   142d0: b4003660     	cbz	x0, 0x1499c <zte_touch_probe+0xc18>
   142d4: f9400282     	ldr	x2, [x20]
		00000000000142d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   142d8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000142d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d6e8
   142dc: 91000000     	add	x0, x0, #0x0
		00000000000142dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d6e8
   142e0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000142e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_smart_cover
   142e4: 91000063     	add	x3, x3, #0x0
		00000000000142e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_smart_cover
   142e8: 52803681     	mov	w1, #0x1b4              // =436
   142ec: 94000000     	bl	0x142ec <zte_touch_probe+0x568>
		00000000000142ec:  R_AARCH64_CALL26	proc_create
   142f0: b40035e0     	cbz	x0, 0x149ac <zte_touch_probe+0xc28>
   142f4: f9400282     	ldr	x2, [x20]
		00000000000142f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   142f8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000142f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b09d
   142fc: 91000000     	add	x0, x0, #0x0
		00000000000142fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b09d
   14300: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014300:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_glove
   14304: 91000063     	add	x3, x3, #0x0
		0000000000014304:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_glove
   14308: 52803681     	mov	w1, #0x1b4              // =436
   1430c: 94000000     	bl	0x1430c <zte_touch_probe+0x588>
		000000000001430c:  R_AARCH64_CALL26	proc_create
   14310: b4003560     	cbz	x0, 0x149bc <zte_touch_probe+0xc38>
   14314: f9400282     	ldr	x2, [x20]
		0000000000014314:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14318: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19689
   1431c: 91000000     	add	x0, x0, #0x0
		000000000001431c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19689
   14320: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014320:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tpfwupgrade
   14324: 91000063     	add	x3, x3, #0x0
		0000000000014324:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tpfwupgrade
   14328: 52803681     	mov	w1, #0x1b4              // =436
   1432c: 94000000     	bl	0x1432c <zte_touch_probe+0x5a8>
		000000000001432c:  R_AARCH64_CALL26	proc_create
   14330: b40034e0     	cbz	x0, 0x149cc <zte_touch_probe+0xc48>
   14334: f9400282     	ldr	x2, [x20]
		0000000000014334:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14338: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2f5
   1433c: 91000000     	add	x0, x0, #0x0
		000000000001433c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2f5
   14340: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014340:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_suspend
   14344: 91000063     	add	x3, x3, #0x0
		0000000000014344:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_suspend
   14348: 52803681     	mov	w1, #0x1b4              // =436
   1434c: 94000000     	bl	0x1434c <zte_touch_probe+0x5c8>
		000000000001434c:  R_AARCH64_CALL26	proc_create
   14350: b4003460     	cbz	x0, 0x149dc <zte_touch_probe+0xc58>
   14354: f9400282     	ldr	x2, [x20]
		0000000000014354:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14358: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c70e
   1435c: 91000000     	add	x0, x0, #0x0
		000000000001435c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c70e
   14360: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014360:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_headset_state
   14364: 91000063     	add	x3, x3, #0x0
		0000000000014364:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_headset_state
   14368: 52803681     	mov	w1, #0x1b4              // =436
   1436c: 94000000     	bl	0x1436c <zte_touch_probe+0x5e8>
		000000000001436c:  R_AARCH64_CALL26	proc_create
   14370: b40033e0     	cbz	x0, 0x149ec <zte_touch_probe+0xc68>
   14374: f9400282     	ldr	x2, [x20]
		0000000000014374:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14378: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0a8
   1437c: 91000000     	add	x0, x0, #0x0
		000000000001437c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0a8
   14380: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014380:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_rotation_limit_level
   14384: 91000063     	add	x3, x3, #0x0
		0000000000014384:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_rotation_limit_level
   14388: 52803681     	mov	w1, #0x1b4              // =436
   1438c: 94000000     	bl	0x1438c <zte_touch_probe+0x608>
		000000000001438c:  R_AARCH64_CALL26	proc_create
   14390: b4003360     	cbz	x0, 0x149fc <zte_touch_probe+0xc78>
   14394: f9400282     	ldr	x2, [x20]
		0000000000014394:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14398: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18178
   1439c: 91000000     	add	x0, x0, #0x0
		000000000001439c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18178
   143a0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000143a0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_mrotation
   143a4: 91000063     	add	x3, x3, #0x0
		00000000000143a4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_mrotation
   143a8: 52803681     	mov	w1, #0x1b4              // =436
   143ac: 94000000     	bl	0x143ac <zte_touch_probe+0x628>
		00000000000143ac:  R_AARCH64_CALL26	proc_create
   143b0: b40032e0     	cbz	x0, 0x14a0c <zte_touch_probe+0xc88>
   143b4: f9400282     	ldr	x2, [x20]
		00000000000143b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   143b8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000143b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be94
   143bc: 91000000     	add	x0, x0, #0x0
		00000000000143bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be94
   143c0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000143c0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_tap
   143c4: 91000063     	add	x3, x3, #0x0
		00000000000143c4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_tap
   143c8: 52803681     	mov	w1, #0x1b4              // =436
   143cc: 94000000     	bl	0x143cc <zte_touch_probe+0x648>
		00000000000143cc:  R_AARCH64_CALL26	proc_create
   143d0: b4003260     	cbz	x0, 0x14a1c <zte_touch_probe+0xc98>
   143d4: f9400282     	ldr	x2, [x20]
		00000000000143d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   143d8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000143d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188a8
   143dc: 91000000     	add	x0, x0, #0x0
		00000000000143dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188a8
   143e0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000143e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_aod
   143e4: 91000063     	add	x3, x3, #0x0
		00000000000143e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_aod
   143e8: 52803681     	mov	w1, #0x1b4              // =436
   143ec: 94000000     	bl	0x143ec <zte_touch_probe+0x668>
		00000000000143ec:  R_AARCH64_CALL26	proc_create
   143f0: b40031e0     	cbz	x0, 0x14a2c <zte_touch_probe+0xca8>
   143f4: f9400282     	ldr	x2, [x20]
		00000000000143f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   143f8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000143f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199f2
   143fc: 91000000     	add	x0, x0, #0x0
		00000000000143fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199f2
   14400: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014400:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_single_game
   14404: 91000063     	add	x3, x3, #0x0
		0000000000014404:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_single_game
   14408: 52803681     	mov	w1, #0x1b4              // =436
   1440c: 94000000     	bl	0x1440c <zte_touch_probe+0x688>
		000000000001440c:  R_AARCH64_CALL26	proc_create
   14410: b4003160     	cbz	x0, 0x14a3c <zte_touch_probe+0xcb8>
   14414: f9400282     	ldr	x2, [x20]
		0000000000014414:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14418: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a011
   1441c: 91000000     	add	x0, x0, #0x0
		000000000001441c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a011
   14420: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014420:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_get_noise
   14424: 91000063     	add	x3, x3, #0x0
		0000000000014424:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_get_noise
   14428: 52803681     	mov	w1, #0x1b4              // =436
   1442c: 94000000     	bl	0x1442c <zte_touch_probe+0x6a8>
		000000000001442c:  R_AARCH64_CALL26	proc_create
   14430: b40030e0     	cbz	x0, 0x14a4c <zte_touch_probe+0xcc8>
   14434: f9400282     	ldr	x2, [x20]
		0000000000014434:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14438: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17713
   1443c: 91000000     	add	x0, x0, #0x0
		000000000001443c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17713
   14440: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014440:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_edge_report_limit
   14444: 91000063     	add	x3, x3, #0x0
		0000000000014444:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_edge_report_limit
   14448: 52803681     	mov	w1, #0x1b4              // =436
   1444c: 94000000     	bl	0x1444c <zte_touch_probe+0x6c8>
		000000000001444c:  R_AARCH64_CALL26	proc_create
   14450: b4003060     	cbz	x0, 0x14a5c <zte_touch_probe+0xcd8>
   14454: f9400282     	ldr	x2, [x20]
		0000000000014454:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14458: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bc1
   1445c: 91000000     	add	x0, x0, #0x0
		000000000001445c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bc1
   14460: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014460:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_onekey
   14464: 91000063     	add	x3, x3, #0x0
		0000000000014464:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_onekey
   14468: 52803681     	mov	w1, #0x1b4              // =436
   1446c: 94000000     	bl	0x1446c <zte_touch_probe+0x6e8>
		000000000001446c:  R_AARCH64_CALL26	proc_create
   14470: b4002fe0     	cbz	x0, 0x14a6c <zte_touch_probe+0xce8>
   14474: f9400282     	ldr	x2, [x20]
		0000000000014474:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14478: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3e7
   1447c: 91000000     	add	x0, x0, #0x0
		000000000001447c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3e7
   14480: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014480:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_playgame
   14484: 91000063     	add	x3, x3, #0x0
		0000000000014484:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_playgame
   14488: 52803681     	mov	w1, #0x1b4              // =436
   1448c: 94000000     	bl	0x1448c <zte_touch_probe+0x708>
		000000000001448c:  R_AARCH64_CALL26	proc_create
   14490: b4002f60     	cbz	x0, 0x14a7c <zte_touch_probe+0xcf8>
   14494: f9400282     	ldr	x2, [x20]
		0000000000014494:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14498: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18182
   1449c: 91000000     	add	x0, x0, #0x0
		000000000001449c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18182
   144a0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000144a0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_report_rate
   144a4: 91000063     	add	x3, x3, #0x0
		00000000000144a4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_report_rate
   144a8: 52803681     	mov	w1, #0x1b4              // =436
   144ac: 94000000     	bl	0x144ac <zte_touch_probe+0x728>
		00000000000144ac:  R_AARCH64_CALL26	proc_create
   144b0: b4002ee0     	cbz	x0, 0x14a8c <zte_touch_probe+0xd08>
   144b4: f9400282     	ldr	x2, [x20]
		00000000000144b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   144b8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000144b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0bd
   144bc: 91000000     	add	x0, x0, #0x0
		00000000000144bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0bd
   144c0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000144c0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_follow_hand_level
   144c4: 91000063     	add	x3, x3, #0x0
		00000000000144c4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_follow_hand_level
   144c8: 52803681     	mov	w1, #0x1b4              // =436
   144cc: 94000000     	bl	0x144cc <zte_touch_probe+0x748>
		00000000000144cc:  R_AARCH64_CALL26	proc_create
   144d0: b4002e60     	cbz	x0, 0x14a9c <zte_touch_probe+0xd18>
   144d4: f9400282     	ldr	x2, [x20]
		00000000000144d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   144d8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000144d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc1c
   144dc: 91000000     	add	x0, x0, #0x0
		00000000000144dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc1c
   144e0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000144e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_stability_level
   144e4: 91000063     	add	x3, x3, #0x0
		00000000000144e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_stability_level
   144e8: 52803681     	mov	w1, #0x1b4              // =436
   144ec: 94000000     	bl	0x144ec <zte_touch_probe+0x768>
		00000000000144ec:  R_AARCH64_CALL26	proc_create
   144f0: b4002de0     	cbz	x0, 0x14aac <zte_touch_probe+0xd28>
   144f4: f9400282     	ldr	x2, [x20]
		00000000000144f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   144f8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000144f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3d1
   144fc: 91000000     	add	x0, x0, #0x0
		00000000000144fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3d1
   14500: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014500:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_sensibility_level
   14504: 91000063     	add	x3, x3, #0x0
		0000000000014504:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_sensibility_level
   14508: 52803681     	mov	w1, #0x1b4              // =436
   1450c: 94000000     	bl	0x1450c <zte_touch_probe+0x788>
		000000000001450c:  R_AARCH64_CALL26	proc_create
   14510: b4002d60     	cbz	x0, 0x14abc <zte_touch_probe+0xd38>
   14514: f9400282     	ldr	x2, [x20]
		0000000000014514:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14518: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179b1
   1451c: 91000000     	add	x0, x0, #0x0
		000000000001451c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179b1
   14520: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014520:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_game_partition
   14524: 91000063     	add	x3, x3, #0x0
		0000000000014524:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_game_partition
   14528: 52803681     	mov	w1, #0x1b4              // =436
   1452c: 94000000     	bl	0x1452c <zte_touch_probe+0x7a8>
		000000000001452c:  R_AARCH64_CALL26	proc_create
   14530: b4002ce0     	cbz	x0, 0x14acc <zte_touch_probe+0xd48>
   14534: f9400282     	ldr	x2, [x20]
		0000000000014534:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14538: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb2f
   1453c: 91000000     	add	x0, x0, #0x0
		000000000001453c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb2f
   14540: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014540:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_pen_only
   14544: 91000063     	add	x3, x3, #0x0
		0000000000014544:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_pen_only
   14548: 52803681     	mov	w1, #0x1b4              // =436
   1454c: 94000000     	bl	0x1454c <zte_touch_probe+0x7c8>
		000000000001454c:  R_AARCH64_CALL26	proc_create
   14550: b4002c60     	cbz	x0, 0x14adc <zte_touch_probe+0xd58>
   14554: f9400282     	ldr	x2, [x20]
		0000000000014554:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14558: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19058
   1455c: 91000000     	add	x0, x0, #0x0
		000000000001455c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19058
   14560: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014560:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_finger_lock_flag
   14564: 91000063     	add	x3, x3, #0x0
		0000000000014564:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_finger_lock_flag
   14568: 52803681     	mov	w1, #0x1b4              // =436
   1456c: 94000000     	bl	0x1456c <zte_touch_probe+0x7e8>
		000000000001456c:  R_AARCH64_CALL26	proc_create
   14570: b4002be0     	cbz	x0, 0x14aec <zte_touch_probe+0xd68>
   14574: f9400282     	ldr	x2, [x20]
		0000000000014574:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14578: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174e6
   1457c: 91000000     	add	x0, x0, #0x0
		000000000001457c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174e6
   14580: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014580:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_self_test
   14584: 91000063     	add	x3, x3, #0x0
		0000000000014584:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_self_test
   14588: 52803681     	mov	w1, #0x1b4              // =436
   1458c: 94000000     	bl	0x1458c <zte_touch_probe+0x808>
		000000000001458c:  R_AARCH64_CALL26	proc_create
   14590: b4002b60     	cbz	x0, 0x14afc <zte_touch_probe+0xd78>
   14594: f9400282     	ldr	x2, [x20]
		0000000000014594:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14598: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014598:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb38
   1459c: 91000000     	add	x0, x0, #0x0
		000000000001459c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb38
   145a0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000145a0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_palm_mode
   145a4: 91000063     	add	x3, x3, #0x0
		00000000000145a4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_palm_mode
   145a8: 52803681     	mov	w1, #0x1b4              // =436
   145ac: 94000000     	bl	0x145ac <zte_touch_probe+0x828>
		00000000000145ac:  R_AARCH64_CALL26	proc_create
   145b0: b4002ae0     	cbz	x0, 0x14b0c <zte_touch_probe+0xd88>
   145b4: f9400282     	ldr	x2, [x20]
		00000000000145b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   145b8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000145b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be9f
   145bc: 91000000     	add	x0, x0, #0x0
		00000000000145bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be9f
   145c0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000145c0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fold_state
   145c4: 91000063     	add	x3, x3, #0x0
		00000000000145c4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fold_state
   145c8: 52803681     	mov	w1, #0x1b4              // =436
   145cc: 94000000     	bl	0x145cc <zte_touch_probe+0x848>
		00000000000145cc:  R_AARCH64_CALL26	proc_create
   145d0: b4002a60     	cbz	x0, 0x14b1c <zte_touch_probe+0xd98>
   145d4: f9400282     	ldr	x2, [x20]
		00000000000145d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   145d8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000145d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3f1
   145dc: 91000000     	add	x0, x0, #0x0
		00000000000145dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3f1
   145e0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000145e0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_fake_sleep
   145e4: 91000063     	add	x3, x3, #0x0
		00000000000145e4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_fake_sleep
   145e8: 52803681     	mov	w1, #0x1b4              // =436
   145ec: 94000000     	bl	0x145ec <zte_touch_probe+0x868>
		00000000000145ec:  R_AARCH64_CALL26	proc_create
   145f0: b40029e0     	cbz	x0, 0x14b2c <zte_touch_probe+0xda8>
   145f4: f9400282     	ldr	x2, [x20]
		00000000000145f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   145f8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000145f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3dd
   145fc: 91000000     	add	x0, x0, #0x0
		00000000000145fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3dd
   14600: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014600:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_screen_off_awake
   14604: 91000063     	add	x3, x3, #0x0
		0000000000014604:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_screen_off_awake
   14608: 52803681     	mov	w1, #0x1b4              // =436
   1460c: 94000000     	bl	0x1460c <zte_touch_probe+0x888>
		000000000001460c:  R_AARCH64_CALL26	proc_create
   14610: b4002960     	cbz	x0, 0x14b3c <zte_touch_probe+0xdb8>
   14614: f9400282     	ldr	x2, [x20]
		0000000000014614:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14618: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a659
   1461c: 91000000     	add	x0, x0, #0x0
		000000000001461c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a659
   14620: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014620:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_zlog_debug
   14624: 91000063     	add	x3, x3, #0x0
		0000000000014624:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_zlog_debug
   14628: 52803681     	mov	w1, #0x1b4              // =436
   1462c: 94000000     	bl	0x1462c <zte_touch_probe+0x8a8>
		000000000001462c:  R_AARCH64_CALL26	proc_create
   14630: b40028e0     	cbz	x0, 0x14b4c <zte_touch_probe+0xdc8>
   14634: f9400282     	ldr	x2, [x20]
		0000000000014634:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14638: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beaa
   1463c: 91000000     	add	x0, x0, #0x0
		000000000001463c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beaa
   14640: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014640:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_ghost_debug
   14644: 91000063     	add	x3, x3, #0x0
		0000000000014644:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_ghost_debug
   14648: 52803681     	mov	w1, #0x1b4              // =436
   1464c: 94000000     	bl	0x1464c <zte_touch_probe+0x8c8>
		000000000001464c:  R_AARCH64_CALL26	proc_create
   14650: b4002860     	cbz	x0, 0x14b5c <zte_touch_probe+0xdd8>
   14654: f9400282     	ldr	x2, [x20]
		0000000000014654:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14658: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188b3
   1465c: 91000000     	add	x0, x0, #0x0
		000000000001465c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188b3
   14660: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014660:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_BBAT_test
   14664: 91000063     	add	x3, x3, #0x0
		0000000000014664:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_BBAT_test
   14668: 52803681     	mov	w1, #0x1b4              // =436
   1466c: 94000000     	bl	0x1466c <zte_touch_probe+0x8e8>
		000000000001466c:  R_AARCH64_CALL26	proc_create
   14670: b40027e0     	cbz	x0, 0x14b6c <zte_touch_probe+0xde8>
   14674: f9400282     	ldr	x2, [x20]
		0000000000014674:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14678: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cafb
   1467c: 91000000     	add	x0, x0, #0x0
		000000000001467c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cafb
   14680: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		0000000000014680:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_tp_test
   14684: 91000063     	add	x3, x3, #0x0
		0000000000014684:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_tp_test
   14688: 52803681     	mov	w1, #0x1b4              // =436
   1468c: 94000000     	bl	0x1468c <zte_touch_probe+0x908>
		000000000001468c:  R_AARCH64_CALL26	proc_create
   14690: b4002760     	cbz	x0, 0x14b7c <zte_touch_probe+0xdf8>
   14694: f9400282     	ldr	x2, [x20]
		0000000000014694:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
   14698: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a931
   1469c: 91000000     	add	x0, x0, #0x0
		000000000001469c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a931
   146a0: 90000003     	adrp	x3, 0x14000 <zte_touch_probe+0x27c>
		00000000000146a0:  R_AARCH64_ADR_PREL_PG_HI21	proc_ops_frame_data
   146a4: 91000063     	add	x3, x3, #0x0
		00000000000146a4:  R_AARCH64_ADD_ABS_LO12_NC	proc_ops_frame_data
   146a8: 52803681     	mov	w1, #0x1b4              // =436
   146ac: 94000000     	bl	0x146ac <zte_touch_probe+0x928>
		00000000000146ac:  R_AARCH64_CALL26	proc_create
   146b0: b40026e0     	cbz	x0, 0x14b8c <zte_touch_probe+0xe08>
   146b4: f94002b4     	ldr	x20, [x21]
		00000000000146b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   146b8: f946ea88     	ldr	x8, [x20, #0xdd0]
   146bc: b4000cc8     	cbz	x8, 0x14854 <zte_touch_probe+0xad0>
   146c0: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000146c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19708
   146c4: 91000000     	add	x0, x0, #0x0
		00000000000146c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19708
   146c8: 91004101     	add	x1, x8, #0x10
   146cc: 94000000     	bl	0x146cc <zte_touch_probe+0x948>
		00000000000146cc:  R_AARCH64_CALL26	kobject_create_and_add
   146d0: f9062a80     	str	x0, [x20, #0xc50]
   146d4: b4002640     	cbz	x0, 0x14b9c <zte_touch_probe+0xe18>
   146d8: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000146d8:  R_AARCH64_ADR_PREL_PG_HI21	fwimage_attr
   146dc: 91000021     	add	x1, x1, #0x0
		00000000000146dc:  R_AARCH64_ADD_ABS_LO12_NC	fwimage_attr
   146e0: 94000000     	bl	0x146e0 <zte_touch_probe+0x95c>
		00000000000146e0:  R_AARCH64_CALL26	sysfs_create_bin_file
   146e4: 35002640     	cbnz	w0, 0x14bac <zte_touch_probe+0xe28>
   146e8: 94000000     	bl	0x146e8 <zte_touch_probe+0x964>
		00000000000146e8:  R_AARCH64_CALL26	tpd_clean_all_event
   146ec: 94000000     	bl	0x146ec <zte_touch_probe+0x968>
		00000000000146ec:  R_AARCH64_CALL26	ghost_check_reset
   146f0: 94000000     	bl	0x146f0 <zte_touch_probe+0x96c>
		00000000000146f0:  R_AARCH64_CALL26	ufp_mac_init
   146f4: 94000000     	bl	0x146f4 <zte_touch_probe+0x970>
		00000000000146f4:  R_AARCH64_CALL26	tpd_workqueue_init
   146f8: 34000b60     	cbz	w0, 0x14864 <zte_touch_probe+0xae0>
   146fc: 12800160     	mov	w0, #-0xc               // =-12
   14700: d5384108     	mrs	x8, SP_EL0
   14704: f9438908     	ldr	x8, [x8, #0x710]
   14708: f94007e9     	ldr	x9, [sp, #0x8]
   1470c: eb09011f     	cmp	x8, x9
   14710: 54002781     	b.ne	0x14c00 <zte_touch_probe+0xe7c>
   14714: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   14718: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1471c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   14720: 910103ff     	add	sp, sp, #0x40
   14724: d50323bf     	autiasp
   14728: d65f03c0     	ret
   1472c: b94007e8     	ldr	w8, [sp, #0x4]
   14730: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d771
   14734: 91000000     	add	x0, x0, #0x0
		0000000000014734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d771
   14738: 12001d01     	and	w1, w8, #0xff
   1473c: 39009268     	strb	w8, [x19, #0x24]
   14740: 94000000     	bl	0x14740 <zte_touch_probe+0x9bc>
		0000000000014740:  R_AARCH64_CALL26	_printk
   14744: 39409268     	ldrb	w8, [x19, #0x24]
   14748: 34ffd528     	cbz	w8, 0x141ec <zte_touch_probe+0x468>
   1474c: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		000000000001474c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da84
   14750: 91000021     	add	x1, x1, #0x0
		0000000000014750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da84
   14754: 910013e2     	add	x2, sp, #0x4
   14758: aa1403e0     	mov	x0, x20
   1475c: 52800023     	mov	w3, #0x1                // =1
   14760: aa1f03e4     	mov	x4, xzr
   14764: 94000000     	bl	0x14764 <zte_touch_probe+0x9e0>
		0000000000014764:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   14768: 37ffd420     	tbnz	w0, #0x1f, 0x141ec <zte_touch_probe+0x468>
   1476c: b94007e8     	ldr	w8, [sp, #0x4]
   14770: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d3f
   14774: 91000000     	add	x0, x0, #0x0
		0000000000014774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d3f
   14778: 12003d01     	and	w1, w8, #0xffff
   1477c: 79007e68     	strh	w8, [x19, #0x3e]
   14780: 94000000     	bl	0x14780 <zte_touch_probe+0x9fc>
		0000000000014780:  R_AARCH64_CALL26	_printk
   14784: 17fffe9a     	b	0x141ec <zte_touch_probe+0x468>
   14788: b94007e8     	ldr	w8, [sp, #0x4]
   1478c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		000000000001478c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a62c
   14790: 91000000     	add	x0, x0, #0x0
		0000000000014790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a62c
   14794: 12001d01     	and	w1, w8, #0xff
   14798: 39009a68     	strb	w8, [x19, #0x26]
   1479c: 94000000     	bl	0x1479c <zte_touch_probe+0xa18>
		000000000001479c:  R_AARCH64_CALL26	_printk
   147a0: 39409a68     	ldrb	w8, [x19, #0x26]
   147a4: 3200c3e9     	mov	w9, #0x1010101          // =16843009
   147a8: 1b097d08     	mul	w8, w8, w9
   147ac: b8027268     	stur	w8, [x19, #0x27]
   147b0: 17fffe97     	b	0x1420c <zte_touch_probe+0x488>
   147b4: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000147b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4a7
   147b8: 91000000     	add	x0, x0, #0x0
		00000000000147b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4a7
   147bc: 94000000     	bl	0x147bc <zte_touch_probe+0xa38>
		00000000000147bc:  R_AARCH64_CALL26	_printk
   147c0: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000147c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17abd
   147c4: 91000021     	add	x1, x1, #0x0
		00000000000147c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17abd
   147c8: 910013e2     	add	x2, sp, #0x4
   147cc: aa1403e0     	mov	x0, x20
   147d0: 52800023     	mov	w3, #0x1                // =1
   147d4: aa1f03e4     	mov	x4, xzr
   147d8: 94000000     	bl	0x147d8 <zte_touch_probe+0xa54>
		00000000000147d8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   147dc: 36f81f60     	tbz	w0, #0x1f, 0x14bc8 <zte_touch_probe+0xe44>
   147e0: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		00000000000147e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d78e
   147e4: 91000021     	add	x1, x1, #0x0
		00000000000147e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d78e
   147e8: 910013e2     	add	x2, sp, #0x4
   147ec: aa1403e0     	mov	x0, x20
   147f0: 52800023     	mov	w3, #0x1                // =1
   147f4: aa1f03e4     	mov	x4, xzr
   147f8: 94000000     	bl	0x147f8 <zte_touch_probe+0xa74>
		00000000000147f8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   147fc: 36f81f40     	tbz	w0, #0x1f, 0x14be4 <zte_touch_probe+0xe60>
   14800: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9a8
   14804: 91000021     	add	x1, x1, #0x0
		0000000000014804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9a8
   14808: 910013e2     	add	x2, sp, #0x4
   1480c: aa1403e0     	mov	x0, x20
   14810: 52800023     	mov	w3, #0x1                // =1
   14814: aa1f03e4     	mov	x4, xzr
   14818: 94000000     	bl	0x14818 <zte_touch_probe+0xa94>
		0000000000014818:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1481c: 37ffd0a0     	tbnz	w0, #0x1f, 0x14230 <zte_touch_probe+0x4ac>
   14820: b94007e8     	ldr	w8, [sp, #0x4]
   14824: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ebf
   14828: 91000000     	add	x0, x0, #0x0
		0000000000014828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ebf
   1482c: 12003d01     	and	w1, w8, #0xffff
   14830: 79004668     	strh	w8, [x19, #0x22]
   14834: 94000000     	bl	0x14834 <zte_touch_probe+0xab0>
		0000000000014834:  R_AARCH64_CALL26	_printk
   14838: 17fffe7e     	b	0x14230 <zte_touch_probe+0x4ac>
   1483c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		000000000001483c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c48a
   14840: 91000000     	add	x0, x0, #0x0
		0000000000014840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c48a
   14844: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19100
   14848: 91000021     	add	x1, x1, #0x0
		0000000000014848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19100
   1484c: 94000000     	bl	0x1484c <zte_touch_probe+0xac8>
		000000000001484c:  R_AARCH64_CALL26	_printk
   14850: 17ffff99     	b	0x146b4 <zte_touch_probe+0x930>
   14854: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a685
   14858: 91000000     	add	x0, x0, #0x0
		0000000000014858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a685
   1485c: 94000000     	bl	0x1485c <zte_touch_probe+0xad8>
		000000000001485c:  R_AARCH64_CALL26	_printk
   14860: 17ffffa2     	b	0x146e8 <zte_touch_probe+0x964>
   14864: f9425a61     	ldr	x1, [x19, #0x4b0]
   14868: 91234262     	add	x2, x19, #0x8d0
   1486c: 52800400     	mov	w0, #0x20               // =32
   14870: 52802ee3     	mov	w3, #0x177              // =375
   14874: 94000000     	bl	0x14874 <zte_touch_probe+0xaf0>
		0000000000014874:  R_AARCH64_CALL26	queue_delayed_work_on
   14878: f94002a8     	ldr	x8, [x21]
		0000000000014878:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1487c: 90000009     	adrp	x9, 0x14000 <zte_touch_probe+0x27c>
		000000000001487c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
   14880: 91294262     	add	x2, x19, #0xa50
   14884: 52800400     	mov	w0, #0x20               // =32
   14888: 52809c43     	mov	w3, #0x4e2              // =1250
   1488c: f905f51f     	str	xzr, [x8, #0xbe8]
   14890: 392fc11f     	strb	wzr, [x8, #0xbf0]
   14894: f940012a     	ldr	x10, [x9]
		0000000000014894:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14898: f905fd0a     	str	x10, [x8, #0xbf8]
   1489c: f940012a     	ldr	x10, [x9]
		000000000001489c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148a0: f905a90a     	str	x10, [x8, #0xb50]
   148a4: f940012a     	ldr	x10, [x9]
		00000000000148a4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148a8: f905ad0a     	str	x10, [x8, #0xb58]
   148ac: f940012a     	ldr	x10, [x9]
		00000000000148ac:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148b0: f905b10a     	str	x10, [x8, #0xb60]
   148b4: f940012a     	ldr	x10, [x9]
		00000000000148b4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148b8: f905b50a     	str	x10, [x8, #0xb68]
   148bc: f940012a     	ldr	x10, [x9]
		00000000000148bc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148c0: f905b90a     	str	x10, [x8, #0xb70]
   148c4: f940012a     	ldr	x10, [x9]
		00000000000148c4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148c8: f905bd0a     	str	x10, [x8, #0xb78]
   148cc: f940012a     	ldr	x10, [x9]
		00000000000148cc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148d0: f905c10a     	str	x10, [x8, #0xb80]
   148d4: f940012a     	ldr	x10, [x9]
		00000000000148d4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148d8: f905c50a     	str	x10, [x8, #0xb88]
   148dc: f940012a     	ldr	x10, [x9]
		00000000000148dc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148e0: f905c90a     	str	x10, [x8, #0xb90]
   148e4: f940012a     	ldr	x10, [x9]
		00000000000148e4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148e8: f905cd0a     	str	x10, [x8, #0xb98]
   148ec: f940012a     	ldr	x10, [x9]
		00000000000148ec:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148f0: f905d10a     	str	x10, [x8, #0xba0]
   148f4: f940012a     	ldr	x10, [x9]
		00000000000148f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   148f8: f905d50a     	str	x10, [x8, #0xba8]
   148fc: f940012a     	ldr	x10, [x9]
		00000000000148fc:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14900: f905d90a     	str	x10, [x8, #0xbb0]
   14904: f940012a     	ldr	x10, [x9]
		0000000000014904:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14908: f905dd0a     	str	x10, [x8, #0xbb8]
   1490c: f940012a     	ldr	x10, [x9]
		000000000001490c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14910: f905e10a     	str	x10, [x8, #0xbc0]
   14914: f940012a     	ldr	x10, [x9]
		0000000000014914:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14918: f905e50a     	str	x10, [x8, #0xbc8]
   1491c: f940012a     	ldr	x10, [x9]
		000000000001491c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14920: f905e90a     	str	x10, [x8, #0xbd0]
   14924: f940012a     	ldr	x10, [x9]
		0000000000014924:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14928: f905ed0a     	str	x10, [x8, #0xbd8]
   1492c: f9400129     	ldr	x9, [x9]
		000000000001492c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
   14930: f905f109     	str	x9, [x8, #0xbe0]
   14934: f9425e61     	ldr	x1, [x19, #0x4b8]
   14938: 94000000     	bl	0x14938 <zte_touch_probe+0xbb4>
		0000000000014938:  R_AARCH64_CALL26	queue_delayed_work_on
   1493c: 52801fe8     	mov	w8, #0xff               // =255
   14940: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c00
   14944: 91000021     	add	x1, x1, #0x0
		0000000000014944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c00
   14948: 90000002     	adrp	x2, 0x14000 <zte_touch_probe+0x27c>
		0000000000014948:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
   1494c: 91000042     	add	x2, x2, #0x0
		000000000001494c:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
   14950: 9137a260     	add	x0, x19, #0xde8
   14954: 3900767f     	strb	wzr, [x19, #0x1d]
   14958: 39300268     	strb	w8, [x19, #0xc00]
   1495c: b904aa7f     	str	wzr, [x19, #0x4a8]
   14960: b90de27f     	str	wzr, [x19, #0xde0]
   14964: 94000000     	bl	0x14964 <zte_touch_probe+0xbe0>
		0000000000014964:  R_AARCH64_CALL26	__init_swait_queue_head
   14968: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b512
   1496c: 91000000     	add	x0, x0, #0x0
		000000000001496c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b512
   14970: 90000001     	adrp	x1, 0x14000 <zte_touch_probe+0x27c>
		0000000000014970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1852f
   14974: 91000021     	add	x1, x1, #0x0
		0000000000014974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1852f
   14978: 52816a22     	mov	w2, #0xb51              // =2897
   1497c: 3938067f     	strb	wzr, [x19, #0xe01]
   14980: 94000000     	bl	0x14980 <zte_touch_probe+0xbfc>
		0000000000014980:  R_AARCH64_CALL26	_printk
   14984: 2a1f03e0     	mov	w0, wzr
   14988: 17ffff5e     	b	0x14700 <zte_touch_probe+0x97c>
   1498c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		000000000001498c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0f8
   14990: 91000000     	add	x0, x0, #0x0
		0000000000014990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0f8
   14994: 94000000     	bl	0x14994 <zte_touch_probe+0xc10>
		0000000000014994:  R_AARCH64_CALL26	_printk
   14998: 17fffe47     	b	0x142b4 <zte_touch_probe+0x530>
   1499c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		000000000001499c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19370
   149a0: 91000000     	add	x0, x0, #0x0
		00000000000149a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19370
   149a4: 94000000     	bl	0x149a4 <zte_touch_probe+0xc20>
		00000000000149a4:  R_AARCH64_CALL26	_printk
   149a8: 17fffe4b     	b	0x142d4 <zte_touch_probe+0x550>
   149ac: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000149ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b10c
   149b0: 91000000     	add	x0, x0, #0x0
		00000000000149b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b10c
   149b4: 94000000     	bl	0x149b4 <zte_touch_probe+0xc30>
		00000000000149b4:  R_AARCH64_CALL26	_printk
   149b8: 17fffe4f     	b	0x142f4 <zte_touch_probe+0x570>
   149bc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000149bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d428
   149c0: 91000000     	add	x0, x0, #0x0
		00000000000149c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d428
   149c4: 94000000     	bl	0x149c4 <zte_touch_probe+0xc40>
		00000000000149c4:  R_AARCH64_CALL26	_printk
   149c8: 17fffe53     	b	0x14314 <zte_touch_probe+0x590>
   149cc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000149cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ad5
   149d0: 91000000     	add	x0, x0, #0x0
		00000000000149d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ad5
   149d4: 94000000     	bl	0x149d4 <zte_touch_probe+0xc50>
		00000000000149d4:  R_AARCH64_CALL26	_printk
   149d8: 17fffe57     	b	0x14334 <zte_touch_probe+0x5b0>
   149dc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000149dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbd8
   149e0: 91000000     	add	x0, x0, #0x0
		00000000000149e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbd8
   149e4: 94000000     	bl	0x149e4 <zte_touch_probe+0xc60>
		00000000000149e4:  R_AARCH64_CALL26	_printk
   149e8: 17fffe5b     	b	0x14354 <zte_touch_probe+0x5d0>
   149ec: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000149ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf7
   149f0: 91000000     	add	x0, x0, #0x0
		00000000000149f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf7
   149f4: 94000000     	bl	0x149f4 <zte_touch_probe+0xc70>
		00000000000149f4:  R_AARCH64_CALL26	_printk
   149f8: 17fffe5f     	b	0x14374 <zte_touch_probe+0x5f0>
   149fc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		00000000000149fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17575
   14a00: 91000000     	add	x0, x0, #0x0
		0000000000014a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17575
   14a04: 94000000     	bl	0x14a04 <zte_touch_probe+0xc80>
		0000000000014a04:  R_AARCH64_CALL26	_printk
   14a08: 17fffe63     	b	0x14394 <zte_touch_probe+0x610>
   14a0c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cec6
   14a10: 91000000     	add	x0, x0, #0x0
		0000000000014a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cec6
   14a14: 94000000     	bl	0x14a14 <zte_touch_probe+0xc90>
		0000000000014a14:  R_AARCH64_CALL26	_printk
   14a18: 17fffe67     	b	0x143b4 <zte_touch_probe+0x630>
   14a1c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cad9
   14a20: 91000000     	add	x0, x0, #0x0
		0000000000014a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cad9
   14a24: 94000000     	bl	0x14a24 <zte_touch_probe+0xca0>
		0000000000014a24:  R_AARCH64_CALL26	_printk
   14a28: 17fffe6b     	b	0x143d4 <zte_touch_probe+0x650>
   14a2c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a40d
   14a30: 91000000     	add	x0, x0, #0x0
		0000000000014a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a40d
   14a34: 94000000     	bl	0x14a34 <zte_touch_probe+0xcb0>
		0000000000014a34:  R_AARCH64_CALL26	_printk
   14a38: 17fffe6f     	b	0x143f4 <zte_touch_probe+0x670>
   14a3c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4c1
   14a40: 91000000     	add	x0, x0, #0x0
		0000000000014a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4c1
   14a44: 94000000     	bl	0x14a44 <zte_touch_probe+0xcc0>
		0000000000014a44:  R_AARCH64_CALL26	_printk
   14a48: 17fffe73     	b	0x14414 <zte_touch_probe+0x690>
   14a4c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9be
   14a50: 91000000     	add	x0, x0, #0x0
		0000000000014a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9be
   14a54: 94000000     	bl	0x14a54 <zte_touch_probe+0xcd0>
		0000000000014a54:  R_AARCH64_CALL26	_printk
   14a58: 17fffe77     	b	0x14434 <zte_touch_probe+0x6b0>
   14a5c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beda
   14a60: 91000000     	add	x0, x0, #0x0
		0000000000014a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beda
   14a64: 94000000     	bl	0x14a64 <zte_touch_probe+0xce0>
		0000000000014a64:  R_AARCH64_CALL26	_printk
   14a68: 17fffe7b     	b	0x14454 <zte_touch_probe+0x6d0>
   14a6c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c25
   14a70: 91000000     	add	x0, x0, #0x0
		0000000000014a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c25
   14a74: 94000000     	bl	0x14a74 <zte_touch_probe+0xcf0>
		0000000000014a74:  R_AARCH64_CALL26	_printk
   14a78: 17fffe7f     	b	0x14474 <zte_touch_probe+0x6f0>
   14a7c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196e7
   14a80: 91000000     	add	x0, x0, #0x0
		0000000000014a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196e7
   14a84: 94000000     	bl	0x14a84 <zte_touch_probe+0xd00>
		0000000000014a84:  R_AARCH64_CALL26	_printk
   14a88: 17fffe83     	b	0x14494 <zte_touch_probe+0x710>
   14a8c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d5c
   14a90: 91000000     	add	x0, x0, #0x0
		0000000000014a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d5c
   14a94: 94000000     	bl	0x14a94 <zte_touch_probe+0xd10>
		0000000000014a94:  R_AARCH64_CALL26	_printk
   14a98: 17fffe87     	b	0x144b4 <zte_touch_probe+0x730>
   14a9c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d7a6
   14aa0: 91000000     	add	x0, x0, #0x0
		0000000000014aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d7a6
   14aa4: 94000000     	bl	0x14aa4 <zte_touch_probe+0xd20>
		0000000000014aa4:  R_AARCH64_CALL26	_printk
   14aa8: 17fffe8b     	b	0x144d4 <zte_touch_probe+0x750>
   14aac: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7a5
   14ab0: 91000000     	add	x0, x0, #0x0
		0000000000014ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7a5
   14ab4: 94000000     	bl	0x14ab4 <zte_touch_probe+0xd30>
		0000000000014ab4:  R_AARCH64_CALL26	_printk
   14ab8: 17fffe8f     	b	0x144f4 <zte_touch_probe+0x770>
   14abc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199fe
   14ac0: 91000000     	add	x0, x0, #0x0
		0000000000014ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199fe
   14ac4: 94000000     	bl	0x14ac4 <zte_touch_probe+0xd40>
		0000000000014ac4:  R_AARCH64_CALL26	_printk
   14ac8: 17fffe93     	b	0x14514 <zte_touch_probe+0x790>
   14acc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d44a
   14ad0: 91000000     	add	x0, x0, #0x0
		0000000000014ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d44a
   14ad4: 94000000     	bl	0x14ad4 <zte_touch_probe+0xd50>
		0000000000014ad4:  R_AARCH64_CALL26	_printk
   14ad8: 17fffe97     	b	0x14534 <zte_touch_probe+0x7b0>
   14adc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da98
   14ae0: 91000000     	add	x0, x0, #0x0
		0000000000014ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da98
   14ae4: 94000000     	bl	0x14ae4 <zte_touch_probe+0xd60>
		0000000000014ae4:  R_AARCH64_CALL26	_printk
   14ae8: 17fffe9b     	b	0x14554 <zte_touch_probe+0x7d0>
   14aec: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad84
   14af0: 91000000     	add	x0, x0, #0x0
		0000000000014af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad84
   14af4: 94000000     	bl	0x14af4 <zte_touch_probe+0xd70>
		0000000000014af4:  R_AARCH64_CALL26	_printk
   14af8: 17fffe9f     	b	0x14574 <zte_touch_probe+0x7f0>
   14afc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adac
   14b00: 91000000     	add	x0, x0, #0x0
		0000000000014b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adac
   14b04: 94000000     	bl	0x14b04 <zte_touch_probe+0xd80>
		0000000000014b04:  R_AARCH64_CALL26	_printk
   14b08: 17fffea3     	b	0x14594 <zte_touch_probe+0x810>
   14b0c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19394
   14b10: 91000000     	add	x0, x0, #0x0
		0000000000014b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19394
   14b14: 94000000     	bl	0x14b14 <zte_touch_probe+0xd90>
		0000000000014b14:  R_AARCH64_CALL26	_printk
   14b18: 17fffea7     	b	0x145b4 <zte_touch_probe+0x830>
   14b1c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18947
   14b20: 91000000     	add	x0, x0, #0x0
		0000000000014b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18947
   14b24: 94000000     	bl	0x14b24 <zte_touch_probe+0xda0>
		0000000000014b24:  R_AARCH64_CALL26	_printk
   14b28: 17fffeab     	b	0x145d4 <zte_touch_probe+0x850>
   14b2c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7cc
   14b30: 91000000     	add	x0, x0, #0x0
		0000000000014b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7cc
   14b34: 94000000     	bl	0x14b34 <zte_touch_probe+0xdb0>
		0000000000014b34:  R_AARCH64_CALL26	_printk
   14b38: 17fffeaf     	b	0x145f4 <zte_touch_probe+0x870>
   14b3c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b4e4
   14b40: 91000000     	add	x0, x0, #0x0
		0000000000014b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b4e4
   14b44: 94000000     	bl	0x14b44 <zte_touch_probe+0xdc0>
		0000000000014b44:  R_AARCH64_CALL26	_printk
   14b48: 17fffeb3     	b	0x14614 <zte_touch_probe+0x890>
   14b4c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193b5
   14b50: 91000000     	add	x0, x0, #0x0
		0000000000014b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193b5
   14b54: 94000000     	bl	0x14b54 <zte_touch_probe+0xdd0>
		0000000000014b54:  R_AARCH64_CALL26	_printk
   14b58: 17fffeb7     	b	0x14634 <zte_touch_probe+0x8b0>
   14b5c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c467
   14b60: 91000000     	add	x0, x0, #0x0
		0000000000014b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c467
   14b64: 94000000     	bl	0x14b64 <zte_touch_probe+0xde0>
		0000000000014b64:  R_AARCH64_CALL26	_printk
   14b68: 17fffebb     	b	0x14654 <zte_touch_probe+0x8d0>
   14b6c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a664
   14b70: 91000000     	add	x0, x0, #0x0
		0000000000014b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a664
   14b74: 94000000     	bl	0x14b74 <zte_touch_probe+0xdf0>
		0000000000014b74:  R_AARCH64_CALL26	_printk
   14b78: 17fffebf     	b	0x14674 <zte_touch_probe+0x8f0>
   14b7c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a11e
   14b80: 91000000     	add	x0, x0, #0x0
		0000000000014b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a11e
   14b84: 94000000     	bl	0x14b84 <zte_touch_probe+0xe00>
		0000000000014b84:  R_AARCH64_CALL26	_printk
   14b88: 17fffec3     	b	0x14694 <zte_touch_probe+0x910>
   14b8c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18969
   14b90: 91000000     	add	x0, x0, #0x0
		0000000000014b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18969
   14b94: 94000000     	bl	0x14b94 <zte_touch_probe+0xe10>
		0000000000014b94:  R_AARCH64_CALL26	_printk
   14b98: 17fffec7     	b	0x146b4 <zte_touch_probe+0x930>
   14b9c: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x185a5
   14ba0: 91000000     	add	x0, x0, #0x0
		0000000000014ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x185a5
   14ba4: 94000000     	bl	0x14ba4 <zte_touch_probe+0xe20>
		0000000000014ba4:  R_AARCH64_CALL26	_printk
   14ba8: 17fffed0     	b	0x146e8 <zte_touch_probe+0x964>
   14bac: 2a0003e1     	mov	w1, w0
   14bb0: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19711
   14bb4: 91000000     	add	x0, x0, #0x0
		0000000000014bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19711
   14bb8: 94000000     	bl	0x14bb8 <zte_touch_probe+0xe34>
		0000000000014bb8:  R_AARCH64_CALL26	_printk
   14bbc: f9462a80     	ldr	x0, [x20, #0xc50]
   14bc0: 94000000     	bl	0x14bc0 <zte_touch_probe+0xe3c>
		0000000000014bc0:  R_AARCH64_CALL26	kobject_put
   14bc4: 17fffec9     	b	0x146e8 <zte_touch_probe+0x964>
   14bc8: b94007e8     	ldr	w8, [sp, #0x4]
   14bcc: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a987
   14bd0: 91000000     	add	x0, x0, #0x0
		0000000000014bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a987
   14bd4: 12003d01     	and	w1, w8, #0xffff
   14bd8: 79003e68     	strh	w8, [x19, #0x1e]
   14bdc: 94000000     	bl	0x14bdc <zte_touch_probe+0xe58>
		0000000000014bdc:  R_AARCH64_CALL26	_printk
   14be0: 17ffff00     	b	0x147e0 <zte_touch_probe+0xa5c>
   14be4: b94007e8     	ldr	w8, [sp, #0x4]
   14be8: 90000000     	adrp	x0, 0x14000 <zte_touch_probe+0x27c>
		0000000000014be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1828e
   14bec: 91000000     	add	x0, x0, #0x0
		0000000000014bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1828e
   14bf0: 12003d01     	and	w1, w8, #0xffff
   14bf4: 79004268     	strh	w8, [x19, #0x20]
   14bf8: 94000000     	bl	0x14bf8 <zte_touch_probe+0xe74>
		0000000000014bf8:  R_AARCH64_CALL26	_printk
   14bfc: 17ffff01     	b	0x14800 <zte_touch_probe+0xa7c>
   14c00: 94000000     	bl	0x14c00 <zte_touch_probe+0xe7c>
		0000000000014c00:  R_AARCH64_CALL26	__stack_chk_fail
