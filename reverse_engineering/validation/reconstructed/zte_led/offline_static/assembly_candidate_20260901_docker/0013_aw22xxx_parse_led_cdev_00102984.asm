
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e1c <aw22xxx_parse_led_cdev>:
     e1c: d503233f     	paciasp
     e20: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     e24: f9000bf9     	str	x25, [sp, #0x10]
     e28: a9025ff8     	stp	x24, x23, [sp, #0x20]
     e2c: a90357f6     	stp	x22, x21, [sp, #0x30]
     e30: a9044ff4     	stp	x20, x19, [sp, #0x40]
     e34: 910003fd     	mov	x29, sp
     e38: aa0103f4     	mov	x20, x1
     e3c: aa0003f3     	mov	x19, x0
     e40: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
     e44: 91000000     	add	x0, x0, #0x0
		0000000000000e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
     e48: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2da
     e4c: 91000021     	add	x1, x1, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2da
     e50: 94000000     	bl	0xe50 <aw22xxx_parse_led_cdev+0x34>
		0000000000000e50:  R_AARCH64_CALL26	_printk
     e54: aa1403e0     	mov	x0, x20
     e58: aa1f03e1     	mov	x1, xzr
     e5c: 94000000     	bl	0xe5c <aw22xxx_parse_led_cdev+0x40>
		0000000000000e5c:  R_AARCH64_CALL26	of_get_next_child
     e60: b4000520     	cbz	x0, 0xf04 <aw22xxx_parse_led_cdev+0xe8>
     e64: aa0003f5     	mov	x21, x0
     e68: 90000016     	adrp	x22, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x929
     e6c: 910002d6     	add	x22, x22, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x929
     e70: 90000017     	adrp	x23, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1074
     e74: 910002f7     	add	x23, x23, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1074
     e78: 90000018     	adrp	x24, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d6
     e7c: 91000318     	add	x24, x24, #0x0
		0000000000000e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d6
     e80: 90000019     	adrp	x25, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34e
     e84: 91000339     	add	x25, x25, #0x0
		0000000000000e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34e
     e88: 91004262     	add	x2, x19, #0x10
     e8c: aa1503e0     	mov	x0, x21
     e90: aa1603e1     	mov	x1, x22
     e94: 94000000     	bl	0xe94 <aw22xxx_parse_led_cdev+0x78>
		0000000000000e94:  R_AARCH64_CALL26	of_property_read_string
     e98: 37f80a60     	tbnz	w0, #0x1f, 0xfe4 <aw22xxx_parse_led_cdev+0x1c8>
     e9c: 910bc262     	add	x2, x19, #0x2f0
     ea0: aa1503e0     	mov	x0, x21
     ea4: aa1703e1     	mov	x1, x23
     ea8: 52800023     	mov	w3, #0x1                // =1
     eac: aa1f03e4     	mov	x4, xzr
     eb0: 94000000     	bl	0xeb0 <aw22xxx_parse_led_cdev+0x94>
		0000000000000eb0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     eb4: 37f80ac0     	tbnz	w0, #0x1f, 0x100c <aw22xxx_parse_led_cdev+0x1f0>
     eb8: 91006262     	add	x2, x19, #0x18
     ebc: aa1503e0     	mov	x0, x21
     ec0: aa1803e1     	mov	x1, x24
     ec4: 52800023     	mov	w3, #0x1                // =1
     ec8: aa1f03e4     	mov	x4, xzr
     ecc: 94000000     	bl	0xecc <aw22xxx_parse_led_cdev+0xb0>
		0000000000000ecc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     ed0: 37f80b20     	tbnz	w0, #0x1f, 0x1034 <aw22xxx_parse_led_cdev+0x218>
     ed4: 91007262     	add	x2, x19, #0x1c
     ed8: aa1503e0     	mov	x0, x21
     edc: aa1903e1     	mov	x1, x25
     ee0: 52800023     	mov	w3, #0x1                // =1
     ee4: aa1f03e4     	mov	x4, xzr
     ee8: 94000000     	bl	0xee8 <aw22xxx_parse_led_cdev+0xcc>
		0000000000000ee8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     eec: 37f80b80     	tbnz	w0, #0x1f, 0x105c <aw22xxx_parse_led_cdev+0x240>
     ef0: aa1403e0     	mov	x0, x20
     ef4: aa1503e1     	mov	x1, x21
     ef8: 94000000     	bl	0xef8 <aw22xxx_parse_led_cdev+0xdc>
		0000000000000ef8:  R_AARCH64_CALL26	of_get_next_child
     efc: aa0003f5     	mov	x21, x0
     f00: b5fffc40     	cbnz	x0, 0xe88 <aw22xxx_parse_led_cdev+0x6c>
     f04: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     f08: 91076269     	add	x9, x19, #0x1d8
     f0c: 91004261     	add	x1, x19, #0x10
     f10: f900ea68     	str	x8, [x19, #0x1d0]
     f14: aa1f03e2     	mov	x2, xzr
     f18: f900ee69     	str	x9, [x19, #0x1d8]
     f1c: f900f269     	str	x9, [x19, #0x1e0]
     f20: 90000009     	adrp	x9, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x151c
     f24: 91000129     	add	x9, x9, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x151c
     f28: a91ea269     	stp	x9, x8, [x19, #0x1e8]
     f2c: 9107e268     	add	x8, x19, #0x1f8
     f30: f900fe68     	str	x8, [x19, #0x1f8]
     f34: f9010268     	str	x8, [x19, #0x200]
     f38: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000f38:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1754
     f3c: 91000108     	add	x8, x8, #0x0
		0000000000000f3c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1754
     f40: f9400660     	ldr	x0, [x19, #0x8]
     f44: f9010668     	str	x8, [x19, #0x208]
     f48: 90000008     	adrp	x8, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000f48:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1998
     f4c: 91000108     	add	x8, x8, #0x0
		0000000000000f4c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1998
     f50: f9001a68     	str	x8, [x19, #0x30]
     f54: 94000000     	bl	0xf54 <aw22xxx_parse_led_cdev+0x138>
		0000000000000f54:  R_AARCH64_CALL26	led_classdev_register_ext
     f58: 350001a0     	cbnz	w0, 0xf8c <aw22xxx_parse_led_cdev+0x170>
     f5c: f9403260     	ldr	x0, [x19, #0x60]
     f60: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1d0
     f64: 91000021     	add	x1, x1, #0x0
		0000000000000f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1d0
     f68: 94000000     	bl	0xf68 <aw22xxx_parse_led_cdev+0x14c>
		0000000000000f68:  R_AARCH64_CALL26	sysfs_create_group
     f6c: 35000240     	cbnz	w0, 0xfb4 <aw22xxx_parse_led_cdev+0x198>
     f70: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     f74: f9400bf9     	ldr	x25, [sp, #0x10]
     f78: a94357f6     	ldp	x22, x21, [sp, #0x30]
     f7c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     f80: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     f84: d50323bf     	autiasp
     f88: d65f03c0     	ret
     f8c: f9400668     	ldr	x8, [x19, #0x8]
     f90: 2a0003f3     	mov	w19, w0
     f94: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd92
     f98: 91000021     	add	x1, x1, #0x0
		0000000000000f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd92
     f9c: 2a1303e2     	mov	w2, w19
     fa0: aa0803e0     	mov	x0, x8
     fa4: 94000000     	bl	0xfa4 <aw22xxx_parse_led_cdev+0x188>
		0000000000000fa4:  R_AARCH64_CALL26	_dev_err
     fa8: d503201f     	nop
     fac: 2a1303e0     	mov	w0, w19
     fb0: 17fffff0     	b	0xf70 <aw22xxx_parse_led_cdev+0x154>
     fb4: f9400668     	ldr	x8, [x19, #0x8]
     fb8: 2a0003f4     	mov	w20, w0
     fbc: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af6
     fc0: 91000021     	add	x1, x1, #0x0
		0000000000000fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af6
     fc4: 2a1403e2     	mov	w2, w20
     fc8: aa0803e0     	mov	x0, x8
     fcc: 94000000     	bl	0xfcc <aw22xxx_parse_led_cdev+0x1b0>
		0000000000000fcc:  R_AARCH64_CALL26	_dev_err
     fd0: d503201f     	nop
     fd4: 91004260     	add	x0, x19, #0x10
     fd8: 94000000     	bl	0xfd8 <aw22xxx_parse_led_cdev+0x1bc>
		0000000000000fd8:  R_AARCH64_CALL26	led_classdev_unregister
     fdc: 2a1403e0     	mov	w0, w20
     fe0: 17ffffe4     	b	0xf70 <aw22xxx_parse_led_cdev+0x154>
     fe4: f9400668     	ldr	x8, [x19, #0x8]
     fe8: 2a0003f3     	mov	w19, w0
     fec: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1346
     ff0: 91000021     	add	x1, x1, #0x0
		0000000000000ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1346
     ff4: 2a1303e2     	mov	w2, w19
     ff8: aa0803e0     	mov	x0, x8
     ffc: 94000000     	bl	0xffc <aw22xxx_parse_led_cdev+0x1e0>
		0000000000000ffc:  R_AARCH64_CALL26	_dev_err
    1000: d503201f     	nop
    1004: 2a1303e0     	mov	w0, w19
    1008: 17ffffda     	b	0xf70 <aw22xxx_parse_led_cdev+0x154>
    100c: f9400668     	ldr	x8, [x19, #0x8]
    1010: 2a0003f3     	mov	w19, w0
    1014: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1889
    1018: 91000021     	add	x1, x1, #0x0
		0000000000001018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1889
    101c: 2a1303e2     	mov	w2, w19
    1020: aa0803e0     	mov	x0, x8
    1024: 94000000     	bl	0x1024 <aw22xxx_parse_led_cdev+0x208>
		0000000000001024:  R_AARCH64_CALL26	_dev_err
    1028: d503201f     	nop
    102c: 2a1303e0     	mov	w0, w19
    1030: 17ffffd0     	b	0xf70 <aw22xxx_parse_led_cdev+0x154>
    1034: f9400668     	ldr	x8, [x19, #0x8]
    1038: 2a0003f3     	mov	w19, w0
    103c: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000103c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc5f
    1040: 91000021     	add	x1, x1, #0x0
		0000000000001040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc5f
    1044: 2a1303e2     	mov	w2, w19
    1048: aa0803e0     	mov	x0, x8
    104c: 94000000     	bl	0x104c <aw22xxx_parse_led_cdev+0x230>
		000000000000104c:  R_AARCH64_CALL26	_dev_err
    1050: d503201f     	nop
    1054: 2a1303e0     	mov	w0, w19
    1058: 17ffffc6     	b	0xf70 <aw22xxx_parse_led_cdev+0x154>
    105c: f9400668     	ldr	x8, [x19, #0x8]
    1060: 2a0003f3     	mov	w19, w0
    1064: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b6
    1068: 91000021     	add	x1, x1, #0x0
		0000000000001068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b6
    106c: 2a1303e2     	mov	w2, w19
    1070: aa0803e0     	mov	x0, x8
    1074: 94000000     	bl	0x1074 <aw22xxx_parse_led_cdev+0x258>
		0000000000001074:  R_AARCH64_CALL26	_dev_err
    1078: d503201f     	nop
    107c: 2a1303e0     	mov	w0, w19
    1080: 17ffffbc     	b	0xf70 <aw22xxx_parse_led_cdev+0x154>
