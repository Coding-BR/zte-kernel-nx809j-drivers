
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000028bf0 <syna_spi_probe>:
   28bf0: d503233f     	paciasp
   28bf4: d10243ff     	sub	sp, sp, #0x90
   28bf8: a9037bfd     	stp	x29, x30, [sp, #0x30]
   28bfc: a9046ffc     	stp	x28, x27, [sp, #0x40]
   28c00: a90567fa     	stp	x26, x25, [sp, #0x50]
   28c04: a9065ff8     	stp	x24, x23, [sp, #0x60]
   28c08: a90757f6     	stp	x22, x21, [sp, #0x70]
   28c0c: a9084ff4     	stp	x20, x19, [sp, #0x80]
   28c10: 9100c3fd     	add	x29, sp, #0x30
   28c14: d5384108     	mrs	x8, SP_EL0
   28c18: aa0003f3     	mov	x19, x0
   28c1c: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce35
   28c20: 91000000     	add	x0, x0, #0x0
		0000000000028c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce35
   28c24: f9438908     	ldr	x8, [x8, #0x710]
   28c28: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c6
   28c2c: 91000021     	add	x1, x1, #0x0
		0000000000028c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c6
   28c30: f81f83a8     	stur	x8, [x29, #-0x8]
   28c34: 94000000     	bl	0x28c34 <syna_spi_probe+0x44>
		0000000000028c34:  R_AARCH64_CALL26	_printk
   28c38: f9417674     	ldr	x20, [x19, #0x2e8]
   28c3c: 90000015     	adrp	x21, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c3c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa8
   28c40: 12800008     	mov	w8, #-0x1               // =-1
   28c44: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b66d
   28c48: 91000021     	add	x1, x1, #0x0
		0000000000028c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b66d
   28c4c: aa1f03e2     	mov	x2, xzr
   28c50: aa1403e0     	mov	x0, x20
   28c54: b90023ff     	str	wzr, [sp, #0x20]
   28c58: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   28c5c: b90002a8     	str	w8, [x21]
		0000000000028c5c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa8
   28c60: 94000000     	bl	0x28c60 <syna_spi_probe+0x70>
		0000000000028c60:  R_AARCH64_CALL26	of_find_property
   28c64: b4000120     	cbz	x0, 0x28c88 <syna_spi_probe+0x98>
   28c68: b9400808     	ldr	w8, [x0, #0x8]
   28c6c: 340000e8     	cbz	w8, 0x28c88 <syna_spi_probe+0x98>
   28c70: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b66d
   28c74: 91000021     	add	x1, x1, #0x0
		0000000000028c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b66d
   28c78: aa1403e0     	mov	x0, x20
   28c7c: 2a1f03e2     	mov	w2, wzr
   28c80: 94000000     	bl	0x28c80 <syna_spi_probe+0x90>
		0000000000028c80:  R_AARCH64_CALL26	of_get_named_gpio
   28c84: b90002a0     	str	w0, [x21]
		0000000000028c84:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa8
   28c88: 90000015     	adrp	x21, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c88:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xb0
   28c8c: 52840108     	mov	w8, #0x2008             // =8200
   28c90: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c575
   28c94: 91000021     	add	x1, x1, #0x0
		0000000000028c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c575
   28c98: aa1403e0     	mov	x0, x20
   28c9c: aa1f03e2     	mov	x2, xzr
   28ca0: f90002a8     	str	x8, [x21]
		0000000000028ca0:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0xb0
   28ca4: 94000000     	bl	0x28ca4 <syna_spi_probe+0xb4>
		0000000000028ca4:  R_AARCH64_CALL26	of_find_property
   28ca8: b4000180     	cbz	x0, 0x28cd8 <syna_spi_probe+0xe8>
   28cac: b9400808     	ldr	w8, [x0, #0x8]
   28cb0: 34000148     	cbz	w8, 0x28cd8 <syna_spi_probe+0xe8>
   28cb4: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c575
   28cb8: 91000021     	add	x1, x1, #0x0
		0000000000028cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c575
   28cbc: 910043e2     	add	x2, sp, #0x10
   28cc0: aa1403e0     	mov	x0, x20
   28cc4: 52800023     	mov	w3, #0x1                // =1
   28cc8: aa1f03e4     	mov	x4, xzr
   28ccc: 94000000     	bl	0x28ccc <syna_spi_probe+0xdc>
		0000000000028ccc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28cd0: b98013e8     	ldrsw	x8, [sp, #0x10]
   28cd4: f90002a8     	str	x8, [x21]
		0000000000028cd4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0xb0
   28cd8: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028cd8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xac
   28cdc: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17892
   28ce0: 91000021     	add	x1, x1, #0x0
		0000000000028ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17892
   28ce4: aa1403e0     	mov	x0, x20
   28ce8: aa1f03e2     	mov	x2, xzr
   28cec: b900011f     	str	wzr, [x8]
		0000000000028cec:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xac
   28cf0: 94000000     	bl	0x28cf0 <syna_spi_probe+0x100>
		0000000000028cf0:  R_AARCH64_CALL26	of_find_property
   28cf4: b4000160     	cbz	x0, 0x28d20 <syna_spi_probe+0x130>
   28cf8: b9400808     	ldr	w8, [x0, #0x8]
   28cfc: 34000128     	cbz	w8, 0x28d20 <syna_spi_probe+0x130>
   28d00: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17892
   28d04: 91000021     	add	x1, x1, #0x0
		0000000000028d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17892
   28d08: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d08:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xac
   28d0c: 91000042     	add	x2, x2, #0x0
		0000000000028d0c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xac
   28d10: aa1403e0     	mov	x0, x20
   28d14: 52800023     	mov	w3, #0x1                // =1
   28d18: aa1f03e4     	mov	x4, xzr
   28d1c: 94000000     	bl	0x28d1c <syna_spi_probe+0x12c>
		0000000000028d1c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28d20: 90000019     	adrp	x25, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d20:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x150
   28d24: 52800028     	mov	w8, #0x1                // =1
   28d28: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a062
   28d2c: 91000021     	add	x1, x1, #0x0
		0000000000028d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a062
   28d30: aa1403e0     	mov	x0, x20
   28d34: aa1f03e2     	mov	x2, xzr
   28d38: b9000328     	str	w8, [x25]
		0000000000028d38:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   28d3c: 94000000     	bl	0x28d3c <syna_spi_probe+0x14c>
		0000000000028d3c:  R_AARCH64_CALL26	of_find_property
   28d40: b4000160     	cbz	x0, 0x28d6c <syna_spi_probe+0x17c>
   28d44: b9400808     	ldr	w8, [x0, #0x8]
   28d48: 34000128     	cbz	w8, 0x28d6c <syna_spi_probe+0x17c>
   28d4c: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a062
   28d50: 91000021     	add	x1, x1, #0x0
		0000000000028d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a062
   28d54: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d54:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x150
   28d58: 91000042     	add	x2, x2, #0x0
		0000000000028d58:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x150
   28d5c: aa1403e0     	mov	x0, x20
   28d60: 52800023     	mov	w3, #0x1                // =1
   28d64: aa1f03e4     	mov	x4, xzr
   28d68: 94000000     	bl	0x28d68 <syna_spi_probe+0x178>
		0000000000028d68:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28d6c: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d6c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x154
   28d70: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   28d74: 91000021     	add	x1, x1, #0x0
		0000000000028d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   28d78: aa1403e0     	mov	x0, x20
   28d7c: aa1f03e2     	mov	x2, xzr
   28d80: b900011f     	str	wzr, [x8]
		0000000000028d80:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x154
   28d84: 94000000     	bl	0x28d84 <syna_spi_probe+0x194>
		0000000000028d84:  R_AARCH64_CALL26	of_find_property
   28d88: b4000160     	cbz	x0, 0x28db4 <syna_spi_probe+0x1c4>
   28d8c: b9400808     	ldr	w8, [x0, #0x8]
   28d90: 34000128     	cbz	w8, 0x28db4 <syna_spi_probe+0x1c4>
   28d94: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   28d98: 91000021     	add	x1, x1, #0x0
		0000000000028d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   28d9c: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028d9c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x154
   28da0: 91000042     	add	x2, x2, #0x0
		0000000000028da0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x154
   28da4: aa1403e0     	mov	x0, x20
   28da8: 52800023     	mov	w3, #0x1                // =1
   28dac: aa1f03e4     	mov	x4, xzr
   28db0: 94000000     	bl	0x28db0 <syna_spi_probe+0x1c0>
		0000000000028db0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28db4: 90000015     	adrp	x21, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028db4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x100
   28db8: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19720
   28dbc: 91000021     	add	x1, x1, #0x0
		0000000000028dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19720
   28dc0: aa1403e0     	mov	x0, x20
   28dc4: aa1f03e2     	mov	x2, xzr
   28dc8: b90002bf     	str	wzr, [x21]
		0000000000028dc8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   28dcc: 94000000     	bl	0x28dcc <syna_spi_probe+0x1dc>
		0000000000028dcc:  R_AARCH64_CALL26	of_find_property
   28dd0: b4000160     	cbz	x0, 0x28dfc <syna_spi_probe+0x20c>
   28dd4: b9400808     	ldr	w8, [x0, #0x8]
   28dd8: 34000128     	cbz	w8, 0x28dfc <syna_spi_probe+0x20c>
   28ddc: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19720
   28de0: 91000021     	add	x1, x1, #0x0
		0000000000028de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19720
   28de4: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028de4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x100
   28de8: 91000042     	add	x2, x2, #0x0
		0000000000028de8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x100
   28dec: aa1403e0     	mov	x0, x20
   28df0: 52800023     	mov	w3, #0x1                // =1
   28df4: aa1f03e4     	mov	x4, xzr
   28df8: 94000000     	bl	0x28df8 <syna_spi_probe+0x208>
		0000000000028df8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28dfc: 9000001a     	adrp	x26, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028dfc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x108
   28e00: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5fd
   28e04: 91000021     	add	x1, x1, #0x0
		0000000000028e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5fd
   28e08: aa1403e0     	mov	x0, x20
   28e0c: aa1f03e2     	mov	x2, xzr
   28e10: f900035f     	str	xzr, [x26]
		0000000000028e10:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   28e14: 94000000     	bl	0x28e14 <syna_spi_probe+0x224>
		0000000000028e14:  R_AARCH64_CALL26	of_find_property
   28e18: b4000120     	cbz	x0, 0x28e3c <syna_spi_probe+0x24c>
   28e1c: b9400808     	ldr	w8, [x0, #0x8]
   28e20: 340000e8     	cbz	w8, 0x28e3c <syna_spi_probe+0x24c>
   28e24: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5fd
   28e28: 91000021     	add	x1, x1, #0x0
		0000000000028e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5fd
   28e2c: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e2c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x108
   28e30: 91000042     	add	x2, x2, #0x0
		0000000000028e30:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x108
   28e34: aa1403e0     	mov	x0, x20
   28e38: 94000000     	bl	0x28e38 <syna_spi_probe+0x248>
		0000000000028e38:  R_AARCH64_CALL26	of_property_read_string
   28e3c: 90000009     	adrp	x9, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e3c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   28e40: 12800008     	mov	w8, #-0x1               // =-1
   28e44: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afcb
   28e48: 91000021     	add	x1, x1, #0x0
		0000000000028e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afcb
   28e4c: aa1403e0     	mov	x0, x20
   28e50: aa1f03e2     	mov	x2, xzr
   28e54: b9000128     	str	w8, [x9]
		0000000000028e54:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   28e58: 94000000     	bl	0x28e58 <syna_spi_probe+0x268>
		0000000000028e58:  R_AARCH64_CALL26	of_find_property
   28e5c: b4000140     	cbz	x0, 0x28e84 <syna_spi_probe+0x294>
   28e60: b9400808     	ldr	w8, [x0, #0x8]
   28e64: 34000108     	cbz	w8, 0x28e84 <syna_spi_probe+0x294>
   28e68: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afcb
   28e6c: 91000021     	add	x1, x1, #0x0
		0000000000028e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afcb
   28e70: aa1403e0     	mov	x0, x20
   28e74: 2a1f03e2     	mov	w2, wzr
   28e78: 94000000     	bl	0x28e78 <syna_spi_probe+0x288>
		0000000000028e78:  R_AARCH64_CALL26	of_get_named_gpio
   28e7c: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e7c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   28e80: b9000100     	str	w0, [x8]
		0000000000028e80:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   28e84: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e84:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x120
   28e88: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18702
   28e8c: 91000021     	add	x1, x1, #0x0
		0000000000028e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18702
   28e90: aa1403e0     	mov	x0, x20
   28e94: aa1f03e2     	mov	x2, xzr
   28e98: b900011f     	str	wzr, [x8]
		0000000000028e98:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x120
   28e9c: 94000000     	bl	0x28e9c <syna_spi_probe+0x2ac>
		0000000000028e9c:  R_AARCH64_CALL26	of_find_property
   28ea0: b4000160     	cbz	x0, 0x28ecc <syna_spi_probe+0x2dc>
   28ea4: b9400808     	ldr	w8, [x0, #0x8]
   28ea8: 34000128     	cbz	w8, 0x28ecc <syna_spi_probe+0x2dc>
   28eac: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18702
   28eb0: 91000021     	add	x1, x1, #0x0
		0000000000028eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18702
   28eb4: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028eb4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x120
   28eb8: 91000042     	add	x2, x2, #0x0
		0000000000028eb8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x120
   28ebc: aa1403e0     	mov	x0, x20
   28ec0: 52800023     	mov	w3, #0x1                // =1
   28ec4: aa1f03e4     	mov	x4, xzr
   28ec8: 94000000     	bl	0x28ec8 <syna_spi_probe+0x2d8>
		0000000000028ec8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28ecc: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028ecc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x124
   28ed0: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c589
   28ed4: 91000021     	add	x1, x1, #0x0
		0000000000028ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c589
   28ed8: aa1403e0     	mov	x0, x20
   28edc: aa1f03e2     	mov	x2, xzr
   28ee0: b900011f     	str	wzr, [x8]
		0000000000028ee0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x124
   28ee4: 94000000     	bl	0x28ee4 <syna_spi_probe+0x2f4>
		0000000000028ee4:  R_AARCH64_CALL26	of_find_property
   28ee8: b4000160     	cbz	x0, 0x28f14 <syna_spi_probe+0x324>
   28eec: b9400808     	ldr	w8, [x0, #0x8]
   28ef0: 34000128     	cbz	w8, 0x28f14 <syna_spi_probe+0x324>
   28ef4: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c589
   28ef8: 91000021     	add	x1, x1, #0x0
		0000000000028ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c589
   28efc: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028efc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x124
   28f00: 91000042     	add	x2, x2, #0x0
		0000000000028f00:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x124
   28f04: aa1403e0     	mov	x0, x20
   28f08: 52800023     	mov	w3, #0x1                // =1
   28f0c: aa1f03e4     	mov	x4, xzr
   28f10: 94000000     	bl	0x28f10 <syna_spi_probe+0x320>
		0000000000028f10:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28f14: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f14:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   28f18: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd1f
   28f1c: 91000021     	add	x1, x1, #0x0
		0000000000028f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd1f
   28f20: aa1403e0     	mov	x0, x20
   28f24: aa1f03e2     	mov	x2, xzr
   28f28: b900011f     	str	wzr, [x8]
		0000000000028f28:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   28f2c: 94000000     	bl	0x28f2c <syna_spi_probe+0x33c>
		0000000000028f2c:  R_AARCH64_CALL26	of_find_property
   28f30: b4000160     	cbz	x0, 0x28f5c <syna_spi_probe+0x36c>
   28f34: b9400808     	ldr	w8, [x0, #0x8]
   28f38: 34000128     	cbz	w8, 0x28f5c <syna_spi_probe+0x36c>
   28f3c: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd1f
   28f40: 91000021     	add	x1, x1, #0x0
		0000000000028f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd1f
   28f44: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f44:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   28f48: 91000042     	add	x2, x2, #0x0
		0000000000028f48:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x128
   28f4c: aa1403e0     	mov	x0, x20
   28f50: 52800023     	mov	w3, #0x1                // =1
   28f54: aa1f03e4     	mov	x4, xzr
   28f58: 94000000     	bl	0x28f58 <syna_spi_probe+0x368>
		0000000000028f58:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   28f5c: 90000017     	adrp	x23, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f5c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x130
   28f60: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1915c
   28f64: 91000021     	add	x1, x1, #0x0
		0000000000028f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1915c
   28f68: aa1403e0     	mov	x0, x20
   28f6c: aa1f03e2     	mov	x2, xzr
   28f70: f90002ff     	str	xzr, [x23]
		0000000000028f70:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   28f74: 94000000     	bl	0x28f74 <syna_spi_probe+0x384>
		0000000000028f74:  R_AARCH64_CALL26	of_find_property
   28f78: b4000120     	cbz	x0, 0x28f9c <syna_spi_probe+0x3ac>
   28f7c: b9400808     	ldr	w8, [x0, #0x8]
   28f80: 340000e8     	cbz	w8, 0x28f9c <syna_spi_probe+0x3ac>
   28f84: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1915c
   28f88: 91000021     	add	x1, x1, #0x0
		0000000000028f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1915c
   28f8c: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f8c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x130
   28f90: 91000042     	add	x2, x2, #0x0
		0000000000028f90:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x130
   28f94: aa1403e0     	mov	x0, x20
   28f98: 94000000     	bl	0x28f98 <syna_spi_probe+0x3a8>
		0000000000028f98:  R_AARCH64_CALL26	of_property_read_string
   28f9c: 90000009     	adrp	x9, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028f9c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   28fa0: 12800008     	mov	w8, #-0x1               // =-1
   28fa4: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a610
   28fa8: 91000021     	add	x1, x1, #0x0
		0000000000028fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a610
   28fac: aa1403e0     	mov	x0, x20
   28fb0: aa1f03e2     	mov	x2, xzr
   28fb4: b9000128     	str	w8, [x9]
		0000000000028fb4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   28fb8: 94000000     	bl	0x28fb8 <syna_spi_probe+0x3c8>
		0000000000028fb8:  R_AARCH64_CALL26	of_find_property
   28fbc: b4000140     	cbz	x0, 0x28fe4 <syna_spi_probe+0x3f4>
   28fc0: b9400808     	ldr	w8, [x0, #0x8]
   28fc4: 34000108     	cbz	w8, 0x28fe4 <syna_spi_probe+0x3f4>
   28fc8: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a610
   28fcc: 91000021     	add	x1, x1, #0x0
		0000000000028fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a610
   28fd0: aa1403e0     	mov	x0, x20
   28fd4: 2a1f03e2     	mov	w2, wzr
   28fd8: 94000000     	bl	0x28fd8 <syna_spi_probe+0x3e8>
		0000000000028fd8:  R_AARCH64_CALL26	of_get_named_gpio
   28fdc: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028fdc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   28fe0: b9000100     	str	w0, [x8]
		0000000000028fe0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   28fe4: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028fe4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x148
   28fe8: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x159c>
		0000000000028fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c876
   28fec: 91000021     	add	x1, x1, #0x0
		0000000000028fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c876
   28ff0: aa1403e0     	mov	x0, x20
   28ff4: aa1f03e2     	mov	x2, xzr
   28ff8: b900011f     	str	wzr, [x8]
		0000000000028ff8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x148
   28ffc: 94000000     	bl	0x28ffc <syna_spi_probe+0x40c>
		0000000000028ffc:  R_AARCH64_CALL26	of_find_property
   29000: b4000160     	cbz	x0, 0x2902c <syna_spi_probe+0x43c>
   29004: b9400808     	ldr	w8, [x0, #0x8]
   29008: 34000128     	cbz	w8, 0x2902c <syna_spi_probe+0x43c>
   2900c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		000000000002900c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c876
   29010: 91000021     	add	x1, x1, #0x0
		0000000000029010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c876
   29014: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		0000000000029014:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x148
   29018: 91000042     	add	x2, x2, #0x0
		0000000000029018:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x148
   2901c: aa1403e0     	mov	x0, x20
   29020: 52800023     	mov	w3, #0x1                // =1
   29024: aa1f03e4     	mov	x4, xzr
   29028: 94000000     	bl	0x29028 <syna_spi_probe+0x438>
		0000000000029028:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2902c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		000000000002902c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14c
   29030: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d7bd
   29034: 91000021     	add	x1, x1, #0x0
		0000000000029034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d7bd
   29038: aa1403e0     	mov	x0, x20
   2903c: aa1f03e2     	mov	x2, xzr
   29040: b900011f     	str	wzr, [x8]
		0000000000029040:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x14c
   29044: 94000000     	bl	0x29044 <syna_spi_probe+0x454>
		0000000000029044:  R_AARCH64_CALL26	of_find_property
   29048: b4000160     	cbz	x0, 0x29074 <syna_spi_probe+0x484>
   2904c: b9400808     	ldr	w8, [x0, #0x8]
   29050: 34000128     	cbz	w8, 0x29074 <syna_spi_probe+0x484>
   29054: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d7bd
   29058: 91000021     	add	x1, x1, #0x0
		0000000000029058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d7bd
   2905c: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		000000000002905c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14c
   29060: 91000042     	add	x2, x2, #0x0
		0000000000029060:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x14c
   29064: aa1403e0     	mov	x0, x20
   29068: 52800023     	mov	w3, #0x1                // =1
   2906c: aa1f03e4     	mov	x4, xzr
   29070: 94000000     	bl	0x29070 <syna_spi_probe+0x480>
		0000000000029070:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29074: 9000001b     	adrp	x27, 0x29000 <syna_spi_probe+0x410>
		0000000000029074:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf4
   29078: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba75
   2907c: 91000021     	add	x1, x1, #0x0
		000000000002907c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba75
   29080: aa1403e0     	mov	x0, x20
   29084: aa1f03e2     	mov	x2, xzr
   29088: b900037f     	str	wzr, [x27]
		0000000000029088:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf4
   2908c: 94000000     	bl	0x2908c <syna_spi_probe+0x49c>
		000000000002908c:  R_AARCH64_CALL26	of_find_property
   29090: b4000160     	cbz	x0, 0x290bc <syna_spi_probe+0x4cc>
   29094: b9400808     	ldr	w8, [x0, #0x8]
   29098: 34000128     	cbz	w8, 0x290bc <syna_spi_probe+0x4cc>
   2909c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		000000000002909c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba75
   290a0: 91000021     	add	x1, x1, #0x0
		00000000000290a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba75
   290a4: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		00000000000290a4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf4
   290a8: 91000042     	add	x2, x2, #0x0
		00000000000290a8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xf4
   290ac: aa1403e0     	mov	x0, x20
   290b0: 52800023     	mov	w3, #0x1                // =1
   290b4: aa1f03e4     	mov	x4, xzr
   290b8: 94000000     	bl	0x290b8 <syna_spi_probe+0x4c8>
		00000000000290b8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   290bc: 9000001c     	adrp	x28, 0x29000 <syna_spi_probe+0x410>
		00000000000290bc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf0
   290c0: 12800008     	mov	w8, #-0x1               // =-1
   290c4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000290c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c9d
   290c8: 91000021     	add	x1, x1, #0x0
		00000000000290c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c9d
   290cc: aa1403e0     	mov	x0, x20
   290d0: aa1f03e2     	mov	x2, xzr
   290d4: b9000388     	str	w8, [x28]
		00000000000290d4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   290d8: 94000000     	bl	0x290d8 <syna_spi_probe+0x4e8>
		00000000000290d8:  R_AARCH64_CALL26	of_find_property
   290dc: b4000120     	cbz	x0, 0x29100 <syna_spi_probe+0x510>
   290e0: b9400808     	ldr	w8, [x0, #0x8]
   290e4: 340000e8     	cbz	w8, 0x29100 <syna_spi_probe+0x510>
   290e8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000290e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c9d
   290ec: 91000021     	add	x1, x1, #0x0
		00000000000290ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c9d
   290f0: aa1403e0     	mov	x0, x20
   290f4: 2a1f03e2     	mov	w2, wzr
   290f8: 94000000     	bl	0x290f8 <syna_spi_probe+0x508>
		00000000000290f8:  R_AARCH64_CALL26	of_get_named_gpio
   290fc: b9000380     	str	w0, [x28]
		00000000000290fc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   29100: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa34
   29104: 91000021     	add	x1, x1, #0x0
		0000000000029104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa34
   29108: aa1403e0     	mov	x0, x20
   2910c: aa1f03e2     	mov	x2, xzr
   29110: 94000000     	bl	0x29110 <syna_spi_probe+0x520>
		0000000000029110:  R_AARCH64_CALL26	of_find_property
   29114: b4000160     	cbz	x0, 0x29140 <syna_spi_probe+0x550>
   29118: b9400808     	ldr	w8, [x0, #0x8]
   2911c: 34000128     	cbz	w8, 0x29140 <syna_spi_probe+0x550>
   29120: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa34
   29124: 91000021     	add	x1, x1, #0x0
		0000000000029124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa34
   29128: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		0000000000029128:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xfc
   2912c: 91000042     	add	x2, x2, #0x0
		000000000002912c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xfc
   29130: aa1403e0     	mov	x0, x20
   29134: 52800023     	mov	w3, #0x1                // =1
   29138: aa1f03e4     	mov	x4, xzr
   2913c: 94000000     	bl	0x2913c <syna_spi_probe+0x54c>
		000000000002913c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29140: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1832b
   29144: 91000021     	add	x1, x1, #0x0
		0000000000029144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1832b
   29148: aa1403e0     	mov	x0, x20
   2914c: aa1f03e2     	mov	x2, xzr
   29150: 94000000     	bl	0x29150 <syna_spi_probe+0x560>
		0000000000029150:  R_AARCH64_CALL26	of_find_property
   29154: b4000160     	cbz	x0, 0x29180 <syna_spi_probe+0x590>
   29158: b9400808     	ldr	w8, [x0, #0x8]
   2915c: 34000128     	cbz	w8, 0x29180 <syna_spi_probe+0x590>
   29160: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1832b
   29164: 91000021     	add	x1, x1, #0x0
		0000000000029164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1832b
   29168: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		0000000000029168:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf8
   2916c: 91000042     	add	x2, x2, #0x0
		000000000002916c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xf8
   29170: aa1403e0     	mov	x0, x20
   29174: 52800023     	mov	w3, #0x1                // =1
   29178: aa1f03e4     	mov	x4, xzr
   2917c: 94000000     	bl	0x2917c <syna_spi_probe+0x58c>
		000000000002917c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29180: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		0000000000029180:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa0
   29184: 12800008     	mov	w8, #-0x1               // =-1
   29188: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf04
   2918c: 91000021     	add	x1, x1, #0x0
		000000000002918c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf04
   29190: aa1403e0     	mov	x0, x20
   29194: aa1f03e2     	mov	x2, xzr
   29198: b90002c8     	str	w8, [x22]
		0000000000029198:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   2919c: 94000000     	bl	0x2919c <syna_spi_probe+0x5ac>
		000000000002919c:  R_AARCH64_CALL26	of_find_property
   291a0: b4000120     	cbz	x0, 0x291c4 <syna_spi_probe+0x5d4>
   291a4: b9400808     	ldr	w8, [x0, #0x8]
   291a8: 340000e8     	cbz	w8, 0x291c4 <syna_spi_probe+0x5d4>
   291ac: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000291ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf04
   291b0: 91000021     	add	x1, x1, #0x0
		00000000000291b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf04
   291b4: aa1403e0     	mov	x0, x20
   291b8: 2a1f03e2     	mov	w2, wzr
   291bc: 94000000     	bl	0x291bc <syna_spi_probe+0x5cc>
		00000000000291bc:  R_AARCH64_CALL26	of_get_named_gpio
   291c0: b90002c0     	str	w0, [x22]
		00000000000291c0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   291c4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000291c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d29
   291c8: 91000021     	add	x1, x1, #0x0
		00000000000291c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d29
   291cc: aa1403e0     	mov	x0, x20
   291d0: aa1f03e2     	mov	x2, xzr
   291d4: 94000000     	bl	0x291d4 <syna_spi_probe+0x5e4>
		00000000000291d4:  R_AARCH64_CALL26	of_find_property
   291d8: b4000160     	cbz	x0, 0x29204 <syna_spi_probe+0x614>
   291dc: b9400808     	ldr	w8, [x0, #0x8]
   291e0: 34000128     	cbz	w8, 0x29204 <syna_spi_probe+0x614>
   291e4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000291e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d29
   291e8: 91000021     	add	x1, x1, #0x0
		00000000000291e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d29
   291ec: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		00000000000291ec:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa4
   291f0: 91000042     	add	x2, x2, #0x0
		00000000000291f0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa4
   291f4: aa1403e0     	mov	x0, x20
   291f8: 52800023     	mov	w3, #0x1                // =1
   291fc: aa1f03e4     	mov	x4, xzr
   29200: 94000000     	bl	0x29200 <syna_spi_probe+0x610>
		0000000000029200:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29204: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029204:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x64
   29208: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d08e
   2920c: 91000021     	add	x1, x1, #0x0
		000000000002920c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d08e
   29210: aa1403e0     	mov	x0, x20
   29214: aa1f03e2     	mov	x2, xzr
   29218: b900011f     	str	wzr, [x8]
		0000000000029218:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x64
   2921c: 94000000     	bl	0x2921c <syna_spi_probe+0x62c>
		000000000002921c:  R_AARCH64_CALL26	of_find_property
   29220: b4000160     	cbz	x0, 0x2924c <syna_spi_probe+0x65c>
   29224: b9400808     	ldr	w8, [x0, #0x8]
   29228: 34000128     	cbz	w8, 0x2924c <syna_spi_probe+0x65c>
   2922c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		000000000002922c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d08e
   29230: 91000021     	add	x1, x1, #0x0
		0000000000029230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d08e
   29234: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		0000000000029234:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x64
   29238: 91000042     	add	x2, x2, #0x0
		0000000000029238:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x64
   2923c: aa1403e0     	mov	x0, x20
   29240: 52800023     	mov	w3, #0x1                // =1
   29244: aa1f03e4     	mov	x4, xzr
   29248: 94000000     	bl	0x29248 <syna_spi_probe+0x658>
		0000000000029248:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2924c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		000000000002924c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x68
   29250: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19412
   29254: 91000021     	add	x1, x1, #0x0
		0000000000029254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19412
   29258: aa1403e0     	mov	x0, x20
   2925c: aa1f03e2     	mov	x2, xzr
   29260: b900011f     	str	wzr, [x8]
		0000000000029260:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x68
   29264: 94000000     	bl	0x29264 <syna_spi_probe+0x674>
		0000000000029264:  R_AARCH64_CALL26	of_find_property
   29268: b4000160     	cbz	x0, 0x29294 <syna_spi_probe+0x6a4>
   2926c: b9400808     	ldr	w8, [x0, #0x8]
   29270: 34000128     	cbz	w8, 0x29294 <syna_spi_probe+0x6a4>
   29274: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19412
   29278: 91000021     	add	x1, x1, #0x0
		0000000000029278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19412
   2927c: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		000000000002927c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x68
   29280: 91000042     	add	x2, x2, #0x0
		0000000000029280:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x68
   29284: aa1403e0     	mov	x0, x20
   29288: 52800023     	mov	w3, #0x1                // =1
   2928c: aa1f03e4     	mov	x4, xzr
   29290: 94000000     	bl	0x29290 <syna_spi_probe+0x6a0>
		0000000000029290:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29294: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029294:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   29298: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b680
   2929c: 91000021     	add	x1, x1, #0x0
		000000000002929c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b680
   292a0: aa1403e0     	mov	x0, x20
   292a4: aa1f03e2     	mov	x2, xzr
   292a8: b900011f     	str	wzr, [x8]
		00000000000292a8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x60
   292ac: 94000000     	bl	0x292ac <syna_spi_probe+0x6bc>
		00000000000292ac:  R_AARCH64_CALL26	of_find_property
   292b0: b4000160     	cbz	x0, 0x292dc <syna_spi_probe+0x6ec>
   292b4: b9400808     	ldr	w8, [x0, #0x8]
   292b8: 34000128     	cbz	w8, 0x292dc <syna_spi_probe+0x6ec>
   292bc: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000292bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b680
   292c0: 91000021     	add	x1, x1, #0x0
		00000000000292c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b680
   292c4: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		00000000000292c4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   292c8: 91000042     	add	x2, x2, #0x0
		00000000000292c8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x60
   292cc: aa1403e0     	mov	x0, x20
   292d0: 52800023     	mov	w3, #0x1                // =1
   292d4: aa1f03e4     	mov	x4, xzr
   292d8: 94000000     	bl	0x292d8 <syna_spi_probe+0x6e8>
		00000000000292d8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   292dc: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000292dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd35
   292e0: 91000021     	add	x1, x1, #0x0
		00000000000292e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd35
   292e4: aa1403e0     	mov	x0, x20
   292e8: aa1f03e2     	mov	x2, xzr
   292ec: 94000000     	bl	0x292ec <syna_spi_probe+0x6fc>
		00000000000292ec:  R_AARCH64_CALL26	of_find_property
   292f0: b40001e0     	cbz	x0, 0x2932c <syna_spi_probe+0x73c>
   292f4: b9400808     	ldr	w8, [x0, #0x8]
   292f8: 340001a8     	cbz	w8, 0x2932c <syna_spi_probe+0x73c>
   292fc: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000292fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd35
   29300: 91000021     	add	x1, x1, #0x0
		0000000000029300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd35
   29304: 910043e2     	add	x2, sp, #0x10
   29308: aa1403e0     	mov	x0, x20
   2930c: 52800043     	mov	w3, #0x2                // =2
   29310: aa1f03e4     	mov	x4, xzr
   29314: 94000000     	bl	0x29314 <syna_spi_probe+0x724>
		0000000000029314:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29318: 37f800a0     	tbnz	w0, #0x1f, 0x2932c <syna_spi_probe+0x73c>
   2931c: 294227e8     	ldp	w8, w9, [sp, #0x10]
   29320: 9000000a     	adrp	x10, 0x29000 <syna_spi_probe+0x410>
		0000000000029320:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14
   29324: 9100014a     	add	x10, x10, #0x0
		0000000000029324:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x14
   29328: 29002548     	stp	w8, w9, [x10]
   2932c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		000000000002932c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a7c
   29330: 91000021     	add	x1, x1, #0x0
		0000000000029330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a7c
   29334: aa1403e0     	mov	x0, x20
   29338: aa1f03e2     	mov	x2, xzr
   2933c: 94000000     	bl	0x2933c <syna_spi_probe+0x74c>
		000000000002933c:  R_AARCH64_CALL26	of_find_property
   29340: b4000220     	cbz	x0, 0x29384 <syna_spi_probe+0x794>
   29344: b9400808     	ldr	w8, [x0, #0x8]
   29348: 340001e8     	cbz	w8, 0x29384 <syna_spi_probe+0x794>
   2934c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		000000000002934c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad00
   29350: 91000021     	add	x1, x1, #0x0
		0000000000029350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad00
   29354: 910043e2     	add	x2, sp, #0x10
   29358: aa1403e0     	mov	x0, x20
   2935c: 52800063     	mov	w3, #0x3                // =3
   29360: aa1f03e4     	mov	x4, xzr
   29364: 94000000     	bl	0x29364 <syna_spi_probe+0x774>
		0000000000029364:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29368: 37f800e0     	tbnz	w0, #0x1f, 0x29384 <syna_spi_probe+0x794>
   2936c: f9400be8     	ldr	x8, [sp, #0x10]
   29370: b9401be9     	ldr	w9, [sp, #0x18]
   29374: 9000000a     	adrp	x10, 0x29000 <syna_spi_probe+0x410>
		0000000000029374:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x170
   29378: 9100014a     	add	x10, x10, #0x0
		0000000000029378:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x170
   2937c: f9000148     	str	x8, [x10]
   29380: b9000949     	str	w9, [x10, #0x8]
   29384: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1760d
   29388: 91000021     	add	x1, x1, #0x0
		0000000000029388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1760d
   2938c: aa1403e0     	mov	x0, x20
   29390: aa1f03e2     	mov	x2, xzr
   29394: 94000000     	bl	0x29394 <syna_spi_probe+0x7a4>
		0000000000029394:  R_AARCH64_CALL26	of_find_property
   29398: b4000160     	cbz	x0, 0x293c4 <syna_spi_probe+0x7d4>
   2939c: b9400808     	ldr	w8, [x0, #0x8]
   293a0: 34000128     	cbz	w8, 0x293c4 <syna_spi_probe+0x7d4>
   293a4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000293a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1760d
   293a8: 91000021     	add	x1, x1, #0x0
		00000000000293a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1760d
   293ac: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		00000000000293ac:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x158
   293b0: 91000042     	add	x2, x2, #0x0
		00000000000293b0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x158
   293b4: aa1403e0     	mov	x0, x20
   293b8: 52800023     	mov	w3, #0x1                // =1
   293bc: aa1f03e4     	mov	x4, xzr
   293c0: 94000000     	bl	0x293c0 <syna_spi_probe+0x7d0>
		00000000000293c0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   293c4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000293c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d475
   293c8: 91000021     	add	x1, x1, #0x0
		00000000000293c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d475
   293cc: aa1403e0     	mov	x0, x20
   293d0: aa1f03e2     	mov	x2, xzr
   293d4: 94000000     	bl	0x293d4 <syna_spi_probe+0x7e4>
		00000000000293d4:  R_AARCH64_CALL26	of_find_property
   293d8: b4000160     	cbz	x0, 0x29404 <syna_spi_probe+0x814>
   293dc: b9400808     	ldr	w8, [x0, #0x8]
   293e0: 34000128     	cbz	w8, 0x29404 <syna_spi_probe+0x814>
   293e4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000293e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d475
   293e8: 91000021     	add	x1, x1, #0x0
		00000000000293e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d475
   293ec: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		00000000000293ec:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x15c
   293f0: 91000042     	add	x2, x2, #0x0
		00000000000293f0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x15c
   293f4: aa1403e0     	mov	x0, x20
   293f8: 52800023     	mov	w3, #0x1                // =1
   293fc: aa1f03e4     	mov	x4, xzr
   29400: 94000000     	bl	0x29400 <syna_spi_probe+0x810>
		0000000000029400:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29404: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b693
   29408: 91000021     	add	x1, x1, #0x0
		0000000000029408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b693
   2940c: aa1403e0     	mov	x0, x20
   29410: aa1f03e2     	mov	x2, xzr
   29414: 94000000     	bl	0x29414 <syna_spi_probe+0x824>
		0000000000029414:  R_AARCH64_CALL26	of_find_property
   29418: b40001e0     	cbz	x0, 0x29454 <syna_spi_probe+0x864>
   2941c: b9400808     	ldr	w8, [x0, #0x8]
   29420: 340001a8     	cbz	w8, 0x29454 <syna_spi_probe+0x864>
   29424: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b693
   29428: 91000021     	add	x1, x1, #0x0
		0000000000029428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b693
   2942c: 910043e2     	add	x2, sp, #0x10
   29430: aa1403e0     	mov	x0, x20
   29434: 52800043     	mov	w3, #0x2                // =2
   29438: aa1f03e4     	mov	x4, xzr
   2943c: 94000000     	bl	0x2943c <syna_spi_probe+0x84c>
		000000000002943c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29440: 37f800a0     	tbnz	w0, #0x1f, 0x29454 <syna_spi_probe+0x864>
   29444: 294227e8     	ldp	w8, w9, [sp, #0x10]
   29448: 9000000a     	adrp	x10, 0x29000 <syna_spi_probe+0x410>
		0000000000029448:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x160
   2944c: 9100014a     	add	x10, x10, #0x0
		000000000002944c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x160
   29450: 29002548     	stp	w8, w9, [x10]
   29454: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afde
   29458: 91000021     	add	x1, x1, #0x0
		0000000000029458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afde
   2945c: aa1403e0     	mov	x0, x20
   29460: aa1f03e2     	mov	x2, xzr
   29464: 94000000     	bl	0x29464 <syna_spi_probe+0x874>
		0000000000029464:  R_AARCH64_CALL26	of_find_property
   29468: b4000160     	cbz	x0, 0x29494 <syna_spi_probe+0x8a4>
   2946c: b9400808     	ldr	w8, [x0, #0x8]
   29470: 34000128     	cbz	w8, 0x29494 <syna_spi_probe+0x8a4>
   29474: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afde
   29478: 91000021     	add	x1, x1, #0x0
		0000000000029478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afde
   2947c: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		000000000002947c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x168
   29480: 91000042     	add	x2, x2, #0x0
		0000000000029480:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x168
   29484: aa1403e0     	mov	x0, x20
   29488: 52800023     	mov	w3, #0x1                // =1
   2948c: aa1f03e4     	mov	x4, xzr
   29490: 94000000     	bl	0x29490 <syna_spi_probe+0x8a0>
		0000000000029490:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   29494: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3d5
   29498: 91000021     	add	x1, x1, #0x0
		0000000000029498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3d5
   2949c: aa1403e0     	mov	x0, x20
   294a0: aa1f03e2     	mov	x2, xzr
   294a4: 94000000     	bl	0x294a4 <syna_spi_probe+0x8b4>
		00000000000294a4:  R_AARCH64_CALL26	of_find_property
   294a8: b4000160     	cbz	x0, 0x294d4 <syna_spi_probe+0x8e4>
   294ac: b9400808     	ldr	w8, [x0, #0x8]
   294b0: 34000128     	cbz	w8, 0x294d4 <syna_spi_probe+0x8e4>
   294b4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000294b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3d5
   294b8: 91000021     	add	x1, x1, #0x0
		00000000000294b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3d5
   294bc: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		00000000000294bc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x16c
   294c0: 91000042     	add	x2, x2, #0x0
		00000000000294c0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x16c
   294c4: aa1403e0     	mov	x0, x20
   294c8: 52800023     	mov	w3, #0x1                // =1
   294cc: aa1f03e4     	mov	x4, xzr
   294d0: 94000000     	bl	0x294d0 <syna_spi_probe+0x8e0>
		00000000000294d0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   294d4: 90000018     	adrp	x24, 0x29000 <syna_spi_probe+0x410>
		00000000000294d4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if
   294d8: 91000318     	add	x24, x24, #0x0
		00000000000294d8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if
   294dc: 90000014     	adrp	x20, 0x29000 <syna_spi_probe+0x410>
		00000000000294dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce51
   294e0: 91000294     	add	x20, x20, #0x0
		00000000000294e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce51
   294e4: b9412306     	ldr	w6, [x24, #0x120]
   294e8: b9412707     	ldr	w7, [x24, #0x124]
   294ec: 29428f02     	ldp	w2, w3, [x24, #0x14]
   294f0: 295f1305     	ldp	w5, w4, [x24, #0xf8]
   294f4: b9414b08     	ldr	w8, [x24, #0x148]
   294f8: b9414f09     	ldr	w9, [x24, #0x14c]
   294fc: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		00000000000294fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc8
   29500: 91000000     	add	x0, x0, #0x0
		0000000000029500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc8
   29504: aa1403e1     	mov	x1, x20
   29508: b9000be9     	str	w9, [sp, #0x8]
   2950c: b90003e8     	str	w8, [sp]
   29510: 94000000     	bl	0x29510 <syna_spi_probe+0x920>
		0000000000029510:  R_AARCH64_CALL26	_printk
   29514: b9415b02     	ldr	w2, [x24, #0x158]
   29518: b9416303     	ldr	w3, [x24, #0x160]
   2951c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		000000000002951c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba8e
   29520: 91000000     	add	x0, x0, #0x0
		0000000000029520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba8e
   29524: b9416704     	ldr	w4, [x24, #0x164]
   29528: b9416b05     	ldr	w5, [x24, #0x168]
   2952c: aa1403e1     	mov	x1, x20
   29530: 94000000     	bl	0x29530 <syna_spi_probe+0x940>
		0000000000029530:  R_AARCH64_CALL26	_printk
   29534: b9417302     	ldr	w2, [x24, #0x170]
   29538: b9417703     	ldr	w3, [x24, #0x174]
   2953c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		000000000002953c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d7de
   29540: 91000000     	add	x0, x0, #0x0
		0000000000029540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d7de
   29544: b9417b04     	ldr	w4, [x24, #0x178]
   29548: b9416f05     	ldr	w5, [x24, #0x16c]
   2954c: aa1403e1     	mov	x1, x20
   29550: 94000000     	bl	0x29550 <syna_spi_probe+0x960>
		0000000000029550:  R_AARCH64_CALL26	_printk
   29554: aa1303e0     	mov	x0, x19
   29558: 94000000     	bl	0x29558 <syna_spi_probe+0x968>
		0000000000029558:  R_AARCH64_CALL26	syna_ts_check_dt
   2955c: 90000014     	adrp	x20, 0x29000 <syna_spi_probe+0x410>
		000000000002955c:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   29560: a9006313     	stp	x19, x24, [x24]
   29564: f9400288     	ldr	x8, [x20]
		0000000000029564:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29568: f9003913     	str	x19, [x8, #0x70]
   2956c: f9005118     	str	x24, [x8, #0xa0]
   29570: b9412b09     	ldr	w9, [x24, #0x128]
   29574: 340005c9     	cbz	w9, 0x2962c <syna_spi_probe+0xa3c>
   29578: b94002aa     	ldr	w10, [x21]
		0000000000029578:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   2957c: 3400068a     	cbz	w10, 0x2964c <syna_spi_probe+0xa5c>
   29580: 7100053f     	cmp	w9, #0x1
   29584: 540002e1     	b.ne	0x295e0 <syna_spi_probe+0x9f0>
   29588: f94002e1     	ldr	x1, [x23]
		0000000000029588:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   2958c: b4001de1     	cbz	x1, 0x29948 <syna_spi_probe+0xd58>
   29590: 39400029     	ldrb	w9, [x1]
   29594: 34001da9     	cbz	w9, 0x29948 <syna_spi_probe+0xd58>
   29598: 39400029     	ldrb	w9, [x1]
   2959c: 34000669     	cbz	w9, 0x29668 <syna_spi_probe+0xa78>
   295a0: f9403900     	ldr	x0, [x8, #0x70]
   295a4: 94000000     	bl	0x295a4 <syna_spi_probe+0x9b4>
		00000000000295a4:  R_AARCH64_CALL26	devm_regulator_get
   295a8: b13ffc1f     	cmn	x0, #0xfff
   295ac: 54000603     	b.lo	0x2966c <syna_spi_probe+0xa7c>
   295b0: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		00000000000295b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d0aa
   295b4: 91000108     	add	x8, x8, #0x0
		00000000000295b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d0aa
   295b8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000295b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd46
   295bc: 91000021     	add	x1, x1, #0x0
		00000000000295bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd46
   295c0: aa0003f3     	mov	x19, x0
   295c4: aa0803e0     	mov	x0, x8
   295c8: 94000000     	bl	0x295c8 <syna_spi_probe+0x9d8>
		00000000000295c8:  R_AARCH64_CALL26	_printk
   295cc: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		00000000000295cc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   295d0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		00000000000295d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aff9
   295d4: 91000000     	add	x0, x0, #0x0
		00000000000295d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aff9
   295d8: f9000113     	str	x19, [x8]
		00000000000295d8:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   295dc: 140000e0     	b	0x2995c <syna_spi_probe+0xd6c>
   295e0: 540004ab     	b.lt	0x29674 <syna_spi_probe+0xa84>
   295e4: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		00000000000295e4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   295e8: b9400100     	ldr	w0, [x8]
		00000000000295e8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   295ec: 7100041f     	cmp	w0, #0x1
   295f0: 5400042b     	b.lt	0x29674 <syna_spi_probe+0xa84>
   295f4: b9400328     	ldr	w8, [x25]
		00000000000295f4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   295f8: 90000003     	adrp	x3, 0x29000 <syna_spi_probe+0x410>
		00000000000295f8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6386
   295fc: 91000063     	add	x3, x3, #0x0
		00000000000295fc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6386
   29600: 52800021     	mov	w1, #0x1                // =1
   29604: 7100011f     	cmp	w8, #0x0
   29608: 1a9f17e2     	cset	w2, eq
   2960c: 94000000     	bl	0x2960c <syna_spi_probe+0xa1c>
		000000000002960c:  R_AARCH64_CALL26	syna_spi_get_gpio
   29610: 36f80320     	tbz	w0, #0x1f, 0x29674 <syna_spi_probe+0xa84>
   29614: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029614:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   29618: 2a0003f3     	mov	w19, w0
   2961c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		000000000002961c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa4e
   29620: 91000000     	add	x0, x0, #0x0
		0000000000029620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa4e
   29624: b9400102     	ldr	w2, [x8]
		0000000000029624:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   29628: 1400003f     	b	0x29724 <syna_spi_probe+0xb34>
   2962c: f94002e9     	ldr	x9, [x23]
		000000000002962c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   29630: b4fffa49     	cbz	x9, 0x29578 <syna_spi_probe+0x988>
   29634: 39400129     	ldrb	w9, [x9]
   29638: 34fffa09     	cbz	w9, 0x29578 <syna_spi_probe+0x988>
   2963c: 52800029     	mov	w9, #0x1                // =1
   29640: 9000000a     	adrp	x10, 0x29000 <syna_spi_probe+0x410>
		0000000000029640:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   29644: b9000149     	str	w9, [x10]
		0000000000029644:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   29648: 17ffffcc     	b	0x29578 <syna_spi_probe+0x988>
   2964c: f940034a     	ldr	x10, [x26]
		000000000002964c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   29650: b4fff98a     	cbz	x10, 0x29580 <syna_spi_probe+0x990>
   29654: 3940014a     	ldrb	w10, [x10]
   29658: 34fff94a     	cbz	w10, 0x29580 <syna_spi_probe+0x990>
   2965c: 5280002a     	mov	w10, #0x1               // =1
   29660: b90002aa     	str	w10, [x21]
		0000000000029660:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   29664: 17ffffc7     	b	0x29580 <syna_spi_probe+0x990>
   29668: aa1f03e0     	mov	x0, xzr
   2966c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		000000000002966c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   29670: f9000100     	str	x0, [x8]
		0000000000029670:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   29674: b94002a8     	ldr	w8, [x21]
		0000000000029674:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   29678: 7100051f     	cmp	w8, #0x1
   2967c: 54000301     	b.ne	0x296dc <syna_spi_probe+0xaec>
   29680: f9400341     	ldr	x1, [x26]
		0000000000029680:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   29684: b4001681     	cbz	x1, 0x29954 <syna_spi_probe+0xd64>
   29688: 39400028     	ldrb	w8, [x1]
   2968c: 34001648     	cbz	w8, 0x29954 <syna_spi_probe+0xd64>
   29690: 39400028     	ldrb	w8, [x1]
   29694: 34000508     	cbz	w8, 0x29734 <syna_spi_probe+0xb44>
   29698: f9400288     	ldr	x8, [x20]
		0000000000029698:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2969c: f9403900     	ldr	x0, [x8, #0x70]
   296a0: 94000000     	bl	0x296a0 <syna_spi_probe+0xab0>
		00000000000296a0:  R_AARCH64_CALL26	devm_regulator_get
   296a4: b13ffc1f     	cmn	x0, #0xfff
   296a8: 54000483     	b.lo	0x29738 <syna_spi_probe+0xb48>
   296ac: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		00000000000296ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d0aa
   296b0: 91000108     	add	x8, x8, #0x0
		00000000000296b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d0aa
   296b4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000296b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd46
   296b8: 91000021     	add	x1, x1, #0x0
		00000000000296b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd46
   296bc: aa0003f3     	mov	x19, x0
   296c0: aa0803e0     	mov	x0, x8
   296c4: 94000000     	bl	0x296c4 <syna_spi_probe+0xad4>
		00000000000296c4:  R_AARCH64_CALL26	_printk
   296c8: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		00000000000296c8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   296cc: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		00000000000296cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d43
   296d0: 91000000     	add	x0, x0, #0x0
		00000000000296d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d43
   296d4: f9000113     	str	x19, [x8]
		00000000000296d4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   296d8: 140000a1     	b	0x2995c <syna_spi_probe+0xd6c>
   296dc: 5400032b     	b.lt	0x29740 <syna_spi_probe+0xb50>
   296e0: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		00000000000296e0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   296e4: b9400100     	ldr	w0, [x8]
		00000000000296e4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   296e8: 7100041f     	cmp	w0, #0x1
   296ec: 540002ab     	b.lt	0x29740 <syna_spi_probe+0xb50>
   296f0: b9400328     	ldr	w8, [x25]
		00000000000296f0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   296f4: 90000003     	adrp	x3, 0x29000 <syna_spi_probe+0x410>
		00000000000296f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63a6
   296f8: 91000063     	add	x3, x3, #0x0
		00000000000296f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63a6
   296fc: 52800021     	mov	w1, #0x1                // =1
   29700: 7100011f     	cmp	w8, #0x0
   29704: 1a9f17e2     	cset	w2, eq
   29708: 94000000     	bl	0x29708 <syna_spi_probe+0xb18>
		0000000000029708:  R_AARCH64_CALL26	syna_spi_get_gpio
   2970c: 36f801a0     	tbz	w0, #0x1f, 0x29740 <syna_spi_probe+0xb50>
   29710: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029710:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   29714: 2a0003f3     	mov	w19, w0
   29718: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1942f
   2971c: 91000000     	add	x0, x0, #0x0
		000000000002971c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1942f
   29720: b9400102     	ldr	w2, [x8]
		0000000000029720:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   29724: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18344
   29728: 91000021     	add	x1, x1, #0x0
		0000000000029728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18344
   2972c: 94000000     	bl	0x2972c <syna_spi_probe+0xb3c>
		000000000002972c:  R_AARCH64_CALL26	_printk
   29730: 1400008f     	b	0x2996c <syna_spi_probe+0xd7c>
   29734: aa1f03e0     	mov	x0, xzr
   29738: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029738:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   2973c: f9000100     	str	x0, [x8]
		000000000002973c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   29740: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029740:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if
   29744: f9400113     	ldr	x19, [x8]
		0000000000029744:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if
   29748: b40011f3     	cbz	x19, 0x29984 <syna_spi_probe+0xd94>
   2974c: 90000017     	adrp	x23, 0x29000 <syna_spi_probe+0x410>
		000000000002974c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   29750: 910002f7     	add	x23, x23, #0x0
		0000000000029750:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x60
   29754: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cbfa
   29758: 91000021     	add	x1, x1, #0x0
		0000000000029758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cbfa
   2975c: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		000000000002975c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63e6
   29760: 91000042     	add	x2, x2, #0x0
		0000000000029760:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63e6
   29764: 910042e0     	add	x0, x23, #0x10
   29768: 94000000     	bl	0x29768 <syna_spi_probe+0xb78>
		0000000000029768:  R_AARCH64_CALL26	__mutex_init
   2976c: b94002e8     	ldr	w8, [x23]
   29770: 52800109     	mov	w9, #0x8                // =8
   29774: 390eb269     	strb	w9, [x19, #0x3ac]
   29778: 71000d1f     	cmp	w8, #0x3
   2977c: 54000048     	b.hi	0x29784 <syna_spi_probe+0xb94>
   29780: b903b268     	str	w8, [x19, #0x3b0]
   29784: aa1303e0     	mov	x0, x19
   29788: 94000000     	bl	0x29788 <syna_spi_probe+0xb98>
		0000000000029788:  R_AARCH64_CALL26	spi_setup
   2978c: 37f81000     	tbnz	w0, #0x1f, 0x2998c <syna_spi_probe+0xd9c>
   29790: d503201f     	nop
   29794: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029794:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   29798: 5281b801     	mov	w1, #0xdc0              // =3520
   2979c: 52800102     	mov	w2, #0x8                // =8
   297a0: f9400100     	ldr	x0, [x8]
		00000000000297a0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   297a4: 94000000     	bl	0x297a4 <syna_spi_probe+0xbb4>
		00000000000297a4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   297a8: b4002480     	cbz	x0, 0x29c38 <syna_spi_probe+0x1048>
   297ac: b94002c8     	ldr	w8, [x22]
		00000000000297ac:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   297b0: 52807fc9     	mov	w9, #0x3fe              // =1022
   297b4: b9000009     	str	w9, [x0]
   297b8: 7100051f     	cmp	w8, #0x1
   297bc: f901e260     	str	x0, [x19, #0x3c0]
   297c0: 5400012b     	b.lt	0x297e4 <syna_spi_probe+0xbf4>
   297c4: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0x410>
		00000000000297c4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa4
   297c8: 90000003     	adrp	x3, 0x29000 <syna_spi_probe+0x410>
		00000000000297c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63c6
   297cc: 91000063     	add	x3, x3, #0x0
		00000000000297cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63c6
   297d0: b9400122     	ldr	w2, [x9]
		00000000000297d0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa4
   297d4: 2a0803e0     	mov	w0, w8
   297d8: 52800021     	mov	w1, #0x1                // =1
   297dc: 94000000     	bl	0x297dc <syna_spi_probe+0xbec>
		00000000000297dc:  R_AARCH64_CALL26	syna_spi_get_gpio
   297e0: 37f80e40     	tbnz	w0, #0x1f, 0x299a8 <syna_spi_probe+0xdb8>
   297e4: b9400380     	ldr	w0, [x28]
		00000000000297e4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   297e8: 7100041f     	cmp	w0, #0x1
   297ec: 540000eb     	b.lt	0x29808 <syna_spi_probe+0xc18>
   297f0: b9400362     	ldr	w2, [x27]
		00000000000297f0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf4
   297f4: 90000003     	adrp	x3, 0x29000 <syna_spi_probe+0x410>
		00000000000297f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63e7
   297f8: 91000063     	add	x3, x3, #0x0
		00000000000297f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63e7
   297fc: 52800021     	mov	w1, #0x1                // =1
   29800: 94000000     	bl	0x29800 <syna_spi_probe+0xc10>
		0000000000029800:  R_AARCH64_CALL26	syna_spi_get_gpio
   29804: 37f80e20     	tbnz	w0, #0x1f, 0x299c8 <syna_spi_probe+0xdd8>
   29808: 90000017     	adrp	x23, 0x29000 <syna_spi_probe+0x410>
		0000000000029808:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa8
   2980c: 910002f7     	add	x23, x23, #0x0
		000000000002980c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa8
   29810: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cbfa
   29814: 91000021     	add	x1, x1, #0x0
		0000000000029814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cbfa
   29818: 90000002     	adrp	x2, 0x29000 <syna_spi_probe+0x410>
		0000000000029818:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63e6
   2981c: 91000042     	add	x2, x2, #0x0
		000000000002981c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63e6
   29820: 910062e0     	add	x0, x23, #0x18
   29824: 94000000     	bl	0x29824 <syna_spi_probe+0xc34>
		0000000000029824:  R_AARCH64_CALL26	__mutex_init
   29828: b94002e0     	ldr	w0, [x23]
   2982c: 7100041f     	cmp	w0, #0x1
   29830: 5400088b     	b.lt	0x29940 <syna_spi_probe+0xd50>
   29834: 90000003     	adrp	x3, 0x29000 <syna_spi_probe+0x410>
		0000000000029834:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6407
   29838: 91000063     	add	x3, x3, #0x0
		0000000000029838:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6407
   2983c: 2a1f03e1     	mov	w1, wzr
   29840: 2a1f03e2     	mov	w2, wzr
   29844: 94000000     	bl	0x29844 <syna_spi_probe+0xc54>
		0000000000029844:  R_AARCH64_CALL26	syna_spi_get_gpio
   29848: 2a0003e8     	mov	w8, w0
   2984c: 2a1f03e0     	mov	w0, wzr
   29850: 36f82468     	tbz	w8, #0x1f, 0x29cdc <syna_spi_probe+0x10ec>
   29854: b94002e2     	ldr	w2, [x23]
   29858: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6f6
   2985c: 91000000     	add	x0, x0, #0x0
		000000000002985c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6f6
   29860: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e27
   29864: 91000021     	add	x1, x1, #0x0
		0000000000029864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e27
   29868: 2a0803f3     	mov	w19, w8
   2986c: 94000000     	bl	0x2986c <syna_spi_probe+0xc7c>
		000000000002986c:  R_AARCH64_CALL26	_printk
   29870: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d78b
   29874: 91000000     	add	x0, x0, #0x0
		0000000000029874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d78b
   29878: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c6
   2987c: 91000021     	add	x1, x1, #0x0
		000000000002987c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c6
   29880: 94000000     	bl	0x29880 <syna_spi_probe+0xc90>
		0000000000029880:  R_AARCH64_CALL26	_printk
   29884: b9404ae0     	ldr	w0, [x23, #0x48]
   29888: 7100041f     	cmp	w0, #0x1
   2988c: 5400004b     	b.lt	0x29894 <syna_spi_probe+0xca4>
   29890: 94000000     	bl	0x29890 <syna_spi_probe+0xca0>
		0000000000029890:  R_AARCH64_CALL26	gpio_free
   29894: b94002c0     	ldr	w0, [x22]
		0000000000029894:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   29898: 7100041f     	cmp	w0, #0x1
   2989c: 5400004b     	b.lt	0x298a4 <syna_spi_probe+0xcb4>
   298a0: 94000000     	bl	0x298a0 <syna_spi_probe+0xcb0>
		00000000000298a0:  R_AARCH64_CALL26	gpio_free
   298a4: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		00000000000298a4:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   298a8: f94002c1     	ldr	x1, [x22]
		00000000000298a8:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   298ac: b40000e1     	cbz	x1, 0x298c8 <syna_spi_probe+0xcd8>
   298b0: f9400288     	ldr	x8, [x20]
		00000000000298b0:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   298b4: b4001868     	cbz	x8, 0x29bc0 <syna_spi_probe+0xfd0>
   298b8: f9403900     	ldr	x0, [x8, #0x70]
   298bc: b4001820     	cbz	x0, 0x29bc0 <syna_spi_probe+0xfd0>
   298c0: 94000000     	bl	0x298c0 <syna_spi_probe+0xcd0>
		00000000000298c0:  R_AARCH64_CALL26	devm_kfree
   298c4: f90002df     	str	xzr, [x22]
		00000000000298c4:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   298c8: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		00000000000298c8:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   298cc: 2a1303e8     	mov	w8, w19
   298d0: f94002c1     	ldr	x1, [x22]
		00000000000298d0:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   298d4: b4000101     	cbz	x1, 0x298f4 <syna_spi_probe+0xd04>
   298d8: f9400288     	ldr	x8, [x20]
		00000000000298d8:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   298dc: b40017e8     	cbz	x8, 0x29bd8 <syna_spi_probe+0xfe8>
   298e0: f9403900     	ldr	x0, [x8, #0x70]
   298e4: b40017a0     	cbz	x0, 0x29bd8 <syna_spi_probe+0xfe8>
   298e8: 94000000     	bl	0x298e8 <syna_spi_probe+0xcf8>
		00000000000298e8:  R_AARCH64_CALL26	devm_kfree
   298ec: 2a1303e8     	mov	w8, w19
   298f0: f90002df     	str	xzr, [x22]
		00000000000298f0:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   298f4: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		00000000000298f4:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   298f8: f94002c1     	ldr	x1, [x22]
		00000000000298f8:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   298fc: b4000101     	cbz	x1, 0x2991c <syna_spi_probe+0xd2c>
   29900: f9400288     	ldr	x8, [x20]
		0000000000029900:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29904: b4001768     	cbz	x8, 0x29bf0 <syna_spi_probe+0x1000>
   29908: f9403900     	ldr	x0, [x8, #0x70]
   2990c: b4001720     	cbz	x0, 0x29bf0 <syna_spi_probe+0x1000>
   29910: 94000000     	bl	0x29910 <syna_spi_probe+0xd20>
		0000000000029910:  R_AARCH64_CALL26	devm_kfree
   29914: 2a1303e8     	mov	w8, w19
   29918: f90002df     	str	xzr, [x22]
		0000000000029918:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   2991c: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0x410>
		000000000002991c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   29920: b9400129     	ldr	w9, [x9]
		0000000000029920:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   29924: 7100053f     	cmp	w9, #0x1
   29928: 54000f61     	b.ne	0x29b14 <syna_spi_probe+0xf24>
   2992c: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0x410>
		000000000002992c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   29930: f9400120     	ldr	x0, [x9]
		0000000000029930:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   29934: b4000fe0     	cbz	x0, 0x29b30 <syna_spi_probe+0xf40>
   29938: 94000000     	bl	0x29938 <syna_spi_probe+0xd48>
		0000000000029938:  R_AARCH64_CALL26	devm_regulator_put
   2993c: 1400007c     	b	0x29b2c <syna_spi_probe+0xf3c>
   29940: 2a1f03e0     	mov	w0, wzr
   29944: 140000e6     	b	0x29cdc <syna_spi_probe+0x10ec>
   29948: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18722
   2994c: 91000000     	add	x0, x0, #0x0
		000000000002994c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18722
   29950: 14000003     	b	0x2995c <syna_spi_probe+0xd6c>
   29954: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6b3
   29958: 91000000     	add	x0, x0, #0x0
		0000000000029958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6b3
   2995c: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		000000000002995c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18344
   29960: 91000021     	add	x1, x1, #0x0
		0000000000029960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18344
   29964: 94000000     	bl	0x29964 <syna_spi_probe+0xd74>
		0000000000029964:  R_AARCH64_CALL26	_printk
   29968: 128000b3     	mov	w19, #-0x6              // =-6
   2996c: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		000000000002996c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c50f
   29970: 91000000     	add	x0, x0, #0x0
		0000000000029970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c50f
   29974: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c6
   29978: 91000021     	add	x1, x1, #0x0
		0000000000029978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c6
   2997c: 94000000     	bl	0x2997c <syna_spi_probe+0xd8c>
		000000000002997c:  R_AARCH64_CALL26	_printk
   29980: 140000d6     	b	0x29cd8 <syna_spi_probe+0x10e8>
   29984: 128002b3     	mov	w19, #-0x16             // =-22
   29988: 140000b2     	b	0x29c50 <syna_spi_probe+0x1060>
   2998c: 2a0003f3     	mov	w19, w0
   29990: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a623
   29994: 91000000     	add	x0, x0, #0x0
		0000000000029994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a623
   29998: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1945e
   2999c: 91000021     	add	x1, x1, #0x0
		000000000002999c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1945e
   299a0: 94000000     	bl	0x299a0 <syna_spi_probe+0xdb0>
		00000000000299a0:  R_AARCH64_CALL26	_printk
   299a4: 140000ab     	b	0x29c50 <syna_spi_probe+0x1060>
   299a8: b94002c2     	ldr	w2, [x22]
		00000000000299a8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   299ac: 2a0003f3     	mov	w19, w0
   299b0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		00000000000299b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1947d
   299b4: 91000000     	add	x0, x0, #0x0
		00000000000299b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1947d
   299b8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000299b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1945e
   299bc: 91000021     	add	x1, x1, #0x0
		00000000000299bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1945e
   299c0: 94000000     	bl	0x299c0 <syna_spi_probe+0xdd0>
		00000000000299c0:  R_AARCH64_CALL26	_printk
   299c4: 140000a3     	b	0x29c50 <syna_spi_probe+0x1060>
   299c8: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		00000000000299c8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa0
   299cc: 910002d6     	add	x22, x22, #0x0
		00000000000299cc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa0
   299d0: 2a0003f3     	mov	w19, w0
   299d4: b94052c2     	ldr	w2, [x22, #0x50]
   299d8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		00000000000299d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18365
   299dc: 91000000     	add	x0, x0, #0x0
		00000000000299dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18365
   299e0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000299e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d74
   299e4: 91000021     	add	x1, x1, #0x0
		00000000000299e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d74
   299e8: 94000000     	bl	0x299e8 <syna_spi_probe+0xdf8>
		00000000000299e8:  R_AARCH64_CALL26	_printk
   299ec: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		00000000000299ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c542
   299f0: 91000000     	add	x0, x0, #0x0
		00000000000299f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c542
   299f4: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		00000000000299f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c6
   299f8: 91000021     	add	x1, x1, #0x0
		00000000000299f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c6
   299fc: 94000000     	bl	0x299fc <syna_spi_probe+0xe0c>
		00000000000299fc:  R_AARCH64_CALL26	_printk
   29a00: b94002c0     	ldr	w0, [x22]
   29a04: 7100041f     	cmp	w0, #0x1
   29a08: 5400004b     	b.lt	0x29a10 <syna_spi_probe+0xe20>
   29a0c: 94000000     	bl	0x29a0c <syna_spi_probe+0xe1c>
		0000000000029a0c:  R_AARCH64_CALL26	gpio_free
   29a10: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		0000000000029a10:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   29a14: 2a1303e0     	mov	w0, w19
   29a18: f94002c1     	ldr	x1, [x22]
		0000000000029a18:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29a1c: b4000101     	cbz	x1, 0x29a3c <syna_spi_probe+0xe4c>
   29a20: f9400288     	ldr	x8, [x20]
		0000000000029a20:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29a24: b4000aa8     	cbz	x8, 0x29b78 <syna_spi_probe+0xf88>
   29a28: f9403900     	ldr	x0, [x8, #0x70]
   29a2c: b4000a60     	cbz	x0, 0x29b78 <syna_spi_probe+0xf88>
   29a30: 94000000     	bl	0x29a30 <syna_spi_probe+0xe40>
		0000000000029a30:  R_AARCH64_CALL26	devm_kfree
   29a34: 2a1303e0     	mov	w0, w19
   29a38: f90002df     	str	xzr, [x22]
		0000000000029a38:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   29a3c: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		0000000000029a3c:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   29a40: f94002c1     	ldr	x1, [x22]
		0000000000029a40:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29a44: b4000101     	cbz	x1, 0x29a64 <syna_spi_probe+0xe74>
   29a48: f9400288     	ldr	x8, [x20]
		0000000000029a48:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29a4c: b4000a28     	cbz	x8, 0x29b90 <syna_spi_probe+0xfa0>
   29a50: f9403900     	ldr	x0, [x8, #0x70]
   29a54: b40009e0     	cbz	x0, 0x29b90 <syna_spi_probe+0xfa0>
   29a58: 94000000     	bl	0x29a58 <syna_spi_probe+0xe68>
		0000000000029a58:  R_AARCH64_CALL26	devm_kfree
   29a5c: 2a1303e0     	mov	w0, w19
   29a60: f90002df     	str	xzr, [x22]
		0000000000029a60:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   29a64: 90000016     	adrp	x22, 0x29000 <syna_spi_probe+0x410>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   29a68: f94002c1     	ldr	x1, [x22]
		0000000000029a68:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29a6c: b4000101     	cbz	x1, 0x29a8c <syna_spi_probe+0xe9c>
   29a70: f9400288     	ldr	x8, [x20]
		0000000000029a70:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   29a74: b40009a8     	cbz	x8, 0x29ba8 <syna_spi_probe+0xfb8>
   29a78: f9403900     	ldr	x0, [x8, #0x70]
   29a7c: b4000960     	cbz	x0, 0x29ba8 <syna_spi_probe+0xfb8>
   29a80: 94000000     	bl	0x29a80 <syna_spi_probe+0xe90>
		0000000000029a80:  R_AARCH64_CALL26	devm_kfree
   29a84: 2a1303e0     	mov	w0, w19
   29a88: f90002df     	str	xzr, [x22]
		0000000000029a88:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   29a8c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   29a90: b9400108     	ldr	w8, [x8]
		0000000000029a90:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   29a94: 7100051f     	cmp	w8, #0x1
   29a98: 540000e1     	b.ne	0x29ab4 <syna_spi_probe+0xec4>
   29a9c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029a9c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   29aa0: f9400108     	ldr	x8, [x8]
		0000000000029aa0:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   29aa4: b4000188     	cbz	x8, 0x29ad4 <syna_spi_probe+0xee4>
   29aa8: aa0803e0     	mov	x0, x8
   29aac: 94000000     	bl	0x29aac <syna_spi_probe+0xebc>
		0000000000029aac:  R_AARCH64_CALL26	devm_regulator_put
   29ab0: 14000008     	b	0x29ad0 <syna_spi_probe+0xee0>
   29ab4: 5400010b     	b.lt	0x29ad4 <syna_spi_probe+0xee4>
   29ab8: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029ab8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   29abc: b9400108     	ldr	w8, [x8]
		0000000000029abc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   29ac0: 7100051f     	cmp	w8, #0x1
   29ac4: 5400008b     	b.lt	0x29ad4 <syna_spi_probe+0xee4>
   29ac8: 2a0803e0     	mov	w0, w8
   29acc: 94000000     	bl	0x29acc <syna_spi_probe+0xedc>
		0000000000029acc:  R_AARCH64_CALL26	gpio_free
   29ad0: 2a1303e0     	mov	w0, w19
   29ad4: b94002a8     	ldr	w8, [x21]
		0000000000029ad4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   29ad8: 7100051f     	cmp	w8, #0x1
   29adc: 540000e1     	b.ne	0x29af8 <syna_spi_probe+0xf08>
   29ae0: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029ae0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   29ae4: f9400108     	ldr	x8, [x8]
		0000000000029ae4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   29ae8: b4000fa8     	cbz	x8, 0x29cdc <syna_spi_probe+0x10ec>
   29aec: aa0803e0     	mov	x0, x8
   29af0: 94000000     	bl	0x29af0 <syna_spi_probe+0xf00>
		0000000000029af0:  R_AARCH64_CALL26	devm_regulator_put
   29af4: 14000079     	b	0x29cd8 <syna_spi_probe+0x10e8>
   29af8: 54000f2b     	b.lt	0x29cdc <syna_spi_probe+0x10ec>
   29afc: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029afc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   29b00: b9400108     	ldr	w8, [x8]
		0000000000029b00:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   29b04: 7100051f     	cmp	w8, #0x1
   29b08: 54000eab     	b.lt	0x29cdc <syna_spi_probe+0x10ec>
   29b0c: 2a0803e0     	mov	w0, w8
   29b10: 14000071     	b	0x29cd4 <syna_spi_probe+0x10e4>
   29b14: 540000eb     	b.lt	0x29b30 <syna_spi_probe+0xf40>
   29b18: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0x410>
		0000000000029b18:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   29b1c: b9400120     	ldr	w0, [x9]
		0000000000029b1c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   29b20: 7100041f     	cmp	w0, #0x1
   29b24: 5400006b     	b.lt	0x29b30 <syna_spi_probe+0xf40>
   29b28: 94000000     	bl	0x29b28 <syna_spi_probe+0xf38>
		0000000000029b28:  R_AARCH64_CALL26	gpio_free
   29b2c: 2a1303e8     	mov	w8, w19
   29b30: b94002a9     	ldr	w9, [x21]
		0000000000029b30:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   29b34: 7100053f     	cmp	w9, #0x1
   29b38: 540000e1     	b.ne	0x29b54 <syna_spi_probe+0xf64>
   29b3c: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0x410>
		0000000000029b3c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   29b40: f9400120     	ldr	x0, [x9]
		0000000000029b40:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   29b44: b4000160     	cbz	x0, 0x29b70 <syna_spi_probe+0xf80>
   29b48: 2a0803f3     	mov	w19, w8
   29b4c: 94000000     	bl	0x29b4c <syna_spi_probe+0xf5c>
		0000000000029b4c:  R_AARCH64_CALL26	devm_regulator_put
   29b50: 14000062     	b	0x29cd8 <syna_spi_probe+0x10e8>
   29b54: 540000eb     	b.lt	0x29b70 <syna_spi_probe+0xf80>
   29b58: 90000009     	adrp	x9, 0x29000 <syna_spi_probe+0x410>
		0000000000029b58:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   29b5c: b9400120     	ldr	w0, [x9]
		0000000000029b5c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   29b60: 7100041f     	cmp	w0, #0x1
   29b64: 5400006b     	b.lt	0x29b70 <syna_spi_probe+0xf80>
   29b68: 2a0803f3     	mov	w19, w8
   29b6c: 1400005a     	b	0x29cd4 <syna_spi_probe+0x10e4>
   29b70: 2a0803e0     	mov	w0, w8
   29b74: 1400005a     	b	0x29cdc <syna_spi_probe+0x10ec>
   29b78: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc1d
   29b7c: 91000000     	add	x0, x0, #0x0
		0000000000029b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc1d
   29b80: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5cc
   29b84: 91000021     	add	x1, x1, #0x0
		0000000000029b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5cc
   29b88: 94000000     	bl	0x29b88 <syna_spi_probe+0xf98>
		0000000000029b88:  R_AARCH64_CALL26	_printk
   29b8c: 17ffffaa     	b	0x29a34 <syna_spi_probe+0xe44>
   29b90: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc1d
   29b94: 91000000     	add	x0, x0, #0x0
		0000000000029b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc1d
   29b98: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5cc
   29b9c: 91000021     	add	x1, x1, #0x0
		0000000000029b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5cc
   29ba0: 94000000     	bl	0x29ba0 <syna_spi_probe+0xfb0>
		0000000000029ba0:  R_AARCH64_CALL26	_printk
   29ba4: 17ffffae     	b	0x29a5c <syna_spi_probe+0xe6c>
   29ba8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc1d
   29bac: 91000000     	add	x0, x0, #0x0
		0000000000029bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc1d
   29bb0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5cc
   29bb4: 91000021     	add	x1, x1, #0x0
		0000000000029bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5cc
   29bb8: 94000000     	bl	0x29bb8 <syna_spi_probe+0xfc8>
		0000000000029bb8:  R_AARCH64_CALL26	_printk
   29bbc: 17ffffb2     	b	0x29a84 <syna_spi_probe+0xe94>
   29bc0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc1d
   29bc4: 91000000     	add	x0, x0, #0x0
		0000000000029bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc1d
   29bc8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5cc
   29bcc: 91000021     	add	x1, x1, #0x0
		0000000000029bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5cc
   29bd0: 94000000     	bl	0x29bd0 <syna_spi_probe+0xfe0>
		0000000000029bd0:  R_AARCH64_CALL26	_printk
   29bd4: 17ffff3c     	b	0x298c4 <syna_spi_probe+0xcd4>
   29bd8: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc1d
   29bdc: 91000000     	add	x0, x0, #0x0
		0000000000029bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc1d
   29be0: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5cc
   29be4: 91000021     	add	x1, x1, #0x0
		0000000000029be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5cc
   29be8: 94000000     	bl	0x29be8 <syna_spi_probe+0xff8>
		0000000000029be8:  R_AARCH64_CALL26	_printk
   29bec: 17ffff40     	b	0x298ec <syna_spi_probe+0xcfc>
   29bf0: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cc1d
   29bf4: 91000000     	add	x0, x0, #0x0
		0000000000029bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cc1d
   29bf8: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5cc
   29bfc: 91000021     	add	x1, x1, #0x0
		0000000000029bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5cc
   29c00: 94000000     	bl	0x29c00 <syna_spi_probe+0x1010>
		0000000000029c00:  R_AARCH64_CALL26	_printk
   29c04: 17ffff44     	b	0x29914 <syna_spi_probe+0xd24>
   29c08: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029c08:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   29c0c: d5384117     	mrs	x23, SP_EL0
   29c10: f9402af8     	ldr	x24, [x23, #0x50]
   29c14: f9400100     	ldr	x0, [x8]
		0000000000029c14:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   29c18: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029c18:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xd08
   29c1c: 91000108     	add	x8, x8, #0x0
		0000000000029c1c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xd08
   29c20: 5281b801     	mov	w1, #0xdc0              // =3520
   29c24: 52800102     	mov	w2, #0x8                // =8
   29c28: f9002ae8     	str	x8, [x23, #0x50]
   29c2c: 94000000     	bl	0x29c2c <syna_spi_probe+0x103c>
		0000000000029c2c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   29c30: f9002af8     	str	x24, [x23, #0x50]
   29c34: b5ffdbc0     	cbnz	x0, 0x297ac <syna_spi_probe+0xbbc>
   29c38: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa7d
   29c3c: 91000000     	add	x0, x0, #0x0
		0000000000029c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa7d
   29c40: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1945e
   29c44: 91000021     	add	x1, x1, #0x0
		0000000000029c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1945e
   29c48: 94000000     	bl	0x29c48 <syna_spi_probe+0x1058>
		0000000000029c48:  R_AARCH64_CALL26	_printk
   29c4c: 12800173     	mov	w19, #-0xc              // =-12
   29c50: 90000000     	adrp	x0, 0x29000 <syna_spi_probe+0x410>
		0000000000029c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5cc
   29c54: 91000000     	add	x0, x0, #0x0
		0000000000029c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5cc
   29c58: 90000001     	adrp	x1, 0x29000 <syna_spi_probe+0x410>
		0000000000029c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3c6
   29c5c: 91000021     	add	x1, x1, #0x0
		0000000000029c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3c6
   29c60: 94000000     	bl	0x29c60 <syna_spi_probe+0x1070>
		0000000000029c60:  R_AARCH64_CALL26	_printk
   29c64: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029c64:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   29c68: b9400108     	ldr	w8, [x8]
		0000000000029c68:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   29c6c: 7100051f     	cmp	w8, #0x1
   29c70: 540000c1     	b.ne	0x29c88 <syna_spi_probe+0x1098>
   29c74: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029c74:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   29c78: f9400100     	ldr	x0, [x8]
		0000000000029c78:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   29c7c: b4000120     	cbz	x0, 0x29ca0 <syna_spi_probe+0x10b0>
   29c80: 94000000     	bl	0x29c80 <syna_spi_probe+0x1090>
		0000000000029c80:  R_AARCH64_CALL26	devm_regulator_put
   29c84: 14000007     	b	0x29ca0 <syna_spi_probe+0x10b0>
   29c88: 540000cb     	b.lt	0x29ca0 <syna_spi_probe+0x10b0>
   29c8c: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029c8c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   29c90: b9400100     	ldr	w0, [x8]
		0000000000029c90:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   29c94: 7100041f     	cmp	w0, #0x1
   29c98: 5400004b     	b.lt	0x29ca0 <syna_spi_probe+0x10b0>
   29c9c: 94000000     	bl	0x29c9c <syna_spi_probe+0x10ac>
		0000000000029c9c:  R_AARCH64_CALL26	gpio_free
   29ca0: b94002a8     	ldr	w8, [x21]
		0000000000029ca0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   29ca4: 7100051f     	cmp	w8, #0x1
   29ca8: 540000c1     	b.ne	0x29cc0 <syna_spi_probe+0x10d0>
   29cac: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029cac:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   29cb0: f9400100     	ldr	x0, [x8]
		0000000000029cb0:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   29cb4: b4000120     	cbz	x0, 0x29cd8 <syna_spi_probe+0x10e8>
   29cb8: 94000000     	bl	0x29cb8 <syna_spi_probe+0x10c8>
		0000000000029cb8:  R_AARCH64_CALL26	devm_regulator_put
   29cbc: 14000007     	b	0x29cd8 <syna_spi_probe+0x10e8>
   29cc0: 540000cb     	b.lt	0x29cd8 <syna_spi_probe+0x10e8>
   29cc4: 90000008     	adrp	x8, 0x29000 <syna_spi_probe+0x410>
		0000000000029cc4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   29cc8: b9400100     	ldr	w0, [x8]
		0000000000029cc8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   29ccc: 7100041f     	cmp	w0, #0x1
   29cd0: 5400004b     	b.lt	0x29cd8 <syna_spi_probe+0x10e8>
   29cd4: 94000000     	bl	0x29cd4 <syna_spi_probe+0x10e4>
		0000000000029cd4:  R_AARCH64_CALL26	gpio_free
   29cd8: 2a1303e0     	mov	w0, w19
   29cdc: d5384108     	mrs	x8, SP_EL0
   29ce0: f9438908     	ldr	x8, [x8, #0x710]
   29ce4: f85f83a9     	ldur	x9, [x29, #-0x8]
   29ce8: eb09011f     	cmp	x8, x9
   29cec: 54000141     	b.ne	0x29d14 <syna_spi_probe+0x1124>
   29cf0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   29cf4: a94757f6     	ldp	x22, x21, [sp, #0x70]
   29cf8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   29cfc: a94567fa     	ldp	x26, x25, [sp, #0x50]
   29d00: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   29d04: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   29d08: 910243ff     	add	sp, sp, #0x90
   29d0c: d50323bf     	autiasp
   29d10: d65f03c0     	ret
   29d14: 94000000     	bl	0x29d14 <syna_spi_probe+0x1124>
		0000000000029d14:  R_AARCH64_CALL26	__stack_chk_fail
