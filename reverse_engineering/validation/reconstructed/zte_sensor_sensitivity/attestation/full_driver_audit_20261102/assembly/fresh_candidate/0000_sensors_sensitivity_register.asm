
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ca8 <sensors_sensitivity_register>:
     ca8: d503233f     	paciasp
     cac: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     cb0: a9015ff8     	stp	x24, x23, [sp, #0x10]
     cb4: a90257f6     	stp	x22, x21, [sp, #0x20]
     cb8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     cbc: 910003fd     	mov	x29, sp
     cc0: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     cc4: b94002a8     	ldr	w8, [x21]
		0000000000000cc4:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     cc8: 7100091f     	cmp	w8, #0x2
     ccc: 54000b2a     	b.ge	0xe30 <sensors_sensitivity_register+0x188>
     cd0: d503201f     	nop
     cd4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cd4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
     cd8: 5281b801     	mov	w1, #0xdc0              // =3520
     cdc: 52800c02     	mov	w2, #0x60               // =96
     ce0: f9400100     	ldr	x0, [x8]
		0000000000000ce0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
     ce4: 94000000     	bl	0xce4 <sensors_sensitivity_register+0x3c>
		0000000000000ce4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     ce8: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     cec: f90002c0     	str	x0, [x22]
		0000000000000cec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     cf0: b4000b20     	cbz	x0, 0xe54 <sensors_sensitivity_register+0x1ac>
     cf4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ba
     cf8: 91000021     	add	x1, x1, #0x0
		0000000000000cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ba
     cfc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000cfc:  R_AARCH64_ADR_PREL_PG_HI21	sensors_sensitivity_register.__key
     d00: 91000042     	add	x2, x2, #0x0
		0000000000000d00:  R_AARCH64_ADD_ABS_LO12_NC	sensors_sensitivity_register.__key
     d04: 91004000     	add	x0, x0, #0x10
     d08: 94000000     	bl	0xd08 <sensors_sensitivity_register+0x60>
		0000000000000d08:  R_AARCH64_CALL26	__mutex_init
     d0c: f94002c8     	ldr	x8, [x22]
		0000000000000d0c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     d10: d2800c89     	mov	x9, #0x64               // =100
     d14: 52800c8a     	mov	w10, #0x64              // =100
     d18: f2c00c89     	movk	x9, #0x64, lsl #32
     d1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f6
     d20: 91000000     	add	x0, x0, #0x0
		0000000000000d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f6
     d24: 3901011f     	strb	wzr, [x8, #0x40]
     d28: f8044109     	stur	x9, [x8, #0x44]
     d2c: b9004d0a     	str	w10, [x8, #0x4c]
     d30: 3901411f     	strb	wzr, [x8, #0x50]
     d34: f8054109     	stur	x9, [x8, #0x54]
     d38: b9005d0a     	str	w10, [x8, #0x5c]
     d3c: 94000000     	bl	0xd3c <sensors_sensitivity_register+0x94>
		0000000000000d3c:  R_AARCH64_CALL26	class_create
     d40: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     d44: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000d44:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     d48: 91000273     	add	x19, x19, #0x0
		0000000000000d48:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     d4c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0a
     d50: 91000294     	add	x20, x20, #0x0
		0000000000000d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0a
     d54: f90002e0     	str	x0, [x23]
		0000000000000d54:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     d58: aa1303e0     	mov	x0, x19
     d5c: 2a1f03e1     	mov	w1, wzr
     d60: 52800022     	mov	w2, #0x1                // =1
     d64: aa1403e3     	mov	x3, x20
     d68: 94000000     	bl	0xd68 <sensors_sensitivity_register+0xc0>
		0000000000000d68:  R_AARCH64_CALL26	alloc_chrdev_region
     d6c: f94002e0     	ldr	x0, [x23]
		0000000000000d6c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     d70: b9400262     	ldr	w2, [x19]
     d74: aa1f03e1     	mov	x1, xzr
     d78: aa1f03e3     	mov	x3, xzr
     d7c: aa1403e4     	mov	x4, x20
     d80: 94000000     	bl	0xd80 <sensors_sensitivity_register+0xd8>
		0000000000000d80:  R_AARCH64_CALL26	device_create
     d84: f94002c8     	ldr	x8, [x22]
		0000000000000d84:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     d88: b13ffc1f     	cmn	x0, #0xfff
     d8c: f9000100     	str	x0, [x8]
     d90: 54000762     	b.hs	0xe7c <sensors_sensitivity_register+0x1d4>
     d94: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000d94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1c
     d98: 91000273     	add	x19, x19, #0x0
		0000000000000d98:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1c
     d9c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb42
     da0: 91000294     	add	x20, x20, #0x0
		0000000000000da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb42
     da4: f9004c08     	str	x8, [x0, #0x98]
     da8: aa1303e0     	mov	x0, x19
     dac: 2a1f03e1     	mov	w1, wzr
     db0: 52800022     	mov	w2, #0x1                // =1
     db4: aa1403e3     	mov	x3, x20
     db8: 94000000     	bl	0xdb8 <sensors_sensitivity_register+0x110>
		0000000000000db8:  R_AARCH64_CALL26	alloc_chrdev_region
     dbc: f94002e0     	ldr	x0, [x23]
		0000000000000dbc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     dc0: b9400262     	ldr	w2, [x19]
     dc4: aa1f03e1     	mov	x1, xzr
     dc8: aa1f03e3     	mov	x3, xzr
     dcc: aa1403e4     	mov	x4, x20
     dd0: 94000000     	bl	0xdd0 <sensors_sensitivity_register+0x128>
		0000000000000dd0:  R_AARCH64_CALL26	device_create
     dd4: f94002c8     	ldr	x8, [x22]
		0000000000000dd4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     dd8: b13ffc1f     	cmn	x0, #0xfff
     ddc: f9000500     	str	x0, [x8, #0x8]
     de0: 54000622     	b.hs	0xea4 <sensors_sensitivity_register+0x1fc>
     de4: f9004c08     	str	x8, [x0, #0x98]
     de8: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000de8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x8
     dec: 91000273     	add	x19, x19, #0x0
		0000000000000dec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x8
     df0: f9400100     	ldr	x0, [x8]
     df4: aa1303e1     	mov	x1, x19
     df8: 94000090     	bl	0x1038 <sensors_sensitivity_register+0x390>
		0000000000000df8:  R_AARCH64_CALL26	sensor_create_sysfs_interfaces
     dfc: 37f80680     	tbnz	w0, #0x1f, 0xecc <sensors_sensitivity_register+0x224>
     e00: f94002c8     	ldr	x8, [x22]
		0000000000000e00:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     e04: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000e04:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x88
     e08: 91000294     	add	x20, x20, #0x0
		0000000000000e08:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x88
     e0c: aa1403e1     	mov	x1, x20
     e10: f9400500     	ldr	x0, [x8, #0x8]
     e14: 94000089     	bl	0x1038 <sensors_sensitivity_register+0x390>
		0000000000000e14:  R_AARCH64_CALL26	sensor_create_sysfs_interfaces
     e18: 37f806e0     	tbnz	w0, #0x1f, 0xef4 <sensors_sensitivity_register+0x24c>
     e1c: b94002a8     	ldr	w8, [x21]
		0000000000000e1c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     e20: 7100091f     	cmp	w8, #0x2
     e24: 54000e0a     	b.ge	0xfe4 <sensors_sensitivity_register+0x33c>
     e28: 2a1f03e0     	mov	w0, wzr
     e2c: 14000068     	b	0xfcc <sensors_sensitivity_register+0x324>
     e30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x558
     e34: 91000000     	add	x0, x0, #0x0
		0000000000000e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x558
     e38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     e3c: 91000021     	add	x1, x1, #0x0
		0000000000000e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     e40: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     e44: 91000042     	add	x2, x2, #0x0
		0000000000000e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     e48: 52802ae3     	mov	w3, #0x157              // =343
     e4c: 94000000     	bl	0xe4c <sensors_sensitivity_register+0x1a4>
		0000000000000e4c:  R_AARCH64_CALL26	_printk
     e50: 17ffffa0     	b	0xcd0 <sensors_sensitivity_register+0x28>
     e54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa40
     e58: 91000000     	add	x0, x0, #0x0
		0000000000000e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa40
     e5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     e60: 91000021     	add	x1, x1, #0x0
		0000000000000e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     e64: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     e68: 91000042     	add	x2, x2, #0x0
		0000000000000e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     e6c: 52802b63     	mov	w3, #0x15b              // =347
     e70: 94000000     	bl	0xe70 <sensors_sensitivity_register+0x1c8>
		0000000000000e70:  R_AARCH64_CALL26	_printk
     e74: 12800160     	mov	w0, #-0xc               // =-12
     e78: 14000055     	b	0xfcc <sensors_sensitivity_register+0x324>
     e7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39e
     e80: 91000000     	add	x0, x0, #0x0
		0000000000000e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39e
     e84: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     e88: 91000021     	add	x1, x1, #0x0
		0000000000000e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     e8c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     e90: 91000042     	add	x2, x2, #0x0
		0000000000000e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     e94: 52802e03     	mov	w3, #0x170              // =368
     e98: 94000000     	bl	0xe98 <sensors_sensitivity_register+0x1f0>
		0000000000000e98:  R_AARCH64_CALL26	_printk
     e9c: 2a1f03f8     	mov	w24, wzr
     ea0: 14000042     	b	0xfa8 <sensors_sensitivity_register+0x300>
     ea4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39e
     ea8: 91000000     	add	x0, x0, #0x0
		0000000000000ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39e
     eac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     eb0: 91000021     	add	x1, x1, #0x0
		0000000000000eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     eb4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     eb8: 91000042     	add	x2, x2, #0x0
		0000000000000eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     ebc: 52802f23     	mov	w3, #0x179              // =377
     ec0: 94000000     	bl	0xec0 <sensors_sensitivity_register+0x218>
		0000000000000ec0:  R_AARCH64_CALL26	_printk
     ec4: 2a1f03f8     	mov	w24, wzr
     ec8: 14000030     	b	0xf88 <sensors_sensitivity_register+0x2e0>
     ecc: 2a0003f8     	mov	w24, w0
     ed0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e0
     ed4: 91000000     	add	x0, x0, #0x0
		0000000000000ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e0
     ed8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     edc: 91000021     	add	x1, x1, #0x0
		0000000000000edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     ee0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     ee4: 91000042     	add	x2, x2, #0x0
		0000000000000ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     ee8: 52803003     	mov	w3, #0x180              // =384
     eec: 94000000     	bl	0xeec <sensors_sensitivity_register+0x244>
		0000000000000eec:  R_AARCH64_CALL26	_printk
     ef0: 14000018     	b	0xf50 <sensors_sensitivity_register+0x2a8>
     ef4: 2a0003f8     	mov	w24, w0
     ef8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e0
     efc: 91000000     	add	x0, x0, #0x0
		0000000000000efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e0
     f00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     f04: 91000021     	add	x1, x1, #0x0
		0000000000000f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     f08: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     f0c: 91000042     	add	x2, x2, #0x0
		0000000000000f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     f10: 528030a3     	mov	w3, #0x185              // =389
     f14: 94000000     	bl	0xf14 <sensors_sensitivity_register+0x26c>
		0000000000000f14:  R_AARCH64_CALL26	_printk
     f18: f94002c8     	ldr	x8, [x22]
		0000000000000f18:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     f1c: aa1403e1     	mov	x1, x20
     f20: f9400515     	ldr	x21, [x8, #0x8]
     f24: aa1503e0     	mov	x0, x21
     f28: 94000000     	bl	0xf28 <sensors_sensitivity_register+0x280>
		0000000000000f28:  R_AARCH64_CALL26	device_remove_file
     f2c: 91008281     	add	x1, x20, #0x20
     f30: aa1503e0     	mov	x0, x21
     f34: 94000000     	bl	0xf34 <sensors_sensitivity_register+0x28c>
		0000000000000f34:  R_AARCH64_CALL26	device_remove_file
     f38: 91010281     	add	x1, x20, #0x40
     f3c: aa1503e0     	mov	x0, x21
     f40: 94000000     	bl	0xf40 <sensors_sensitivity_register+0x298>
		0000000000000f40:  R_AARCH64_CALL26	device_remove_file
     f44: 91018281     	add	x1, x20, #0x60
     f48: aa1503e0     	mov	x0, x21
     f4c: 94000000     	bl	0xf4c <sensors_sensitivity_register+0x2a4>
		0000000000000f4c:  R_AARCH64_CALL26	device_remove_file
     f50: f94002c8     	ldr	x8, [x22]
		0000000000000f50:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     f54: aa1303e1     	mov	x1, x19
     f58: f9400114     	ldr	x20, [x8]
     f5c: aa1403e0     	mov	x0, x20
     f60: 94000000     	bl	0xf60 <sensors_sensitivity_register+0x2b8>
		0000000000000f60:  R_AARCH64_CALL26	device_remove_file
     f64: 91008261     	add	x1, x19, #0x20
     f68: aa1403e0     	mov	x0, x20
     f6c: 94000000     	bl	0xf6c <sensors_sensitivity_register+0x2c4>
		0000000000000f6c:  R_AARCH64_CALL26	device_remove_file
     f70: 91010261     	add	x1, x19, #0x40
     f74: aa1403e0     	mov	x0, x20
     f78: 94000000     	bl	0xf78 <sensors_sensitivity_register+0x2d0>
		0000000000000f78:  R_AARCH64_CALL26	device_remove_file
     f7c: 91018261     	add	x1, x19, #0x60
     f80: aa1403e0     	mov	x0, x20
     f84: 94000000     	bl	0xf84 <sensors_sensitivity_register+0x2dc>
		0000000000000f84:  R_AARCH64_CALL26	device_remove_file
     f88: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000f88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1c
     f8c: f94002c8     	ldr	x8, [x22]
		0000000000000f8c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     f90: f94002e0     	ldr	x0, [x23]
		0000000000000f90:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     f94: b9400121     	ldr	w1, [x9]
		0000000000000f94:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1c
     f98: f900051f     	str	xzr, [x8, #0x8]
     f9c: 94000000     	bl	0xf9c <sensors_sensitivity_register+0x2f4>
		0000000000000f9c:  R_AARCH64_CALL26	device_destroy
     fa0: f94002e0     	ldr	x0, [x23]
		0000000000000fa0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     fa4: 94000000     	bl	0xfa4 <sensors_sensitivity_register+0x2fc>
		0000000000000fa4:  R_AARCH64_CALL26	class_destroy
     fa8: f94002c8     	ldr	x8, [x22]
		0000000000000fa8:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     fac: f900011f     	str	xzr, [x8]
     fb0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fb0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     fb4: f94002e0     	ldr	x0, [x23]
		0000000000000fb4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     fb8: b9400101     	ldr	w1, [x8]
		0000000000000fb8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     fbc: 94000000     	bl	0xfbc <sensors_sensitivity_register+0x314>
		0000000000000fbc:  R_AARCH64_CALL26	device_destroy
     fc0: f94002e0     	ldr	x0, [x23]
		0000000000000fc0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     fc4: 94000000     	bl	0xfc4 <sensors_sensitivity_register+0x31c>
		0000000000000fc4:  R_AARCH64_CALL26	class_destroy
     fc8: 2a1803e0     	mov	w0, w24
     fcc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     fd0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     fd4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     fd8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     fdc: d50323bf     	autiasp
     fe0: d65f03c0     	ret
     fe4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xea
     fe8: 91000000     	add	x0, x0, #0x0
		0000000000000fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xea
     fec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     ff0: 91000021     	add	x1, x1, #0x0
		0000000000000ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     ff4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x380
     ff8: 91000042     	add	x2, x2, #0x0
		0000000000000ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x380
     ffc: 52803123     	mov	w3, #0x189              // =393
    1000: 94000000     	bl	0x1000 <sensors_sensitivity_register+0x358>
		0000000000001000:  R_AARCH64_CALL26	_printk
    1004: 17ffff89     	b	0xe28 <sensors_sensitivity_register+0x180>
    1008: 90000008     	adrp	x8, 0x1000 <sensors_sensitivity_register+0x358>
		0000000000001008:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    100c: d5384113     	mrs	x19, SP_EL0
    1010: f9402a74     	ldr	x20, [x19, #0x50]
    1014: f9400100     	ldr	x0, [x8]
		0000000000001014:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    1018: 90000008     	adrp	x8, 0x1000 <sensors_sensitivity_register+0x358>
		0000000000001018:  R_AARCH64_ADR_PREL_PG_HI21	__start_alloc_tags
    101c: 91000108     	add	x8, x8, #0x0
		000000000000101c:  R_AARCH64_ADD_ABS_LO12_NC	__start_alloc_tags
    1020: 5281b801     	mov	w1, #0xdc0              // =3520
    1024: 52800c02     	mov	w2, #0x60               // =96
    1028: f9002a68     	str	x8, [x19, #0x50]
    102c: 94000000     	bl	0x102c <sensors_sensitivity_register+0x384>
		000000000000102c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1030: f9002a74     	str	x20, [x19, #0x50]
    1034: 17ffff2d     	b	0xce8 <sensors_sensitivity_register+0x40>
