
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011cbc <syna_spi_probe>:
   11cbc: d503233f     	paciasp
   11cc0: d10243ff     	sub	sp, sp, #0x90
   11cc4: a9037bfd     	stp	x29, x30, [sp, #0x30]
   11cc8: a9046ffc     	stp	x28, x27, [sp, #0x40]
   11ccc: a90567fa     	stp	x26, x25, [sp, #0x50]
   11cd0: a9065ff8     	stp	x24, x23, [sp, #0x60]
   11cd4: a90757f6     	stp	x22, x21, [sp, #0x70]
   11cd8: a9084ff4     	stp	x20, x19, [sp, #0x80]
   11cdc: 9100c3fd     	add	x29, sp, #0x30
   11ce0: d5384108     	mrs	x8, SP_EL0
   11ce4: aa0003f3     	mov	x19, x0
   11ce8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaeb1
   11cec: 91000000     	add	x0, x0, #0x0
		0000000000011cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaeb1
   11cf0: f9438908     	ldr	x8, [x8, #0x710]
   11cf4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76b0
   11cf8: 91000021     	add	x1, x1, #0x0
		0000000000011cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76b0
   11cfc: f81f83a8     	stur	x8, [x29, #-0x8]
   11d00: 94000000     	bl	0x11d00 <syna_spi_probe+0x44>
		0000000000011d00:  R_AARCH64_CALL26	_printk
   11d04: f9417674     	ldr	x20, [x19, #0x2e8]
   11d08: 90000015     	adrp	x21, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011d08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d8
   11d0c: 12800008     	mov	w8, #-0x1               // =-1
   11d10: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b79
   11d14: 91000021     	add	x1, x1, #0x0
		0000000000011d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b79
   11d18: aa1f03e2     	mov	x2, xzr
   11d1c: aa1403e0     	mov	x0, x20
   11d20: b90023ff     	str	wzr, [sp, #0x20]
   11d24: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   11d28: b90002a8     	str	w8, [x21]
		0000000000011d28:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d8
   11d2c: 94000000     	bl	0x11d2c <syna_spi_probe+0x70>
		0000000000011d2c:  R_AARCH64_CALL26	of_find_property
   11d30: b4000120     	cbz	x0, 0x11d54 <syna_spi_probe+0x98>
   11d34: b9400808     	ldr	w8, [x0, #0x8]
   11d38: 340000e8     	cbz	w8, 0x11d54 <syna_spi_probe+0x98>
   11d3c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b79
   11d40: 91000021     	add	x1, x1, #0x0
		0000000000011d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b79
   11d44: aa1403e0     	mov	x0, x20
   11d48: 2a1f03e2     	mov	w2, wzr
   11d4c: 94000000     	bl	0x11d4c <syna_spi_probe+0x90>
		0000000000011d4c:  R_AARCH64_CALL26	of_get_named_gpio
   11d50: b90002a0     	str	w0, [x21]
		0000000000011d50:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d8
   11d54: 90000015     	adrp	x21, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011d54:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8e0
   11d58: 52840108     	mov	w8, #0x2008             // =8200
   11d5c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9904
   11d60: 91000021     	add	x1, x1, #0x0
		0000000000011d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9904
   11d64: aa1403e0     	mov	x0, x20
   11d68: aa1f03e2     	mov	x2, xzr
   11d6c: f90002a8     	str	x8, [x21]
		0000000000011d6c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x8e0
   11d70: 94000000     	bl	0x11d70 <syna_spi_probe+0xb4>
		0000000000011d70:  R_AARCH64_CALL26	of_find_property
   11d74: b4000180     	cbz	x0, 0x11da4 <syna_spi_probe+0xe8>
   11d78: b9400808     	ldr	w8, [x0, #0x8]
   11d7c: 34000148     	cbz	w8, 0x11da4 <syna_spi_probe+0xe8>
   11d80: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9904
   11d84: 91000021     	add	x1, x1, #0x0
		0000000000011d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9904
   11d88: 910043e2     	add	x2, sp, #0x10
   11d8c: aa1403e0     	mov	x0, x20
   11d90: 52800023     	mov	w3, #0x1                // =1
   11d94: aa1f03e4     	mov	x4, xzr
   11d98: 94000000     	bl	0x11d98 <syna_spi_probe+0xdc>
		0000000000011d98:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11d9c: b98013e8     	ldrsw	x8, [sp, #0x10]
   11da0: f90002a8     	str	x8, [x21]
		0000000000011da0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x8e0
   11da4: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011da4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8dc
   11da8: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a4
   11dac: 91000021     	add	x1, x1, #0x0
		0000000000011dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a4
   11db0: aa1403e0     	mov	x0, x20
   11db4: aa1f03e2     	mov	x2, xzr
   11db8: b900011f     	str	wzr, [x8]
		0000000000011db8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8dc
   11dbc: 94000000     	bl	0x11dbc <syna_spi_probe+0x100>
		0000000000011dbc:  R_AARCH64_CALL26	of_find_property
   11dc0: b4000160     	cbz	x0, 0x11dec <syna_spi_probe+0x130>
   11dc4: b9400808     	ldr	w8, [x0, #0x8]
   11dc8: 34000128     	cbz	w8, 0x11dec <syna_spi_probe+0x130>
   11dcc: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a4
   11dd0: 91000021     	add	x1, x1, #0x0
		0000000000011dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a4
   11dd4: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011dd4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8dc
   11dd8: 91000042     	add	x2, x2, #0x0
		0000000000011dd8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8dc
   11ddc: aa1403e0     	mov	x0, x20
   11de0: 52800023     	mov	w3, #0x1                // =1
   11de4: aa1f03e4     	mov	x4, xzr
   11de8: 94000000     	bl	0x11de8 <syna_spi_probe+0x12c>
		0000000000011de8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11dec: 90000019     	adrp	x25, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011dec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x980
   11df0: 52800028     	mov	w8, #0x1                // =1
   11df4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5288
   11df8: 91000021     	add	x1, x1, #0x0
		0000000000011df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5288
   11dfc: aa1403e0     	mov	x0, x20
   11e00: aa1f03e2     	mov	x2, xzr
   11e04: b9000328     	str	w8, [x25]
		0000000000011e04:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x980
   11e08: 94000000     	bl	0x11e08 <syna_spi_probe+0x14c>
		0000000000011e08:  R_AARCH64_CALL26	of_find_property
   11e0c: b4000160     	cbz	x0, 0x11e38 <syna_spi_probe+0x17c>
   11e10: b9400808     	ldr	w8, [x0, #0x8]
   11e14: 34000128     	cbz	w8, 0x11e38 <syna_spi_probe+0x17c>
   11e18: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5288
   11e1c: 91000021     	add	x1, x1, #0x0
		0000000000011e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5288
   11e20: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x980
   11e24: 91000042     	add	x2, x2, #0x0
		0000000000011e24:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x980
   11e28: aa1403e0     	mov	x0, x20
   11e2c: 52800023     	mov	w3, #0x1                // =1
   11e30: aa1f03e4     	mov	x4, xzr
   11e34: 94000000     	bl	0x11e34 <syna_spi_probe+0x178>
		0000000000011e34:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11e38: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e38:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x984
   11e3c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9217
   11e40: 91000021     	add	x1, x1, #0x0
		0000000000011e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9217
   11e44: aa1403e0     	mov	x0, x20
   11e48: aa1f03e2     	mov	x2, xzr
   11e4c: b900011f     	str	wzr, [x8]
		0000000000011e4c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x984
   11e50: 94000000     	bl	0x11e50 <syna_spi_probe+0x194>
		0000000000011e50:  R_AARCH64_CALL26	of_find_property
   11e54: b4000160     	cbz	x0, 0x11e80 <syna_spi_probe+0x1c4>
   11e58: b9400808     	ldr	w8, [x0, #0x8]
   11e5c: 34000128     	cbz	w8, 0x11e80 <syna_spi_probe+0x1c4>
   11e60: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9217
   11e64: 91000021     	add	x1, x1, #0x0
		0000000000011e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9217
   11e68: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e68:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x984
   11e6c: 91000042     	add	x2, x2, #0x0
		0000000000011e6c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x984
   11e70: aa1403e0     	mov	x0, x20
   11e74: 52800023     	mov	w3, #0x1                // =1
   11e78: aa1f03e4     	mov	x4, xzr
   11e7c: 94000000     	bl	0x11e7c <syna_spi_probe+0x1c0>
		0000000000011e7c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11e80: 90000015     	adrp	x21, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e80:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x930
   11e84: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x410f
   11e88: 91000021     	add	x1, x1, #0x0
		0000000000011e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x410f
   11e8c: aa1403e0     	mov	x0, x20
   11e90: aa1f03e2     	mov	x2, xzr
   11e94: b90002bf     	str	wzr, [x21]
		0000000000011e94:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   11e98: 94000000     	bl	0x11e98 <syna_spi_probe+0x1dc>
		0000000000011e98:  R_AARCH64_CALL26	of_find_property
   11e9c: b4000160     	cbz	x0, 0x11ec8 <syna_spi_probe+0x20c>
   11ea0: b9400808     	ldr	w8, [x0, #0x8]
   11ea4: 34000128     	cbz	w8, 0x11ec8 <syna_spi_probe+0x20c>
   11ea8: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x410f
   11eac: 91000021     	add	x1, x1, #0x0
		0000000000011eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x410f
   11eb0: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011eb0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x930
   11eb4: 91000042     	add	x2, x2, #0x0
		0000000000011eb4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x930
   11eb8: aa1403e0     	mov	x0, x20
   11ebc: 52800023     	mov	w3, #0x1                // =1
   11ec0: aa1f03e4     	mov	x4, xzr
   11ec4: 94000000     	bl	0x11ec4 <syna_spi_probe+0x208>
		0000000000011ec4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11ec8: 9000001a     	adrp	x26, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ec8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x938
   11ecc: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cb9
   11ed0: 91000021     	add	x1, x1, #0x0
		0000000000011ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cb9
   11ed4: aa1403e0     	mov	x0, x20
   11ed8: aa1f03e2     	mov	x2, xzr
   11edc: f900035f     	str	xzr, [x26]
		0000000000011edc:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x938
   11ee0: 94000000     	bl	0x11ee0 <syna_spi_probe+0x224>
		0000000000011ee0:  R_AARCH64_CALL26	of_find_property
   11ee4: b4000120     	cbz	x0, 0x11f08 <syna_spi_probe+0x24c>
   11ee8: b9400808     	ldr	w8, [x0, #0x8]
   11eec: 340000e8     	cbz	w8, 0x11f08 <syna_spi_probe+0x24c>
   11ef0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cb9
   11ef4: 91000021     	add	x1, x1, #0x0
		0000000000011ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cb9
   11ef8: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ef8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x938
   11efc: 91000042     	add	x2, x2, #0x0
		0000000000011efc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x938
   11f00: aa1403e0     	mov	x0, x20
   11f04: 94000000     	bl	0x11f04 <syna_spi_probe+0x248>
		0000000000011f04:  R_AARCH64_CALL26	of_property_read_string
   11f08: 90000009     	adrp	x9, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   11f0c: 12800008     	mov	w8, #-0x1               // =-1
   11f10: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fb3
   11f14: 91000021     	add	x1, x1, #0x0
		0000000000011f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fb3
   11f18: aa1403e0     	mov	x0, x20
   11f1c: aa1f03e2     	mov	x2, xzr
   11f20: b9000128     	str	w8, [x9]
		0000000000011f20:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   11f24: 94000000     	bl	0x11f24 <syna_spi_probe+0x268>
		0000000000011f24:  R_AARCH64_CALL26	of_find_property
   11f28: b4000140     	cbz	x0, 0x11f50 <syna_spi_probe+0x294>
   11f2c: b9400808     	ldr	w8, [x0, #0x8]
   11f30: 34000108     	cbz	w8, 0x11f50 <syna_spi_probe+0x294>
   11f34: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fb3
   11f38: 91000021     	add	x1, x1, #0x0
		0000000000011f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fb3
   11f3c: aa1403e0     	mov	x0, x20
   11f40: 2a1f03e2     	mov	w2, wzr
   11f44: 94000000     	bl	0x11f44 <syna_spi_probe+0x288>
		0000000000011f44:  R_AARCH64_CALL26	of_get_named_gpio
   11f48: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f48:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   11f4c: b9000100     	str	w0, [x8]
		0000000000011f4c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   11f50: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f50:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x950
   11f54: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x210c
   11f58: 91000021     	add	x1, x1, #0x0
		0000000000011f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x210c
   11f5c: aa1403e0     	mov	x0, x20
   11f60: aa1f03e2     	mov	x2, xzr
   11f64: b900011f     	str	wzr, [x8]
		0000000000011f64:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x950
   11f68: 94000000     	bl	0x11f68 <syna_spi_probe+0x2ac>
		0000000000011f68:  R_AARCH64_CALL26	of_find_property
   11f6c: b4000160     	cbz	x0, 0x11f98 <syna_spi_probe+0x2dc>
   11f70: b9400808     	ldr	w8, [x0, #0x8]
   11f74: 34000128     	cbz	w8, 0x11f98 <syna_spi_probe+0x2dc>
   11f78: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x210c
   11f7c: 91000021     	add	x1, x1, #0x0
		0000000000011f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x210c
   11f80: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f80:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x950
   11f84: 91000042     	add	x2, x2, #0x0
		0000000000011f84:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x950
   11f88: aa1403e0     	mov	x0, x20
   11f8c: 52800023     	mov	w3, #0x1                // =1
   11f90: aa1f03e4     	mov	x4, xzr
   11f94: 94000000     	bl	0x11f94 <syna_spi_probe+0x2d8>
		0000000000011f94:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11f98: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f98:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x954
   11f9c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9918
   11fa0: 91000021     	add	x1, x1, #0x0
		0000000000011fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9918
   11fa4: aa1403e0     	mov	x0, x20
   11fa8: aa1f03e2     	mov	x2, xzr
   11fac: b900011f     	str	wzr, [x8]
		0000000000011fac:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x954
   11fb0: 94000000     	bl	0x11fb0 <syna_spi_probe+0x2f4>
		0000000000011fb0:  R_AARCH64_CALL26	of_find_property
   11fb4: b4000160     	cbz	x0, 0x11fe0 <syna_spi_probe+0x324>
   11fb8: b9400808     	ldr	w8, [x0, #0x8]
   11fbc: 34000128     	cbz	w8, 0x11fe0 <syna_spi_probe+0x324>
   11fc0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9918
   11fc4: 91000021     	add	x1, x1, #0x0
		0000000000011fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9918
   11fc8: 90000002     	adrp	x2, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011fc8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x954
   11fcc: 91000042     	add	x2, x2, #0x0
		0000000000011fcc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x954
   11fd0: aa1403e0     	mov	x0, x20
   11fd4: 52800023     	mov	w3, #0x1                // =1
   11fd8: aa1f03e4     	mov	x4, xzr
   11fdc: 94000000     	bl	0x11fdc <syna_spi_probe+0x320>
		0000000000011fdc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   11fe0: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011fe0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   11fe4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x876a
   11fe8: 91000021     	add	x1, x1, #0x0
		0000000000011fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x876a
   11fec: aa1403e0     	mov	x0, x20
   11ff0: aa1f03e2     	mov	x2, xzr
   11ff4: b900011f     	str	wzr, [x8]
		0000000000011ff4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x958
   11ff8: 94000000     	bl	0x11ff8 <syna_spi_probe+0x33c>
		0000000000011ff8:  R_AARCH64_CALL26	of_find_property
   11ffc: b4000160     	cbz	x0, 0x12028 <syna_spi_probe+0x36c>
   12000: b9400808     	ldr	w8, [x0, #0x8]
   12004: 34000128     	cbz	w8, 0x12028 <syna_spi_probe+0x36c>
   12008: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x876a
   1200c: 91000021     	add	x1, x1, #0x0
		000000000001200c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x876a
   12010: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012010:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   12014: 91000042     	add	x2, x2, #0x0
		0000000000012014:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x958
   12018: aa1403e0     	mov	x0, x20
   1201c: 52800023     	mov	w3, #0x1                // =1
   12020: aa1f03e4     	mov	x4, xzr
   12024: 94000000     	bl	0x12024 <syna_spi_probe+0x368>
		0000000000012024:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12028: 90000017     	adrp	x23, 0x12000 <syna_spi_probe+0x344>
		0000000000012028:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x960
   1202c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		000000000001202c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33c4
   12030: 91000021     	add	x1, x1, #0x0
		0000000000012030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33c4
   12034: aa1403e0     	mov	x0, x20
   12038: aa1f03e2     	mov	x2, xzr
   1203c: f90002ff     	str	xzr, [x23]
		000000000001203c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x960
   12040: 94000000     	bl	0x12040 <syna_spi_probe+0x384>
		0000000000012040:  R_AARCH64_CALL26	of_find_property
   12044: b4000120     	cbz	x0, 0x12068 <syna_spi_probe+0x3ac>
   12048: b9400808     	ldr	w8, [x0, #0x8]
   1204c: 340000e8     	cbz	w8, 0x12068 <syna_spi_probe+0x3ac>
   12050: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33c4
   12054: 91000021     	add	x1, x1, #0x0
		0000000000012054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33c4
   12058: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012058:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x960
   1205c: 91000042     	add	x2, x2, #0x0
		000000000001205c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x960
   12060: aa1403e0     	mov	x0, x20
   12064: 94000000     	bl	0x12064 <syna_spi_probe+0x3a8>
		0000000000012064:  R_AARCH64_CALL26	of_property_read_string
   12068: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		0000000000012068:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   1206c: 12800008     	mov	w8, #-0x1               // =-1
   12070: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ccc
   12074: 91000021     	add	x1, x1, #0x0
		0000000000012074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ccc
   12078: aa1403e0     	mov	x0, x20
   1207c: aa1f03e2     	mov	x2, xzr
   12080: b9000128     	str	w8, [x9]
		0000000000012080:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   12084: 94000000     	bl	0x12084 <syna_spi_probe+0x3c8>
		0000000000012084:  R_AARCH64_CALL26	of_find_property
   12088: b4000140     	cbz	x0, 0x120b0 <syna_spi_probe+0x3f4>
   1208c: b9400808     	ldr	w8, [x0, #0x8]
   12090: 34000108     	cbz	w8, 0x120b0 <syna_spi_probe+0x3f4>
   12094: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ccc
   12098: 91000021     	add	x1, x1, #0x0
		0000000000012098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ccc
   1209c: aa1403e0     	mov	x0, x20
   120a0: 2a1f03e2     	mov	w2, wzr
   120a4: 94000000     	bl	0x120a4 <syna_spi_probe+0x3e8>
		00000000000120a4:  R_AARCH64_CALL26	of_get_named_gpio
   120a8: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000120a8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   120ac: b9000100     	str	w0, [x8]
		00000000000120ac:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   120b0: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000120b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x978
   120b4: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000120b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa01c
   120b8: 91000021     	add	x1, x1, #0x0
		00000000000120b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa01c
   120bc: aa1403e0     	mov	x0, x20
   120c0: aa1f03e2     	mov	x2, xzr
   120c4: b900011f     	str	wzr, [x8]
		00000000000120c4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x978
   120c8: 94000000     	bl	0x120c8 <syna_spi_probe+0x40c>
		00000000000120c8:  R_AARCH64_CALL26	of_find_property
   120cc: b4000160     	cbz	x0, 0x120f8 <syna_spi_probe+0x43c>
   120d0: b9400808     	ldr	w8, [x0, #0x8]
   120d4: 34000128     	cbz	w8, 0x120f8 <syna_spi_probe+0x43c>
   120d8: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000120d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa01c
   120dc: 91000021     	add	x1, x1, #0x0
		00000000000120dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa01c
   120e0: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		00000000000120e0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x978
   120e4: 91000042     	add	x2, x2, #0x0
		00000000000120e4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x978
   120e8: aa1403e0     	mov	x0, x20
   120ec: 52800023     	mov	w3, #0x1                // =1
   120f0: aa1f03e4     	mov	x4, xzr
   120f4: 94000000     	bl	0x120f4 <syna_spi_probe+0x438>
		00000000000120f4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   120f8: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000120f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x97c
   120fc: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000120fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1bc
   12100: 91000021     	add	x1, x1, #0x0
		0000000000012100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1bc
   12104: aa1403e0     	mov	x0, x20
   12108: aa1f03e2     	mov	x2, xzr
   1210c: b900011f     	str	wzr, [x8]
		000000000001210c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x97c
   12110: 94000000     	bl	0x12110 <syna_spi_probe+0x454>
		0000000000012110:  R_AARCH64_CALL26	of_find_property
   12114: b4000160     	cbz	x0, 0x12140 <syna_spi_probe+0x484>
   12118: b9400808     	ldr	w8, [x0, #0x8]
   1211c: 34000128     	cbz	w8, 0x12140 <syna_spi_probe+0x484>
   12120: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1bc
   12124: 91000021     	add	x1, x1, #0x0
		0000000000012124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1bc
   12128: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012128:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x97c
   1212c: 91000042     	add	x2, x2, #0x0
		000000000001212c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x97c
   12130: aa1403e0     	mov	x0, x20
   12134: 52800023     	mov	w3, #0x1                // =1
   12138: aa1f03e4     	mov	x4, xzr
   1213c: 94000000     	bl	0x1213c <syna_spi_probe+0x480>
		000000000001213c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12140: 9000001b     	adrp	x27, 0x12000 <syna_spi_probe+0x344>
		0000000000012140:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x924
   12144: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822f
   12148: 91000021     	add	x1, x1, #0x0
		0000000000012148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822f
   1214c: aa1403e0     	mov	x0, x20
   12150: aa1f03e2     	mov	x2, xzr
   12154: b900037f     	str	wzr, [x27]
		0000000000012154:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x924
   12158: 94000000     	bl	0x12158 <syna_spi_probe+0x49c>
		0000000000012158:  R_AARCH64_CALL26	of_find_property
   1215c: b4000160     	cbz	x0, 0x12188 <syna_spi_probe+0x4cc>
   12160: b9400808     	ldr	w8, [x0, #0x8]
   12164: 34000128     	cbz	w8, 0x12188 <syna_spi_probe+0x4cc>
   12168: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822f
   1216c: 91000021     	add	x1, x1, #0x0
		000000000001216c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822f
   12170: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012170:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x924
   12174: 91000042     	add	x2, x2, #0x0
		0000000000012174:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x924
   12178: aa1403e0     	mov	x0, x20
   1217c: 52800023     	mov	w3, #0x1                // =1
   12180: aa1f03e4     	mov	x4, xzr
   12184: 94000000     	bl	0x12184 <syna_spi_probe+0x4c8>
		0000000000012184:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12188: 9000001c     	adrp	x28, 0x12000 <syna_spi_probe+0x344>
		0000000000012188:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x920
   1218c: 12800008     	mov	w8, #-0x1               // =-1
   12190: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe80
   12194: 91000021     	add	x1, x1, #0x0
		0000000000012194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe80
   12198: aa1403e0     	mov	x0, x20
   1219c: aa1f03e2     	mov	x2, xzr
   121a0: b9000388     	str	w8, [x28]
		00000000000121a0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x920
   121a4: 94000000     	bl	0x121a4 <syna_spi_probe+0x4e8>
		00000000000121a4:  R_AARCH64_CALL26	of_find_property
   121a8: b4000120     	cbz	x0, 0x121cc <syna_spi_probe+0x510>
   121ac: b9400808     	ldr	w8, [x0, #0x8]
   121b0: 340000e8     	cbz	w8, 0x121cc <syna_spi_probe+0x510>
   121b4: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000121b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe80
   121b8: 91000021     	add	x1, x1, #0x0
		00000000000121b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe80
   121bc: aa1403e0     	mov	x0, x20
   121c0: 2a1f03e2     	mov	w2, wzr
   121c4: 94000000     	bl	0x121c4 <syna_spi_probe+0x508>
		00000000000121c4:  R_AARCH64_CALL26	of_get_named_gpio
   121c8: b9000380     	str	w0, [x28]
		00000000000121c8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x920
   121cc: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000121cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x642d
   121d0: 91000021     	add	x1, x1, #0x0
		00000000000121d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x642d
   121d4: aa1403e0     	mov	x0, x20
   121d8: aa1f03e2     	mov	x2, xzr
   121dc: 94000000     	bl	0x121dc <syna_spi_probe+0x520>
		00000000000121dc:  R_AARCH64_CALL26	of_find_property
   121e0: b4000160     	cbz	x0, 0x1220c <syna_spi_probe+0x550>
   121e4: b9400808     	ldr	w8, [x0, #0x8]
   121e8: 34000128     	cbz	w8, 0x1220c <syna_spi_probe+0x550>
   121ec: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000121ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x642d
   121f0: 91000021     	add	x1, x1, #0x0
		00000000000121f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x642d
   121f4: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		00000000000121f4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x92c
   121f8: 91000042     	add	x2, x2, #0x0
		00000000000121f8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x92c
   121fc: aa1403e0     	mov	x0, x20
   12200: 52800023     	mov	w3, #0x1                // =1
   12204: aa1f03e4     	mov	x4, xzr
   12208: 94000000     	bl	0x12208 <syna_spi_probe+0x54c>
		0000000000012208:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1220c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		000000000001220c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a36
   12210: 91000021     	add	x1, x1, #0x0
		0000000000012210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a36
   12214: aa1403e0     	mov	x0, x20
   12218: aa1f03e2     	mov	x2, xzr
   1221c: 94000000     	bl	0x1221c <syna_spi_probe+0x560>
		000000000001221c:  R_AARCH64_CALL26	of_find_property
   12220: b4000160     	cbz	x0, 0x1224c <syna_spi_probe+0x590>
   12224: b9400808     	ldr	w8, [x0, #0x8]
   12228: 34000128     	cbz	w8, 0x1224c <syna_spi_probe+0x590>
   1222c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		000000000001222c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a36
   12230: 91000021     	add	x1, x1, #0x0
		0000000000012230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a36
   12234: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012234:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x928
   12238: 91000042     	add	x2, x2, #0x0
		0000000000012238:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x928
   1223c: aa1403e0     	mov	x0, x20
   12240: 52800023     	mov	w3, #0x1                // =1
   12244: aa1f03e4     	mov	x4, xzr
   12248: 94000000     	bl	0x12248 <syna_spi_probe+0x58c>
		0000000000012248:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1224c: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		000000000001224c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d0
   12250: 12800008     	mov	w8, #-0x1               // =-1
   12254: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012254:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b9b
   12258: 91000021     	add	x1, x1, #0x0
		0000000000012258:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b9b
   1225c: aa1403e0     	mov	x0, x20
   12260: aa1f03e2     	mov	x2, xzr
   12264: b90002c8     	str	w8, [x22]
		0000000000012264:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d0
   12268: 94000000     	bl	0x12268 <syna_spi_probe+0x5ac>
		0000000000012268:  R_AARCH64_CALL26	of_find_property
   1226c: b4000120     	cbz	x0, 0x12290 <syna_spi_probe+0x5d4>
   12270: b9400808     	ldr	w8, [x0, #0x8]
   12274: 340000e8     	cbz	w8, 0x12290 <syna_spi_probe+0x5d4>
   12278: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b9b
   1227c: 91000021     	add	x1, x1, #0x0
		000000000001227c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b9b
   12280: aa1403e0     	mov	x0, x20
   12284: 2a1f03e2     	mov	w2, wzr
   12288: 94000000     	bl	0x12288 <syna_spi_probe+0x5cc>
		0000000000012288:  R_AARCH64_CALL26	of_get_named_gpio
   1228c: b90002c0     	str	w0, [x22]
		000000000001228c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d0
   12290: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c68
   12294: 91000021     	add	x1, x1, #0x0
		0000000000012294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c68
   12298: aa1403e0     	mov	x0, x20
   1229c: aa1f03e2     	mov	x2, xzr
   122a0: 94000000     	bl	0x122a0 <syna_spi_probe+0x5e4>
		00000000000122a0:  R_AARCH64_CALL26	of_find_property
   122a4: b4000160     	cbz	x0, 0x122d0 <syna_spi_probe+0x614>
   122a8: b9400808     	ldr	w8, [x0, #0x8]
   122ac: 34000128     	cbz	w8, 0x122d0 <syna_spi_probe+0x614>
   122b0: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000122b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c68
   122b4: 91000021     	add	x1, x1, #0x0
		00000000000122b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c68
   122b8: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		00000000000122b8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d4
   122bc: 91000042     	add	x2, x2, #0x0
		00000000000122bc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8d4
   122c0: aa1403e0     	mov	x0, x20
   122c4: 52800023     	mov	w3, #0x1                // =1
   122c8: aa1f03e4     	mov	x4, xzr
   122cc: 94000000     	bl	0x122cc <syna_spi_probe+0x610>
		00000000000122cc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   122d0: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000122d0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x894
   122d4: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000122d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb46f
   122d8: 91000021     	add	x1, x1, #0x0
		00000000000122d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb46f
   122dc: aa1403e0     	mov	x0, x20
   122e0: aa1f03e2     	mov	x2, xzr
   122e4: b900011f     	str	wzr, [x8]
		00000000000122e4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x894
   122e8: 94000000     	bl	0x122e8 <syna_spi_probe+0x62c>
		00000000000122e8:  R_AARCH64_CALL26	of_find_property
   122ec: b4000160     	cbz	x0, 0x12318 <syna_spi_probe+0x65c>
   122f0: b9400808     	ldr	w8, [x0, #0x8]
   122f4: 34000128     	cbz	w8, 0x12318 <syna_spi_probe+0x65c>
   122f8: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000122f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb46f
   122fc: 91000021     	add	x1, x1, #0x0
		00000000000122fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb46f
   12300: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012300:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x894
   12304: 91000042     	add	x2, x2, #0x0
		0000000000012304:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x894
   12308: aa1403e0     	mov	x0, x20
   1230c: 52800023     	mov	w3, #0x1                // =1
   12310: aa1f03e4     	mov	x4, xzr
   12314: 94000000     	bl	0x12314 <syna_spi_probe+0x658>
		0000000000012314:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12318: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012318:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x898
   1231c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		000000000001231c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3992
   12320: 91000021     	add	x1, x1, #0x0
		0000000000012320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3992
   12324: aa1403e0     	mov	x0, x20
   12328: aa1f03e2     	mov	x2, xzr
   1232c: b900011f     	str	wzr, [x8]
		000000000001232c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x898
   12330: 94000000     	bl	0x12330 <syna_spi_probe+0x674>
		0000000000012330:  R_AARCH64_CALL26	of_find_property
   12334: b4000160     	cbz	x0, 0x12360 <syna_spi_probe+0x6a4>
   12338: b9400808     	ldr	w8, [x0, #0x8]
   1233c: 34000128     	cbz	w8, 0x12360 <syna_spi_probe+0x6a4>
   12340: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3992
   12344: 91000021     	add	x1, x1, #0x0
		0000000000012344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3992
   12348: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012348:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x898
   1234c: 91000042     	add	x2, x2, #0x0
		000000000001234c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x898
   12350: aa1403e0     	mov	x0, x20
   12354: 52800023     	mov	w3, #0x1                // =1
   12358: aa1f03e4     	mov	x4, xzr
   1235c: 94000000     	bl	0x1235c <syna_spi_probe+0x6a0>
		000000000001235c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12360: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012360:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x890
   12364: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b8c
   12368: 91000021     	add	x1, x1, #0x0
		0000000000012368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b8c
   1236c: aa1403e0     	mov	x0, x20
   12370: aa1f03e2     	mov	x2, xzr
   12374: b900011f     	str	wzr, [x8]
		0000000000012374:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x890
   12378: 94000000     	bl	0x12378 <syna_spi_probe+0x6bc>
		0000000000012378:  R_AARCH64_CALL26	of_find_property
   1237c: b4000160     	cbz	x0, 0x123a8 <syna_spi_probe+0x6ec>
   12380: b9400808     	ldr	w8, [x0, #0x8]
   12384: 34000128     	cbz	w8, 0x123a8 <syna_spi_probe+0x6ec>
   12388: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b8c
   1238c: 91000021     	add	x1, x1, #0x0
		000000000001238c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b8c
   12390: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012390:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x890
   12394: 91000042     	add	x2, x2, #0x0
		0000000000012394:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x890
   12398: aa1403e0     	mov	x0, x20
   1239c: 52800023     	mov	w3, #0x1                // =1
   123a0: aa1f03e4     	mov	x4, xzr
   123a4: 94000000     	bl	0x123a4 <syna_spi_probe+0x6e8>
		00000000000123a4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   123a8: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000123a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8780
   123ac: 91000021     	add	x1, x1, #0x0
		00000000000123ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8780
   123b0: aa1403e0     	mov	x0, x20
   123b4: aa1f03e2     	mov	x2, xzr
   123b8: 94000000     	bl	0x123b8 <syna_spi_probe+0x6fc>
		00000000000123b8:  R_AARCH64_CALL26	of_find_property
   123bc: b40001e0     	cbz	x0, 0x123f8 <syna_spi_probe+0x73c>
   123c0: b9400808     	ldr	w8, [x0, #0x8]
   123c4: 340001a8     	cbz	w8, 0x123f8 <syna_spi_probe+0x73c>
   123c8: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000123c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8780
   123cc: 91000021     	add	x1, x1, #0x0
		00000000000123cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8780
   123d0: 910043e2     	add	x2, sp, #0x10
   123d4: aa1403e0     	mov	x0, x20
   123d8: 52800043     	mov	w3, #0x2                // =2
   123dc: aa1f03e4     	mov	x4, xzr
   123e0: 94000000     	bl	0x123e0 <syna_spi_probe+0x724>
		00000000000123e0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   123e4: 37f800a0     	tbnz	w0, #0x1f, 0x123f8 <syna_spi_probe+0x73c>
   123e8: 294227e8     	ldp	w8, w9, [sp, #0x10]
   123ec: 9000000a     	adrp	x10, 0x12000 <syna_spi_probe+0x344>
		00000000000123ec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x844
   123f0: 9100014a     	add	x10, x10, #0x0
		00000000000123f0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x844
   123f4: 29002548     	stp	w8, w9, [x10]
   123f8: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000123f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46c7
   123fc: 91000021     	add	x1, x1, #0x0
		00000000000123fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46c7
   12400: aa1403e0     	mov	x0, x20
   12404: aa1f03e2     	mov	x2, xzr
   12408: 94000000     	bl	0x12408 <syna_spi_probe+0x74c>
		0000000000012408:  R_AARCH64_CALL26	of_find_property
   1240c: b4000220     	cbz	x0, 0x12450 <syna_spi_probe+0x794>
   12410: b9400808     	ldr	w8, [x0, #0x8]
   12414: 340001e8     	cbz	w8, 0x12450 <syna_spi_probe+0x794>
   12418: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b60
   1241c: 91000021     	add	x1, x1, #0x0
		000000000001241c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b60
   12420: 910043e2     	add	x2, sp, #0x10
   12424: aa1403e0     	mov	x0, x20
   12428: 52800063     	mov	w3, #0x3                // =3
   1242c: aa1f03e4     	mov	x4, xzr
   12430: 94000000     	bl	0x12430 <syna_spi_probe+0x774>
		0000000000012430:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12434: 37f800e0     	tbnz	w0, #0x1f, 0x12450 <syna_spi_probe+0x794>
   12438: f9400be8     	ldr	x8, [sp, #0x10]
   1243c: b9401be9     	ldr	w9, [sp, #0x18]
   12440: 9000000a     	adrp	x10, 0x12000 <syna_spi_probe+0x344>
		0000000000012440:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9a0
   12444: 9100014a     	add	x10, x10, #0x0
		0000000000012444:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9a0
   12448: f9000148     	str	x8, [x10]
   1244c: b9000949     	str	w9, [x10, #0x8]
   12450: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec
   12454: 91000021     	add	x1, x1, #0x0
		0000000000012454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec
   12458: aa1403e0     	mov	x0, x20
   1245c: aa1f03e2     	mov	x2, xzr
   12460: 94000000     	bl	0x12460 <syna_spi_probe+0x7a4>
		0000000000012460:  R_AARCH64_CALL26	of_find_property
   12464: b4000160     	cbz	x0, 0x12490 <syna_spi_probe+0x7d4>
   12468: b9400808     	ldr	w8, [x0, #0x8]
   1246c: 34000128     	cbz	w8, 0x12490 <syna_spi_probe+0x7d4>
   12470: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec
   12474: 91000021     	add	x1, x1, #0x0
		0000000000012474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec
   12478: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012478:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x988
   1247c: 91000042     	add	x2, x2, #0x0
		000000000001247c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x988
   12480: aa1403e0     	mov	x0, x20
   12484: 52800023     	mov	w3, #0x1                // =1
   12488: aa1f03e4     	mov	x4, xzr
   1248c: 94000000     	bl	0x1248c <syna_spi_probe+0x7d0>
		000000000001248c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12490: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb6e
   12494: 91000021     	add	x1, x1, #0x0
		0000000000012494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb6e
   12498: aa1403e0     	mov	x0, x20
   1249c: aa1f03e2     	mov	x2, xzr
   124a0: 94000000     	bl	0x124a0 <syna_spi_probe+0x7e4>
		00000000000124a0:  R_AARCH64_CALL26	of_find_property
   124a4: b4000160     	cbz	x0, 0x124d0 <syna_spi_probe+0x814>
   124a8: b9400808     	ldr	w8, [x0, #0x8]
   124ac: 34000128     	cbz	w8, 0x124d0 <syna_spi_probe+0x814>
   124b0: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000124b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb6e
   124b4: 91000021     	add	x1, x1, #0x0
		00000000000124b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb6e
   124b8: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		00000000000124b8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98c
   124bc: 91000042     	add	x2, x2, #0x0
		00000000000124bc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x98c
   124c0: aa1403e0     	mov	x0, x20
   124c4: 52800023     	mov	w3, #0x1                // =1
   124c8: aa1f03e4     	mov	x4, xzr
   124cc: 94000000     	bl	0x124cc <syna_spi_probe+0x810>
		00000000000124cc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   124d0: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000124d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b9f
   124d4: 91000021     	add	x1, x1, #0x0
		00000000000124d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b9f
   124d8: aa1403e0     	mov	x0, x20
   124dc: aa1f03e2     	mov	x2, xzr
   124e0: 94000000     	bl	0x124e0 <syna_spi_probe+0x824>
		00000000000124e0:  R_AARCH64_CALL26	of_find_property
   124e4: b40001e0     	cbz	x0, 0x12520 <syna_spi_probe+0x864>
   124e8: b9400808     	ldr	w8, [x0, #0x8]
   124ec: 340001a8     	cbz	w8, 0x12520 <syna_spi_probe+0x864>
   124f0: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000124f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b9f
   124f4: 91000021     	add	x1, x1, #0x0
		00000000000124f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b9f
   124f8: 910043e2     	add	x2, sp, #0x10
   124fc: aa1403e0     	mov	x0, x20
   12500: 52800043     	mov	w3, #0x2                // =2
   12504: aa1f03e4     	mov	x4, xzr
   12508: 94000000     	bl	0x12508 <syna_spi_probe+0x84c>
		0000000000012508:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   1250c: 37f800a0     	tbnz	w0, #0x1f, 0x12520 <syna_spi_probe+0x864>
   12510: 294227e8     	ldp	w8, w9, [sp, #0x10]
   12514: 9000000a     	adrp	x10, 0x12000 <syna_spi_probe+0x344>
		0000000000012514:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x990
   12518: 9100014a     	add	x10, x10, #0x0
		0000000000012518:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x990
   1251c: 29002548     	stp	w8, w9, [x10]
   12520: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fc6
   12524: 91000021     	add	x1, x1, #0x0
		0000000000012524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fc6
   12528: aa1403e0     	mov	x0, x20
   1252c: aa1f03e2     	mov	x2, xzr
   12530: 94000000     	bl	0x12530 <syna_spi_probe+0x874>
		0000000000012530:  R_AARCH64_CALL26	of_find_property
   12534: b4000160     	cbz	x0, 0x12560 <syna_spi_probe+0x8a4>
   12538: b9400808     	ldr	w8, [x0, #0x8]
   1253c: 34000128     	cbz	w8, 0x12560 <syna_spi_probe+0x8a4>
   12540: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fc6
   12544: 91000021     	add	x1, x1, #0x0
		0000000000012544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fc6
   12548: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012548:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x998
   1254c: 91000042     	add	x2, x2, #0x0
		000000000001254c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x998
   12550: aa1403e0     	mov	x0, x20
   12554: 52800023     	mov	w3, #0x1                // =1
   12558: aa1f03e4     	mov	x4, xzr
   1255c: 94000000     	bl	0x1255c <syna_spi_probe+0x8a0>
		000000000001255c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   12560: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76bf
   12564: 91000021     	add	x1, x1, #0x0
		0000000000012564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76bf
   12568: aa1403e0     	mov	x0, x20
   1256c: aa1f03e2     	mov	x2, xzr
   12570: 94000000     	bl	0x12570 <syna_spi_probe+0x8b4>
		0000000000012570:  R_AARCH64_CALL26	of_find_property
   12574: b4000160     	cbz	x0, 0x125a0 <syna_spi_probe+0x8e4>
   12578: b9400808     	ldr	w8, [x0, #0x8]
   1257c: 34000128     	cbz	w8, 0x125a0 <syna_spi_probe+0x8e4>
   12580: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76bf
   12584: 91000021     	add	x1, x1, #0x0
		0000000000012584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76bf
   12588: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012588:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x99c
   1258c: 91000042     	add	x2, x2, #0x0
		000000000001258c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x99c
   12590: aa1403e0     	mov	x0, x20
   12594: 52800023     	mov	w3, #0x1                // =1
   12598: aa1f03e4     	mov	x4, xzr
   1259c: 94000000     	bl	0x1259c <syna_spi_probe+0x8e0>
		000000000001259c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   125a0: 90000018     	adrp	x24, 0x12000 <syna_spi_probe+0x344>
		00000000000125a0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x830
   125a4: 91000318     	add	x24, x24, #0x0
		00000000000125a4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x830
   125a8: 90000014     	adrp	x20, 0x12000 <syna_spi_probe+0x344>
		00000000000125a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaecd
   125ac: 91000294     	add	x20, x20, #0x0
		00000000000125ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaecd
   125b0: b9412306     	ldr	w6, [x24, #0x120]
   125b4: b9412707     	ldr	w7, [x24, #0x124]
   125b8: 29428f02     	ldp	w2, w3, [x24, #0x14]
   125bc: 295f1305     	ldp	w5, w4, [x24, #0xf8]
   125c0: b9414b08     	ldr	w8, [x24, #0x148]
   125c4: b9414f09     	ldr	w9, [x24, #0x14c]
   125c8: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		00000000000125c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dc8
   125cc: 91000000     	add	x0, x0, #0x0
		00000000000125cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dc8
   125d0: aa1403e1     	mov	x1, x20
   125d4: b9000be9     	str	w9, [sp, #0x8]
   125d8: b90003e8     	str	w8, [sp]
   125dc: 94000000     	bl	0x125dc <syna_spi_probe+0x920>
		00000000000125dc:  R_AARCH64_CALL26	_printk
   125e0: b9415b02     	ldr	w2, [x24, #0x158]
   125e4: b9416303     	ldr	w3, [x24, #0x160]
   125e8: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		00000000000125e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8248
   125ec: 91000000     	add	x0, x0, #0x0
		00000000000125ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8248
   125f0: b9416704     	ldr	w4, [x24, #0x164]
   125f4: b9416b05     	ldr	w5, [x24, #0x168]
   125f8: aa1403e1     	mov	x1, x20
   125fc: 94000000     	bl	0x125fc <syna_spi_probe+0x940>
		00000000000125fc:  R_AARCH64_CALL26	_printk
   12600: b9417302     	ldr	w2, [x24, #0x170]
   12604: b9417703     	ldr	w3, [x24, #0x174]
   12608: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc1dd
   1260c: 91000000     	add	x0, x0, #0x0
		000000000001260c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc1dd
   12610: b9417b04     	ldr	w4, [x24, #0x178]
   12614: b9416f05     	ldr	w5, [x24, #0x16c]
   12618: aa1403e1     	mov	x1, x20
   1261c: 94000000     	bl	0x1261c <syna_spi_probe+0x960>
		000000000001261c:  R_AARCH64_CALL26	_printk
   12620: aa1303e0     	mov	x0, x19
   12624: 94000000     	bl	0x12624 <syna_spi_probe+0x968>
		0000000000012624:  R_AARCH64_CALL26	syna_ts_check_dt
   12628: 90000014     	adrp	x20, 0x12000 <syna_spi_probe+0x344>
		0000000000012628:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x890
   1262c: a9006313     	stp	x19, x24, [x24]
   12630: f9400288     	ldr	x8, [x20]
		0000000000012630:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12634: f9003913     	str	x19, [x8, #0x70]
   12638: f9005118     	str	x24, [x8, #0xa0]
   1263c: b9412b09     	ldr	w9, [x24, #0x128]
   12640: 340005c9     	cbz	w9, 0x126f8 <syna_spi_probe+0xa3c>
   12644: b94002aa     	ldr	w10, [x21]
		0000000000012644:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12648: 3400068a     	cbz	w10, 0x12718 <syna_spi_probe+0xa5c>
   1264c: 7100053f     	cmp	w9, #0x1
   12650: 540002e1     	b.ne	0x126ac <syna_spi_probe+0x9f0>
   12654: f94002e1     	ldr	x1, [x23]
		0000000000012654:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x960
   12658: b4001de1     	cbz	x1, 0x12a14 <syna_spi_probe+0xd58>
   1265c: 39400029     	ldrb	w9, [x1]
   12660: 34001da9     	cbz	w9, 0x12a14 <syna_spi_probe+0xd58>
   12664: 39400029     	ldrb	w9, [x1]
   12668: 34000669     	cbz	w9, 0x12734 <syna_spi_probe+0xa78>
   1266c: f9403900     	ldr	x0, [x8, #0x70]
   12670: 94000000     	bl	0x12670 <syna_spi_probe+0x9b4>
		0000000000012670:  R_AARCH64_CALL26	devm_regulator_get
   12674: b13ffc1f     	cmn	x0, #0xfff
   12678: 54000603     	b.lo	0x12738 <syna_spi_probe+0xa7c>
   1267c: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		000000000001267c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4bb
   12680: 91000108     	add	x8, x8, #0x0
		0000000000012680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4bb
   12684: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87bd
   12688: 91000021     	add	x1, x1, #0x0
		0000000000012688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87bd
   1268c: aa0003f3     	mov	x19, x0
   12690: aa0803e0     	mov	x0, x8
   12694: 94000000     	bl	0x12694 <syna_spi_probe+0x9d8>
		0000000000012694:  R_AARCH64_CALL26	_printk
   12698: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012698:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x968
   1269c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		000000000001269c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x700a
   126a0: 91000000     	add	x0, x0, #0x0
		00000000000126a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x700a
   126a4: f9000113     	str	x19, [x8]
		00000000000126a4:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x968
   126a8: 140000e0     	b	0x12a28 <syna_spi_probe+0xd6c>
   126ac: 540004ab     	b.lt	0x12740 <syna_spi_probe+0xa84>
   126b0: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000126b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   126b4: b9400100     	ldr	w0, [x8]
		00000000000126b4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   126b8: 7100041f     	cmp	w0, #0x1
   126bc: 5400042b     	b.lt	0x12740 <syna_spi_probe+0xa84>
   126c0: b9400328     	ldr	w8, [x25]
		00000000000126c0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x980
   126c4: 90000003     	adrp	x3, 0x12000 <syna_spi_probe+0x344>
		00000000000126c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8bc
   126c8: 91000063     	add	x3, x3, #0x0
		00000000000126c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8bc
   126cc: 52800021     	mov	w1, #0x1                // =1
   126d0: 7100011f     	cmp	w8, #0x0
   126d4: 1a9f17e2     	cset	w2, eq
   126d8: 940004ff     	bl	0x13ad4 <syna_spi_get_gpio>
   126dc: 36f80320     	tbz	w0, #0x1f, 0x12740 <syna_spi_probe+0xa84>
   126e0: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000126e0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   126e4: 2a0003f3     	mov	w19, w0
   126e8: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		00000000000126e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6447
   126ec: 91000000     	add	x0, x0, #0x0
		00000000000126ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6447
   126f0: b9400102     	ldr	w2, [x8]
		00000000000126f0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   126f4: 1400003f     	b	0x127f0 <syna_spi_probe+0xb34>
   126f8: f94002e9     	ldr	x9, [x23]
		00000000000126f8:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x960
   126fc: b4fffa49     	cbz	x9, 0x12644 <syna_spi_probe+0x988>
   12700: 39400129     	ldrb	w9, [x9]
   12704: 34fffa09     	cbz	w9, 0x12644 <syna_spi_probe+0x988>
   12708: 52800029     	mov	w9, #0x1                // =1
   1270c: 9000000a     	adrp	x10, 0x12000 <syna_spi_probe+0x344>
		000000000001270c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   12710: b9000149     	str	w9, [x10]
		0000000000012710:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x958
   12714: 17ffffcc     	b	0x12644 <syna_spi_probe+0x988>
   12718: f940034a     	ldr	x10, [x26]
		0000000000012718:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x938
   1271c: b4fff98a     	cbz	x10, 0x1264c <syna_spi_probe+0x990>
   12720: 3940014a     	ldrb	w10, [x10]
   12724: 34fff94a     	cbz	w10, 0x1264c <syna_spi_probe+0x990>
   12728: 5280002a     	mov	w10, #0x1               // =1
   1272c: b90002aa     	str	w10, [x21]
		000000000001272c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12730: 17ffffc7     	b	0x1264c <syna_spi_probe+0x990>
   12734: aa1f03e0     	mov	x0, xzr
   12738: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012738:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x968
   1273c: f9000100     	str	x0, [x8]
		000000000001273c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x968
   12740: b94002a8     	ldr	w8, [x21]
		0000000000012740:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12744: 7100051f     	cmp	w8, #0x1
   12748: 54000301     	b.ne	0x127a8 <syna_spi_probe+0xaec>
   1274c: f9400341     	ldr	x1, [x26]
		000000000001274c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x938
   12750: b4001681     	cbz	x1, 0x12a20 <syna_spi_probe+0xd64>
   12754: 39400028     	ldrb	w8, [x1]
   12758: 34001648     	cbz	w8, 0x12a20 <syna_spi_probe+0xd64>
   1275c: 39400028     	ldrb	w8, [x1]
   12760: 34000508     	cbz	w8, 0x12800 <syna_spi_probe+0xb44>
   12764: f9400288     	ldr	x8, [x20]
		0000000000012764:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12768: f9403900     	ldr	x0, [x8, #0x70]
   1276c: 94000000     	bl	0x1276c <syna_spi_probe+0xab0>
		000000000001276c:  R_AARCH64_CALL26	devm_regulator_get
   12770: b13ffc1f     	cmn	x0, #0xfff
   12774: 54000483     	b.lo	0x12804 <syna_spi_probe+0xb48>
   12778: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4bb
   1277c: 91000108     	add	x8, x8, #0x0
		000000000001277c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4bb
   12780: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87bd
   12784: 91000021     	add	x1, x1, #0x0
		0000000000012784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87bd
   12788: aa0003f3     	mov	x19, x0
   1278c: aa0803e0     	mov	x0, x8
   12790: 94000000     	bl	0x12790 <syna_spi_probe+0xad4>
		0000000000012790:  R_AARCH64_CALL26	_printk
   12794: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012794:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x940
   12798: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c82
   1279c: 91000000     	add	x0, x0, #0x0
		000000000001279c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c82
   127a0: f9000113     	str	x19, [x8]
		00000000000127a0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x940
   127a4: 140000a1     	b	0x12a28 <syna_spi_probe+0xd6c>
   127a8: 5400032b     	b.lt	0x1280c <syna_spi_probe+0xb50>
   127ac: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000127ac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   127b0: b9400100     	ldr	w0, [x8]
		00000000000127b0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   127b4: 7100041f     	cmp	w0, #0x1
   127b8: 540002ab     	b.lt	0x1280c <syna_spi_probe+0xb50>
   127bc: b9400328     	ldr	w8, [x25]
		00000000000127bc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x980
   127c0: 90000003     	adrp	x3, 0x12000 <syna_spi_probe+0x344>
		00000000000127c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8dc
   127c4: 91000063     	add	x3, x3, #0x0
		00000000000127c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8dc
   127c8: 52800021     	mov	w1, #0x1                // =1
   127cc: 7100011f     	cmp	w8, #0x0
   127d0: 1a9f17e2     	cset	w2, eq
   127d4: 940004c0     	bl	0x13ad4 <syna_spi_get_gpio>
   127d8: 36f801a0     	tbz	w0, #0x1f, 0x1280c <syna_spi_probe+0xb50>
   127dc: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		00000000000127dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   127e0: 2a0003f3     	mov	w19, w0
   127e4: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		00000000000127e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39af
   127e8: 91000000     	add	x0, x0, #0x0
		00000000000127e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39af
   127ec: b9400102     	ldr	w2, [x8]
		00000000000127ec:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   127f0: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000127f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f
   127f4: 91000021     	add	x1, x1, #0x0
		00000000000127f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f
   127f8: 94000000     	bl	0x127f8 <syna_spi_probe+0xb3c>
		00000000000127f8:  R_AARCH64_CALL26	_printk
   127fc: 1400008f     	b	0x12a38 <syna_spi_probe+0xd7c>
   12800: aa1f03e0     	mov	x0, xzr
   12804: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012804:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x940
   12808: f9000100     	str	x0, [x8]
		0000000000012808:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x940
   1280c: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		000000000001280c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x830
   12810: f9400113     	ldr	x19, [x8]
		0000000000012810:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x830
   12814: b40011f3     	cbz	x19, 0x12a50 <syna_spi_probe+0xd94>
   12818: 90000017     	adrp	x23, 0x12000 <syna_spi_probe+0x344>
		0000000000012818:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x890
   1281c: 910002f7     	add	x23, x23, #0x0
		000000000001281c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x890
   12820: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   12824: 91000021     	add	x1, x1, #0x0
		0000000000012824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   12828: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		0000000000012828:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91c
   1282c: 91000042     	add	x2, x2, #0x0
		000000000001282c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91c
   12830: 910042e0     	add	x0, x23, #0x10
   12834: 94000000     	bl	0x12834 <syna_spi_probe+0xb78>
		0000000000012834:  R_AARCH64_CALL26	__mutex_init
   12838: b94002e8     	ldr	w8, [x23]
   1283c: 52800109     	mov	w9, #0x8                // =8
   12840: 390eb269     	strb	w9, [x19, #0x3ac]
   12844: 71000d1f     	cmp	w8, #0x3
   12848: 54000048     	b.hi	0x12850 <syna_spi_probe+0xb94>
   1284c: b903b268     	str	w8, [x19, #0x3b0]
   12850: aa1303e0     	mov	x0, x19
   12854: 94000000     	bl	0x12854 <syna_spi_probe+0xb98>
		0000000000012854:  R_AARCH64_CALL26	spi_setup
   12858: 37f81000     	tbnz	w0, #0x1f, 0x12a58 <syna_spi_probe+0xd9c>
   1285c: d503201f     	nop
   12860: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012860:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   12864: 5281b801     	mov	w1, #0xdc0              // =3520
   12868: 52800102     	mov	w2, #0x8                // =8
   1286c: f9400100     	ldr	x0, [x8]
		000000000001286c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   12870: 94000000     	bl	0x12870 <syna_spi_probe+0xbb4>
		0000000000012870:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   12874: b4002480     	cbz	x0, 0x12d04 <syna_spi_probe+0x1048>
   12878: b94002c8     	ldr	w8, [x22]
		0000000000012878:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d0
   1287c: 52807fc9     	mov	w9, #0x3fe              // =1022
   12880: b9000009     	str	w9, [x0]
   12884: 7100051f     	cmp	w8, #0x1
   12888: f901e260     	str	x0, [x19, #0x3c0]
   1288c: 5400012b     	b.lt	0x128b0 <syna_spi_probe+0xbf4>
   12890: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		0000000000012890:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d4
   12894: 90000003     	adrp	x3, 0x12000 <syna_spi_probe+0x344>
		0000000000012894:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8fc
   12898: 91000063     	add	x3, x3, #0x0
		0000000000012898:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8fc
   1289c: b9400122     	ldr	w2, [x9]
		000000000001289c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d4
   128a0: 2a0803e0     	mov	w0, w8
   128a4: 52800021     	mov	w1, #0x1                // =1
   128a8: 9400048b     	bl	0x13ad4 <syna_spi_get_gpio>
   128ac: 37f80e40     	tbnz	w0, #0x1f, 0x12a74 <syna_spi_probe+0xdb8>
   128b0: b9400380     	ldr	w0, [x28]
		00000000000128b0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x920
   128b4: 7100041f     	cmp	w0, #0x1
   128b8: 540000eb     	b.lt	0x128d4 <syna_spi_probe+0xc18>
   128bc: b9400362     	ldr	w2, [x27]
		00000000000128bc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x924
   128c0: 90000003     	adrp	x3, 0x12000 <syna_spi_probe+0x344>
		00000000000128c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91d
   128c4: 91000063     	add	x3, x3, #0x0
		00000000000128c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91d
   128c8: 52800021     	mov	w1, #0x1                // =1
   128cc: 94000482     	bl	0x13ad4 <syna_spi_get_gpio>
   128d0: 37f80e20     	tbnz	w0, #0x1f, 0x12a94 <syna_spi_probe+0xdd8>
   128d4: 90000017     	adrp	x23, 0x12000 <syna_spi_probe+0x344>
		00000000000128d4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d8
   128d8: 910002f7     	add	x23, x23, #0x0
		00000000000128d8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8d8
   128dc: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		00000000000128dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   128e0: 91000021     	add	x1, x1, #0x0
		00000000000128e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   128e4: 90000002     	adrp	x2, 0x12000 <syna_spi_probe+0x344>
		00000000000128e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x91c
   128e8: 91000042     	add	x2, x2, #0x0
		00000000000128e8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x91c
   128ec: 910062e0     	add	x0, x23, #0x18
   128f0: 94000000     	bl	0x128f0 <syna_spi_probe+0xc34>
		00000000000128f0:  R_AARCH64_CALL26	__mutex_init
   128f4: b94002e0     	ldr	w0, [x23]
   128f8: 7100041f     	cmp	w0, #0x1
   128fc: 5400088b     	b.lt	0x12a0c <syna_spi_probe+0xd50>
   12900: 90000003     	adrp	x3, 0x12000 <syna_spi_probe+0x344>
		0000000000012900:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x93d
   12904: 91000063     	add	x3, x3, #0x0
		0000000000012904:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x93d
   12908: 2a1f03e1     	mov	w1, wzr
   1290c: 2a1f03e2     	mov	w2, wzr
   12910: 94000471     	bl	0x13ad4 <syna_spi_get_gpio>
   12914: 2a0003e8     	mov	w8, w0
   12918: 2a1f03e0     	mov	w0, wzr
   1291c: 36f82468     	tbz	w8, #0x1f, 0x12da8 <syna_spi_probe+0x10ec>
   12920: b94002e2     	ldr	w2, [x23]
   12924: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c34
   12928: 91000000     	add	x0, x0, #0x0
		0000000000012928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c34
   1292c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		000000000001292c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e59
   12930: 91000021     	add	x1, x1, #0x0
		0000000000012930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e59
   12934: 2a0803f3     	mov	w19, w8
   12938: 94000000     	bl	0x12938 <syna_spi_probe+0xc7c>
		0000000000012938:  R_AARCH64_CALL26	_printk
   1293c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		000000000001293c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc18a
   12940: 91000000     	add	x0, x0, #0x0
		0000000000012940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc18a
   12944: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76b0
   12948: 91000021     	add	x1, x1, #0x0
		0000000000012948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76b0
   1294c: 94000000     	bl	0x1294c <syna_spi_probe+0xc90>
		000000000001294c:  R_AARCH64_CALL26	_printk
   12950: b9404ae0     	ldr	w0, [x23, #0x48]
   12954: 7100041f     	cmp	w0, #0x1
   12958: 5400004b     	b.lt	0x12960 <syna_spi_probe+0xca4>
   1295c: 94000000     	bl	0x1295c <syna_spi_probe+0xca0>
		000000000001295c:  R_AARCH64_CALL26	gpio_free
   12960: b94002c0     	ldr	w0, [x22]
		0000000000012960:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d0
   12964: 7100041f     	cmp	w0, #0x1
   12968: 5400004b     	b.lt	0x12970 <syna_spi_probe+0xcb4>
   1296c: 94000000     	bl	0x1296c <syna_spi_probe+0xcb0>
		000000000001296c:  R_AARCH64_CALL26	gpio_free
   12970: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		0000000000012970:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a0
   12974: f94002c1     	ldr	x1, [x22]
		0000000000012974:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   12978: b40000e1     	cbz	x1, 0x12994 <syna_spi_probe+0xcd8>
   1297c: f9400288     	ldr	x8, [x20]
		000000000001297c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12980: b4001868     	cbz	x8, 0x12c8c <syna_spi_probe+0xfd0>
   12984: f9403900     	ldr	x0, [x8, #0x70]
   12988: b4001820     	cbz	x0, 0x12c8c <syna_spi_probe+0xfd0>
   1298c: 94000000     	bl	0x1298c <syna_spi_probe+0xcd0>
		000000000001298c:  R_AARCH64_CALL26	devm_kfree
   12990: f90002df     	str	xzr, [x22]
		0000000000012990:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   12994: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		0000000000012994:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   12998: 2a1303e8     	mov	w8, w19
   1299c: f94002c1     	ldr	x1, [x22]
		000000000001299c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   129a0: b4000101     	cbz	x1, 0x129c0 <syna_spi_probe+0xd04>
   129a4: f9400288     	ldr	x8, [x20]
		00000000000129a4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   129a8: b40017e8     	cbz	x8, 0x12ca4 <syna_spi_probe+0xfe8>
   129ac: f9403900     	ldr	x0, [x8, #0x70]
   129b0: b40017a0     	cbz	x0, 0x12ca4 <syna_spi_probe+0xfe8>
   129b4: 94000000     	bl	0x129b4 <syna_spi_probe+0xcf8>
		00000000000129b4:  R_AARCH64_CALL26	devm_kfree
   129b8: 2a1303e8     	mov	w8, w19
   129bc: f90002df     	str	xzr, [x22]
		00000000000129bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   129c0: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		00000000000129c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   129c4: f94002c1     	ldr	x1, [x22]
		00000000000129c4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   129c8: b4000101     	cbz	x1, 0x129e8 <syna_spi_probe+0xd2c>
   129cc: f9400288     	ldr	x8, [x20]
		00000000000129cc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   129d0: b4001768     	cbz	x8, 0x12cbc <syna_spi_probe+0x1000>
   129d4: f9403900     	ldr	x0, [x8, #0x70]
   129d8: b4001720     	cbz	x0, 0x12cbc <syna_spi_probe+0x1000>
   129dc: 94000000     	bl	0x129dc <syna_spi_probe+0xd20>
		00000000000129dc:  R_AARCH64_CALL26	devm_kfree
   129e0: 2a1303e8     	mov	w8, w19
   129e4: f90002df     	str	xzr, [x22]
		00000000000129e4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   129e8: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		00000000000129e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   129ec: b9400129     	ldr	w9, [x9]
		00000000000129ec:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x958
   129f0: 7100053f     	cmp	w9, #0x1
   129f4: 54000f61     	b.ne	0x12be0 <syna_spi_probe+0xf24>
   129f8: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		00000000000129f8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x968
   129fc: f9400120     	ldr	x0, [x9]
		00000000000129fc:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x968
   12a00: b4000fe0     	cbz	x0, 0x12bfc <syna_spi_probe+0xf40>
   12a04: 94000000     	bl	0x12a04 <syna_spi_probe+0xd48>
		0000000000012a04:  R_AARCH64_CALL26	devm_regulator_put
   12a08: 1400007c     	b	0x12bf8 <syna_spi_probe+0xf3c>
   12a0c: 2a1f03e0     	mov	w0, wzr
   12a10: 140000e6     	b	0x12da8 <syna_spi_probe+0x10ec>
   12a14: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x215e
   12a18: 91000000     	add	x0, x0, #0x0
		0000000000012a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x215e
   12a1c: 14000003     	b	0x12a28 <syna_spi_probe+0xd6c>
   12a20: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bf1
   12a24: 91000000     	add	x0, x0, #0x0
		0000000000012a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bf1
   12a28: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f
   12a2c: 91000021     	add	x1, x1, #0x0
		0000000000012a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f
   12a30: 94000000     	bl	0x12a30 <syna_spi_probe+0xd74>
		0000000000012a30:  R_AARCH64_CALL26	_printk
   12a34: 128000b3     	mov	w19, #-0x6              // =-6
   12a38: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x989e
   12a3c: 91000000     	add	x0, x0, #0x0
		0000000000012a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x989e
   12a40: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76b0
   12a44: 91000021     	add	x1, x1, #0x0
		0000000000012a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76b0
   12a48: 94000000     	bl	0x12a48 <syna_spi_probe+0xd8c>
		0000000000012a48:  R_AARCH64_CALL26	_printk
   12a4c: 140000d6     	b	0x12da4 <syna_spi_probe+0x10e8>
   12a50: 128002b3     	mov	w19, #-0x16             // =-22
   12a54: 140000b2     	b	0x12d1c <syna_spi_probe+0x1060>
   12a58: 2a0003f3     	mov	w19, w0
   12a5c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d0b
   12a60: 91000000     	add	x0, x0, #0x0
		0000000000012a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d0b
   12a64: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39de
   12a68: 91000021     	add	x1, x1, #0x0
		0000000000012a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39de
   12a6c: 94000000     	bl	0x12a6c <syna_spi_probe+0xdb0>
		0000000000012a6c:  R_AARCH64_CALL26	_printk
   12a70: 140000ab     	b	0x12d1c <syna_spi_probe+0x1060>
   12a74: b94002c2     	ldr	w2, [x22]
		0000000000012a74:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x8d0
   12a78: 2a0003f3     	mov	w19, w0
   12a7c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39fd
   12a80: 91000000     	add	x0, x0, #0x0
		0000000000012a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39fd
   12a84: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39de
   12a88: 91000021     	add	x1, x1, #0x0
		0000000000012a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39de
   12a8c: 94000000     	bl	0x12a8c <syna_spi_probe+0xdd0>
		0000000000012a8c:  R_AARCH64_CALL26	_printk
   12a90: 140000a3     	b	0x12d1c <syna_spi_probe+0x1060>
   12a94: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		0000000000012a94:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8d0
   12a98: 910002d6     	add	x22, x22, #0x0
		0000000000012a98:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8d0
   12a9c: 2a0003f3     	mov	w19, w0
   12aa0: b94052c2     	ldr	w2, [x22, #0x50]
   12aa4: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a82
   12aa8: 91000000     	add	x0, x0, #0x0
		0000000000012aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a82
   12aac: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cb3
   12ab0: 91000021     	add	x1, x1, #0x0
		0000000000012ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cb3
   12ab4: 94000000     	bl	0x12ab4 <syna_spi_probe+0xdf8>
		0000000000012ab4:  R_AARCH64_CALL26	_printk
   12ab8: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98d1
   12abc: 91000000     	add	x0, x0, #0x0
		0000000000012abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98d1
   12ac0: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76b0
   12ac4: 91000021     	add	x1, x1, #0x0
		0000000000012ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76b0
   12ac8: 94000000     	bl	0x12ac8 <syna_spi_probe+0xe0c>
		0000000000012ac8:  R_AARCH64_CALL26	_printk
   12acc: b94002c0     	ldr	w0, [x22]
   12ad0: 7100041f     	cmp	w0, #0x1
   12ad4: 5400004b     	b.lt	0x12adc <syna_spi_probe+0xe20>
   12ad8: 94000000     	bl	0x12ad8 <syna_spi_probe+0xe1c>
		0000000000012ad8:  R_AARCH64_CALL26	gpio_free
   12adc: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		0000000000012adc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a0
   12ae0: 2a1303e0     	mov	w0, w19
   12ae4: f94002c1     	ldr	x1, [x22]
		0000000000012ae4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   12ae8: b4000101     	cbz	x1, 0x12b08 <syna_spi_probe+0xe4c>
   12aec: f9400288     	ldr	x8, [x20]
		0000000000012aec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12af0: b4000aa8     	cbz	x8, 0x12c44 <syna_spi_probe+0xf88>
   12af4: f9403900     	ldr	x0, [x8, #0x70]
   12af8: b4000a60     	cbz	x0, 0x12c44 <syna_spi_probe+0xf88>
   12afc: 94000000     	bl	0x12afc <syna_spi_probe+0xe40>
		0000000000012afc:  R_AARCH64_CALL26	devm_kfree
   12b00: 2a1303e0     	mov	w0, w19
   12b04: f90002df     	str	xzr, [x22]
		0000000000012b04:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   12b08: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		0000000000012b08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   12b0c: f94002c1     	ldr	x1, [x22]
		0000000000012b0c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   12b10: b4000101     	cbz	x1, 0x12b30 <syna_spi_probe+0xe74>
   12b14: f9400288     	ldr	x8, [x20]
		0000000000012b14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12b18: b4000a28     	cbz	x8, 0x12c5c <syna_spi_probe+0xfa0>
   12b1c: f9403900     	ldr	x0, [x8, #0x70]
   12b20: b40009e0     	cbz	x0, 0x12c5c <syna_spi_probe+0xfa0>
   12b24: 94000000     	bl	0x12b24 <syna_spi_probe+0xe68>
		0000000000012b24:  R_AARCH64_CALL26	devm_kfree
   12b28: 2a1303e0     	mov	w0, w19
   12b2c: f90002df     	str	xzr, [x22]
		0000000000012b2c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   12b30: 90000016     	adrp	x22, 0x12000 <syna_spi_probe+0x344>
		0000000000012b30:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8b0
   12b34: f94002c1     	ldr	x1, [x22]
		0000000000012b34:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   12b38: b4000101     	cbz	x1, 0x12b58 <syna_spi_probe+0xe9c>
   12b3c: f9400288     	ldr	x8, [x20]
		0000000000012b3c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   12b40: b40009a8     	cbz	x8, 0x12c74 <syna_spi_probe+0xfb8>
   12b44: f9403900     	ldr	x0, [x8, #0x70]
   12b48: b4000960     	cbz	x0, 0x12c74 <syna_spi_probe+0xfb8>
   12b4c: 94000000     	bl	0x12b4c <syna_spi_probe+0xe90>
		0000000000012b4c:  R_AARCH64_CALL26	devm_kfree
   12b50: 2a1303e0     	mov	w0, w19
   12b54: f90002df     	str	xzr, [x22]
		0000000000012b54:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8b0
   12b58: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012b58:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   12b5c: b9400108     	ldr	w8, [x8]
		0000000000012b5c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x958
   12b60: 7100051f     	cmp	w8, #0x1
   12b64: 540000e1     	b.ne	0x12b80 <syna_spi_probe+0xec4>
   12b68: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012b68:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x968
   12b6c: f9400108     	ldr	x8, [x8]
		0000000000012b6c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x968
   12b70: b4000188     	cbz	x8, 0x12ba0 <syna_spi_probe+0xee4>
   12b74: aa0803e0     	mov	x0, x8
   12b78: 94000000     	bl	0x12b78 <syna_spi_probe+0xebc>
		0000000000012b78:  R_AARCH64_CALL26	devm_regulator_put
   12b7c: 14000008     	b	0x12b9c <syna_spi_probe+0xee0>
   12b80: 5400010b     	b.lt	0x12ba0 <syna_spi_probe+0xee4>
   12b84: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012b84:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   12b88: b9400108     	ldr	w8, [x8]
		0000000000012b88:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   12b8c: 7100051f     	cmp	w8, #0x1
   12b90: 5400008b     	b.lt	0x12ba0 <syna_spi_probe+0xee4>
   12b94: 2a0803e0     	mov	w0, w8
   12b98: 94000000     	bl	0x12b98 <syna_spi_probe+0xedc>
		0000000000012b98:  R_AARCH64_CALL26	gpio_free
   12b9c: 2a1303e0     	mov	w0, w19
   12ba0: b94002a8     	ldr	w8, [x21]
		0000000000012ba0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12ba4: 7100051f     	cmp	w8, #0x1
   12ba8: 540000e1     	b.ne	0x12bc4 <syna_spi_probe+0xf08>
   12bac: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012bac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x940
   12bb0: f9400108     	ldr	x8, [x8]
		0000000000012bb0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x940
   12bb4: b4000fa8     	cbz	x8, 0x12da8 <syna_spi_probe+0x10ec>
   12bb8: aa0803e0     	mov	x0, x8
   12bbc: 94000000     	bl	0x12bbc <syna_spi_probe+0xf00>
		0000000000012bbc:  R_AARCH64_CALL26	devm_regulator_put
   12bc0: 14000079     	b	0x12da4 <syna_spi_probe+0x10e8>
   12bc4: 54000f2b     	b.lt	0x12da8 <syna_spi_probe+0x10ec>
   12bc8: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012bc8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   12bcc: b9400108     	ldr	w8, [x8]
		0000000000012bcc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   12bd0: 7100051f     	cmp	w8, #0x1
   12bd4: 54000eab     	b.lt	0x12da8 <syna_spi_probe+0x10ec>
   12bd8: 2a0803e0     	mov	w0, w8
   12bdc: 14000071     	b	0x12da0 <syna_spi_probe+0x10e4>
   12be0: 540000eb     	b.lt	0x12bfc <syna_spi_probe+0xf40>
   12be4: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		0000000000012be4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   12be8: b9400120     	ldr	w0, [x9]
		0000000000012be8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   12bec: 7100041f     	cmp	w0, #0x1
   12bf0: 5400006b     	b.lt	0x12bfc <syna_spi_probe+0xf40>
   12bf4: 94000000     	bl	0x12bf4 <syna_spi_probe+0xf38>
		0000000000012bf4:  R_AARCH64_CALL26	gpio_free
   12bf8: 2a1303e8     	mov	w8, w19
   12bfc: b94002a9     	ldr	w9, [x21]
		0000000000012bfc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12c00: 7100053f     	cmp	w9, #0x1
   12c04: 540000e1     	b.ne	0x12c20 <syna_spi_probe+0xf64>
   12c08: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		0000000000012c08:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x940
   12c0c: f9400120     	ldr	x0, [x9]
		0000000000012c0c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x940
   12c10: b4000160     	cbz	x0, 0x12c3c <syna_spi_probe+0xf80>
   12c14: 2a0803f3     	mov	w19, w8
   12c18: 94000000     	bl	0x12c18 <syna_spi_probe+0xf5c>
		0000000000012c18:  R_AARCH64_CALL26	devm_regulator_put
   12c1c: 14000062     	b	0x12da4 <syna_spi_probe+0x10e8>
   12c20: 540000eb     	b.lt	0x12c3c <syna_spi_probe+0xf80>
   12c24: 90000009     	adrp	x9, 0x12000 <syna_spi_probe+0x344>
		0000000000012c24:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   12c28: b9400120     	ldr	w0, [x9]
		0000000000012c28:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   12c2c: 7100041f     	cmp	w0, #0x1
   12c30: 5400006b     	b.lt	0x12c3c <syna_spi_probe+0xf80>
   12c34: 2a0803f3     	mov	w19, w8
   12c38: 1400005a     	b	0x12da0 <syna_spi_probe+0x10e4>
   12c3c: 2a0803e0     	mov	w0, w8
   12c40: 1400005a     	b	0x12da8 <syna_spi_probe+0x10ec>
   12c44: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12c48: 91000000     	add	x0, x0, #0x0
		0000000000012c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12c4c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12c50: 91000021     	add	x1, x1, #0x0
		0000000000012c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12c54: 94000000     	bl	0x12c54 <syna_spi_probe+0xf98>
		0000000000012c54:  R_AARCH64_CALL26	_printk
   12c58: 17ffffaa     	b	0x12b00 <syna_spi_probe+0xe44>
   12c5c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12c60: 91000000     	add	x0, x0, #0x0
		0000000000012c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12c64: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12c68: 91000021     	add	x1, x1, #0x0
		0000000000012c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12c6c: 94000000     	bl	0x12c6c <syna_spi_probe+0xfb0>
		0000000000012c6c:  R_AARCH64_CALL26	_printk
   12c70: 17ffffae     	b	0x12b28 <syna_spi_probe+0xe6c>
   12c74: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12c78: 91000000     	add	x0, x0, #0x0
		0000000000012c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12c7c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12c80: 91000021     	add	x1, x1, #0x0
		0000000000012c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12c84: 94000000     	bl	0x12c84 <syna_spi_probe+0xfc8>
		0000000000012c84:  R_AARCH64_CALL26	_printk
   12c88: 17ffffb2     	b	0x12b50 <syna_spi_probe+0xe94>
   12c8c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12c90: 91000000     	add	x0, x0, #0x0
		0000000000012c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12c94: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12c98: 91000021     	add	x1, x1, #0x0
		0000000000012c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12c9c: 94000000     	bl	0x12c9c <syna_spi_probe+0xfe0>
		0000000000012c9c:  R_AARCH64_CALL26	_printk
   12ca0: 17ffff3c     	b	0x12990 <syna_spi_probe+0xcd4>
   12ca4: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12ca8: 91000000     	add	x0, x0, #0x0
		0000000000012ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12cac: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12cb0: 91000021     	add	x1, x1, #0x0
		0000000000012cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12cb4: 94000000     	bl	0x12cb4 <syna_spi_probe+0xff8>
		0000000000012cb4:  R_AARCH64_CALL26	_printk
   12cb8: 17ffff40     	b	0x129b8 <syna_spi_probe+0xcfc>
   12cbc: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   12cc0: 91000000     	add	x0, x0, #0x0
		0000000000012cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   12cc4: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   12cc8: 91000021     	add	x1, x1, #0x0
		0000000000012cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   12ccc: 94000000     	bl	0x12ccc <syna_spi_probe+0x1010>
		0000000000012ccc:  R_AARCH64_CALL26	_printk
   12cd0: 17ffff44     	b	0x129e0 <syna_spi_probe+0xd24>
   12cd4: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012cd4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   12cd8: d5384117     	mrs	x23, SP_EL0
   12cdc: f9402af8     	ldr	x24, [x23, #0x50]
   12ce0: f9400100     	ldr	x0, [x8]
		0000000000012ce0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   12ce4: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012ce4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x1e0
   12ce8: 91000108     	add	x8, x8, #0x0
		0000000000012ce8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x1e0
   12cec: 5281b801     	mov	w1, #0xdc0              // =3520
   12cf0: 52800102     	mov	w2, #0x8                // =8
   12cf4: f9002ae8     	str	x8, [x23, #0x50]
   12cf8: 94000000     	bl	0x12cf8 <syna_spi_probe+0x103c>
		0000000000012cf8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   12cfc: f9002af8     	str	x24, [x23, #0x50]
   12d00: b5ffdbc0     	cbnz	x0, 0x12878 <syna_spi_probe+0xbbc>
   12d04: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6476
   12d08: 91000000     	add	x0, x0, #0x0
		0000000000012d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6476
   12d0c: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39de
   12d10: 91000021     	add	x1, x1, #0x0
		0000000000012d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39de
   12d14: 94000000     	bl	0x12d14 <syna_spi_probe+0x1058>
		0000000000012d14:  R_AARCH64_CALL26	_printk
   12d18: 12800173     	mov	w19, #-0xc              // =-12
   12d1c: 90000000     	adrp	x0, 0x12000 <syna_spi_probe+0x344>
		0000000000012d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c88
   12d20: 91000000     	add	x0, x0, #0x0
		0000000000012d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c88
   12d24: 90000001     	adrp	x1, 0x12000 <syna_spi_probe+0x344>
		0000000000012d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76b0
   12d28: 91000021     	add	x1, x1, #0x0
		0000000000012d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76b0
   12d2c: 94000000     	bl	0x12d2c <syna_spi_probe+0x1070>
		0000000000012d2c:  R_AARCH64_CALL26	_printk
   12d30: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012d30:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x958
   12d34: b9400108     	ldr	w8, [x8]
		0000000000012d34:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x958
   12d38: 7100051f     	cmp	w8, #0x1
   12d3c: 540000c1     	b.ne	0x12d54 <syna_spi_probe+0x1098>
   12d40: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012d40:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x968
   12d44: f9400100     	ldr	x0, [x8]
		0000000000012d44:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x968
   12d48: b4000120     	cbz	x0, 0x12d6c <syna_spi_probe+0x10b0>
   12d4c: 94000000     	bl	0x12d4c <syna_spi_probe+0x1090>
		0000000000012d4c:  R_AARCH64_CALL26	devm_regulator_put
   12d50: 14000007     	b	0x12d6c <syna_spi_probe+0x10b0>
   12d54: 540000cb     	b.lt	0x12d6c <syna_spi_probe+0x10b0>
   12d58: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012d58:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x970
   12d5c: b9400100     	ldr	w0, [x8]
		0000000000012d5c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x970
   12d60: 7100041f     	cmp	w0, #0x1
   12d64: 5400004b     	b.lt	0x12d6c <syna_spi_probe+0x10b0>
   12d68: 94000000     	bl	0x12d68 <syna_spi_probe+0x10ac>
		0000000000012d68:  R_AARCH64_CALL26	gpio_free
   12d6c: b94002a8     	ldr	w8, [x21]
		0000000000012d6c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x930
   12d70: 7100051f     	cmp	w8, #0x1
   12d74: 540000c1     	b.ne	0x12d8c <syna_spi_probe+0x10d0>
   12d78: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012d78:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x940
   12d7c: f9400100     	ldr	x0, [x8]
		0000000000012d7c:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x940
   12d80: b4000120     	cbz	x0, 0x12da4 <syna_spi_probe+0x10e8>
   12d84: 94000000     	bl	0x12d84 <syna_spi_probe+0x10c8>
		0000000000012d84:  R_AARCH64_CALL26	devm_regulator_put
   12d88: 14000007     	b	0x12da4 <syna_spi_probe+0x10e8>
   12d8c: 540000cb     	b.lt	0x12da4 <syna_spi_probe+0x10e8>
   12d90: 90000008     	adrp	x8, 0x12000 <syna_spi_probe+0x344>
		0000000000012d90:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x948
   12d94: b9400100     	ldr	w0, [x8]
		0000000000012d94:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x948
   12d98: 7100041f     	cmp	w0, #0x1
   12d9c: 5400004b     	b.lt	0x12da4 <syna_spi_probe+0x10e8>
   12da0: 94000000     	bl	0x12da0 <syna_spi_probe+0x10e4>
		0000000000012da0:  R_AARCH64_CALL26	gpio_free
   12da4: 2a1303e0     	mov	w0, w19
   12da8: d5384108     	mrs	x8, SP_EL0
   12dac: f9438908     	ldr	x8, [x8, #0x710]
   12db0: f85f83a9     	ldur	x9, [x29, #-0x8]
   12db4: eb09011f     	cmp	x8, x9
   12db8: 54000141     	b.ne	0x12de0 <syna_spi_probe+0x1124>
   12dbc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   12dc0: a94757f6     	ldp	x22, x21, [sp, #0x70]
   12dc4: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   12dc8: a94567fa     	ldp	x26, x25, [sp, #0x50]
   12dcc: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   12dd0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   12dd4: 910243ff     	add	sp, sp, #0x90
   12dd8: d50323bf     	autiasp
   12ddc: d65f03c0     	ret
   12de0: 94000000     	bl	0x12de0 <syna_spi_probe+0x1124>
		0000000000012de0:  R_AARCH64_CALL26	__stack_chk_fail
